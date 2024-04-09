(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712697256)
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
        (letrec ((_%hash-e143524%_
                  (lambda (_%id143526%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143526%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e143524%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp144911 (list gxc#::void::t))
            (__tmp144910 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp144911
         '()
         __tmp144910
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143520%_
        (apply make-instance gxc#::collect-bindings::t _%$args143520%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp144912
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
        (__make-promise __tmp144912)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143512%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143515%_
                (let ((__obj144886
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj144886))
               (__tmp144913
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143515%_ _%stx143512%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144913
           gxc#current-compile-method
           _%self143515%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp144915 (list gxc#::void::t))
            (__tmp144914 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp144915
         '(modules)
         __tmp144914
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143509%_
        (apply make-instance gxc#::lift-modules::t _%$args143509%_)))
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
      (let ((__tmp144916
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
        (__make-promise __tmp144916)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords143483%_ _%modules143480143484%_ _%stx143486%_)
        (let ((_%modules143489%_
               (if (eq? _%modules143480143484%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143480143484%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143491%_
                  (let ((__obj144888
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144888
                       _%modules143489%_
                       '1
                       '#f
                       '#f))
                    __obj144888))
                 (__tmp144917
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143491%_ _%stx143486%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144917
             gxc#current-compile-method
             _%self143491%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143498%_ . _%args143499%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143498%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143498%_
                  'modules:
                  absent-value))
               _%args143499%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143481143505%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143481143505%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp144919 (list)) (__tmp144918 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp144919
         '()
         __tmp144918
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143476%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143476%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp144920
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
        (__make-promise __tmp144920)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143468%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143471%_
                (let ((__obj144890
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj144890))
               (__tmp144921
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143471%_ _%stx143468%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144921
           gxc#current-compile-method
           _%self143471%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp144923 (list gxc#::false::t))
            (__tmp144922 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp144923
         '()
         __tmp144922
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143465%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143465%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp144924
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
        (__make-promise __tmp144924)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143457%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143460%_
                (let ((__obj144892
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj144892))
               (__tmp144925
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143460%_ _%stx143457%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144925
           gxc#current-compile-method
           _%self143460%_))))
    (define gxc#::count-values::t
      (let ((__tmp144927 (list gxc#::false-expression::t))
            (__tmp144926 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp144927
         '()
         __tmp144926
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143454%_
        (apply make-instance gxc#::count-values::t _%$args143454%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp144928
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
        (__make-promise __tmp144928)))
    (define gxc#apply-count-values
      (lambda (_%stx143446%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143449%_
                (let ((__obj144894
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj144894))
               (__tmp144929
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143449%_ _%stx143446%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144929
           gxc#current-compile-method
           _%self143449%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp144930 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp144930
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143443%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143443%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp144931
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
        (__make-promise __tmp144931)))
    (define gxc#::generate-loader::t
      (let ((__tmp144933 (list gxc#::generate-runtime-empty::t))
            (__tmp144932 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp144933
         '()
         __tmp144932
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143439%_
        (apply make-instance gxc#::generate-loader::t _%$args143439%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp144934
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
        (__make-promise __tmp144934)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143431%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143434%_
                (let ((__obj144897
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj144897))
               (__tmp144935
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143434%_ _%stx143431%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144935
           gxc#current-compile-method
           _%self143434%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp144936 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp144936
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143428%_
        (apply make-instance gxc#::generate-runtime::t _%$args143428%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp144937
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
        (__make-promise __tmp144937)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143420%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143423%_
                (let ((__obj144899
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj144899))
               (__tmp144938
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143423%_ _%stx143420%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144938
           gxc#current-compile-method
           _%self143423%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp144940 (list gxc#::generate-runtime::t))
            (__tmp144939 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp144940
         '()
         __tmp144939
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143417%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143417%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp144941
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
        (__make-promise __tmp144941)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143409%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143412%_
                (let ((__obj144901
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj144901))
               (__tmp144942
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143412%_ _%stx143409%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144942
           gxc#current-compile-method
           _%self143412%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp144943 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp144943
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143406%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143406%_)))
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
      (let ((__tmp144944
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
        (__make-promise __tmp144944)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords143380%_ _%table143377143381%_ _%stx143383%_)
        (let ((_%table143386%_
               (if (eq? _%table143377143381%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143377143381%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143388%_
                  (let ((__obj144903
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144903
                       _%table143386%_
                       '1
                       '#f
                       '#f))
                    __obj144903))
                 (__tmp144945
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143388%_ _%stx143383%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144945
             gxc#current-compile-method
             _%self143388%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143395%_ . _%args143396%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143395%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143395%_
                  'table:
                  absent-value))
               _%args143396%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143378143402%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143378143402%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp144947 (list gxc#::void-expression::t))
            (__tmp144946 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp144947
         '(state)
         __tmp144946
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143373%_
        (apply make-instance gxc#::generate-meta::t _%$args143373%_)))
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
      (let ((__tmp144948
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
        (__make-promise __tmp144948)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords143347%_ _%state143344143348%_ _%stx143350%_)
        (let ((_%state143353%_
               (if (eq? _%state143344143348%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143344143348%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143355%_
                  (let ((__obj144905
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144905
                       _%state143353%_
                       '1
                       '#f
                       '#f))
                    __obj144905))
                 (__tmp144949
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143355%_ _%stx143350%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144949
             gxc#current-compile-method
             _%self143355%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143362%_ . _%args143363%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143362%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143362%_
                  'state:
                  absent-value))
               _%args143363%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143345143369%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143345143369%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp144951 (list)) (__tmp144950 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp144951
         '(state)
         __tmp144950
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143340%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143340%_)))
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
      (let ((__tmp144952
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
        (__make-promise __tmp144952)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords143314%_ _%state143311143315%_ _%stx143317%_)
        (let ((_%state143320%_
               (if (eq? _%state143311143315%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143311143315%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143322%_
                  (let ((__obj144907
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144907
                       _%state143320%_
                       '1
                       '#f
                       '#f))
                    __obj144907))
                 (__tmp144953
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143322%_ _%stx143317%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144953
             gxc#current-compile-method
             _%self143322%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143329%_ . _%args143330%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143329%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143329%_
                  'state:
                  absent-value))
               _%args143330%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143312143336%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143312143336%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143240%_ _%stx143241%_)
        (let* ((_%g143243143260%_
                (lambda (_%g143244143257%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143244143257%_))))
               (_%g143242143307%_
                (lambda (_%g143244143263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143244143263%_))
                      (let ((_%e143247143265%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143244143263%_))))
                        (let ((_%hd143248143268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143247143265%_)))
                              (_%tl143249143270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143247143265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143249143270%_))
                              (let ((_%e143250143273%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143249143270%_))))
                                (let ((_%hd143251143276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143250143273%_)))
                                      (_%tl143252143278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143250143273%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143252143278%_))
                                      (let ((_%e143253143281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143252143278%_))))
                                        (let ((_%hd143254143284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143253143281%_)))
                                              (_%tl143255143286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143253143281%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143255143286%_))
                                              ((lambda (_%L143289%_
                                                        _%L143290%_)
                                                 (let ((__tmp144954
                                                        (lambda (_%bind143305%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143305%_))
                      (gxc#add-module-binding! _%bind143305%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp144954
                                                    _%L143290%_)))
                                               _%hd143254143284%_
                                               _%hd143251143276%_)
                                              (_%g143243143260%_
                                               _%g143244143263%_))))
                                      (_%g143243143260%_ _%g143244143263%_))))
                              (_%g143243143260%_ _%g143244143263%_))))
                      (_%g143243143260%_ _%g143244143263%_)))))
          (_%g143242143307%_ _%stx143241%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143172%_ _%stx143173%_)
        (let* ((_%g143175143192%_
                (lambda (_%g143176143189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143176143189%_))))
               (_%g143174143237%_
                (lambda (_%g143176143195%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143176143195%_))
                      (let ((_%e143179143197%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143176143195%_))))
                        (let ((_%hd143180143200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143179143197%_)))
                              (_%tl143181143202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143179143197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143181143202%_))
                              (let ((_%e143182143205%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143181143202%_))))
                                (let ((_%hd143183143208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143182143205%_)))
                                      (_%tl143184143210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143182143205%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143184143210%_))
                                      (let ((_%e143185143213%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143184143210%_))))
                                        (let ((_%hd143186143216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143185143213%_)))
                                              (_%tl143187143218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143185143213%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143187143218%_))
                                              ((lambda (_%L143221%_
                                                        _%L143222%_)
                                                 (gxc#add-module-binding!
                                                  _%L143222%_
                                                  '#t))
                                               _%hd143186143216%_
                                               _%hd143183143208%_)
                                              (_%g143175143192%_
                                               _%g143176143195%_))))
                                      (_%g143175143192%_ _%g143176143195%_))))
                              (_%g143175143192%_ _%g143176143195%_))))
                      (_%g143175143192%_ _%g143176143195%_)))))
          (_%g143174143237%_ _%stx143173%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143114%_ _%stx143115%_)
        (let* ((_%g143117143131%_
                (lambda (_%g143118143128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143118143128%_))))
               (_%g143116143169%_
                (lambda (_%g143118143134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143118143134%_))
                      (let ((_%e143121143136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143118143134%_))))
                        (let ((_%hd143122143139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143121143136%_)))
                              (_%tl143123143141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143121143136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143123143141%_))
                              (let ((_%e143124143144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143123143141%_))))
                                (let ((_%hd143125143147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143124143144%_)))
                                      (_%tl143126143149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143124143144%_))))
                                  ((lambda (_%L143152%_ _%L143153%_)
                                     (let ((_%ctx143166%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143153%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143114%_
                                           'modules))
                                        (cons _%ctx143166%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143114%_
                                                        'modules)))))
                                       (let ((__tmp144955
                                              (lambda ()
                                                (let ((__tmp144956
                                                       (##structure-ref
                                                        _%ctx143166%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143114%_
                                                   __tmp144956)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp144955
                                          gx#current-expander-context
                                          _%ctx143166%_))))
                                   _%tl143126143149%_
                                   _%hd143125143147%_)))
                              (_%g143117143131%_ _%g143118143134%_))))
                      (_%g143117143131%_ _%g143118143134%_)))))
          (_%g143116143169%_ _%stx143115%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143067143069%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143067143069%_
              (let ((_%decls143072%_ _%decls143067143069%_))
                (let _%lp143074%_ ((_%rest143076%_ _%decls143072%_))
                  (let* ((_%rest143077143085%_ _%rest143076%_)
                         (_%else143079143093%_ (lambda () '#f))
                         (_%K143081143102%_
                          (lambda (_%decls143096%_ _%decl143097%_)
                            (if (equal? _%decl143097%_ '(not safe))
                                '#t
                                (if (equal? _%decl143097%_ '(safe))
                                    '#f
                                    (_%lp143074%_ _%decls143096%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143077143085%_))
                        (let ((_%hd143082143105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143077143085%_)))
                              (_%tl143083143107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143077143085%_))))
                          (let* ((_%decl143110%_ _%hd143082143105%_)
                                 (_%decls143112%_ _%tl143083143107%_))
                            (_%K143081143102%_
                             _%decls143112%_
                             _%decl143110%_)))
                        (_%else143079143093%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143061%_ _%syntax?143062%_)
        (let ((_%eid143064%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143061%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143065%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143064%_))
              '#!void
              (let ((__tmp144957
                     (let ((__tmp144958
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143064%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp144958 _%syntax?143062%_))))
                (declare (not safe))
                (hash-put! _%ht143065%_ _%eid143064%_ __tmp144957))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143059%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id143059%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143014%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143014%_))
            _%key143014%_
            (if (uninterned-symbol? _%key143014%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143014%_))
                (let* ((_%key143018143025%_ _%key143014%_)
                       (_%E143020143029%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key143018143025%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K143021143047%_
                        (lambda (_%mark143032%_ _%eid143033%_)
                          (let ((_%$e143035%_
                                 (##structure-ref
                                  _%mark143032%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e143035%_
                                ((lambda (_%ht143038%_)
                                   (let ((_%$e143040%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht143038%_
                                             _%eid143033%_))))
                                     (if _%$e143040%_
                                         ((lambda (_%id143043%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id143043%_))
                                                _%id143043%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id143043%_))))
                                          _%$e143040%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid143033%_))))
                                 _%$e143035%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid143033%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key143018143025%_))
                      (let ((_%hd143022143050%_
                             (let ()
                               (declare (not safe))
                               (##car _%key143018143025%_)))
                            (_%tl143023143052%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key143018143025%_))))
                        (let* ((_%eid143055%_ _%hd143022143050%_)
                               (_%mark143057%_ _%tl143023143052%_))
                          (_%K143021143047%_ _%mark143057%_ _%eid143055%_)))
                      (_%E143020143029%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143011%_ _%stx143012%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self142858%_ _%stx142859%_)
        (letrec ((_%simplify142861%_
                  (lambda (_%body142909%_)
                    (let _%lp142911%_ ((_%rest142913%_ _%body142909%_)
                                       (_%r142914%_ '()))
                      (let* ((_%rest142915142923%_ _%rest142913%_)
                             (_%else142917142931%_
                              (lambda () (reverse _%r142914%_)))
                             (_%K142919142999%_
                              (lambda (_%rest142934%_ _%hd142935%_)
                                (let* ((_%hd142936142952%_ _%hd142935%_)
                                       (_%else142940142960%_
                                        (lambda ()
                                          (_%lp142911%_
                                           _%rest142934%_
                                           (cons _%hd142935%_ _%r142914%_)))))
                                  (let ((_%K142948142989%_
                                         (lambda (_%exprs142987%_)
                                           (_%lp142911%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest142934%_
                                               _%exprs142987%_))
                                            _%r142914%_)))
                                        (_%K142943142973%_
                                         (lambda ()
                                           (if (null? _%rest142934%_)
                                               (_%lp142911%_
                                                _%rest142934%_
                                                (cons _%hd142935%_
                                                      _%r142914%_))
                                               (_%lp142911%_
                                                _%rest142934%_
                                                _%r142914%_))))
                                        (_%K142942142965%_
                                         (lambda ()
                                           (if (null? _%rest142934%_)
                                               (_%lp142911%_
                                                _%rest142934%_
                                                (cons _%hd142935%_
                                                      _%r142914%_))
                                               (_%lp142911%_
                                                _%rest142934%_
                                                _%r142914%_)))))
                                    (let ((_%try-match142939142968%_
                                           (lambda ()
                                             (if (symbol? _%hd142936142952%_)
                                                 (_%K142942142965%_)
                                                 (_%else142940142960%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142936142952%_))
                                          (let ((_%tl142950142994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142936142952%_)))
                                                (_%hd142949142992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142936142952%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142949142992%_
                                                         'begin))
                                                (let ((_%exprs142997%_
                                                       _%tl142950142994%_))
                                                  (_%K142948142989%_
                                                   _%exprs142997%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd142949142992%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl142950142994%_))
                                                        (let ((_%tl142947142981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl142950142994%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl142947142981%_))
                      (_%K142943142973%_)
                      (_%try-match142939142968%_)))
                (_%try-match142939142968%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match142939142968%_))))
                                          (_%try-match142939142968%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142915142923%_))
                            (let ((_%hd142920143002%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142915142923%_)))
                                  (_%tl142921143004%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142915142923%_))))
                              (let* ((_%hd143007%_ _%hd142920143002%_)
                                     (_%rest143009%_ _%tl142921143004%_))
                                (_%K142919142999%_
                                 _%rest143009%_
                                 _%hd143007%_)))
                            (_%else142917142931%_)))))))
          (let* ((_%g142863142873%_
                  (lambda (_%g142864142870%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142864142870%_))))
                 (_%g142862142906%_
                  (lambda (_%g142864142876%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142864142876%_))
                        (let ((_%e142866142878%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142864142876%_))))
                          (let ((_%hd142867142881%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142866142878%_)))
                                (_%tl142868142883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142866142878%_))))
                            ((lambda (_%L142886%_)
                               (let* ((_%body142901%_
                                       (map (lambda (_%g142896142898%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self142858%_
                                                 _%g142896142898%_)))
                                            _%L142886%_))
                                      (_%body142903%_
                                       (_%simplify142861%_ _%body142901%_)))
                                 (if (let ((__tmp144959
                                            (length _%body142903%_)))
                                       (declare (not safe))
                                       (##fx= __tmp144959 '1))
                                     (car _%body142903%_)
                                     (cons 'begin _%body142903%_))))
                             _%tl142868142883%_)))
                        (_%g142863142873%_ _%g142864142876%_)))))
            (_%g142862142906%_ _%stx142859%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142819%_ _%stx142820%_)
        (let* ((_%g142822142832%_
                (lambda (_%g142823142829%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142823142829%_))))
               (_%g142821142855%_
                (lambda (_%g142823142835%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142823142835%_))
                      (let ((_%e142825142837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142823142835%_))))
                        (let ((_%hd142826142840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142825142837%_)))
                              (_%tl142827142842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142825142837%_))))
                          ((lambda (_%L142845%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L142845%_))))
                           _%tl142827142842%_)))
                      (_%g142822142832%_ _%g142823142835%_)))))
          (_%g142821142855%_ _%stx142820%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142583%_ _%stx142584%_)
        (let* ((_%__stx143549143550%_ _%stx142584%_)
               (_%g142588142640%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143549143550%_)))))
          (let ((_%__kont143551143552%_
                 (lambda (_%L142801%_ _%L142802%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142583%_ _%L142801%_))))
                (_%__kont143553143554%_
                 (lambda (_%L142749%_ _%L142750%_ _%L142751%_)
                   (if (let ((__tmp144960
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142751%_))))
                         (declare (not safe))
                         (##memq __tmp144960 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142583%_ _%L142749%_)))))
                (_%__kont143557143558%_
                 (lambda (_%L142669%_ _%L142670%_)
                   (let ((_%decls142685%_ (map gx#syntax->datum _%L142670%_)))
                     (let ((__tmp144963
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142685%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142583%_
                                                   _%L142669%_))
                                                '())))))
                           (__tmp144961
                            (let ((__tmp144962
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp144962 _%decls142685%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp144963
                        gxc#current-compile-decls
                        __tmp144961))))))
            (let* ((_%__match143604143605%_
                    (lambda (_%e142604142693%_
                             _%hd142605142696%_
                             _%tl142606142698%_
                             _%e142607142701%_
                             _%hd142608142704%_
                             _%tl142609142706%_
                             _%e142610142709%_
                             _%hd142611142712%_
                             _%tl142612142714%_
                             _%__splice143555143556%_
                             _%target142613142717%_
                             _%tl142615142719%_)
                      (letrec ((_%loop142616142722%_
                                (lambda (_%hd142614142725%_
                                         _%param142620142727%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142614142725%_))
                                      (let ((_%e142617142730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142614142725%_))))
                                        (let ((_%lp-tl142619142735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142617142730%_)))
                                              (_%lp-hd142618142733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142617142730%_))))
                                          (_%loop142616142722%_
                                           _%lp-tl142619142735%_
                                           (cons _%lp-hd142618142733%_
                                                 _%param142620142727%_))))
                                      (let ((_%param142621142738%_
                                             (reverse _%param142620142727%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142609142706%_))
                                            (let ((_%e142622142741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142609142706%_))))
                                              (let ((_%tl142624142746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142622142741%_)))
                                                    (_%hd142623142744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142622142741%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142624142746%_))
                                                    (let ((_%L142749%_
                                                           _%hd142623142744%_)
                                                          (_%L142750%_
                                                           _%param142621142738%_)
                                                          (_%L142751%_
                                                           _%hd142611142712%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142751%_))
                       (not (let ((__tmp144964
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L142751%_))))
                              (declare (not safe))
                              (##memq __tmp144964 gxc#gambit-annotations))))
                  (_%__kont143553143554%_ _%L142749%_ _%L142750%_ _%L142751%_)
                  (_%__kont143557143558%_
                   _%hd142623142744%_
                   _%hd142608142704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142588142640%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142588142640%_))))))))
                        (_%loop142616142722%_ _%target142613142717%_ '()))))
                   (_%__match143578143579%_
                    (lambda (_%e142592142777%_
                             _%hd142593142780%_
                             _%tl142594142782%_
                             _%e142595142785%_
                             _%hd142596142788%_
                             _%tl142597142790%_
                             _%e142598142793%_
                             _%hd142599142796%_
                             _%tl142600142798%_)
                      (let ((_%L142801%_ _%hd142599142796%_)
                            (_%L142802%_ _%hd142596142788%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142802%_))
                            (_%__kont143551143552%_ _%L142801%_ _%L142802%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142596142788%_))
                                (let ((_%e142610142709%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142596142788%_))))
                                  (let ((_%tl142612142714%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142610142709%_)))
                                        (_%hd142611142712%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142610142709%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142612142714%_))
                                        (let ((_%__splice143555143556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142612142714%_
                                                  '0))))
                                          (let ((_%tl142615142719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143555143556%_
                                                    '1)))
                                                (_%target142613142717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143555143556%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142615142719%_))
                                                (_%__match143604143605%_
                                                 _%e142592142777%_
                                                 _%hd142593142780%_
                                                 _%tl142594142782%_
                                                 _%e142595142785%_
                                                 _%hd142596142788%_
                                                 _%tl142597142790%_
                                                 _%e142610142709%_
                                                 _%hd142611142712%_
                                                 _%tl142612142714%_
                                                 _%__splice143555143556%_
                                                 _%target142613142717%_
                                                 _%tl142615142719%_)
                                                (_%__kont143557143558%_
                                                 _%hd142599142796%_
                                                 _%hd142596142788%_))))
                                        (_%__kont143557143558%_
                                         _%hd142599142796%_
                                         _%hd142596142788%_))))
                                (_%__kont143557143558%_
                                 _%hd142599142796%_
                                 _%hd142596142788%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143549143550%_))
                  (let ((_%e142592142777%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143549143550%_))))
                    (let ((_%tl142594142782%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142592142777%_)))
                          (_%hd142593142780%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142592142777%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142594142782%_))
                          (let ((_%e142595142785%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142594142782%_))))
                            (let ((_%tl142597142790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142595142785%_)))
                                  (_%hd142596142788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142595142785%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142597142790%_))
                                  (let ((_%e142598142793%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142597142790%_))))
                                    (let ((_%tl142600142798%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142598142793%_)))
                                          (_%hd142599142796%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142598142793%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142600142798%_))
                                          (_%__match143578143579%_
                                           _%e142592142777%_
                                           _%hd142593142780%_
                                           _%tl142594142782%_
                                           _%e142595142785%_
                                           _%hd142596142788%_
                                           _%tl142597142790%_
                                           _%e142598142793%_
                                           _%hd142599142796%_
                                           _%tl142600142798%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142596142788%_))
                                              (let ((_%e142610142709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142596142788%_))))
                                                (let ((_%tl142612142714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142610142709%_)))
                                                      (_%hd142611142712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142610142709%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142612142714%_))
                                                      (let ((_%__splice143555143556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142612142714%_ '0))))
                (let ((_%tl142615142719%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143555143556%_ '1)))
                      (_%target142613142717%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143555143556%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142615142719%_))
                      (_%__match143604143605%_
                       _%e142592142777%_
                       _%hd142593142780%_
                       _%tl142594142782%_
                       _%e142595142785%_
                       _%hd142596142788%_
                       _%tl142597142790%_
                       _%e142610142709%_
                       _%hd142611142712%_
                       _%tl142612142714%_
                       _%__splice143555143556%_
                       _%target142613142717%_
                       _%tl142615142719%_)
                      (let () (declare (not safe)) (_%g142588142640%_)))))
              (let () (declare (not safe)) (_%g142588142640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142588142640%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142596142788%_))
                                      (let ((_%e142610142709%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142596142788%_))))
                                        (let ((_%tl142612142714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142610142709%_)))
                                              (_%hd142611142712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142610142709%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142612142714%_))
                                              (let ((_%__splice143555143556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142612142714%_
                                                        '0))))
                                                (let ((_%tl142615142719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143555143556%_
                                                          '1)))
                                                      (_%target142613142717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143555143556%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142615142719%_))
                                                      (_%__match143604143605%_
                                                       _%e142592142777%_
                                                       _%hd142593142780%_
                                                       _%tl142594142782%_
                                                       _%e142595142785%_
                                                       _%hd142596142788%_
                                                       _%tl142597142790%_
                                                       _%e142610142709%_
                                                       _%hd142611142712%_
                                                       _%tl142612142714%_
                                                       _%__splice143555143556%_
                                                       _%target142613142717%_
                                                       _%tl142615142719%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142588142640%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142588142640%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142588142640%_))))))
                          (let () (declare (not safe)) (_%g142588142640%_)))))
                  (let () (declare (not safe)) (_%g142588142640%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142542%_ _%stx142543%_)
        (let* ((_%g142545142555%_
                (lambda (_%g142546142552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142546142552%_))))
               (_%g142544142580%_
                (lambda (_%g142546142558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142546142558%_))
                      (let ((_%e142548142560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142546142558%_))))
                        (let ((_%hd142549142563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142548142560%_)))
                              (_%tl142550142565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142548142560%_))))
                          ((lambda (_%L142568%_)
                             (let ((_%decls142578%_
                                    (map gx#syntax->datum _%L142568%_)))
                               (let ((__tmp144965
                                      (let ((__tmp144966
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp144966
                                         _%decls142578%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp144965))
                               (cons 'declare _%decls142578%_)))
                           _%tl142550142565%_)))
                      (_%g142545142555%_ _%g142546142558%_)))))
          (_%g142544142580%_ _%stx142543%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142288%_ _%stx142289%_)
        (let* ((_%g142291142308%_
                (lambda (_%g142292142305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142292142305%_))))
               (_%g142290142539%_
                (lambda (_%g142292142311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142292142311%_))
                      (let ((_%e142295142313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142292142311%_))))
                        (let ((_%hd142296142316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142295142313%_)))
                              (_%tl142297142318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142295142313%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142297142318%_))
                              (let ((_%e142298142321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142297142318%_))))
                                (let ((_%hd142299142324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142298142321%_)))
                                      (_%tl142300142326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142298142321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142300142326%_))
                                      (let ((_%e142301142329%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142300142326%_))))
                                        (let ((_%hd142302142332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142301142329%_)))
                                              (_%tl142303142334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142301142329%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142303142334%_))
                                              ((lambda (_%L142337%_
                                                        _%L142338%_)
                                                 (let* ((_%__stx143657143658%_
                                                         _%L142338%_)
                                                        (_%g142355142369%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143657143658%_)))))
                                                   (let ((_%__kont143659143660%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142288%_
                                                               _%L142337%_))))
                                                         (_%__kont143661143662%_
                                                          (lambda (_%L142501%_)
                                                            (let ((_%eid142510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142501%_))))
                      (let ((_%lambda-expr142511142513%_
                             (gxc#apply-find-lambda-expression _%L142337%_)))
                        (if _%lambda-expr142511142513%_
                            (let* ((_%lambda-expr142516%_
                                    _%lambda-expr142511142513%_)
                                   (__tmp144967
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp144967
                               _%lambda-expr142516%_
                               _%eid142510%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142510%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142288%_
                                           _%L142337%_))
                                        '()))))))
                 (_%__kont143663143664%_
                  (lambda ()
                    (let* ((_%tmp142376%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142485%_
                            (let _%lp142378%_ ((_%rest142380%_ _%L142338%_)
                                               (_%k142381%_ '0)
                                               (_%r142382%_ '()))
                              (let* ((_%__stx143627143628%_ _%rest142380%_)
                                     (_%g142387142404%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143627143628%_)))))
                                (let ((_%__kont143629143630%_
                                       (lambda (_%L142472%_)
                                         (_%lp142378%_
                                          _%L142472%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142381%_ '1))
                                          _%r142382%_)))
                                      (_%__kont143631143632%_
                                       (lambda (_%L142445%_ _%L142446%_)
                                         (_%lp142378%_
                                          _%L142445%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142381%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L142446%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp142376%_
                           _%k142381%_
                           _%L142445%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r142382%_))))
                                      (_%__kont143633143634%_
                                       (lambda (_%L142416%_)
                                         (let ((__tmp144968
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142416%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp142376%_
                                 _%k142381%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp144968
                                            _%r142382%_))))
                                      (_%__kont143635143636%_
                                       (lambda () (reverse _%r142382%_))))
                                  (let ((_%g142385142432%_
                                         (lambda ()
                                           (let ((_%L142416%_
                                                  _%__stx143627143628%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142416%_))
                                                 (_%__kont143633143634%_
                                                  _%L142416%_)
                                                 (_%__kont143635143636%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143627143628%_))
                                        (let ((_%e142390142461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143627143628%_))))
                                          (let ((_%tl142392142466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142390142461%_)))
                                                (_%hd142391142464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142390142461%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142391142464%_))
                                                (let ((_%e142393142469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142391142464%_))))
                                                  (if (equal? _%e142393142469%_
                                                              '#f)
                                                      (_%__kont143629143630%_
                                                       _%tl142392142466%_)
                                                      (_%__kont143631143632%_
                                                       _%tl142392142466%_
                                                       _%hd142391142464%_)))
                                                (_%__kont143631143632%_
                                                 _%tl142392142466%_
                                                 _%hd142391142464%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142385142432%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142376%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142288%_
                                                       _%L142337%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp142376%_
                                         _%L142338%_
                                         _%L142337%_)
                                        _%body142485%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143657143658%_))
                                                         (let ((_%e142357142523%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143657143658%_))))
                   (let ((_%tl142359142528%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142357142523%_)))
                         (_%hd142358142526%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142357142523%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142358142526%_))
                         (let ((_%e142360142531%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142358142526%_))))
                           (if (equal? _%e142360142531%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142359142528%_))
                                   (_%__kont143659143660%_)
                                   (_%__kont143663143664%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142359142528%_))
                                   (_%__kont143661143662%_ _%hd142358142526%_)
                                   (_%__kont143663143664%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142359142528%_))
                             (_%__kont143661143662%_ _%hd142358142526%_)
                             (_%__kont143663143664%_)))))
                 (_%__kont143663143664%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142302142332%_
                                               _%hd142299142324%_)
                                              (_%g142291142308%_
                                               _%g142292142311%_))))
                                      (_%g142291142308%_ _%g142292142311%_))))
                              (_%g142291142308%_ _%g142292142311%_))))
                      (_%g142291142308%_ _%g142292142311%_)))))
          (_%g142290142539%_ _%stx142289%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142263%_ _%hd142264%_ _%expr142265%_)
        (let ((_%$e142267%_ (gxc#apply-count-values _%expr142265%_)))
          (if _%$e142267%_
              ((lambda (_%count142270%_)
                 (let ((_%len142272%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142264%_)))
                       (_%cmp142273%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142264%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142272%_ '0))
                           (_%cmp142273%_ _%count142270%_ _%len142272%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142265%_
                          _%hd142264%_)))))
               _%$e142267%_)
              (let* ((_%len142279%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd142264%_)))
                     (_%cmp142281%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd142264%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg142283%_
                      (let ((__tmp144970
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd142264%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp144969 (number->string _%len142279%_)))
                        (declare (not safe))
                        (##string-append __tmp144970 __tmp144969 '" values")))
                     (_%count142285%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd142264%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len142279%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count142285%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals142263%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp142281%_
                                (cons _%count142285%_
                                      (cons _%len142279%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp142281%_
                                                        (cons _%count142285%_
                                                              (cons _%len142279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg142283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count142285%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142258%_)
        (letrec ((_%generate-inline142260%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142258%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142258%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142260%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142260%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142251%_ _%i142252%_ _%rest142253%_)
        (letrec ((_%generate-inline142255%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142252%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest142253%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142251%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142251%_
                                                      (cons '0 '())))
                                          (cons _%var142251%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142251%_ (cons _%i142252%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142255%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142255%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142245%_ _%i142246%_)
        (if (let () (declare (not safe)) (##fx= _%i142246%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var142245%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var142245%_ '()))
                                  (cons (cons 'list (cons _%var142245%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var142245%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var142245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var142245%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i142246%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var142245%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var142245%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var142245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var142245%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var142245%_ '()))
                                (cons _%i142246%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var142245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i142246%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142177%_ _%stx142178%_)
        (let* ((_%g142180142197%_
                (lambda (_%g142181142194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142181142194%_))))
               (_%g142179142242%_
                (lambda (_%g142181142200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142181142200%_))
                      (let ((_%e142184142202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142181142200%_))))
                        (let ((_%hd142185142205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142184142202%_)))
                              (_%tl142186142207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142184142202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142186142207%_))
                              (let ((_%e142187142210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142186142207%_))))
                                (let ((_%hd142188142213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142187142210%_)))
                                      (_%tl142189142215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142187142210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142189142215%_))
                                      (let ((_%e142190142218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142189142215%_))))
                                        (let ((_%hd142191142221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142190142218%_)))
                                              (_%tl142192142223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142190142218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142192142223%_))
                                              ((lambda (_%L142226%_
                                                        _%L142227%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self142177%_
                                                  _%L142227%_
                                                  _%L142226%_))
                                               _%hd142191142221%_
                                               _%hd142188142213%_)
                                              (_%g142180142197%_
                                               _%g142181142200%_))))
                                      (_%g142180142197%_ _%g142181142200%_))))
                              (_%g142180142197%_ _%g142181142200%_))))
                      (_%g142180142197%_ _%g142181142200%_)))))
          (_%g142179142242%_ _%stx142178%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142136%_ _%hd142137%_ _%body142138%_)
        (let* ((_%hd142140%_ (gxc#generate-runtime-lambda-head _%hd142137%_))
               (_%body142142%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142136%_ _%body142138%_)))
               (_%body142174%_
                (let* ((_%body142143142151%_ _%body142142%_)
                       (_%else142145142159%_
                        (lambda () (cons _%body142142%_ '())))
                       (_%K142147142164%_
                        (lambda (_%exprs142162%_) _%exprs142162%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142143142151%_))
                      (let ((_%hd142148142167%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142143142151%_)))
                            (_%tl142149142169%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142143142151%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142148142167%_ 'begin))
                            (let ((_%exprs142172%_ _%tl142149142169%_))
                              (_%K142147142164%_ _%exprs142172%_))
                            (_%else142145142159%_)))
                      (_%else142145142159%_)))))
          (cons 'lambda (cons _%hd142140%_ _%body142174%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142134%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142134%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140673%_ _%stx140674%_)
        (letrec ((_%dispatch-case?140676%_
                  (lambda (_%hd141364%_ _%body141365%_)
                    (let* ((_%form141367%_
                            (cons _%hd141364%_ (cons _%body141365%_ '())))
                           (_%__stx143689143690%_ _%form141367%_)
                           (_%g141372141529%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143689143690%_)))))
                      (let ((_%__kont143691143692%_
                             (lambda (_%L142054%_ _%L142055%_ _%L142056%_)
                               '#t))
                            (_%__kont143697143698%_
                             (lambda (_%L141842%_
                                      _%L141843%_
                                      _%L141844%_
                                      _%L141845%_
                                      _%L141846%_
                                      _%L141847%_)
                               '#t))
                            (_%__kont143703143704%_
                             (lambda (_%L141637%_
                                      _%L141638%_
                                      _%L141639%_
                                      _%L141640%_)
                               '#t))
                            (_%__kont143705143706%_ (lambda () '#f)))
                        (let* ((_%__match143830143831%_
                                (lambda (_%e141489141541%_
                                         _%hd141490141544%_
                                         _%tl141491141546%_
                                         _%e141492141549%_
                                         _%hd141493141552%_
                                         _%tl141494141554%_
                                         _%e141495141557%_
                                         _%hd141496141560%_
                                         _%tl141497141562%_
                                         _%e141498141565%_
                                         _%hd141499141568%_
                                         _%tl141500141570%_
                                         _%e141501141573%_
                                         _%hd141502141576%_
                                         _%tl141503141578%_
                                         _%e141504141581%_
                                         _%hd141505141584%_
                                         _%tl141506141586%_
                                         _%e141507141589%_
                                         _%hd141508141592%_
                                         _%tl141509141594%_
                                         _%e141510141597%_
                                         _%hd141511141600%_
                                         _%tl141512141602%_
                                         _%e141513141605%_
                                         _%hd141514141608%_
                                         _%tl141515141610%_
                                         _%e141516141613%_
                                         _%hd141517141616%_
                                         _%tl141518141618%_
                                         _%e141519141621%_
                                         _%hd141520141624%_
                                         _%tl141521141626%_
                                         _%e141522141629%_
                                         _%hd141523141632%_
                                         _%tl141524141634%_)
                                  (let ((_%L141637%_ _%hd141523141632%_)
                                        (_%L141638%_ _%hd141514141608%_)
                                        (_%L141639%_ _%hd141505141584%_)
                                        (_%L141640%_ _%hd141490141544%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141640%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141639%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141640%_
                                                _%L141637%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L141638%_
                                                     _%L141640%_))))
                                        (_%__kont143703143704%_
                                         _%L141637%_
                                         _%L141638%_
                                         _%L141639%_
                                         _%L141640%_)
                                        (_%__kont143705143706%_)))))
                               (_%__match143802143803%_
                                (lambda (_%e141489141541%_
                                         _%hd141490141544%_
                                         _%tl141491141546%_
                                         _%e141492141549%_
                                         _%hd141493141552%_
                                         _%tl141494141554%_
                                         _%e141495141557%_
                                         _%hd141496141560%_
                                         _%tl141497141562%_
                                         _%e141498141565%_
                                         _%hd141499141568%_
                                         _%tl141500141570%_
                                         _%e141501141573%_
                                         _%hd141502141576%_
                                         _%tl141503141578%_
                                         _%e141504141581%_
                                         _%hd141505141584%_
                                         _%tl141506141586%_
                                         _%e141507141589%_
                                         _%hd141508141592%_
                                         _%tl141509141594%_
                                         _%e141510141597%_
                                         _%hd141511141600%_
                                         _%tl141512141602%_
                                         _%e141513141605%_
                                         _%hd141514141608%_
                                         _%tl141515141610%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141509141594%_))
                                      (let ((_%e141516141613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141509141594%_))))
                                        (let ((_%tl141518141618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141516141613%_)))
                                              (_%hd141517141616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141516141613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141517141616%_))
                                              (let ((_%e141519141621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141517141616%_))))
                                                (let ((_%tl141521141626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141519141621%_)))
                                                      (_%hd141520141624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141519141621%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141520141624%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141520141624%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141521141626%_))
                      (let ((_%e141522141629%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141521141626%_))))
                        (let ((_%tl141524141634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141522141629%_)))
                              (_%hd141523141632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141522141629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141524141634%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141518141618%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141494141554%_))
                                      (_%__match143830143831%_
                                       _%e141489141541%_
                                       _%hd141490141544%_
                                       _%tl141491141546%_
                                       _%e141492141549%_
                                       _%hd141493141552%_
                                       _%tl141494141554%_
                                       _%e141495141557%_
                                       _%hd141496141560%_
                                       _%tl141497141562%_
                                       _%e141498141565%_
                                       _%hd141499141568%_
                                       _%tl141500141570%_
                                       _%e141501141573%_
                                       _%hd141502141576%_
                                       _%tl141503141578%_
                                       _%e141504141581%_
                                       _%hd141505141584%_
                                       _%tl141506141586%_
                                       _%e141507141589%_
                                       _%hd141508141592%_
                                       _%tl141509141594%_
                                       _%e141510141597%_
                                       _%hd141511141600%_
                                       _%tl141512141602%_
                                       _%e141513141605%_
                                       _%hd141514141608%_
                                       _%tl141515141610%_
                                       _%e141516141613%_
                                       _%hd141517141616%_
                                       _%tl141518141618%_
                                       _%e141519141621%_
                                       _%hd141520141624%_
                                       _%tl141521141626%_
                                       _%e141522141629%_
                                       _%hd141523141632%_
                                       _%tl141524141634%_)
                                      (_%__kont143705143706%_))
                                  (_%__kont143705143706%_))
                              (_%__kont143705143706%_))))
                      (_%__kont143705143706%_))
                  (_%__kont143705143706%_))
              (_%__kont143705143706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143705143706%_))))
                                      (_%__kont143705143706%_))))
                               (_%__match143732143733%_
                                (lambda (_%e141425141682%_
                                         _%hd141426141685%_
                                         _%tl141427141687%_
                                         _%__splice143699143700%_
                                         _%target141428141690%_
                                         _%tl141430141692%_)
                                  (letrec ((_%loop141431141695%_
                                            (lambda (_%hd141429141698%_
                                                     _%arg141435141700%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141429141698%_))
                                                  (let ((_%e141432141703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141429141698%_))))
                                                    (let ((_%lp-tl141434141708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141432141703%_)))
                                                          (_%lp-hd141433141706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141432141703%_))))
                                                      (_%loop141431141695%_
                                                       _%lp-tl141434141708%_
                                                       (cons _%lp-hd141433141706%_
                                                             _%arg141435141700%_))))
                                                  (let ((_%arg141436141711%_
                                                         (reverse _%arg141435141700%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141427141687%_))
                                                        (let ((_%e141437141714%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141427141687%_))))
                  (let ((_%tl141439141719%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141437141714%_)))
                        (_%hd141438141717%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141437141714%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141438141717%_))
                        (let ((_%e141440141722%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141438141717%_))))
                          (let ((_%tl141442141727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141440141722%_)))
                                (_%hd141441141725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141440141722%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141441141725%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141441141725%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141442141727%_))
                                        (let ((_%e141443141730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141442141727%_))))
                                          (let ((_%tl141445141735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141443141730%_)))
                                                (_%hd141444141733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141443141730%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141444141733%_))
                                                (let ((_%e141446141738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141444141733%_))))
                                                  (let ((_%tl141448141743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141446141738%_)))
                                                        (_%hd141447141741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141446141738%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141447141741%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141447141741%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141448141743%_))
                        (let ((_%e141449141746%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141448141743%_))))
                          (let ((_%tl141451141751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141449141746%_)))
                                (_%hd141450141749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141449141746%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141451141751%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141445141735%_))
                                    (let ((_%e141452141754%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141445141735%_))))
                                      (let ((_%tl141454141759%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141452141754%_)))
                                            (_%hd141453141757%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141452141754%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141453141757%_))
                                            (let ((_%e141455141762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141453141757%_))))
                                              (let ((_%tl141457141767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141455141762%_)))
                                                    (_%hd141456141765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141455141762%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141456141765%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141456141765%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141457141767%_))
                                                            (let ((_%e141458141770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141457141767%_))))
                      (let ((_%tl141460141775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141458141770%_)))
                            (_%hd141459141773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141458141770%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141460141775%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141454141759%_))
                                (if (let ((__tmp144971
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141454141759%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp144971 '1))
                                    (let ((_%__splice143701143702%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141454141759%_
                                              '1))))
                                      (let ((_%tl141463141780%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143701143702%_
                                                '1)))
                                            (_%target141461141778%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143701143702%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141463141780%_))
                                            (let ((_%e141470141783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141463141780%_))))
                                              (let ((_%tl141472141788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141470141783%_)))
                                                    (_%hd141471141786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141470141783%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141471141786%_))
                                                    (let ((_%e141473141791%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141471141786%_))))
                                                      (let ((_%tl141475141796%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141473141791%_)))
                    (_%hd141474141794%_
                     (let () (declare (not safe)) (##car _%e141473141791%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141474141794%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141474141794%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141475141796%_))
                            (let ((_%e141476141799%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141475141796%_))))
                              (let ((_%tl141478141804%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141476141799%_)))
                                    (_%hd141477141802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141476141799%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141478141804%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141472141788%_))
                                        (letrec ((_%loop141464141807%_
                                                  (lambda (_%hd141462141810%_
                                                           _%xarg141468141812%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141462141810%_))
                                                        (let ((_%e141465141815%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141462141810%_))))
                  (let ((_%lp-tl141467141820%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141465141815%_)))
                        (_%lp-hd141466141818%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141465141815%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141466141818%_))
                        (let ((_%e141479141823%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141466141818%_))))
                          (let ((_%tl141481141828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141479141823%_)))
                                (_%hd141480141826%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141479141823%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141480141826%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141480141826%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141481141828%_))
                                        (let ((_%e141482141831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141481141828%_))))
                                          (let ((_%tl141484141836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141482141831%_)))
                                                (_%hd141483141834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141482141831%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141484141836%_))
                                                (_%loop141464141807%_
                                                 _%lp-tl141467141820%_
                                                 (cons _%hd141483141834%_
                                                       _%xarg141468141812%_))
                                                (_%__match143802143803%_
                                                 _%e141425141682%_
                                                 _%hd141426141685%_
                                                 _%tl141427141687%_
                                                 _%e141437141714%_
                                                 _%hd141438141717%_
                                                 _%tl141439141719%_
                                                 _%e141440141722%_
                                                 _%hd141441141725%_
                                                 _%tl141442141727%_
                                                 _%e141443141730%_
                                                 _%hd141444141733%_
                                                 _%tl141445141735%_
                                                 _%e141446141738%_
                                                 _%hd141447141741%_
                                                 _%tl141448141743%_
                                                 _%e141449141746%_
                                                 _%hd141450141749%_
                                                 _%tl141451141751%_
                                                 _%e141452141754%_
                                                 _%hd141453141757%_
                                                 _%tl141454141759%_
                                                 _%e141455141762%_
                                                 _%hd141456141765%_
                                                 _%tl141457141767%_
                                                 _%e141458141770%_
                                                 _%hd141459141773%_
                                                 _%tl141460141775%_))))
                                        (_%__match143802143803%_
                                         _%e141425141682%_
                                         _%hd141426141685%_
                                         _%tl141427141687%_
                                         _%e141437141714%_
                                         _%hd141438141717%_
                                         _%tl141439141719%_
                                         _%e141440141722%_
                                         _%hd141441141725%_
                                         _%tl141442141727%_
                                         _%e141443141730%_
                                         _%hd141444141733%_
                                         _%tl141445141735%_
                                         _%e141446141738%_
                                         _%hd141447141741%_
                                         _%tl141448141743%_
                                         _%e141449141746%_
                                         _%hd141450141749%_
                                         _%tl141451141751%_
                                         _%e141452141754%_
                                         _%hd141453141757%_
                                         _%tl141454141759%_
                                         _%e141455141762%_
                                         _%hd141456141765%_
                                         _%tl141457141767%_
                                         _%e141458141770%_
                                         _%hd141459141773%_
                                         _%tl141460141775%_))
                                    (_%__match143802143803%_
                                     _%e141425141682%_
                                     _%hd141426141685%_
                                     _%tl141427141687%_
                                     _%e141437141714%_
                                     _%hd141438141717%_
                                     _%tl141439141719%_
                                     _%e141440141722%_
                                     _%hd141441141725%_
                                     _%tl141442141727%_
                                     _%e141443141730%_
                                     _%hd141444141733%_
                                     _%tl141445141735%_
                                     _%e141446141738%_
                                     _%hd141447141741%_
                                     _%tl141448141743%_
                                     _%e141449141746%_
                                     _%hd141450141749%_
                                     _%tl141451141751%_
                                     _%e141452141754%_
                                     _%hd141453141757%_
                                     _%tl141454141759%_
                                     _%e141455141762%_
                                     _%hd141456141765%_
                                     _%tl141457141767%_
                                     _%e141458141770%_
                                     _%hd141459141773%_
                                     _%tl141460141775%_))
                                (_%__match143802143803%_
                                 _%e141425141682%_
                                 _%hd141426141685%_
                                 _%tl141427141687%_
                                 _%e141437141714%_
                                 _%hd141438141717%_
                                 _%tl141439141719%_
                                 _%e141440141722%_
                                 _%hd141441141725%_
                                 _%tl141442141727%_
                                 _%e141443141730%_
                                 _%hd141444141733%_
                                 _%tl141445141735%_
                                 _%e141446141738%_
                                 _%hd141447141741%_
                                 _%tl141448141743%_
                                 _%e141449141746%_
                                 _%hd141450141749%_
                                 _%tl141451141751%_
                                 _%e141452141754%_
                                 _%hd141453141757%_
                                 _%tl141454141759%_
                                 _%e141455141762%_
                                 _%hd141456141765%_
                                 _%tl141457141767%_
                                 _%e141458141770%_
                                 _%hd141459141773%_
                                 _%tl141460141775%_))))
                        (_%__match143802143803%_
                         _%e141425141682%_
                         _%hd141426141685%_
                         _%tl141427141687%_
                         _%e141437141714%_
                         _%hd141438141717%_
                         _%tl141439141719%_
                         _%e141440141722%_
                         _%hd141441141725%_
                         _%tl141442141727%_
                         _%e141443141730%_
                         _%hd141444141733%_
                         _%tl141445141735%_
                         _%e141446141738%_
                         _%hd141447141741%_
                         _%tl141448141743%_
                         _%e141449141746%_
                         _%hd141450141749%_
                         _%tl141451141751%_
                         _%e141452141754%_
                         _%hd141453141757%_
                         _%tl141454141759%_
                         _%e141455141762%_
                         _%hd141456141765%_
                         _%tl141457141767%_
                         _%e141458141770%_
                         _%hd141459141773%_
                         _%tl141460141775%_))))
                (let ((_%xarg141469141839%_ (reverse _%xarg141468141812%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141439141719%_))
                      (let ((_%L141842%_ _%hd141477141802%_)
                            (_%L141843%_ _%xarg141469141839%_)
                            (_%L141844%_ _%hd141459141773%_)
                            (_%L141845%_ _%hd141450141749%_)
                            (_%L141846%_ _%tl141430141692%_)
                            (_%L141847%_ _%arg141436141711%_))
                        (if (and (let ((__tmp144972
                                        (let ((__tmp144973
                                               (lambda (_%g141890141893%_
                                                        _%g141891141895%_)
                                                 (cons _%g141890141893%_
                                                       _%g141891141895%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144973
                                           '()
                                           _%L141847%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp144972))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L141846%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L141845%_
                                    'apply))
                                 (let ((__tmp144976
                                        (length (let ((__tmp144977
                                                       (lambda (_%g141897141900%_
                                                                _%g141898141902%_)
                                                         (cons _%g141897141900%_
                                                               _%g141898141902%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144977
                                                   '()
                                                   _%L141847%_))))
                                       (__tmp144974
                                        (length (let ((__tmp144975
                                                       (lambda (_%g141904141907%_
                                                                _%g141905141909%_)
                                                         (cons _%g141904141907%_
                                                               _%g141905141909%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp144975
                                                   '()
                                                   _%L141843%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp144976 __tmp144974))
                                 (let ((__tmp144980
                                        (let ((__tmp144981
                                               (lambda (_%g141911141914%_
                                                        _%g141912141916%_)
                                                 (cons _%g141911141914%_
                                                       _%g141912141916%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144981
                                           '()
                                           _%L141847%_)))
                                       (__tmp144978
                                        (let ((__tmp144979
                                               (lambda (_%g141918141921%_
                                                        _%g141919141923%_)
                                                 (cons _%g141918141921%_
                                                       _%g141919141923%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp144979
                                           '()
                                           _%L141843%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp144980
                                    __tmp144978))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L141846%_
                                    _%L141842%_))
                                 (not (let ((__tmp144985
                                             (lambda (_%g141925141927%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g141925141927%_
                                                  _%L141844%_))))
                                            (__tmp144982
                                             (let ((__tmp144984
                                                    (lambda (_%g141929141932%_
                                                             _%g141930141934%_)
                                                      (cons _%g141929141932%_
                                                            _%g141930141934%_)))
                                                   (__tmp144983
                                                    (cons _%L141846%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp144984
                                                __tmp144983
                                                _%L141847%_))))
                                        (declare (not safe))
                                        (__find __tmp144985 __tmp144982))))
                            (_%__kont143697143698%_
                             _%L141842%_
                             _%L141843%_
                             _%L141844%_
                             _%L141845%_
                             _%L141846%_
                             _%L141847%_)
                            (_%__match143802143803%_
                             _%e141425141682%_
                             _%hd141426141685%_
                             _%tl141427141687%_
                             _%e141437141714%_
                             _%hd141438141717%_
                             _%tl141439141719%_
                             _%e141440141722%_
                             _%hd141441141725%_
                             _%tl141442141727%_
                             _%e141443141730%_
                             _%hd141444141733%_
                             _%tl141445141735%_
                             _%e141446141738%_
                             _%hd141447141741%_
                             _%tl141448141743%_
                             _%e141449141746%_
                             _%hd141450141749%_
                             _%tl141451141751%_
                             _%e141452141754%_
                             _%hd141453141757%_
                             _%tl141454141759%_
                             _%e141455141762%_
                             _%hd141456141765%_
                             _%tl141457141767%_
                             _%e141458141770%_
                             _%hd141459141773%_
                             _%tl141460141775%_)))
                      (_%__match143802143803%_
                       _%e141425141682%_
                       _%hd141426141685%_
                       _%tl141427141687%_
                       _%e141437141714%_
                       _%hd141438141717%_
                       _%tl141439141719%_
                       _%e141440141722%_
                       _%hd141441141725%_
                       _%tl141442141727%_
                       _%e141443141730%_
                       _%hd141444141733%_
                       _%tl141445141735%_
                       _%e141446141738%_
                       _%hd141447141741%_
                       _%tl141448141743%_
                       _%e141449141746%_
                       _%hd141450141749%_
                       _%tl141451141751%_
                       _%e141452141754%_
                       _%hd141453141757%_
                       _%tl141454141759%_
                       _%e141455141762%_
                       _%hd141456141765%_
                       _%tl141457141767%_
                       _%e141458141770%_
                       _%hd141459141773%_
                       _%tl141460141775%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141464141807%_
                                           _%target141461141778%_
                                           '()))
                                        (_%__match143802143803%_
                                         _%e141425141682%_
                                         _%hd141426141685%_
                                         _%tl141427141687%_
                                         _%e141437141714%_
                                         _%hd141438141717%_
                                         _%tl141439141719%_
                                         _%e141440141722%_
                                         _%hd141441141725%_
                                         _%tl141442141727%_
                                         _%e141443141730%_
                                         _%hd141444141733%_
                                         _%tl141445141735%_
                                         _%e141446141738%_
                                         _%hd141447141741%_
                                         _%tl141448141743%_
                                         _%e141449141746%_
                                         _%hd141450141749%_
                                         _%tl141451141751%_
                                         _%e141452141754%_
                                         _%hd141453141757%_
                                         _%tl141454141759%_
                                         _%e141455141762%_
                                         _%hd141456141765%_
                                         _%tl141457141767%_
                                         _%e141458141770%_
                                         _%hd141459141773%_
                                         _%tl141460141775%_))
                                    (_%__match143802143803%_
                                     _%e141425141682%_
                                     _%hd141426141685%_
                                     _%tl141427141687%_
                                     _%e141437141714%_
                                     _%hd141438141717%_
                                     _%tl141439141719%_
                                     _%e141440141722%_
                                     _%hd141441141725%_
                                     _%tl141442141727%_
                                     _%e141443141730%_
                                     _%hd141444141733%_
                                     _%tl141445141735%_
                                     _%e141446141738%_
                                     _%hd141447141741%_
                                     _%tl141448141743%_
                                     _%e141449141746%_
                                     _%hd141450141749%_
                                     _%tl141451141751%_
                                     _%e141452141754%_
                                     _%hd141453141757%_
                                     _%tl141454141759%_
                                     _%e141455141762%_
                                     _%hd141456141765%_
                                     _%tl141457141767%_
                                     _%e141458141770%_
                                     _%hd141459141773%_
                                     _%tl141460141775%_))))
                            (_%__match143802143803%_
                             _%e141425141682%_
                             _%hd141426141685%_
                             _%tl141427141687%_
                             _%e141437141714%_
                             _%hd141438141717%_
                             _%tl141439141719%_
                             _%e141440141722%_
                             _%hd141441141725%_
                             _%tl141442141727%_
                             _%e141443141730%_
                             _%hd141444141733%_
                             _%tl141445141735%_
                             _%e141446141738%_
                             _%hd141447141741%_
                             _%tl141448141743%_
                             _%e141449141746%_
                             _%hd141450141749%_
                             _%tl141451141751%_
                             _%e141452141754%_
                             _%hd141453141757%_
                             _%tl141454141759%_
                             _%e141455141762%_
                             _%hd141456141765%_
                             _%tl141457141767%_
                             _%e141458141770%_
                             _%hd141459141773%_
                             _%tl141460141775%_))
                        (_%__match143802143803%_
                         _%e141425141682%_
                         _%hd141426141685%_
                         _%tl141427141687%_
                         _%e141437141714%_
                         _%hd141438141717%_
                         _%tl141439141719%_
                         _%e141440141722%_
                         _%hd141441141725%_
                         _%tl141442141727%_
                         _%e141443141730%_
                         _%hd141444141733%_
                         _%tl141445141735%_
                         _%e141446141738%_
                         _%hd141447141741%_
                         _%tl141448141743%_
                         _%e141449141746%_
                         _%hd141450141749%_
                         _%tl141451141751%_
                         _%e141452141754%_
                         _%hd141453141757%_
                         _%tl141454141759%_
                         _%e141455141762%_
                         _%hd141456141765%_
                         _%tl141457141767%_
                         _%e141458141770%_
                         _%hd141459141773%_
                         _%tl141460141775%_))
                    (_%__match143802143803%_
                     _%e141425141682%_
                     _%hd141426141685%_
                     _%tl141427141687%_
                     _%e141437141714%_
                     _%hd141438141717%_
                     _%tl141439141719%_
                     _%e141440141722%_
                     _%hd141441141725%_
                     _%tl141442141727%_
                     _%e141443141730%_
                     _%hd141444141733%_
                     _%tl141445141735%_
                     _%e141446141738%_
                     _%hd141447141741%_
                     _%tl141448141743%_
                     _%e141449141746%_
                     _%hd141450141749%_
                     _%tl141451141751%_
                     _%e141452141754%_
                     _%hd141453141757%_
                     _%tl141454141759%_
                     _%e141455141762%_
                     _%hd141456141765%_
                     _%tl141457141767%_
                     _%e141458141770%_
                     _%hd141459141773%_
                     _%tl141460141775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143802143803%_
                                                     _%e141425141682%_
                                                     _%hd141426141685%_
                                                     _%tl141427141687%_
                                                     _%e141437141714%_
                                                     _%hd141438141717%_
                                                     _%tl141439141719%_
                                                     _%e141440141722%_
                                                     _%hd141441141725%_
                                                     _%tl141442141727%_
                                                     _%e141443141730%_
                                                     _%hd141444141733%_
                                                     _%tl141445141735%_
                                                     _%e141446141738%_
                                                     _%hd141447141741%_
                                                     _%tl141448141743%_
                                                     _%e141449141746%_
                                                     _%hd141450141749%_
                                                     _%tl141451141751%_
                                                     _%e141452141754%_
                                                     _%hd141453141757%_
                                                     _%tl141454141759%_
                                                     _%e141455141762%_
                                                     _%hd141456141765%_
                                                     _%tl141457141767%_
                                                     _%e141458141770%_
                                                     _%hd141459141773%_
                                                     _%tl141460141775%_))))
                                            (_%__match143802143803%_
                                             _%e141425141682%_
                                             _%hd141426141685%_
                                             _%tl141427141687%_
                                             _%e141437141714%_
                                             _%hd141438141717%_
                                             _%tl141439141719%_
                                             _%e141440141722%_
                                             _%hd141441141725%_
                                             _%tl141442141727%_
                                             _%e141443141730%_
                                             _%hd141444141733%_
                                             _%tl141445141735%_
                                             _%e141446141738%_
                                             _%hd141447141741%_
                                             _%tl141448141743%_
                                             _%e141449141746%_
                                             _%hd141450141749%_
                                             _%tl141451141751%_
                                             _%e141452141754%_
                                             _%hd141453141757%_
                                             _%tl141454141759%_
                                             _%e141455141762%_
                                             _%hd141456141765%_
                                             _%tl141457141767%_
                                             _%e141458141770%_
                                             _%hd141459141773%_
                                             _%tl141460141775%_))))
                                    (_%__match143802143803%_
                                     _%e141425141682%_
                                     _%hd141426141685%_
                                     _%tl141427141687%_
                                     _%e141437141714%_
                                     _%hd141438141717%_
                                     _%tl141439141719%_
                                     _%e141440141722%_
                                     _%hd141441141725%_
                                     _%tl141442141727%_
                                     _%e141443141730%_
                                     _%hd141444141733%_
                                     _%tl141445141735%_
                                     _%e141446141738%_
                                     _%hd141447141741%_
                                     _%tl141448141743%_
                                     _%e141449141746%_
                                     _%hd141450141749%_
                                     _%tl141451141751%_
                                     _%e141452141754%_
                                     _%hd141453141757%_
                                     _%tl141454141759%_
                                     _%e141455141762%_
                                     _%hd141456141765%_
                                     _%tl141457141767%_
                                     _%e141458141770%_
                                     _%hd141459141773%_
                                     _%tl141460141775%_))
                                (_%__match143802143803%_
                                 _%e141425141682%_
                                 _%hd141426141685%_
                                 _%tl141427141687%_
                                 _%e141437141714%_
                                 _%hd141438141717%_
                                 _%tl141439141719%_
                                 _%e141440141722%_
                                 _%hd141441141725%_
                                 _%tl141442141727%_
                                 _%e141443141730%_
                                 _%hd141444141733%_
                                 _%tl141445141735%_
                                 _%e141446141738%_
                                 _%hd141447141741%_
                                 _%tl141448141743%_
                                 _%e141449141746%_
                                 _%hd141450141749%_
                                 _%tl141451141751%_
                                 _%e141452141754%_
                                 _%hd141453141757%_
                                 _%tl141454141759%_
                                 _%e141455141762%_
                                 _%hd141456141765%_
                                 _%tl141457141767%_
                                 _%e141458141770%_
                                 _%hd141459141773%_
                                 _%tl141460141775%_))
                            (_%__kont143705143706%_))))
                    (_%__kont143705143706%_))
                (_%__kont143705143706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143705143706%_))))
                                            (_%__kont143705143706%_))))
                                    (_%__kont143705143706%_))
                                (_%__kont143705143706%_))))
                        (_%__kont143705143706%_))
                    (_%__kont143705143706%_))
                (_%__kont143705143706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143705143706%_))))
                                        (_%__kont143705143706%_))
                                    (_%__kont143705143706%_))
                                (_%__kont143705143706%_))))
                        (_%__kont143705143706%_))))
                (_%__kont143705143706%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141431141695%_
                                     _%target141428141690%_
                                     '()))))
                               (_%__match143720143721%_
                                (lambda (_%e141377141942%_
                                         _%hd141378141945%_
                                         _%tl141379141947%_
                                         _%__splice143693143694%_
                                         _%target141380141950%_
                                         _%tl141382141952%_)
                                  (letrec ((_%loop141383141955%_
                                            (lambda (_%hd141381141958%_
                                                     _%arg141387141960%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141381141958%_))
                                                  (let ((_%e141384141963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141381141958%_))))
                                                    (let ((_%lp-tl141386141968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141384141963%_)))
                                                          (_%lp-hd141385141966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141384141963%_))))
                                                      (_%loop141383141955%_
                                                       _%lp-tl141386141968%_
                                                       (cons _%lp-hd141385141966%_
                                                             _%arg141387141960%_))))
                                                  (let ((_%arg141388141971%_
                                                         (reverse _%arg141387141960%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141379141947%_))
                                                        (let ((_%e141389141974%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141379141947%_))))
                  (let ((_%tl141391141979%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141389141974%_)))
                        (_%hd141390141977%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141389141974%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141390141977%_))
                        (let ((_%e141392141982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141390141977%_))))
                          (let ((_%tl141394141987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141392141982%_)))
                                (_%hd141393141985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141392141982%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141393141985%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141393141985%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141394141987%_))
                                        (let ((_%e141395141990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141394141987%_))))
                                          (let ((_%tl141397141995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141395141990%_)))
                                                (_%hd141396141993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141395141990%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141396141993%_))
                                                (let ((_%e141398141998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141396141993%_))))
                                                  (let ((_%tl141400142003%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141398141998%_)))
                                                        (_%hd141399142001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141398141998%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141399142001%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141399142001%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141400142003%_))
                        (let ((_%e141401142006%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141400142003%_))))
                          (let ((_%tl141403142011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141401142006%_)))
                                (_%hd141402142009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141401142006%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141403142011%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141397141995%_))
                                    (let ((_%__splice143695143696%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141397141995%_
                                              '0))))
                                      (let ((_%tl141406142016%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143695143696%_
                                                '1)))
                                            (_%target141404142014%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143695143696%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141406142016%_))
                                            (letrec ((_%loop141407142019%_
                                                      (lambda (_%hd141405142022%_
                                                               _%xarg141411142024%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141405142022%_))
                                                            (let ((_%e141408142027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141405142022%_))))
                      (let ((_%lp-tl141410142032%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141408142027%_)))
                            (_%lp-hd141409142030%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141408142027%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141409142030%_))
                            (let ((_%e141413142035%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141409142030%_))))
                              (let ((_%tl141415142040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141413142035%_)))
                                    (_%hd141414142038%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141413142035%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141414142038%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141414142038%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141415142040%_))
                                            (let ((_%e141416142043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141415142040%_))))
                                              (let ((_%tl141418142048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141416142043%_)))
                                                    (_%hd141417142046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141416142043%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141418142048%_))
                                                    (_%loop141407142019%_
                                                     _%lp-tl141410142032%_
                                                     (cons _%hd141417142046%_
                                                           _%xarg141411142024%_))
                                                    (_%__match143732143733%_
                                                     _%e141377141942%_
                                                     _%hd141378141945%_
                                                     _%tl141379141947%_
                                                     _%__splice143693143694%_
                                                     _%target141380141950%_
                                                     _%tl141382141952%_))))
                                            (_%__match143732143733%_
                                             _%e141377141942%_
                                             _%hd141378141945%_
                                             _%tl141379141947%_
                                             _%__splice143693143694%_
                                             _%target141380141950%_
                                             _%tl141382141952%_))
                                        (_%__match143732143733%_
                                         _%e141377141942%_
                                         _%hd141378141945%_
                                         _%tl141379141947%_
                                         _%__splice143693143694%_
                                         _%target141380141950%_
                                         _%tl141382141952%_))
                                    (_%__match143732143733%_
                                     _%e141377141942%_
                                     _%hd141378141945%_
                                     _%tl141379141947%_
                                     _%__splice143693143694%_
                                     _%target141380141950%_
                                     _%tl141382141952%_))))
                            (_%__match143732143733%_
                             _%e141377141942%_
                             _%hd141378141945%_
                             _%tl141379141947%_
                             _%__splice143693143694%_
                             _%target141380141950%_
                             _%tl141382141952%_))))
                    (let ((_%xarg141412142051%_
                           (reverse _%xarg141411142024%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141391141979%_))
                          (let ((_%L142054%_ _%xarg141412142051%_)
                                (_%L142055%_ _%hd141402142009%_)
                                (_%L142056%_ _%arg141388141971%_))
                            (if (and (let ((__tmp144986
                                            (let ((__tmp144987
                                                   (lambda (_%g142084142087%_
                                                            _%g142085142089%_)
                                                     (cons _%g142084142087%_
                                                           _%g142085142089%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144987
                                               '()
                                               _%L142056%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp144986))
                                     (let ((__tmp144990
                                            (length (let ((__tmp144991
                                                           (lambda (_%g142091142094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142092142096%_)
                     (cons _%g142091142094%_ _%g142092142096%_))))
              (declare (not safe))
              (__foldr1 __tmp144991 '() _%L142056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp144988
                                            (length (let ((__tmp144989
                                                           (lambda (_%g142098142101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142099142103%_)
                     (cons _%g142098142101%_ _%g142099142103%_))))
              (declare (not safe))
              (__foldr1 __tmp144989 '() _%L142054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp144990 __tmp144988))
                                     (let ((__tmp144994
                                            (let ((__tmp144995
                                                   (lambda (_%g142105142108%_
                                                            _%g142106142110%_)
                                                     (cons _%g142105142108%_
                                                           _%g142106142110%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144995
                                               '()
                                               _%L142056%_)))
                                           (__tmp144992
                                            (let ((__tmp144993
                                                   (lambda (_%g142112142115%_
                                                            _%g142113142117%_)
                                                     (cons _%g142112142115%_
                                                           _%g142113142117%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp144993
                                               '()
                                               _%L142054%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp144994
                                        __tmp144992))
                                     (not (let ((__tmp144998
                                                 (lambda (_%g142119142121%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g142119142121%_
                                                      _%L142055%_))))
                                                (__tmp144996
                                                 (let ((__tmp144997
                                                        (lambda (_%g142123142126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g142124142128%_)
                  (cons _%g142123142126%_ _%g142124142128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp144997
                                                    '()
                                                    _%L142056%_))))
                                            (declare (not safe))
                                            (__find __tmp144998 __tmp144996))))
                                (_%__kont143691143692%_
                                 _%L142054%_
                                 _%L142055%_
                                 _%L142056%_)
                                (_%__match143732143733%_
                                 _%e141377141942%_
                                 _%hd141378141945%_
                                 _%tl141379141947%_
                                 _%__splice143693143694%_
                                 _%target141380141950%_
                                 _%tl141382141952%_)))
                          (_%__match143732143733%_
                           _%e141377141942%_
                           _%hd141378141945%_
                           _%tl141379141947%_
                           _%__splice143693143694%_
                           _%target141380141950%_
                           _%tl141382141952%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141407142019%_
                                               _%target141404142014%_
                                               '()))
                                            (_%__match143732143733%_
                                             _%e141377141942%_
                                             _%hd141378141945%_
                                             _%tl141379141947%_
                                             _%__splice143693143694%_
                                             _%target141380141950%_
                                             _%tl141382141952%_))))
                                    (_%__match143732143733%_
                                     _%e141377141942%_
                                     _%hd141378141945%_
                                     _%tl141379141947%_
                                     _%__splice143693143694%_
                                     _%target141380141950%_
                                     _%tl141382141952%_))
                                (_%__match143732143733%_
                                 _%e141377141942%_
                                 _%hd141378141945%_
                                 _%tl141379141947%_
                                 _%__splice143693143694%_
                                 _%target141380141950%_
                                 _%tl141382141952%_))))
                        (_%__match143732143733%_
                         _%e141377141942%_
                         _%hd141378141945%_
                         _%tl141379141947%_
                         _%__splice143693143694%_
                         _%target141380141950%_
                         _%tl141382141952%_))
                    (_%__match143732143733%_
                     _%e141377141942%_
                     _%hd141378141945%_
                     _%tl141379141947%_
                     _%__splice143693143694%_
                     _%target141380141950%_
                     _%tl141382141952%_))
                (_%__match143732143733%_
                 _%e141377141942%_
                 _%hd141378141945%_
                 _%tl141379141947%_
                 _%__splice143693143694%_
                 _%target141380141950%_
                 _%tl141382141952%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143732143733%_
                                                 _%e141377141942%_
                                                 _%hd141378141945%_
                                                 _%tl141379141947%_
                                                 _%__splice143693143694%_
                                                 _%target141380141950%_
                                                 _%tl141382141952%_))))
                                        (_%__match143732143733%_
                                         _%e141377141942%_
                                         _%hd141378141945%_
                                         _%tl141379141947%_
                                         _%__splice143693143694%_
                                         _%target141380141950%_
                                         _%tl141382141952%_))
                                    (_%__match143732143733%_
                                     _%e141377141942%_
                                     _%hd141378141945%_
                                     _%tl141379141947%_
                                     _%__splice143693143694%_
                                     _%target141380141950%_
                                     _%tl141382141952%_))
                                (_%__match143732143733%_
                                 _%e141377141942%_
                                 _%hd141378141945%_
                                 _%tl141379141947%_
                                 _%__splice143693143694%_
                                 _%target141380141950%_
                                 _%tl141382141952%_))))
                        (_%__match143732143733%_
                         _%e141377141942%_
                         _%hd141378141945%_
                         _%tl141379141947%_
                         _%__splice143693143694%_
                         _%target141380141950%_
                         _%tl141382141952%_))))
                (_%__match143732143733%_
                 _%e141377141942%_
                 _%hd141378141945%_
                 _%tl141379141947%_
                 _%__splice143693143694%_
                 _%target141380141950%_
                 _%tl141382141952%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141383141955%_
                                     _%target141380141950%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143689143690%_))
                              (let ((_%e141377141942%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143689143690%_))))
                                (let ((_%tl141379141947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141377141942%_)))
                                      (_%hd141378141945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141377141942%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141378141945%_))
                                      (let ((_%__splice143693143694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141378141945%_
                                                '0))))
                                        (let ((_%tl141382141952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143693143694%_
                                                  '1)))
                                              (_%target141380141950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143693143694%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141382141952%_))
                                              (_%__match143720143721%_
                                               _%e141377141942%_
                                               _%hd141378141945%_
                                               _%tl141379141947%_
                                               _%__splice143693143694%_
                                               _%target141380141950%_
                                               _%tl141382141952%_)
                                              (_%__match143732143733%_
                                               _%e141377141942%_
                                               _%hd141378141945%_
                                               _%tl141379141947%_
                                               _%__splice143693143694%_
                                               _%target141380141950%_
                                               _%tl141382141952%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141379141947%_))
                                          (let ((_%e141492141549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141379141947%_))))
                                            (let ((_%tl141494141554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141492141549%_)))
                                                  (_%hd141493141552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141492141549%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141493141552%_))
                                                  (let ((_%e141495141557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141493141552%_))))
                                                    (let ((_%tl141497141562%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141495141557%_)))
                                                          (_%hd141496141560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141495141557%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141496141560%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141496141560%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141497141562%_))
                          (let ((_%e141498141565%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141497141562%_))))
                            (let ((_%tl141500141570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141498141565%_)))
                                  (_%hd141499141568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141498141565%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141499141568%_))
                                  (let ((_%e141501141573%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141499141568%_))))
                                    (let ((_%tl141503141578%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141501141573%_)))
                                          (_%hd141502141576%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141501141573%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141502141576%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141502141576%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141503141578%_))
                                                  (let ((_%e141504141581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141503141578%_))))
                                                    (let ((_%tl141506141586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141504141581%_)))
                                                          (_%hd141505141584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141504141581%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141506141586%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141500141570%_))
                      (let ((_%e141507141589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141500141570%_))))
                        (let ((_%tl141509141594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141507141589%_)))
                              (_%hd141508141592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141507141589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141508141592%_))
                              (let ((_%e141510141597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141508141592%_))))
                                (let ((_%tl141512141602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141510141597%_)))
                                      (_%hd141511141600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141510141597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141511141600%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141511141600%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141512141602%_))
                                              (let ((_%e141513141605%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141512141602%_))))
                                                (let ((_%tl141515141610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141513141605%_)))
                                                      (_%hd141514141608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141513141605%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141515141610%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141509141594%_))
                                                          (let ((_%e141516141613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141509141594%_))))
                    (let ((_%tl141518141618%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141516141613%_)))
                          (_%hd141517141616%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141516141613%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141517141616%_))
                          (let ((_%e141519141621%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141517141616%_))))
                            (let ((_%tl141521141626%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141519141621%_)))
                                  (_%hd141520141624%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141519141621%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141520141624%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141520141624%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141521141626%_))
                                          (let ((_%e141522141629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141521141626%_))))
                                            (let ((_%tl141524141634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141522141629%_)))
                                                  (_%hd141523141632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141522141629%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141524141634%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141518141618%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141494141554%_))
                                                          (_%__match143830143831%_
                                                           _%e141377141942%_
                                                           _%hd141378141945%_
                                                           _%tl141379141947%_
                                                           _%e141492141549%_
                                                           _%hd141493141552%_
                                                           _%tl141494141554%_
                                                           _%e141495141557%_
                                                           _%hd141496141560%_
                                                           _%tl141497141562%_
                                                           _%e141498141565%_
                                                           _%hd141499141568%_
                                                           _%tl141500141570%_
                                                           _%e141501141573%_
                                                           _%hd141502141576%_
                                                           _%tl141503141578%_
                                                           _%e141504141581%_
                                                           _%hd141505141584%_
                                                           _%tl141506141586%_
                                                           _%e141507141589%_
                                                           _%hd141508141592%_
                                                           _%tl141509141594%_
                                                           _%e141510141597%_
                                                           _%hd141511141600%_
                                                           _%tl141512141602%_
                                                           _%e141513141605%_
                                                           _%hd141514141608%_
                                                           _%tl141515141610%_
                                                           _%e141516141613%_
                                                           _%hd141517141616%_
                                                           _%tl141518141618%_
                                                           _%e141519141621%_
                                                           _%hd141520141624%_
                                                           _%tl141521141626%_
                                                           _%e141522141629%_
                                                           _%hd141523141632%_
                                                           _%tl141524141634%_)
                                                          (_%__kont143705143706%_))
                                                      (_%__kont143705143706%_))
                                                  (_%__kont143705143706%_))))
                                          (_%__kont143705143706%_))
                                      (_%__kont143705143706%_))
                                  (_%__kont143705143706%_))))
                          (_%__kont143705143706%_))))
                  (_%__kont143705143706%_))
              (_%__kont143705143706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143705143706%_))
                                          (_%__kont143705143706%_))
                                      (_%__kont143705143706%_))))
                              (_%__kont143705143706%_))))
                      (_%__kont143705143706%_))
                  (_%__kont143705143706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143705143706%_))
                                              (_%__kont143705143706%_))
                                          (_%__kont143705143706%_))))
                                  (_%__kont143705143706%_))))
                          (_%__kont143705143706%_))
                      (_%__kont143705143706%_))
                  (_%__kont143705143706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143705143706%_))))
                                          (_%__kont143705143706%_)))))
                              (_%__kont143705143706%_)))))))
                 (_%dispatch-case-e140677%_
                  (lambda (_%hd140828%_ _%body140829%_)
                    (let* ((_%form140831%_
                            (cons _%hd140828%_ (cons _%body140829%_ '())))
                           (_%__stx143833143834%_ _%form140831%_)
                           (_%g140835140959%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143833143834%_)))))
                      (let ((_%__kont143835143836%_
                             (lambda (_%L141330%_ _%L141331%_ _%L141332%_)
                               (let ((__tmp144999
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141331%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140673%_
                                  __tmp144999))))
                            (_%__kont143841143842%_
                             (lambda (_%L141178%_
                                      _%L141179%_
                                      _%L141180%_
                                      _%L141181%_)
                               (let ((__tmp145000
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141178%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140673%_
                                  __tmp145000))))
                            (_%__kont143845143846%_
                             (lambda (_%L141044%_ _%L141045%_ _%L141046%_)
                               (let ((__tmp145001
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141044%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140673%_
                                  __tmp145001)))))
                        (let* ((_%__match143942143943%_
                                (lambda (_%e140925140964%_
                                         _%hd140926140967%_
                                         _%tl140927140969%_
                                         _%e140928140972%_
                                         _%hd140929140975%_
                                         _%tl140930140977%_
                                         _%e140931140980%_
                                         _%hd140932140983%_
                                         _%tl140933140985%_
                                         _%e140934140988%_
                                         _%hd140935140991%_
                                         _%tl140936140993%_
                                         _%e140937140996%_
                                         _%hd140938140999%_
                                         _%tl140939141001%_
                                         _%e140940141004%_
                                         _%hd140941141007%_
                                         _%tl140942141009%_
                                         _%e140943141012%_
                                         _%hd140944141015%_
                                         _%tl140945141017%_
                                         _%e140946141020%_
                                         _%hd140947141023%_
                                         _%tl140948141025%_
                                         _%e140949141028%_
                                         _%hd140950141031%_
                                         _%tl140951141033%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140945141017%_))
                                      (let ((_%e140952141036%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140945141017%_))))
                                        (let ((_%tl140954141041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140952141036%_)))
                                              (_%hd140953141039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140952141036%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140954141041%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140930140977%_))
                                                  (_%__kont143845143846%_
                                                   _%hd140950141031%_
                                                   _%hd140941141007%_
                                                   _%hd140926140967%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140835140959%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140835140959%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140835140959%_)))))
                               (_%__match143872143873%_
                                (lambda (_%e140886141082%_
                                         _%hd140887141085%_
                                         _%tl140888141087%_
                                         _%__splice143843143844%_
                                         _%target140889141090%_
                                         _%tl140891141092%_)
                                  (letrec ((_%loop140892141095%_
                                            (lambda (_%hd140890141098%_
                                                     _%arg140896141100%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140890141098%_))
                                                  (let ((_%e140893141103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140890141098%_))))
                                                    (let ((_%lp-tl140895141108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140893141103%_)))
                                                          (_%lp-hd140894141106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140893141103%_))))
                                                      (_%loop140892141095%_
                                                       _%lp-tl140895141108%_
                                                       (cons _%lp-hd140894141106%_
                                                             _%arg140896141100%_))))
                                                  (let ((_%arg140897141111%_
                                                         (reverse _%arg140896141100%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140888141087%_))
                                                        (let ((_%e140898141114%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140888141087%_))))
                  (let ((_%tl140900141119%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140898141114%_)))
                        (_%hd140899141117%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140898141114%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140899141117%_))
                        (let ((_%e140901141122%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140899141117%_))))
                          (let ((_%tl140903141127%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140901141122%_)))
                                (_%hd140902141125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140901141122%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140902141125%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140902141125%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140903141127%_))
                                        (let ((_%e140904141130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140903141127%_))))
                                          (let ((_%tl140906141135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140904141130%_)))
                                                (_%hd140905141133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140904141130%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140905141133%_))
                                                (let ((_%e140907141138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140905141133%_))))
                                                  (let ((_%tl140909141143%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140907141138%_)))
                                                        (_%hd140908141141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140907141138%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140908141141%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140908141141%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140909141143%_))
                        (let ((_%e140910141146%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140909141143%_))))
                          (let ((_%tl140912141151%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140910141146%_)))
                                (_%hd140911141149%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140910141146%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140912141151%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl140906141135%_))
                                    (let ((_%e140913141154%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl140906141135%_))))
                                      (let ((_%tl140915141159%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140913141154%_)))
                                            (_%hd140914141157%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140913141154%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd140914141157%_))
                                            (let ((_%e140916141162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd140914141157%_))))
                                              (let ((_%tl140918141167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140916141162%_)))
                                                    (_%hd140917141165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140916141162%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd140917141165%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd140917141165%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140918141167%_))
                                                            (let ((_%e140919141170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140918141167%_))))
                      (let ((_%tl140921141175%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140919141170%_)))
                            (_%hd140920141173%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140919141170%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140921141175%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140900141119%_))
                                (_%__kont143841143842%_
                                 _%hd140920141173%_
                                 _%hd140911141149%_
                                 _%tl140891141092%_
                                 _%arg140897141111%_)
                                (_%__match143942143943%_
                                 _%e140886141082%_
                                 _%hd140887141085%_
                                 _%tl140888141087%_
                                 _%e140898141114%_
                                 _%hd140899141117%_
                                 _%tl140900141119%_
                                 _%e140901141122%_
                                 _%hd140902141125%_
                                 _%tl140903141127%_
                                 _%e140904141130%_
                                 _%hd140905141133%_
                                 _%tl140906141135%_
                                 _%e140907141138%_
                                 _%hd140908141141%_
                                 _%tl140909141143%_
                                 _%e140910141146%_
                                 _%hd140911141149%_
                                 _%tl140912141151%_
                                 _%e140913141154%_
                                 _%hd140914141157%_
                                 _%tl140915141159%_
                                 _%e140916141162%_
                                 _%hd140917141165%_
                                 _%tl140918141167%_
                                 _%e140919141170%_
                                 _%hd140920141173%_
                                 _%tl140921141175%_))
                            (let ()
                              (declare (not safe))
                              (_%g140835140959%_)))))
                    (let () (declare (not safe)) (_%g140835140959%_)))
                (let () (declare (not safe)) (_%g140835140959%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140835140959%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g140835140959%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140835140959%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140835140959%_)))))
                        (let () (declare (not safe)) (_%g140835140959%_)))
                    (let () (declare (not safe)) (_%g140835140959%_)))
                (let () (declare (not safe)) (_%g140835140959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140835140959%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140835140959%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140835140959%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140835140959%_)))))
                        (let () (declare (not safe)) (_%g140835140959%_)))))
                (let () (declare (not safe)) (_%g140835140959%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140892141095%_
                                     _%target140889141090%_
                                     '()))))
                               (_%__match143860143861%_
                                (lambda (_%e140840141218%_
                                         _%hd140841141221%_
                                         _%tl140842141223%_
                                         _%__splice143837143838%_
                                         _%target140843141226%_
                                         _%tl140845141228%_)
                                  (letrec ((_%loop140846141231%_
                                            (lambda (_%hd140844141234%_
                                                     _%arg140850141236%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140844141234%_))
                                                  (let ((_%e140847141239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140844141234%_))))
                                                    (let ((_%lp-tl140849141244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140847141239%_)))
                                                          (_%lp-hd140848141242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140847141239%_))))
                                                      (_%loop140846141231%_
                                                       _%lp-tl140849141244%_
                                                       (cons _%lp-hd140848141242%_
                                                             _%arg140850141236%_))))
                                                  (let ((_%arg140851141247%_
                                                         (reverse _%arg140850141236%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140842141223%_))
                                                        (let ((_%e140852141250%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140842141223%_))))
                  (let ((_%tl140854141255%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140852141250%_)))
                        (_%hd140853141253%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140852141250%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140853141253%_))
                        (let ((_%e140855141258%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140853141253%_))))
                          (let ((_%tl140857141263%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140855141258%_)))
                                (_%hd140856141261%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140855141258%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140856141261%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140856141261%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140857141263%_))
                                        (let ((_%e140858141266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140857141263%_))))
                                          (let ((_%tl140860141271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140858141266%_)))
                                                (_%hd140859141269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140858141266%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140859141269%_))
                                                (let ((_%e140861141274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140859141269%_))))
                                                  (let ((_%tl140863141279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140861141274%_)))
                                                        (_%hd140862141277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140861141274%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140862141277%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140862141277%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140863141279%_))
                        (let ((_%e140864141282%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140863141279%_))))
                          (let ((_%tl140866141287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140864141282%_)))
                                (_%hd140865141285%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140864141282%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140866141287%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl140860141271%_))
                                    (let ((_%__splice143839143840%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl140860141271%_
                                              '0))))
                                      (let ((_%tl140869141292%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143839143840%_
                                                '1)))
                                            (_%target140867141290%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143839143840%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl140869141292%_))
                                            (letrec ((_%loop140870141295%_
                                                      (lambda (_%hd140868141298%_
                                                               _%xarg140874141300%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd140868141298%_))
                                                            (let ((_%e140871141303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd140868141298%_))))
                      (let ((_%lp-tl140873141308%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140871141303%_)))
                            (_%lp-hd140872141306%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140871141303%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd140872141306%_))
                            (let ((_%e140876141311%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd140872141306%_))))
                              (let ((_%tl140878141316%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140876141311%_)))
                                    (_%hd140877141314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140876141311%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140877141314%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd140877141314%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140878141316%_))
                                            (let ((_%e140879141319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140878141316%_))))
                                              (let ((_%tl140881141324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140879141319%_)))
                                                    (_%hd140880141322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140879141319%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl140881141324%_))
                                                    (_%loop140870141295%_
                                                     _%lp-tl140873141308%_
                                                     (cons _%hd140880141322%_
                                                           _%xarg140874141300%_))
                                                    (_%__match143872143873%_
                                                     _%e140840141218%_
                                                     _%hd140841141221%_
                                                     _%tl140842141223%_
                                                     _%__splice143837143838%_
                                                     _%target140843141226%_
                                                     _%tl140845141228%_))))
                                            (_%__match143872143873%_
                                             _%e140840141218%_
                                             _%hd140841141221%_
                                             _%tl140842141223%_
                                             _%__splice143837143838%_
                                             _%target140843141226%_
                                             _%tl140845141228%_))
                                        (_%__match143872143873%_
                                         _%e140840141218%_
                                         _%hd140841141221%_
                                         _%tl140842141223%_
                                         _%__splice143837143838%_
                                         _%target140843141226%_
                                         _%tl140845141228%_))
                                    (_%__match143872143873%_
                                     _%e140840141218%_
                                     _%hd140841141221%_
                                     _%tl140842141223%_
                                     _%__splice143837143838%_
                                     _%target140843141226%_
                                     _%tl140845141228%_))))
                            (_%__match143872143873%_
                             _%e140840141218%_
                             _%hd140841141221%_
                             _%tl140842141223%_
                             _%__splice143837143838%_
                             _%target140843141226%_
                             _%tl140845141228%_))))
                    (let ((_%xarg140875141327%_
                           (reverse _%xarg140874141300%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140854141255%_))
                          (_%__kont143835143836%_
                           _%xarg140875141327%_
                           _%hd140865141285%_
                           _%arg140851141247%_)
                          (_%__match143872143873%_
                           _%e140840141218%_
                           _%hd140841141221%_
                           _%tl140842141223%_
                           _%__splice143837143838%_
                           _%target140843141226%_
                           _%tl140845141228%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop140870141295%_
                                               _%target140867141290%_
                                               '()))
                                            (_%__match143872143873%_
                                             _%e140840141218%_
                                             _%hd140841141221%_
                                             _%tl140842141223%_
                                             _%__splice143837143838%_
                                             _%target140843141226%_
                                             _%tl140845141228%_))))
                                    (_%__match143872143873%_
                                     _%e140840141218%_
                                     _%hd140841141221%_
                                     _%tl140842141223%_
                                     _%__splice143837143838%_
                                     _%target140843141226%_
                                     _%tl140845141228%_))
                                (_%__match143872143873%_
                                 _%e140840141218%_
                                 _%hd140841141221%_
                                 _%tl140842141223%_
                                 _%__splice143837143838%_
                                 _%target140843141226%_
                                 _%tl140845141228%_))))
                        (_%__match143872143873%_
                         _%e140840141218%_
                         _%hd140841141221%_
                         _%tl140842141223%_
                         _%__splice143837143838%_
                         _%target140843141226%_
                         _%tl140845141228%_))
                    (_%__match143872143873%_
                     _%e140840141218%_
                     _%hd140841141221%_
                     _%tl140842141223%_
                     _%__splice143837143838%_
                     _%target140843141226%_
                     _%tl140845141228%_))
                (_%__match143872143873%_
                 _%e140840141218%_
                 _%hd140841141221%_
                 _%tl140842141223%_
                 _%__splice143837143838%_
                 _%target140843141226%_
                 _%tl140845141228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143872143873%_
                                                 _%e140840141218%_
                                                 _%hd140841141221%_
                                                 _%tl140842141223%_
                                                 _%__splice143837143838%_
                                                 _%target140843141226%_
                                                 _%tl140845141228%_))))
                                        (_%__match143872143873%_
                                         _%e140840141218%_
                                         _%hd140841141221%_
                                         _%tl140842141223%_
                                         _%__splice143837143838%_
                                         _%target140843141226%_
                                         _%tl140845141228%_))
                                    (_%__match143872143873%_
                                     _%e140840141218%_
                                     _%hd140841141221%_
                                     _%tl140842141223%_
                                     _%__splice143837143838%_
                                     _%target140843141226%_
                                     _%tl140845141228%_))
                                (_%__match143872143873%_
                                 _%e140840141218%_
                                 _%hd140841141221%_
                                 _%tl140842141223%_
                                 _%__splice143837143838%_
                                 _%target140843141226%_
                                 _%tl140845141228%_))))
                        (_%__match143872143873%_
                         _%e140840141218%_
                         _%hd140841141221%_
                         _%tl140842141223%_
                         _%__splice143837143838%_
                         _%target140843141226%_
                         _%tl140845141228%_))))
                (_%__match143872143873%_
                 _%e140840141218%_
                 _%hd140841141221%_
                 _%tl140842141223%_
                 _%__splice143837143838%_
                 _%target140843141226%_
                 _%tl140845141228%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140846141231%_
                                     _%target140843141226%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143833143834%_))
                              (let ((_%e140840141218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143833143834%_))))
                                (let ((_%tl140842141223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140840141218%_)))
                                      (_%hd140841141221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140840141218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140841141221%_))
                                      (let ((_%__splice143837143838%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140841141221%_
                                                '0))))
                                        (let ((_%tl140845141228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143837143838%_
                                                  '1)))
                                              (_%target140843141226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143837143838%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140845141228%_))
                                              (_%__match143860143861%_
                                               _%e140840141218%_
                                               _%hd140841141221%_
                                               _%tl140842141223%_
                                               _%__splice143837143838%_
                                               _%target140843141226%_
                                               _%tl140845141228%_)
                                              (_%__match143872143873%_
                                               _%e140840141218%_
                                               _%hd140841141221%_
                                               _%tl140842141223%_
                                               _%__splice143837143838%_
                                               _%target140843141226%_
                                               _%tl140845141228%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140842141223%_))
                                          (let ((_%e140928140972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl140842141223%_))))
                                            (let ((_%tl140930140977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140928140972%_)))
                                                  (_%hd140929140975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140928140972%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140929140975%_))
                                                  (let ((_%e140931140980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140929140975%_))))
                                                    (let ((_%tl140933140985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140931140980%_)))
                                                          (_%hd140932140983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140931140980%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd140932140983%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd140932140983%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140933140985%_))
                          (let ((_%e140934140988%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140933140985%_))))
                            (let ((_%tl140936140993%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140934140988%_)))
                                  (_%hd140935140991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140934140988%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140935140991%_))
                                  (let ((_%e140937140996%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140935140991%_))))
                                    (let ((_%tl140939141001%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140937140996%_)))
                                          (_%hd140938140999%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140937140996%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140938140999%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140938140999%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140939141001%_))
                                                  (let ((_%e140940141004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140939141001%_))))
                                                    (let ((_%tl140942141009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140940141004%_)))
                                                          (_%hd140941141007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140940141004%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140942141009%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl140936140993%_))
                      (let ((_%e140943141012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl140936140993%_))))
                        (let ((_%tl140945141017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140943141012%_)))
                              (_%hd140944141015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140943141012%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd140944141015%_))
                              (let ((_%e140946141020%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd140944141015%_))))
                                (let ((_%tl140948141025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140946141020%_)))
                                      (_%hd140947141023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140946141020%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd140947141023%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd140947141023%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140948141025%_))
                                              (let ((_%e140949141028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140948141025%_))))
                                                (let ((_%tl140951141033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140949141028%_)))
                                                      (_%hd140950141031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140949141028%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140951141033%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl140945141017%_))
                                                          (let ((_%e140952141036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl140945141017%_))))
                    (let ((_%tl140954141041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140952141036%_)))
                          (_%hd140953141039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140952141036%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140954141041%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140930140977%_))
                              (_%__kont143845143846%_
                               _%hd140950141031%_
                               _%hd140941141007%_
                               _%hd140841141221%_)
                              (let ()
                                (declare (not safe))
                                (_%g140835140959%_)))
                          (let () (declare (not safe)) (_%g140835140959%_)))))
                  (let () (declare (not safe)) (_%g140835140959%_)))
              (let () (declare (not safe)) (_%g140835140959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140835140959%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140835140959%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140835140959%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g140835140959%_)))))
                      (let () (declare (not safe)) (_%g140835140959%_)))
                  (let () (declare (not safe)) (_%g140835140959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140835140959%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140835140959%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140835140959%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140835140959%_)))))
                          (let () (declare (not safe)) (_%g140835140959%_)))
                      (let () (declare (not safe)) (_%g140835140959%_)))
                  (let () (declare (not safe)) (_%g140835140959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140835140959%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140835140959%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g140835140959%_))))))))
                 (_%generate1140678%_
                  (lambda (_%args140813%_
                           _%arglen140814%_
                           _%hd140815%_
                           _%body140816%_)
                    (let* ((_%len140818%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140815%_)))
                           (_%condition140823%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140815%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen140814%_
                                                (cons _%len140818%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen140814%_ (cons _%len140818%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140818%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen140814%_
                                                    (cons _%len140818%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen140814%_ (cons _%len140818%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch140825%_
                            (if (_%dispatch-case?140676%_
                                 _%hd140815%_
                                 _%body140816%_)
                                (_%dispatch-case-e140677%_
                                 _%hd140815%_
                                 _%body140816%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self140673%_
                                 _%hd140815%_
                                 _%body140816%_))))
                      (cons _%condition140823%_
                            (cons (cons 'apply
                                        (cons _%dispatch140825%_
                                              (cons _%args140813%_ '())))
                                  '()))))))
          (let* ((_%g140680140708%_
                  (lambda (_%g140681140705%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140681140705%_))))
                 (_%g140679140810%_
                  (lambda (_%g140681140711%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140681140711%_))
                        (let ((_%e140684140713%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140681140711%_))))
                          (let ((_%hd140685140716%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140684140713%_)))
                                (_%tl140686140718%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140684140713%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140686140718%_))
                                (let ((_g145002_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140686140718%_
                                          '0))))
                                  (begin
                                    (let ((_g145003_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145002_)
                                                 (##vector-length _g145002_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145003_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145003_)))
                                    (let ((_%target140687140721%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145002_ 0)))
                                          (_%tl140689140723%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145002_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140689140723%_))
                                          (letrec ((_%loop140690140726%_
                                                    (lambda (_%hd140688140729%_
                                                             _%body140694140731%_
                                                             _%hd140695140733%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140688140729%_))
                                                          (let ((_%e140691140736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140688140729%_))))
                    (let ((_%lp-hd140692140739%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140691140736%_)))
                          (_%lp-tl140693140741%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140691140736%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140692140739%_))
                          (let ((_%e140698140744%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140692140739%_))))
                            (let ((_%hd140699140747%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140698140744%_)))
                                  (_%tl140700140749%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140698140744%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140700140749%_))
                                  (let ((_%e140701140752%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140700140749%_))))
                                    (let ((_%hd140702140755%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140701140752%_)))
                                          (_%tl140703140757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140701140752%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140703140757%_))
                                          (_%loop140690140726%_
                                           _%lp-tl140693140741%_
                                           (cons _%hd140702140755%_
                                                 _%body140694140731%_)
                                           (cons _%hd140699140747%_
                                                 _%hd140695140733%_))
                                          (_%g140680140708%_
                                           _%g140681140711%_))))
                                  (_%g140680140708%_ _%g140681140711%_))))
                          (_%g140680140708%_ _%g140681140711%_))))
                  (let ((_%body140696140760%_ (reverse _%body140694140731%_))
                        (_%hd140697140762%_ (reverse _%hd140695140733%_)))
                    ((lambda (_%L140765%_ _%L140766%_)
                       (let ((_%args140785%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140786%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140787%_
                              (let ((_%$e140782%_
                                     (let ((__tmp145004
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145004 _%stx140674%_))))
                                (if _%$e140782%_
                                    _%$e140782%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140785%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args140785%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140785%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145008
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140787%_
                                                                (cons _%args140785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145005
                                  (map (lambda (_%g140788140791%_
                                                _%g140789140793%_)
                                         (_%generate1140678%_
                                          _%args140785%_
                                          _%arglen140786%_
                                          _%g140788140791%_
                                          _%g140789140793%_))
                                       (let ((__tmp145006
                                              (lambda (_%g140795140798%_
                                                       _%g140796140800%_)
                                                (cons _%g140795140798%_
                                                      _%g140796140800%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145006
                                          '()
                                          _%L140766%_))
                                       (let ((__tmp145007
                                              (lambda (_%g140802140805%_
                                                       _%g140803140807%_)
                                                (cons _%g140802140805%_
                                                      _%g140803140807%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145007
                                          '()
                                          _%L140765%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145008 __tmp145005)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140696140760%_
                     _%hd140697140762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140690140726%_
                                             _%target140687140721%_
                                             '()
                                             '()))
                                          (_%g140680140708%_
                                           _%g140681140711%_)))))
                                (_%g140680140708%_ _%g140681140711%_))))
                        (_%g140680140708%_ _%g140681140711%_)))))
            (_%g140679140810%_ _%stx140674%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self139910%_ _%stx139911%_ _%compiled-body?139912%_)
        (letrec ((_%generate-simple139914%_
                  (lambda (_%hd140658%_ _%body140659%_)
                    (_%coalesce-boolean139915%_
                     (_%simplify-let139916%_
                      (gxc#generate-runtime-simple-let
                       _%self139910%_
                       'let
                       _%hd140658%_
                       _%body140659%_
                       _%compiled-body?139912%_)))))
                 (_%coalesce-boolean139915%_
                  (lambda (_%code140519%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140520140546%_ _%code140519%_)
                               (_%else140522140554%_
                                (lambda () _%code140519%_))
                               (_%K140524140591%_
                                (lambda (_%expr2140557%_
                                         _%expr1140558%_
                                         _%id140559%_)
                                  (let* ((_%expr2140560140568%_
                                          _%expr2140557%_)
                                         (_%else140562140576%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140558%_
                                                        (cons _%expr2140557%_
                                                              '())))))
                                         (_%K140564140581%_
                                          (lambda (_%exprs140579%_)
                                            (cons 'or
                                                  (cons _%expr1140558%_
                                                        _%exprs140579%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140560140568%_))
                                        (let ((_%hd140565140584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140560140568%_)))
                                              (_%tl140566140586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140560140568%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140565140584%_ 'or))
                                              (let ((_%exprs140589%_
                                                     _%tl140566140586%_))
                                                (_%K140564140581%_
                                                 _%exprs140589%_))
                                              (_%else140562140576%_)))
                                        (_%else140562140576%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140520140546%_))
                              (let ((_%hd140525140594%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140520140546%_)))
                                    (_%tl140526140596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140520140546%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140525140594%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140526140596%_))
                                        (let ((_%hd140527140599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140526140596%_)))
                                              (_%tl140528140601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140526140596%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140527140599%_))
                                              (let ((_%hd140539140604%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140527140599%_)))
                                                    (_%tl140540140606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140527140599%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140539140604%_))
                                                    (let ((_%hd140541140609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140539140604%_)))
                                                          (_%tl140542140611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140539140604%_))))
                                                      (let ((_%id140614%_
                                                             _%hd140541140609%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140542140611%_))
                                                            (let ((_%hd140543140616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140542140611%_)))
                          (_%tl140544140618%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140542140611%_))))
                      (let ((_%expr1140621%_ _%hd140543140616%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140544140618%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140540140606%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140528140601%_))
                                    (let ((_%hd140529140623%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140528140601%_)))
                                          (_%tl140530140625%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140528140601%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140529140623%_))
                                          (let ((_%hd140531140628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140529140623%_)))
                                                (_%tl140532140630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140529140623%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140531140628%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140532140630%_))
                                                    (let ((_%hd140533140633%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140532140630%_)))
                                                          (_%tl140534140635%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140532140630%_))))
                                                      (if ((lambda (_%g140637140639%_)
                                                             (eq? _%g140637140639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140614%_))
                   _%hd140533140633%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140534140635%_))
                      (let ((_%hd140535140642%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140534140635%_)))
                            (_%tl140536140644%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140534140635%_))))
                        (if ((lambda (_%g140646140648%_)
                               (eq? _%g140646140648%_ _%id140614%_))
                             _%hd140535140642%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140536140644%_))
                                (let ((_%hd140537140651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140536140644%_)))
                                      (_%tl140538140653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140536140644%_))))
                                  (let ((_%expr2140656%_ _%hd140537140651%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140538140653%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140530140625%_))
                                            (_%K140524140591%_
                                             _%expr2140656%_
                                             _%expr1140621%_
                                             _%id140614%_)
                                            (_%else140522140554%_))
                                        (_%else140522140554%_))))
                                (_%else140522140554%_))
                            (_%else140522140554%_)))
                      (_%else140522140554%_))
                  (_%else140522140554%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140522140554%_))
                                                (_%else140522140554%_)))
                                          (_%else140522140554%_)))
                                    (_%else140522140554%_))
                                (_%else140522140554%_))
                            (_%else140522140554%_))))
                    (_%else140522140554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140522140554%_)))
                                              (_%else140522140554%_)))
                                        (_%else140522140554%_))
                                    (_%else140522140554%_)))
                              (_%else140522140554%_)))
                        _%code140519%_)))
                 (_%simplify-let139916%_
                  (lambda (_%code140218%_)
                    (let* ((_%code140219140291%_ _%code140218%_)
                           (_%else140224140299%_ (lambda () _%code140218%_)))
                      (let ((_%K140283140499%_
                             (lambda (_%expr140497%_) _%expr140497%_))
                            (_%K140266140445%_
                             (lambda (_%body140441%_
                                      _%expr140442%_
                                      _%id140443%_)
                               (cons 'let
                                     (cons (cons (cons _%id140443%_
                                                       (cons _%expr140442%_
                                                             '()))
                                                 '())
                                           _%body140441%_))))
                            (_%K140243140369%_
                             (lambda (_%body140363%_
                                      _%expr2140364%_
                                      _%id2140365%_
                                      _%expr1140366%_
                                      _%id1140367%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140367%_
                                                       (cons _%expr1140366%_
                                                             '()))
                                                 (cons (cons _%id2140365%_
                                                             (cons _%expr2140364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140363%_))))
                            (_%K140226140308%_
                             (lambda (_%body140303%_
                                      _%bind140304%_
                                      _%expr1140305%_
                                      _%id1140306%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140306%_
                                                       (cons _%expr1140305%_
                                                             '()))
                                                 _%bind140304%_)
                                           _%body140303%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140219140291%_))
                            (let ((_%tl140285140504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140219140291%_)))
                                  (_%hd140284140502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140219140291%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140284140502%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140285140504%_))
                                      (let ((_%tl140287140509%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140285140504%_)))
                                            (_%hd140286140507%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140285140504%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140286140507%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl140287140509%_))
                                                (let ((_%tl140289140514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl140287140509%_)))
                                                      (_%hd140288140512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl140287140509%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl140289140514%_))
                                                      (let ((_%expr140517%_
                                                             _%hd140288140512%_))
                                                        (_%K140283140499%_
                                                         _%expr140517%_))
                                                      (_%else140224140299%_)))
                                                (_%else140224140299%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140286140507%_))
                                                (let ((_%tl140278140460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140286140507%_)))
                                                      (_%hd140277140458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140286140507%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140277140458%_))
                                                      (let ((_%tl140280140465%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140277140458%_)))
                    (_%hd140279140463%_
                     (let () (declare (not safe)) (##car _%hd140277140458%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140280140465%_))
                    (let ((_%tl140282140472%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140280140465%_)))
                          (_%hd140281140470%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140280140465%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140282140472%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140278140460%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl140287140509%_))
                                  (let ((_%tl140272140479%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl140287140509%_)))
                                        (_%hd140271140477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl140287140509%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140271140477%_))
                                        (let ((_%tl140274140484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140271140477%_)))
                                              (_%hd140273140482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140271140477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140273140482%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140274140484%_))
                                                  (let ((_%tl140276140489%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140274140484%_)))
                                                        (_%hd140275140487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140274140484%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140275140487%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140272140479%_))
                                                            (let ((_%id140468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140279140463%_)
                          (_%expr140475%_ _%hd140281140470%_)
                          (_%body140492%_ _%tl140276140489%_))
                      (_%K140266140445%_
                       _%body140492%_
                       _%expr140475%_
                       _%id140468%_))
                    (_%else140224140299%_))
                (if (let () (declare (not safe)) (##pair? _%hd140275140487%_))
                    (let ((_%tl140255140418%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140275140487%_)))
                          (_%hd140254140416%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140275140487%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140254140416%_))
                          (let ((_%tl140257140423%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140254140416%_)))
                                (_%hd140256140421%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140254140416%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140257140423%_))
                                (let ((_%tl140259140430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140257140423%_)))
                                      (_%hd140258140428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140257140423%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140259140430%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140255140418%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140272140479%_))
                                              (let ((_%id1140392%_
                                                     _%hd140279140463%_)
                                                    (_%expr1140399%_
                                                     _%hd140281140470%_)
                                                    (_%id2140426%_
                                                     _%hd140256140421%_)
                                                    (_%expr2140433%_
                                                     _%hd140258140428%_)
                                                    (_%body140435%_
                                                     _%tl140276140489%_))
                                                (_%K140243140369%_
                                                 _%body140435%_
                                                 _%expr2140433%_
                                                 _%id2140426%_
                                                 _%expr1140399%_
                                                 _%id1140392%_))
                                              (_%else140224140299%_))
                                          (_%else140224140299%_))
                                      (_%else140224140299%_)))
                                (_%else140224140299%_)))
                          (_%else140224140299%_)))
                    (_%else140224140299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140224140299%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140273140482%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140274140484%_))
                                                      (let ((_%tl140236140352%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140274140484%_)))
                    (_%hd140235140350%_
                     (let () (declare (not safe)) (##car _%tl140274140484%_))))
                (if (let () (declare (not safe)) (##null? _%tl140272140479%_))
                    (let ((_%id1140331%_ _%hd140279140463%_)
                          (_%expr1140338%_ _%hd140281140470%_)
                          (_%bind140355%_ _%hd140235140350%_)
                          (_%body140357%_ _%tl140236140352%_))
                      (_%K140226140308%_
                       _%body140357%_
                       _%bind140355%_
                       _%expr1140338%_
                       _%id1140331%_))
                    (_%else140224140299%_)))
              (_%else140224140299%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140224140299%_))))
                                        (_%else140224140299%_)))
                                  (_%else140224140299%_))
                              (_%else140224140299%_))
                          (_%else140224140299%_)))
                    (_%else140224140299%_)))
              (_%else140224140299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140224140299%_))))
                                      (_%else140224140299%_))
                                  (_%else140224140299%_)))
                            (_%else140224140299%_))))))
                 (_%generate-values139917%_
                  (lambda (_%hd140031%_ _%body140032%_)
                    (let _%lp140034%_ ((_%rest140036%_ _%hd140031%_)
                                       (_%bind140037%_ '())
                                       (_%check140038%_ '())
                                       (_%post140039%_ '()))
                      (let* ((_%__stx144162144163%_ _%rest140036%_)
                             (_%g140042140053%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144162144163%_)))))
                        (let ((_%__kont144164144165%_
                               (lambda (_%L140080%_ _%L140081%_)
                                 (let* ((_%__stx144118144119%_ _%L140081%_)
                                        (_%g140096140121%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144118144119%_)))))
                                   (let ((_%__kont144120144121%_
                                          (lambda (_%L140194%_ _%L140195%_)
                                            (let ((_%eid140209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140195%_)))
                                                  (_%expr140210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139910%_
                                                      _%L140194%_))))
                                              (_%lp140034%_
                                               _%L140080%_
                                               (cons (cons _%eid140209%_
                                                           (cons _%expr140210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140037%_)
                                               _%check140038%_
                                               _%post140039%_))))
                                         (_%__kont144122144123%_
                                          (lambda (_%L140142%_ _%L140143%_)
                                            (let* ((_%vals140156%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140158%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140156%_
                                                     _%L140143%_
                                                     _%L140142%_))
                                                   (_%refs140160%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140156%_
                                                     _%L140143%_))
                                                   (_%expr140162%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139910%_
                                                       _%L140142%_))))
                                              (_%lp140034%_
                                               _%L140080%_
                                               (cons (cons _%vals140156%_
                                                           (cons _%expr140162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140037%_)
                                               (cons _%check-values140158%_
                                                     _%check140038%_)
                                               (cons _%refs140160%_
                                                     _%post140039%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144118144119%_))
                                         (let ((_%e140100140170%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144118144119%_))))
                                           (let ((_%tl140102140175%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140100140170%_)))
                                                 (_%hd140101140173%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140100140170%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140101140173%_))
                                                 (let ((_%e140103140178%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140101140173%_))))
                                                   (let ((_%tl140105140183%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140103140178%_)))
                                                         (_%hd140104140181%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140103140178%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140105140183%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140102140175%_))
                     (let ((_%e140106140186%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140102140175%_))))
                       (let ((_%tl140108140191%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140106140186%_)))
                             (_%hd140107140189%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140106140186%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140108140191%_))
                             (_%__kont144120144121%_
                              _%hd140107140189%_
                              _%hd140104140181%_)
                             (let ()
                               (declare (not safe))
                               (_%g140096140121%_)))))
                     (let () (declare (not safe)) (_%g140096140121%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140102140175%_))
                     (let ((_%e140114140134%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140102140175%_))))
                       (let ((_%tl140116140139%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140114140134%_)))
                             (_%hd140115140137%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140114140134%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140116140139%_))
                             (_%__kont144122144123%_
                              _%hd140115140137%_
                              _%hd140101140173%_)
                             (let ()
                               (declare (not safe))
                               (_%g140096140121%_)))))
                     (let () (declare (not safe)) (_%g140096140121%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140102140175%_))
                                                     (let ((_%e140114140134%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140102140175%_))))
                                                       (let ((_%tl140116140139%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140114140134%_)))
                     (_%hd140115140137%_
                      (let () (declare (not safe)) (##car _%e140114140134%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140116140139%_))
                     (_%__kont144122144123%_
                      _%hd140115140137%_
                      _%hd140101140173%_)
                     (let () (declare (not safe)) (_%g140096140121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140096140121%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140096140121%_)))))))
                              (_%__kont144166144167%_
                               (lambda ()
                                 (let* ((_%body140060%_
                                         (if _%compiled-body?139912%_
                                             _%body140032%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139910%_
                                                _%body140032%_))))
                                        (_%body140062%_
                                         (_%generate-values-post139918%_
                                          _%post140039%_
                                          _%body140060%_))
                                        (_%body140064%_
                                         (_%generate-values-check139919%_
                                          _%check140038%_
                                          _%body140062%_)))
                                   (cons 'let
                                         (cons (reverse _%bind140037%_)
                                               (cons _%body140064%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144162144163%_))
                              (let ((_%e140046140072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144162144163%_))))
                                (let ((_%tl140048140077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140046140072%_)))
                                      (_%hd140047140075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140046140072%_))))
                                  (_%__kont144164144165%_
                                   _%tl140048140077%_
                                   _%hd140047140075%_)))
                              (_%__kont144166144167%_)))))))
                 (_%generate-values-post139918%_
                  (lambda (_%post139990%_ _%body139991%_)
                    (let _%lp139993%_ ((_%rest139995%_ _%post139990%_)
                                       (_%body139996%_ _%body139991%_))
                      (let* ((_%rest139997140005%_ _%rest139995%_)
                             (_%else139999140013%_ (lambda () _%body139996%_))
                             (_%K140001140019%_
                              (lambda (_%rest140016%_ _%bind140017%_)
                                (_%lp139993%_
                                 _%rest140016%_
                                 (cons 'let
                                       (cons _%bind140017%_
                                             (cons _%body139996%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139997140005%_))
                            (let ((_%hd140002140022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139997140005%_)))
                                  (_%tl140003140024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139997140005%_))))
                              (let* ((_%bind140027%_ _%hd140002140022%_)
                                     (_%rest140029%_ _%tl140003140024%_))
                                (_%K140001140019%_
                                 _%rest140029%_
                                 _%bind140027%_)))
                            (_%else139999140013%_))))))
                 (_%generate-values-check139919%_
                  (lambda (_%check139987%_ _%body139988%_)
                    (cons 'begin
                          (let ((__tmp145010 (cons _%body139988%_ '()))
                                (__tmp145009 (reverse _%check139987%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145010 __tmp145009))))))
          (let* ((_%g139921139938%_
                  (lambda (_%g139922139935%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139922139935%_))))
                 (_%g139920139984%_
                  (lambda (_%g139922139941%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139922139941%_))
                        (let ((_%e139925139943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139922139941%_))))
                          (let ((_%hd139926139946%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139925139943%_)))
                                (_%tl139927139948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139925139943%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139927139948%_))
                                (let ((_%e139928139951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139927139948%_))))
                                  (let ((_%hd139929139954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139928139951%_)))
                                        (_%tl139930139956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139928139951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139930139956%_))
                                        (let ((_%e139931139959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139930139956%_))))
                                          (let ((_%hd139932139962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139931139959%_)))
                                                (_%tl139933139964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139931139959%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139933139964%_))
                                                ((lambda (_%L139967%_
                                                          _%L139968%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139968%_)
                                                       (_%generate-simple139914%_
                                                        _%L139968%_
                                                        _%L139967%_)
                                                       (_%generate-values139917%_
                                                        _%L139968%_
                                                        _%L139967%_)))
                                                 _%hd139932139962%_
                                                 _%hd139929139954%_)
                                                (_%g139921139938%_
                                                 _%g139922139941%_))))
                                        (_%g139921139938%_
                                         _%g139922139941%_))))
                                (_%g139921139938%_ _%g139922139941%_))))
                        (_%g139921139938%_ _%g139922139941%_)))))
            (_%g139920139984%_ _%stx139911%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140664%_ _%stx140665%_)
        (let ((_%compiled-body?140667%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self140664%_
           _%stx140665%_
           _%compiled-body?140667%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145012_
        (let ((_g145011_ (let () (declare (not safe)) (##length _g145012_))))
          (cond ((let () (declare (not safe)) (##fx= _g145011_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g145012_))
                ((let () (declare (not safe)) (##fx= _g145011_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g145012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145012_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals139804%_ _%hd139805%_)
        (let _%lp139807%_ ((_%rest139809%_ _%hd139805%_)
                           (_%k139810%_ '0)
                           (_%r139811%_ '()))
          (let* ((_%__stx144176144177%_ _%rest139809%_)
                 (_%g139816139833%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144176144177%_)))))
            (let ((_%__kont144178144179%_
                   (lambda (_%L139896%_)
                     (_%lp139807%_
                      _%L139896%_
                      (let () (declare (not safe)) (##fx+ _%k139810%_ '1))
                      _%r139811%_)))
                  (_%__kont144180144181%_
                   (lambda (_%L139869%_ _%L139870%_)
                     (_%lp139807%_
                      _%L139869%_
                      (let () (declare (not safe)) (##fx+ _%k139810%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L139870%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals139804%_
                                         _%k139810%_
                                         _%L139869%_)
                                        '()))
                            _%r139811%_))))
                  (_%__kont144182144183%_
                   (lambda (_%L139845%_)
                     (let ((__tmp145013
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L139845%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals139804%_
                                               _%k139810%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145013 _%r139811%_))))
                  (_%__kont144184144185%_ (lambda () (reverse _%r139811%_))))
              (let ((_%g139814139856%_
                     (lambda ()
                       (let ((_%L139845%_ _%__stx144176144177%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L139845%_))
                             (_%__kont144182144183%_ _%L139845%_)
                             (_%__kont144184144185%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144176144177%_))
                    (let ((_%e139819139885%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144176144177%_))))
                      (let ((_%tl139821139890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139819139885%_)))
                            (_%hd139820139888%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139819139885%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd139820139888%_))
                            (let ((_%e139822139893%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd139820139888%_))))
                              (if (equal? _%e139822139893%_ '#f)
                                  (_%__kont144178144179%_ _%tl139821139890%_)
                                  (_%__kont144180144181%_
                                   _%tl139821139890%_
                                   _%hd139820139888%_)))
                            (_%__kont144180144181%_
                             _%tl139821139890%_
                             _%hd139820139888%_))))
                    (let () (declare (not safe)) (_%g139814139856%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139483%_ _%stx139484%_ _%compiled-body?139485%_)
        (letrec ((_%generate-simple139487%_
                  (lambda (_%hd139789%_ _%body139790%_)
                    (gxc#generate-runtime-simple-let
                     _%self139483%_
                     'letrec
                     _%hd139789%_
                     _%body139790%_
                     _%compiled-body?139485%_)))
                 (_%generate-values139488%_
                  (lambda (_%hd139568%_ _%body139569%_)
                    (let _%lp139571%_ ((_%rest139573%_ _%hd139568%_)
                                       (_%bind139574%_ '())
                                       (_%check139575%_ '())
                                       (_%post139576%_ '()))
                      (let* ((_%__stx144250144251%_ _%rest139573%_)
                             (_%g139579139590%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144250144251%_)))))
                        (let ((_%__kont144252144253%_
                               (lambda (_%L139617%_ _%L139618%_)
                                 (let* ((_%__stx144206144207%_ _%L139618%_)
                                        (_%g139633139658%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144206144207%_)))))
                                   (let ((_%__kont144208144209%_
                                          (lambda (_%L139765%_ _%L139766%_)
                                            (let ((_%eid139780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139766%_)))
                                                  (_%expr139781%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139483%_
                                                      _%L139765%_))))
                                              (_%lp139571%_
                                               _%L139617%_
                                               (cons (cons _%eid139780%_
                                                           (cons _%expr139781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139574%_)
                                               _%check139575%_
                                               _%post139576%_))))
                                         (_%__kont144210144211%_
                                          (lambda (_%L139679%_ _%L139680%_)
                                            (let* ((_%vals139693%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139695%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals139693%_
                                                     _%L139680%_
                                                     _%L139679%_))
                                                   (_%refs139697%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals139693%_
                                                     _%L139680%_))
                                                   (_%expr139699%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139483%_
                                                       _%L139679%_))))
                                              (_%lp139571%_
                                               _%L139617%_
                                               (let ((__tmp145015
                                                      (cons (cons _%vals139693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr139699%_ '()))
                    _%bind139574%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145014
                                                      (map (lambda (_%e139701139703%_)
                                                             (let* ((_%g139705139714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e139701139703%_)
                            (_%E139707139718%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g139705139714%_
                                        '([eid _])))
                               '#!void))
                            (_%K139708139723%_
                             (lambda (_%eid139721%_)
                               (cons _%eid139721%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g139705139714%_))
                           (let ((_%hd139709139726%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139705139714%_)))
                                 (_%tl139710139728%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139705139714%_))))
                             (let ((_%eid139731%_ _%hd139709139726%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl139710139728%_))
                                   (let ((_%tl139712139733%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl139710139728%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl139712139733%_))
                                         (_%K139708139723%_ _%eid139731%_)
                                         (_%E139707139718%_)))
                                   (_%E139707139718%_))))
                           (_%E139707139718%_))))
                   _%refs139697%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp145015
                                                  __tmp145014))
                                               (cons _%check-values139695%_
                                                     _%check139575%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs139697%_
                                                  _%post139576%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144206144207%_))
                                         (let ((_%e139637139741%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144206144207%_))))
                                           (let ((_%tl139639139746%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139637139741%_)))
                                                 (_%hd139638139744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139637139741%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139638139744%_))
                                                 (let ((_%e139640139749%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139638139744%_))))
                                                   (let ((_%tl139642139754%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139640139749%_)))
                                                         (_%hd139641139752%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139640139749%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139642139754%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139639139746%_))
                     (let ((_%e139643139757%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139639139746%_))))
                       (let ((_%tl139645139762%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139643139757%_)))
                             (_%hd139644139760%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139643139757%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139645139762%_))
                             (_%__kont144208144209%_
                              _%hd139644139760%_
                              _%hd139641139752%_)
                             (let ()
                               (declare (not safe))
                               (_%g139633139658%_)))))
                     (let () (declare (not safe)) (_%g139633139658%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139639139746%_))
                     (let ((_%e139651139671%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139639139746%_))))
                       (let ((_%tl139653139676%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139651139671%_)))
                             (_%hd139652139674%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139651139671%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139653139676%_))
                             (_%__kont144210144211%_
                              _%hd139652139674%_
                              _%hd139638139744%_)
                             (let ()
                               (declare (not safe))
                               (_%g139633139658%_)))))
                     (let () (declare (not safe)) (_%g139633139658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139639139746%_))
                                                     (let ((_%e139651139671%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139639139746%_))))
                                                       (let ((_%tl139653139676%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139651139671%_)))
                     (_%hd139652139674%_
                      (let () (declare (not safe)) (##car _%e139651139671%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139653139676%_))
                     (_%__kont144210144211%_
                      _%hd139652139674%_
                      _%hd139638139744%_)
                     (let () (declare (not safe)) (_%g139633139658%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139633139658%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139633139658%_)))))))
                              (_%__kont144254144255%_
                               (lambda ()
                                 (let* ((_%body139597%_
                                         (if _%compiled-body?139485%_
                                             _%body139569%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139483%_
                                                _%body139569%_))))
                                        (_%body139599%_
                                         (_%generate-values-post139490%_
                                          _%post139576%_
                                          _%body139597%_))
                                        (_%body139601%_
                                         (_%generate-values-check139489%_
                                          _%check139575%_
                                          _%body139599%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind139574%_)
                                               (cons _%body139601%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144250144251%_))
                              (let ((_%e139583139609%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144250144251%_))))
                                (let ((_%tl139585139614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139583139609%_)))
                                      (_%hd139584139612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139583139609%_))))
                                  (_%__kont144252144253%_
                                   _%tl139585139614%_
                                   _%hd139584139612%_)))
                              (_%__kont144254144255%_)))))))
                 (_%generate-values-check139489%_
                  (lambda (_%check139565%_ _%body139566%_)
                    (cons 'begin
                          (let ((__tmp145017 (cons _%body139566%_ '()))
                                (__tmp145016 (reverse _%check139565%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145017 __tmp145016)))))
                 (_%generate-values-post139490%_
                  (lambda (_%post139558%_ _%body139559%_)
                    (cons 'begin
                          (let ((__tmp145021 (cons _%body139559%_ '()))
                                (__tmp145018
                                 (let ((__tmp145020
                                        (lambda (_%g139560139562%_)
                                          (cons 'set! _%g139560139562%_)))
                                       (__tmp145019 (reverse _%post139558%_)))
                                   (declare (not safe))
                                   (##map __tmp145020 __tmp145019))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145021 __tmp145018))))))
          (let* ((_%g139492139509%_
                  (lambda (_%g139493139506%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139493139506%_))))
                 (_%g139491139555%_
                  (lambda (_%g139493139512%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139493139512%_))
                        (let ((_%e139496139514%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139493139512%_))))
                          (let ((_%hd139497139517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139496139514%_)))
                                (_%tl139498139519%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139496139514%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139498139519%_))
                                (let ((_%e139499139522%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139498139519%_))))
                                  (let ((_%hd139500139525%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139499139522%_)))
                                        (_%tl139501139527%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139499139522%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139501139527%_))
                                        (let ((_%e139502139530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139501139527%_))))
                                          (let ((_%hd139503139533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139502139530%_)))
                                                (_%tl139504139535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139502139530%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139504139535%_))
                                                ((lambda (_%L139538%_
                                                          _%L139539%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139539%_)
                                                       (_%generate-simple139487%_
                                                        _%L139539%_
                                                        _%L139538%_)
                                                       (_%generate-values139488%_
                                                        _%L139539%_
                                                        _%L139538%_)))
                                                 _%hd139503139533%_
                                                 _%hd139500139525%_)
                                                (_%g139492139509%_
                                                 _%g139493139512%_))))
                                        (_%g139492139509%_
                                         _%g139493139512%_))))
                                (_%g139492139509%_ _%g139493139512%_))))
                        (_%g139492139509%_ _%g139493139512%_)))))
            (_%g139491139555%_ _%stx139484%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139795%_ _%stx139796%_)
        (let ((_%compiled-body?139798%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self139795%_
           _%stx139796%_
           _%compiled-body?139798%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145023_
        (let ((_g145022_ (let () (declare (not safe)) (##length _g145023_))))
          (cond ((let () (declare (not safe)) (##fx= _g145022_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g145023_))
                ((let () (declare (not safe)) (##fx= _g145022_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g145023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145023_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139064%_ _%stx139065%_)
        (letrec ((_%generate-values139067%_
                  (lambda (_%hd139310%_ _%body139311%_)
                    (let _%lp139313%_ ((_%rest139315%_ _%hd139310%_)
                                       (_%bind139316%_ '()))
                      (let* ((_%rest139317139325%_ _%rest139315%_)
                             (_%else139319139336%_
                              (lambda ()
                                (let ((_%bind139333%_ (reverse _%bind139316%_))
                                      (_%body139334%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139064%_
                                          _%body139311%_))))
                                  (cons 'letrec*
                                        (cons _%bind139333%_
                                              (cons _%body139334%_ '()))))))
                             (_%K139321139470%_
                              (lambda (_%rest139339%_ _%hd-bind139340%_)
                                (let* ((_%__stx144264144265%_
                                        _%hd-bind139340%_)
                                       (_%g139343139368%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144264144265%_)))))
                                  (let ((_%__kont144266144267%_
                                         (lambda (_%L139449%_ _%L139450%_)
                                           (let ((_%eid139464%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139450%_)))
                                                 (_%expr139465%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139064%_
                                                     _%L139449%_))))
                                             (_%lp139313%_
                                              _%rest139339%_
                                              (cons (cons _%eid139464%_
                                                          (cons _%expr139465%_
                                                                '()))
                                                    _%bind139316%_)))))
                                        (_%__kont144268144269%_
                                         (lambda (_%L139389%_ _%L139390%_)
                                           (let* ((_%vals139409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139413%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp139411%_
                                                    _%L139390%_
                                                    _%L139389%_))
                                                  (_%refs139415%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals139409%_
                                                    _%L139390%_))
                                                  (_%expr139417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139064%_
                                                      _%L139389%_))))
                                             (_%lp139313%_
                                              _%rest139339%_
                                              (let ((__tmp145024
                                                     (cons (cons _%vals139409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp139411%_
                                                       (cons _%expr139417%_
                                                             '()))
                                                 '())
                                           (cons _%check-values139413%_
                                                 (cons _%tmp139411%_ '()))))
                               '()))
                   _%bind139316%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp145024
                                                 _%refs139415%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144264144265%_))
                                        (let ((_%e139347139425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144264144265%_))))
                                          (let ((_%tl139349139430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139347139425%_)))
                                                (_%hd139348139428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139347139425%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139348139428%_))
                                                (let ((_%e139350139433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139348139428%_))))
                                                  (let ((_%tl139352139438%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139350139433%_)))
                                                        (_%hd139351139436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139350139433%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139352139438%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139349139430%_))
                                                            (let ((_%e139353139441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139349139430%_))))
                      (let ((_%tl139355139446%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139353139441%_)))
                            (_%hd139354139444%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139353139441%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139355139446%_))
                            (_%__kont144266144267%_
                             _%hd139354139444%_
                             _%hd139351139436%_)
                            (let ()
                              (declare (not safe))
                              (_%g139343139368%_)))))
                    (let () (declare (not safe)) (_%g139343139368%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139349139430%_))
                    (let ((_%e139361139381%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139349139430%_))))
                      (let ((_%tl139363139386%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139361139381%_)))
                            (_%hd139362139384%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139361139381%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139363139386%_))
                            (_%__kont144268144269%_
                             _%hd139362139384%_
                             _%hd139348139428%_)
                            (let ()
                              (declare (not safe))
                              (_%g139343139368%_)))))
                    (let () (declare (not safe)) (_%g139343139368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139349139430%_))
                                                    (let ((_%e139361139381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139349139430%_))))
                                                      (let ((_%tl139363139386%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139361139381%_)))
                    (_%hd139362139384%_
                     (let () (declare (not safe)) (##car _%e139361139381%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139363139386%_))
                    (_%__kont144268144269%_
                     _%hd139362139384%_
                     _%hd139348139428%_)
                    (let () (declare (not safe)) (_%g139343139368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139343139368%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139343139368%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139317139325%_))
                            (let ((_%hd139322139473%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139317139325%_)))
                                  (_%tl139323139475%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139317139325%_))))
                              (let* ((_%hd-bind139478%_ _%hd139322139473%_)
                                     (_%rest139480%_ _%tl139323139475%_))
                                (_%K139321139470%_
                                 _%rest139480%_
                                 _%hd-bind139478%_)))
                            (_%else139319139336%_))))))
                 (_%generate-letrec?139068%_
                  (lambda (_%hd139200%_)
                    (let _%lp139202%_ ((_%rest139204%_ _%hd139200%_))
                      (let* ((_%rest139205139213%_ _%rest139204%_)
                             (_%else139207139221%_ (lambda () '#t))
                             (_%K139209139298%_
                              (lambda (_%rest139224%_ _%hd-bind139225%_)
                                (let* ((_%g139227139244%_
                                        (lambda (_%g139228139241%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139228139241%_))))
                                       (_%g139226139295%_
                                        (lambda (_%g139228139247%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139228139247%_))
                                              (let ((_%e139231139249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139228139247%_))))
                                                (let ((_%hd139232139252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139231139249%_)))
                                                      (_%tl139233139254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139231139249%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139232139252%_))
                                                      (let ((_%e139234139257%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139232139252%_))))
                (let ((_%hd139235139260%_
                       (let () (declare (not safe)) (##car _%e139234139257%_)))
                      (_%tl139236139262%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139234139257%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139236139262%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139233139254%_))
                          (let ((_%e139237139265%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139233139254%_))))
                            (let ((_%hd139238139268%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139237139265%_)))
                                  (_%tl139239139270%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139237139265%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139239139270%_))
                                  ((lambda (_%L139273%_ _%L139274%_)
                                     (if (_%is-lambda-expr?139069%_
                                          _%L139273%_)
                                         (_%lp139202%_ _%rest139224%_)
                                         '#f))
                                   _%hd139238139268%_
                                   _%hd139235139260%_)
                                  (_%g139227139244%_ _%g139228139247%_))))
                          (_%g139227139244%_ _%g139228139247%_))
                      (_%g139227139244%_ _%g139228139247%_))))
              (_%g139227139244%_ _%g139228139247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139227139244%_
                                               _%g139228139247%_)))))
                                  (_%g139226139295%_ _%hd-bind139225%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139205139213%_))
                            (let ((_%hd139210139301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139205139213%_)))
                                  (_%tl139211139303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139205139213%_))))
                              (let* ((_%hd-bind139306%_ _%hd139210139301%_)
                                     (_%rest139308%_ _%tl139211139303%_))
                                (_%K139209139298%_
                                 _%rest139308%_
                                 _%hd-bind139306%_)))
                            (_%else139207139221%_))))))
                 (_%is-lambda-expr?139069%_
                  (lambda (_%expr139137%_)
                    (let* ((_%__stx144308144309%_ _%expr139137%_)
                           (_%g139140139154%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144308144309%_)))))
                      (let ((_%__kont144310144311%_
                             (lambda (_%L139182%_ _%L139183%_) '#t))
                            (_%__kont144312144313%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144308144309%_))
                            (let ((_%e139144139166%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144308144309%_))))
                              (let ((_%tl139146139171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139144139166%_)))
                                    (_%hd139145139169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139144139166%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139145139169%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139145139169%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139146139171%_))
                                            (let ((_%e139147139174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139146139171%_))))
                                              (let ((_%tl139149139179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139147139174%_)))
                                                    (_%hd139148139177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139147139174%_))))
                                                (_%__kont144310144311%_
                                                 _%tl139149139179%_
                                                 _%hd139148139177%_)))
                                            (_%__kont144312144313%_))
                                        (_%__kont144312144313%_))
                                    (_%__kont144312144313%_))))
                            (_%__kont144312144313%_)))))))
          (let* ((_%g139071139088%_
                  (lambda (_%g139072139085%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139072139085%_))))
                 (_%g139070139134%_
                  (lambda (_%g139072139091%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139072139091%_))
                        (let ((_%e139075139093%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139072139091%_))))
                          (let ((_%hd139076139096%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139075139093%_)))
                                (_%tl139077139098%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139075139093%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139077139098%_))
                                (let ((_%e139078139101%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139077139098%_))))
                                  (let ((_%hd139079139104%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139078139101%_)))
                                        (_%tl139080139106%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139078139101%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139080139106%_))
                                        (let ((_%e139081139109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139080139106%_))))
                                          (let ((_%hd139082139112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139081139109%_)))
                                                (_%tl139083139114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139081139109%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139083139114%_))
                                                ((lambda (_%L139117%_
                                                          _%L139118%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139118%_)
                                                       (if (_%generate-letrec?139068%_
                                                            _%L139118%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139064%_
                                                            'letrec
                                                            _%L139118%_
                                                            _%L139117%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139064%_
                                                            'letrec*
                                                            _%L139118%_
                                                            _%L139117%_
                                                            '#f))
                                                       (_%generate-values139067%_
                                                        _%L139118%_
                                                        _%L139117%_)))
                                                 _%hd139082139112%_
                                                 _%hd139079139104%_)
                                                (_%g139071139088%_
                                                 _%g139072139091%_))))
                                        (_%g139071139088%_
                                         _%g139072139091%_))))
                                (_%g139071139088%_ _%g139072139091%_))))
                        (_%g139071139088%_ _%g139072139091%_)))))
            (_%g139070139134%_ _%stx139065%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139001%_)
        (let _%lp139003%_ ((_%rest139005%_ _%hd139001%_))
          (let* ((_%rest139006139022%_ _%rest139005%_)
                 (_%else139009139030%_ (lambda () '#f)))
            (let ((_%K139012139043%_
                   (lambda (_%rest139041%_) (_%lp139003%_ _%rest139041%_)))
                  (_%K139011139035%_ (lambda () '#t)))
              (let ((_%try-match139008139038%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139006139022%_))
                           (_%K139011139035%_)
                           (_%else139009139030%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139006139022%_))
                    (let ((_%tl139014139048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139006139022%_)))
                          (_%hd139013139046%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139006139022%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139013139046%_))
                          (let ((_%tl139016139053%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139013139046%_)))
                                (_%hd139015139051%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139013139046%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139015139051%_))
                                (let ((_%tl139020139056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139015139051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139020139056%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139016139053%_))
                                          (let ((_%tl139018139059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139016139053%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139018139059%_))
                                                (let ((_%rest139062%_
                                                       _%tl139014139048%_))
                                                  (_%lp139003%_
                                                   _%rest139062%_))
                                                (_%else139009139030%_)))
                                          (_%else139009139030%_))
                                      (_%else139009139030%_)))
                                (_%else139009139030%_)))
                          (_%else139009139030%_)))
                    (_%try-match139008139038%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self138912%_
               _%form138913%_
               _%hd138914%_
               _%body138915%_
               _%compiled-body?138916%_)
        (letrec ((_%generate1138918%_
                  (lambda (_%bind138957%_)
                    (let* ((_%bind138958138969%_ _%bind138957%_)
                           (_%E138960138973%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind138958138969%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K138961138979%_
                            (lambda (_%expr138976%_ _%id138977%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id138977%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138912%_
                                             _%expr138976%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind138958138969%_))
                          (let ((_%hd138962138982%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind138958138969%_)))
                                (_%tl138963138984%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind138958138969%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138962138982%_))
                                (let ((_%hd138966138987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd138962138982%_)))
                                      (_%tl138967138989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138962138982%_))))
                                  (let ((_%id138992%_ _%hd138966138987%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl138967138989%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138963138984%_))
                                            (let ((_%hd138964138994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138963138984%_)))
                                                  (_%tl138965138996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138963138984%_))))
                                              (let ((_%expr138999%_
                                                     _%hd138964138994%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138965138996%_))
                                                    (_%K138961138979%_
                                                     _%expr138999%_
                                                     _%id138992%_)
                                                    (_%E138960138973%_))))
                                            (_%E138960138973%_))
                                        (_%E138960138973%_))))
                                (_%E138960138973%_)))
                          (_%E138960138973%_))))))
          (let* ((_%bind138920%_ (map _%generate1138918%_ _%hd138914%_))
                 (_%body138922%_
                  (if _%compiled-body?138916%_
                      _%body138915%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self138912%_ _%body138915%_))))
                 (_%body138954%_
                  (let* ((_%body138923138931%_ _%body138922%_)
                         (_%else138925138939%_
                          (lambda () (cons _%body138922%_ '())))
                         (_%K138927138944%_
                          (lambda (_%exprs138942%_) _%exprs138942%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body138923138931%_))
                        (let ((_%hd138928138947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body138923138931%_)))
                              (_%tl138929138949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body138923138931%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd138928138947%_ 'begin))
                              (let ((_%exprs138952%_ _%tl138929138949%_))
                                (_%K138927138944%_ _%exprs138952%_))
                              (_%else138925138939%_)))
                        (_%else138925138939%_)))))
            (cons _%form138913%_ (cons _%bind138920%_ _%body138954%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self138812%_ _%stx138813%_)
        (letrec ((_%generate1138815%_
                  (lambda (_%datum138867%_)
                    (if (or (null? _%datum138867%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum138867%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum138867%_))
                            (eof-object? _%datum138867%_))
                        _%datum138867%_
                        (if (uninterned-symbol? _%datum138867%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum138867%_
                               '#t))
                            (if (pair? _%datum138867%_)
                                (cons (_%generate1138815%_
                                       (car _%datum138867%_))
                                      (_%generate1138815%_
                                       (cdr _%datum138867%_)))
                                (if (box? _%datum138867%_)
                                    (box (_%generate1138815%_
                                          (unbox _%datum138867%_)))
                                    (if (vector? _%datum138867%_)
                                        (vector-map
                                         _%generate1138815%_
                                         _%datum138867%_)
                                        (if (or (s8vector? _%datum138867%_)
                                                (u8vector? _%datum138867%_)
                                                (s16vector? _%datum138867%_)
                                                (u16vector? _%datum138867%_)
                                                (s32vector? _%datum138867%_)
                                                (u32vector? _%datum138867%_)
                                                (s64vector? _%datum138867%_)
                                                (u64vector? _%datum138867%_)
                                                (f32vector? _%datum138867%_)
                                                (f64vector? _%datum138867%_))
                                            _%datum138867%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx138813%_)))))))))))
          (let* ((_%g138817138830%_
                  (lambda (_%g138818138827%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138818138827%_))))
                 (_%g138816138864%_
                  (lambda (_%g138818138833%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138818138833%_))
                        (let ((_%e138820138835%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138818138833%_))))
                          (let ((_%hd138821138838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138820138835%_)))
                                (_%tl138822138840%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138820138835%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138822138840%_))
                                (let ((_%e138823138843%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138822138840%_))))
                                  (let ((_%hd138824138846%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138823138843%_)))
                                        (_%tl138825138848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138823138843%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138825138848%_))
                                        ((lambda (_%L138851%_)
                                           (cons 'quote
                                                 (cons (_%generate1138815%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L138851%_)))
                                                       '())))
                                         _%hd138824138846%_)
                                        (_%g138817138830%_
                                         _%g138818138833%_))))
                                (_%g138817138830%_ _%g138818138833%_))))
                        (_%g138817138830%_ _%g138818138833%_)))))
            (_%g138816138864%_ _%stx138813%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138253%_ _%stx138254%_)
        (letrec ((_%compile-call138256%_
                  (lambda (_%rator138545%_ _%rands138546%_)
                    (let ((_%rator138552%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138253%_
                              _%rator138545%_)))
                          (_%rands138553%_
                           (map (lambda (_%g138547138549%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138253%_
                                     _%g138547138549%_)))
                                _%rands138546%_)))
                      (let* ((_%__stx144355144356%_ _%rator138552%_)
                             (_%g138556138608%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144355144356%_)))))
                        (let ((_%__kont144357144358%_
                               (lambda (_%L138732%_
                                        _%L138733%_
                                        _%L138734%_
                                        _%L138735%_)
                                 (if (let ((__tmp145027
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138553%_)))
                                           (__tmp145025
                                            (length (let ((__tmp145026
                                                           (lambda (_%g138771138774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138772138776%_)
                     (cons _%g138771138774%_ _%g138772138776%_))))
              (declare (not safe))
              (__foldr1 __tmp145026 '() _%L138734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145027 __tmp145025))
                                     (let* ((_%id138779%_ _%L138735%_)
                                            (_%args138788%_
                                             (let ((__tmp145028
                                                    (lambda (_%g138780138783%_
                                                             _%g138781138785%_)
                                                      (cons _%g138780138783%_
                                                            _%g138781138785%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145028
                                                '()
                                                _%L138734%_)))
                                            (_%body138797%_
                                             (let ((__tmp145029
                                                    (lambda (_%g138789138792%_
                                                             _%g138790138794%_)
                                                      (cons _%g138789138792%_
                                                            _%g138790138794%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145029
                                                '()
                                                _%L138733%_)))
                                            (_%init138799%_
                                             (map list
                                                  _%args138788%_
                                                  _%rands138553%_)))
                                       (cons 'let
                                             (cons _%id138779%_
                                                   (cons _%init138799%_
                                                         _%body138797%_))))
                                     (let ((__tmp145030
                                            (let ((__tmp145031
                                                   (lambda (_%g138801138804%_
                                                            _%g138802138806%_)
                                                     (cons _%g138801138804%_
                                                           _%g138802138806%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145031
                                               '()
                                               _%L138734%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138254%_
                                        __tmp145030
                                        _%rands138553%_)))))
                              (_%__kont144363144364%_
                               (lambda ()
                                 (cons _%rator138552%_ _%rands138553%_))))
                          (let ((_%__match144422144423%_
                                 (lambda (_%e138562138620%_
                                          _%hd138563138623%_
                                          _%tl138564138625%_
                                          _%e138565138628%_
                                          _%hd138566138631%_
                                          _%tl138567138633%_
                                          _%e138568138636%_
                                          _%hd138569138639%_
                                          _%tl138570138641%_
                                          _%e138571138644%_
                                          _%hd138572138647%_
                                          _%tl138573138649%_
                                          _%e138574138652%_
                                          _%hd138575138655%_
                                          _%tl138576138657%_
                                          _%e138577138660%_
                                          _%hd138578138663%_
                                          _%tl138579138665%_
                                          _%e138580138668%_
                                          _%hd138581138671%_
                                          _%tl138582138673%_
                                          _%__splice144359144360%_
                                          _%target138583138676%_
                                          _%tl138585138678%_)
                                   (letrec ((_%loop138586138681%_
                                             (lambda (_%hd138584138684%_
                                                      _%arg138590138686%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138584138684%_))
                                                   (let ((_%e138587138689%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138584138684%_))))
                                                     (let ((_%lp-tl138589138694%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138587138689%_)))
                                                           (_%lp-hd138588138692%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138587138689%_))))
                                                       (_%loop138586138681%_
                                                        _%lp-tl138589138694%_
                                                        (cons _%lp-hd138588138692%_
                                                              _%arg138590138686%_))))
                                                   (let ((_%arg138591138697%_
                                                          (reverse _%arg138590138686%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138582138673%_))
                                                         (let ((_%__splice144361144362%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138582138673%_ '0))))
                   (let ((_%tl138594138702%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144361144362%_ '1)))
                         (_%target138592138700%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144361144362%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138594138702%_))
                         (letrec ((_%loop138595138705%_
                                   (lambda (_%hd138593138708%_
                                            _%body138599138710%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138593138708%_))
                                         (let ((_%e138596138713%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138593138708%_))))
                                           (let ((_%lp-tl138598138718%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138596138713%_)))
                                                 (_%lp-hd138597138716%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138596138713%_))))
                                             (_%loop138595138705%_
                                              _%lp-tl138598138718%_
                                              (cons _%lp-hd138597138716%_
                                                    _%body138599138710%_))))
                                         (let ((_%body138600138721%_
                                                (reverse _%body138599138710%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138576138657%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138570138641%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138567138633%_))
                                                       (let ((_%e138601138724%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138567138633%_))))
                 (let ((_%tl138603138729%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138601138724%_)))
                       (_%hd138602138727%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138601138724%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138603138729%_))
                       (let ((_%L138732%_ _%hd138602138727%_)
                             (_%L138733%_ _%body138600138721%_)
                             (_%L138734%_ _%arg138591138697%_)
                             (_%L138735%_ _%hd138572138647%_))
                         (if (eq? _%L138735%_ _%L138732%_)
                             (_%__kont144357144358%_
                              _%L138732%_
                              _%L138733%_
                              _%L138734%_
                              _%L138735%_)
                             (_%__kont144363144364%_)))
                       (_%__kont144363144364%_))))
               (_%__kont144363144364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144363144364%_))
                                               (_%__kont144363144364%_)))))))
                           (_%loop138595138705%_ _%target138592138700%_ '()))
                         (_%__kont144363144364%_))))
                 (_%__kont144363144364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop138586138681%_
                                      _%target138583138676%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144355144356%_))
                                (let ((_%e138562138620%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144355144356%_))))
                                  (let ((_%tl138564138625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138562138620%_)))
                                        (_%hd138563138623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138562138620%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138563138623%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138563138623%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138564138625%_))
                                                (let ((_%e138565138628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138564138625%_))))
                                                  (let ((_%tl138567138633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138565138628%_)))
                                                        (_%hd138566138631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138565138628%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138566138631%_))
                                                        (let ((_%e138568138636%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138566138631%_))))
                  (let ((_%tl138570138641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138568138636%_)))
                        (_%hd138569138639%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138568138636%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138569138639%_))
                        (let ((_%e138571138644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138569138639%_))))
                          (let ((_%tl138573138649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138571138644%_)))
                                (_%hd138572138647%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138571138644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138573138649%_))
                                (let ((_%e138574138652%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138573138649%_))))
                                  (let ((_%tl138576138657%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138574138652%_)))
                                        (_%hd138575138655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138574138652%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138575138655%_))
                                        (let ((_%e138577138660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138575138655%_))))
                                          (let ((_%tl138579138665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138577138660%_)))
                                                (_%hd138578138663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138577138660%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138578138663%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138578138663%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138579138665%_))
                                                        (let ((_%e138580138668%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138579138665%_))))
                  (let ((_%tl138582138673%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138580138668%_)))
                        (_%hd138581138671%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138580138668%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138581138671%_))
                        (let ((_%__splice144359144360%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138581138671%_
                                  '0))))
                          (let ((_%tl138585138678%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144359144360%_ '1)))
                                (_%target138583138676%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144359144360%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138585138678%_))
                                (_%__match144422144423%_
                                 _%e138562138620%_
                                 _%hd138563138623%_
                                 _%tl138564138625%_
                                 _%e138565138628%_
                                 _%hd138566138631%_
                                 _%tl138567138633%_
                                 _%e138568138636%_
                                 _%hd138569138639%_
                                 _%tl138570138641%_
                                 _%e138571138644%_
                                 _%hd138572138647%_
                                 _%tl138573138649%_
                                 _%e138574138652%_
                                 _%hd138575138655%_
                                 _%tl138576138657%_
                                 _%e138577138660%_
                                 _%hd138578138663%_
                                 _%tl138579138665%_
                                 _%e138580138668%_
                                 _%hd138581138671%_
                                 _%tl138582138673%_
                                 _%__splice144359144360%_
                                 _%target138583138676%_
                                 _%tl138585138678%_)
                                (_%__kont144363144364%_))))
                        (_%__kont144363144364%_))))
                (_%__kont144363144364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144363144364%_))
                                                (_%__kont144363144364%_))))
                                        (_%__kont144363144364%_))))
                                (_%__kont144363144364%_))))
                        (_%__kont144363144364%_))))
                (_%__kont144363144364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144363144364%_))
                                            (_%__kont144363144364%_))
                                        (_%__kont144363144364%_))))
                                (_%__kont144363144364%_)))))))))
          (let* ((_%g138258138281%_
                  (lambda (_%g138259138278%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138259138278%_))))
                 (_%g138257138542%_
                  (lambda (_%g138259138284%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138259138284%_))
                        (let ((_%e138262138286%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138259138284%_))))
                          (let ((_%hd138263138289%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138262138286%_)))
                                (_%tl138264138291%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138262138286%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138264138291%_))
                                (let ((_%e138265138294%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138264138291%_))))
                                  (let ((_%hd138266138297%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138265138294%_)))
                                        (_%tl138267138299%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138265138294%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138267138299%_))
                                        (let ((_g145032_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138267138299%_
                                                  '0))))
                                          (begin
                                            (let ((_g145033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145032_)
                                                         (##vector-length
                                                          _g145032_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145033_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145033_)))
                                            (let ((_%target138268138302%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145032_
                                                      0)))
                                                  (_%tl138270138304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145032_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138270138304%_))
                                                  (letrec ((_%loop138271138307%_
                                                            (lambda (_%hd138269138310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138275138312%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138269138310%_))
                          (let ((_%e138272138315%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138269138310%_))))
                            (let ((_%lp-hd138273138318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138272138315%_)))
                                  (_%lp-tl138274138320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138272138315%_))))
                              (_%loop138271138307%_
                               _%lp-tl138274138320%_
                               (cons _%lp-hd138273138318%_
                                     _%rand138275138312%_))))
                          (let ((_%rand138276138323%_
                                 (reverse _%rand138275138312%_)))
                            ((lambda (_%L138326%_ _%L138327%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call138256%_
                                    _%L138327%_
                                    (let ((__tmp145034
                                           (lambda (_%g138344138347%_
                                                    _%g138345138349%_)
                                             (cons _%g138344138347%_
                                                   _%g138345138349%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp145034 '() _%L138326%_)))
                                   (let* ((_%__stx144471144472%_ _%L138327%_)
                                          (_%g138353138365%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144471144472%_)))))
                                     (let ((_%__kont144473144474%_
                                            (lambda ()
                                              (let ((_%f138402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138253%_
                                                        _%L138327%_))))
                                                (if (and (let ((__tmp145035
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138402%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145035))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f138402%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138404%_ ((_%rest138407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145037
                                                (lambda (_%g138524138527%_
                                                         _%g138525138529%_)
                                                  (cons _%g138524138527%_
                                                        _%g138525138529%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145037
                                            '()
                                            _%L138326%_))))
                               (_%bind138409%_ '())
                               (_%args138410%_ '()))
              (let* ((_%rest138411138419%_ _%rest138407%_)
                     (_%else138413138427%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138409%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138402%_
                                                      _%args138410%_)
                                                '()))))))
                     (_%K138415138513%_
                      (lambda (_%rest138430%_ _%e138431%_)
                        (let* ((_%__stx144425144426%_ _%e138431%_)
                               (_%g138436138454%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144425144426%_)))))
                          (let ((_%__kont144427144428%_
                                 (lambda ()
                                   (_%lp138404%_
                                    _%rest138430%_
                                    _%bind138409%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138431%_))
                                          _%args138410%_))))
                                (_%__kont144429144430%_
                                 (lambda ()
                                   (_%lp138404%_
                                    _%rest138430%_
                                    _%bind138409%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138431%_))
                                          _%args138410%_))))
                                (_%__kont144431144432%_
                                 (lambda ()
                                   (let ((_%tmp138461%_
                                          (let ((__tmp145036
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145036))))
                                     (_%lp138404%_
                                      _%rest138430%_
                                      (cons (cons _%tmp138461%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e138431%_))
                                                        '()))
                                            _%bind138409%_)
                                      (cons _%tmp138461%_ _%args138410%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144425144426%_))
                                (let ((_%e138438138492%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144425144426%_))))
                                  (let ((_%tl138440138497%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138438138492%_)))
                                        (_%hd138439138495%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138438138492%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138439138495%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138439138495%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138440138497%_))
                                                (let ((_%e138441138500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138440138497%_))))
                                                  (let ((_%tl138443138505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138441138500%_)))
                                                        (_%hd138442138503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138441138500%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138443138505%_))
                                                        (_%__kont144427144428%_)
                                                        (_%__kont144431144432%_))))
                                                (_%__kont144431144432%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138439138495%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138440138497%_))
                                                    (let ((_%e138447138477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138440138497%_))))
                                                      (let ((_%tl138449138482%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138447138477%_)))
                    (_%hd138448138480%_
                     (let () (declare (not safe)) (##car _%e138447138477%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138449138482%_))
                    (_%__kont144429144430%_)
                    (_%__kont144431144432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144431144432%_))
                                                (_%__kont144431144432%_)))
                                        (_%__kont144431144432%_))))
                                (_%__kont144431144432%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138411138419%_))
                    (let ((_%hd138416138516%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138411138419%_)))
                          (_%tl138417138518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138411138419%_))))
                      (let* ((_%e138521%_ _%hd138416138516%_)
                             (_%rest138523%_ _%tl138417138518%_))
                        (_%K138415138513%_ _%rest138523%_ _%e138521%_)))
                    (_%else138413138427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call138256%_
                                                     _%L138327%_
                                                     (let ((__tmp145038
                                                            (lambda (_%g138531138534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138532138536%_)
                      (cons _%g138531138534%_ _%g138532138536%_))))
               (declare (not safe))
               (__foldr1 __tmp145038 '() _%L138326%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144475144476%_
                                            (lambda ()
                                              (_%compile-call138256%_
                                               _%L138327%_
                                               (let ((__tmp145039
                                                      (lambda (_%g138371138374%_
                                                               _%g138372138376%_)
                                                        (cons _%g138371138374%_
                                                              _%g138372138376%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145039
                                                  '()
                                                  _%L138326%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144471144472%_))
                                           (let ((_%e138355138384%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144471144472%_))))
                                             (let ((_%tl138357138389%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138355138384%_)))
                                                   (_%hd138356138387%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138355138384%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138356138387%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138356138387%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138357138389%_))
                                                           (let ((_%e138358138392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138357138389%_))))
                     (let ((_%tl138360138397%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138358138392%_)))
                           (_%hd138359138395%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138358138392%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138360138397%_))
                           (_%__kont144473144474%_)
                           (_%__kont144475144476%_))))
                   (_%__kont144475144476%_))
               (_%__kont144475144476%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144475144476%_))))
                                           (_%__kont144475144476%_))))))
                             _%rand138276138323%_
                             _%hd138266138297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop138271138307%_
                                                     _%target138268138302%_
                                                     '()))
                                                  (_%g138258138281%_
                                                   _%g138259138284%_)))))
                                        (_%g138258138281%_
                                         _%g138259138284%_))))
                                (_%g138258138281%_ _%g138259138284%_))))
                        (_%g138258138281%_ _%g138259138284%_)))))
            (_%g138257138542%_ _%stx138254%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self137996%_ _%stx137997%_)
        (let* ((_%__stx144543144544%_ _%stx137997%_)
               (_%g138000138029%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144543144544%_)))))
          (let ((_%__kont144545144546%_
                 (lambda (_%L138097%_ _%L138098%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self137996%_
                        _%stx137997%_)
                       (let ((_%f138120%_
                              (let ((__tmp145040
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138098%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self137996%_
                                 __tmp145040))))
                         (let _%lp138122%_ ((_%rest138125%_
                                             (reverse (let ((__tmp145042
                                                             (lambda (_%g138242138245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138243138247%_)
                       (cons _%g138242138245%_ _%g138243138247%_))))
                (declare (not safe))
                (__foldr1 __tmp145042 '() _%L138097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138127%_ '())
                                            (_%args138128%_ '()))
                           (let* ((_%rest138129138137%_ _%rest138125%_)
                                  (_%else138131138145%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138127%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138128%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138133138231%_
                                   (lambda (_%rest138148%_ _%e138149%_)
                                     (let* ((_%__stx144497144498%_ _%e138149%_)
                                            (_%g138154138172%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144497144498%_)))))
                                       (let ((_%__kont144499144500%_
                                              (lambda ()
                                                (_%lp138122%_
                                                 _%rest138148%_
                                                 _%bind138127%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138149%_))
                                                       _%args138128%_))))
                                             (_%__kont144501144502%_
                                              (lambda ()
                                                (_%lp138122%_
                                                 _%rest138148%_
                                                 _%bind138127%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138149%_))
                                                       _%args138128%_))))
                                             (_%__kont144503144504%_
                                              (lambda ()
                                                (let ((_%tmp138179%_
                                                       (let ((__tmp145041
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp138122%_
                                                   _%rest138148%_
                                                   (cons (cons _%tmp138179%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e138149%_))
                             '()))
                 _%bind138127%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp138179%_
                                                         _%args138128%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144497144498%_))
                                             (let ((_%e138156138210%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144497144498%_))))
                                               (let ((_%tl138158138215%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138156138210%_)))
                                                     (_%hd138157138213%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138156138210%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138157138213%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138157138213%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138158138215%_))
                     (let ((_%e138159138218%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138158138215%_))))
                       (let ((_%tl138161138223%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138159138218%_)))
                             (_%hd138160138221%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138159138218%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138161138223%_))
                             (_%__kont144499144500%_)
                             (_%__kont144503144504%_))))
                     (_%__kont144503144504%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138157138213%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138158138215%_))
                         (let ((_%e138165138195%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138158138215%_))))
                           (let ((_%tl138167138200%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138165138195%_)))
                                 (_%hd138166138198%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138165138195%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138167138200%_))
                                 (_%__kont144501144502%_)
                                 (_%__kont144503144504%_))))
                         (_%__kont144503144504%_))
                     (_%__kont144503144504%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144503144504%_))))
                                             (_%__kont144503144504%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138129138137%_))
                                 (let ((_%hd138134138234%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138129138137%_)))
                                       (_%tl138135138236%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138129138137%_))))
                                   (let* ((_%e138239%_ _%hd138134138234%_)
                                          (_%rest138241%_ _%tl138135138236%_))
                                     (_%K138133138231%_
                                      _%rest138241%_
                                      _%e138239%_)))
                                 (_%else138131138145%_))))))))
                (_%__kont144549144550%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self137996%_ _%stx137997%_))))
            (let ((_%__match144588144589%_
                   (lambda (_%e138004138041%_
                            _%hd138005138044%_
                            _%tl138006138046%_
                            _%e138007138049%_
                            _%hd138008138052%_
                            _%tl138009138054%_
                            _%e138010138057%_
                            _%hd138011138060%_
                            _%tl138012138062%_
                            _%e138013138065%_
                            _%hd138014138068%_
                            _%tl138015138070%_
                            _%__splice144547144548%_
                            _%target138016138073%_
                            _%tl138018138075%_)
                     (letrec ((_%loop138019138078%_
                               (lambda (_%hd138017138081%_
                                        _%rand138023138083%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138017138081%_))
                                     (let ((_%e138020138086%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138017138081%_))))
                                       (let ((_%lp-tl138022138091%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138020138086%_)))
                                             (_%lp-hd138021138089%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138020138086%_))))
                                         (_%loop138019138078%_
                                          _%lp-tl138022138091%_
                                          (cons _%lp-hd138021138089%_
                                                _%rand138023138083%_))))
                                     (let ((_%rand138024138094%_
                                            (reverse _%rand138023138083%_)))
                                       (_%__kont144545144546%_
                                        _%rand138024138094%_
                                        _%hd138014138068%_))))))
                       (_%loop138019138078%_ _%target138016138073%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144543144544%_))
                  (let ((_%e138004138041%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144543144544%_))))
                    (let ((_%tl138006138046%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138004138041%_)))
                          (_%hd138005138044%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138004138041%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138006138046%_))
                          (let ((_%e138007138049%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138006138046%_))))
                            (let ((_%tl138009138054%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138007138049%_)))
                                  (_%hd138008138052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138007138049%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138008138052%_))
                                  (let ((_%e138010138057%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138008138052%_))))
                                    (let ((_%tl138012138062%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138010138057%_)))
                                          (_%hd138011138060%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138010138057%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138011138060%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138011138060%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138012138062%_))
                                                  (let ((_%e138013138065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138012138062%_))))
                                                    (let ((_%tl138015138070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138013138065%_)))
                                                          (_%hd138014138068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138013138065%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138015138070%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138009138054%_))
                      (let ((_%__splice144547144548%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138009138054%_
                                '0))))
                        (let ((_%tl138018138075%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144547144548%_ '1)))
                              (_%target138016138073%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144547144548%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138018138075%_))
                              (_%__match144588144589%_
                               _%e138004138041%_
                               _%hd138005138044%_
                               _%tl138006138046%_
                               _%e138007138049%_
                               _%hd138008138052%_
                               _%tl138009138054%_
                               _%e138010138057%_
                               _%hd138011138060%_
                               _%tl138012138062%_
                               _%e138013138065%_
                               _%hd138014138068%_
                               _%tl138015138070%_
                               _%__splice144547144548%_
                               _%target138016138073%_
                               _%tl138018138075%_)
                              (_%__kont144549144550%_))))
                      (_%__kont144549144550%_))
                  (_%__kont144549144550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144549144550%_))
                                              (_%__kont144549144550%_))
                                          (_%__kont144549144550%_))))
                                  (_%__kont144549144550%_))))
                          (_%__kont144549144550%_))))
                  (_%__kont144549144550%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self137808%_ _%stx137809%_)
        (letrec ((_%simplify137811%_
                  (lambda (_%code137896%_)
                    (let* ((_%code137897137915%_ _%code137896%_)
                           (_%else137899137923%_ (lambda () _%code137896%_))
                           (_%K137901137959%_
                            (lambda (_%expr137926%_ _%test137927%_)
                              (let* ((_%expr137928137936%_ _%expr137926%_)
                                     (_%else137930137944%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test137927%_
                                                    (cons _%expr137926%_
                                                          '())))))
                                     (_%K137932137949%_
                                      (lambda (_%exprs137947%_)
                                        (cons 'and
                                              (cons _%test137927%_
                                                    _%exprs137947%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr137928137936%_))
                                    (let ((_%hd137933137952%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr137928137936%_)))
                                          (_%tl137934137954%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr137928137936%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd137933137952%_ 'and))
                                          (let ((_%exprs137957%_
                                                 _%tl137934137954%_))
                                            (_%K137932137949%_
                                             _%exprs137957%_))
                                          (_%else137930137944%_)))
                                    (_%else137930137944%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code137897137915%_))
                          (let ((_%hd137902137962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code137897137915%_)))
                                (_%tl137903137964%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code137897137915%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd137902137962%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl137903137964%_))
                                    (let ((_%hd137904137967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl137903137964%_)))
                                          (_%tl137905137969%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl137903137964%_))))
                                      (let ((_%test137972%_
                                             _%hd137904137967%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl137905137969%_))
                                            (let ((_%hd137906137974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl137905137969%_)))
                                                  (_%tl137907137976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl137905137969%_))))
                                              (let ((_%expr137979%_
                                                     _%hd137906137974%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl137907137976%_))
                                                    (let ((_%hd137908137981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl137907137976%_)))
                                                          (_%tl137909137983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl137907137976%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd137908137981%_))
                                                          (let ((_%hd137910137986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd137908137981%_)))
                        (_%tl137911137988%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd137908137981%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd137910137986%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl137911137988%_))
                            (let ((_%hd137912137991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl137911137988%_)))
                                  (_%tl137913137993%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl137911137988%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd137912137991%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl137913137993%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl137909137983%_))
                                          (_%K137901137959%_
                                           _%expr137979%_
                                           _%test137972%_)
                                          (_%else137899137923%_))
                                      (_%else137899137923%_))
                                  (_%else137899137923%_)))
                            (_%else137899137923%_))
                        (_%else137899137923%_)))
                  (_%else137899137923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else137899137923%_))))
                                            (_%else137899137923%_))))
                                    (_%else137899137923%_))
                                (_%else137899137923%_)))
                          (_%else137899137923%_))))))
          (let* ((_%g137813137834%_
                  (lambda (_%g137814137831%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137814137831%_))))
                 (_%g137812137893%_
                  (lambda (_%g137814137837%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137814137837%_))
                        (let ((_%e137818137839%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137814137837%_))))
                          (let ((_%hd137819137842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137818137839%_)))
                                (_%tl137820137844%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137818137839%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137820137844%_))
                                (let ((_%e137821137847%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137820137844%_))))
                                  (let ((_%hd137822137850%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137821137847%_)))
                                        (_%tl137823137852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137821137847%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137823137852%_))
                                        (let ((_%e137824137855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137823137852%_))))
                                          (let ((_%hd137825137858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137824137855%_)))
                                                (_%tl137826137860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137824137855%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl137826137860%_))
                                                (let ((_%e137827137863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl137826137860%_))))
                                                  (let ((_%hd137828137866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e137827137863%_)))
                                                        (_%tl137829137868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e137827137863%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137829137868%_))
                                                        ((lambda (_%L137871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L137872%_
                          _%L137873%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify137811%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self137808%_
                                       _%L137873%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self137808%_
                                             _%L137872%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self137808%_
                                                   _%L137871%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp145043
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137808%_
                                               _%L137873%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145043
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137808%_
                                            _%L137872%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137808%_
                                                  _%L137871%_))
                                               '()))))))
                 _%hd137828137866%_
                 _%hd137825137858%_
                 _%hd137822137850%_)
                (_%g137813137834%_ _%g137814137837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g137813137834%_
                                                 _%g137814137837%_))))
                                        (_%g137813137834%_
                                         _%g137814137837%_))))
                                (_%g137813137834%_ _%g137814137837%_))))
                        (_%g137813137834%_ _%g137814137837%_)))))
            (_%g137812137893%_ _%stx137809%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137756%_ _%stx137757%_)
        (let* ((_%g137759137772%_
                (lambda (_%g137760137769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137760137769%_))))
               (_%g137758137805%_
                (lambda (_%g137760137775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137760137775%_))
                      (let ((_%e137762137777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137760137775%_))))
                        (let ((_%hd137763137780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137762137777%_)))
                              (_%tl137764137782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137762137777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137764137782%_))
                              (let ((_%e137765137785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137764137782%_))))
                                (let ((_%hd137766137788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137765137785%_)))
                                      (_%tl137767137790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137765137785%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137767137790%_))
                                      ((lambda (_%L137793%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137793%_)))
                                       _%hd137766137788%_)
                                      (_%g137759137772%_ _%g137760137775%_))))
                              (_%g137759137772%_ _%g137760137775%_))))
                      (_%g137759137772%_ _%g137760137775%_)))))
          (_%g137758137805%_ _%stx137757%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137688%_ _%stx137689%_)
        (let* ((_%g137691137708%_
                (lambda (_%g137692137705%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137692137705%_))))
               (_%g137690137753%_
                (lambda (_%g137692137711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137692137711%_))
                      (let ((_%e137695137713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137692137711%_))))
                        (let ((_%hd137696137716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137695137713%_)))
                              (_%tl137697137718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137695137713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137697137718%_))
                              (let ((_%e137698137721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137697137718%_))))
                                (let ((_%hd137699137724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137698137721%_)))
                                      (_%tl137700137726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137698137721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137700137726%_))
                                      (let ((_%e137701137729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137700137726%_))))
                                        (let ((_%hd137702137732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137701137729%_)))
                                              (_%tl137703137734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137701137729%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137703137734%_))
                                              ((lambda (_%L137737%_
                                                        _%L137738%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137738%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137688%_ _%L137737%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137702137732%_
                                               _%hd137699137724%_)
                                              (_%g137691137708%_
                                               _%g137692137711%_))))
                                      (_%g137691137708%_ _%g137692137711%_))))
                              (_%g137691137708%_ _%g137692137711%_))))
                      (_%g137691137708%_ _%g137692137711%_)))))
          (_%g137690137753%_ _%stx137689%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137499%_ _%stx137500%_)
        (let* ((_%g137502137519%_
                (lambda (_%g137503137516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137503137516%_))))
               (_%g137501137685%_
                (lambda (_%g137503137522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137503137522%_))
                      (let ((_%e137506137524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137503137522%_))))
                        (let ((_%hd137507137527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137506137524%_)))
                              (_%tl137508137529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137506137524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137508137529%_))
                              (let ((_%e137509137532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137508137529%_))))
                                (let ((_%hd137510137535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137509137532%_)))
                                      (_%tl137511137537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137509137532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137511137537%_))
                                      (let ((_%e137512137540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137511137537%_))))
                                        (let ((_%hd137513137543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137512137540%_)))
                                              (_%tl137514137545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137512137540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137514137545%_))
                                              ((lambda (_%L137548%_
                                                        _%L137549%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137499%_ _%L137548%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137499%_ _%L137549%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137564%_ ((_%rest137567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137549%_ (cons _%L137548%_ '())))
                                (_%bind137569%_ '())
                                (_%args137570%_ '()))
               (let* ((_%rest137571137579%_ _%rest137567%_)
                      (_%else137573137587%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137569%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137570%_)
                                                 '()))))))
                      (_%K137575137673%_
                       (lambda (_%rest137590%_ _%e137591%_)
                         (let* ((_%__stx144591144592%_ _%e137591%_)
                                (_%g137596137614%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144591144592%_)))))
                           (let ((_%__kont144593144594%_
                                  (lambda ()
                                    (_%lp137564%_
                                     _%rest137590%_
                                     _%bind137569%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137591%_))
                                           _%args137570%_))))
                                 (_%__kont144595144596%_
                                  (lambda ()
                                    (_%lp137564%_
                                     _%rest137590%_
                                     _%bind137569%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137591%_))
                                           _%args137570%_))))
                                 (_%__kont144597144598%_
                                  (lambda ()
                                    (let ((_%tmp137621%_
                                           (let ((__tmp145044
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145044))))
                                      (_%lp137564%_
                                       _%rest137590%_
                                       (cons (cons _%tmp137621%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137591%_))
                                                         '()))
                                             _%bind137569%_)
                                       (cons _%tmp137621%_ _%args137570%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144591144592%_))
                                 (let ((_%e137598137652%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144591144592%_))))
                                   (let ((_%tl137600137657%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137598137652%_)))
                                         (_%hd137599137655%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137598137652%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137599137655%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137599137655%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137600137657%_))
                                                 (let ((_%e137601137660%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137600137657%_))))
                                                   (let ((_%tl137603137665%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137601137660%_)))
                                                         (_%hd137602137663%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137601137660%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137603137665%_))
                                                         (_%__kont144593144594%_)
                                                         (_%__kont144597144598%_))))
                                                 (_%__kont144597144598%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137599137655%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137600137657%_))
                                                     (let ((_%e137607137637%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137600137657%_))))
                                                       (let ((_%tl137609137642%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137607137637%_)))
                     (_%hd137608137640%_
                      (let () (declare (not safe)) (##car _%e137607137637%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137609137642%_))
                     (_%__kont144595144596%_)
                     (_%__kont144597144598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144597144598%_))
                                                 (_%__kont144597144598%_)))
                                         (_%__kont144597144598%_))))
                                 (_%__kont144597144598%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137571137579%_))
                     (let ((_%hd137576137676%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137571137579%_)))
                           (_%tl137577137678%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137571137579%_))))
                       (let* ((_%e137681%_ _%hd137576137676%_)
                              (_%rest137683%_ _%tl137577137678%_))
                         (_%K137575137673%_ _%rest137683%_ _%e137681%_)))
                     (_%else137573137587%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137513137543%_
                                               _%hd137510137535%_)
                                              (_%g137502137519%_
                                               _%g137503137522%_))))
                                      (_%g137502137519%_ _%g137503137522%_))))
                              (_%g137502137519%_ _%g137503137522%_))))
                      (_%g137502137519%_ _%g137503137522%_)))))
          (_%g137501137685%_ _%stx137500%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137310%_ _%stx137311%_)
        (let* ((_%g137313137330%_
                (lambda (_%g137314137327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137314137327%_))))
               (_%g137312137496%_
                (lambda (_%g137314137333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137314137333%_))
                      (let ((_%e137317137335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137314137333%_))))
                        (let ((_%hd137318137338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137317137335%_)))
                              (_%tl137319137340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137317137335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137319137340%_))
                              (let ((_%e137320137343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137319137340%_))))
                                (let ((_%hd137321137346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137320137343%_)))
                                      (_%tl137322137348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137320137343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137322137348%_))
                                      (let ((_%e137323137351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137322137348%_))))
                                        (let ((_%hd137324137354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137323137351%_)))
                                              (_%tl137325137356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137323137351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137325137356%_))
                                              ((lambda (_%L137359%_
                                                        _%L137360%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137310%_ _%L137359%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137310%_ _%L137360%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137375%_ ((_%rest137378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137360%_ (cons _%L137359%_ '())))
                                (_%bind137380%_ '())
                                (_%args137381%_ '()))
               (let* ((_%rest137382137390%_ _%rest137378%_)
                      (_%else137384137398%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137380%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137381%_)
                                                 '()))))))
                      (_%K137386137484%_
                       (lambda (_%rest137401%_ _%e137402%_)
                         (let* ((_%__stx144637144638%_ _%e137402%_)
                                (_%g137407137425%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144637144638%_)))))
                           (let ((_%__kont144639144640%_
                                  (lambda ()
                                    (_%lp137375%_
                                     _%rest137401%_
                                     _%bind137380%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137402%_))
                                           _%args137381%_))))
                                 (_%__kont144641144642%_
                                  (lambda ()
                                    (_%lp137375%_
                                     _%rest137401%_
                                     _%bind137380%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137402%_))
                                           _%args137381%_))))
                                 (_%__kont144643144644%_
                                  (lambda ()
                                    (let ((_%tmp137432%_
                                           (let ((__tmp145045
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145045))))
                                      (_%lp137375%_
                                       _%rest137401%_
                                       (cons (cons _%tmp137432%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137402%_))
                                                         '()))
                                             _%bind137380%_)
                                       (cons _%tmp137432%_ _%args137381%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144637144638%_))
                                 (let ((_%e137409137463%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144637144638%_))))
                                   (let ((_%tl137411137468%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137409137463%_)))
                                         (_%hd137410137466%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137409137463%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137410137466%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137410137466%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137411137468%_))
                                                 (let ((_%e137412137471%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137411137468%_))))
                                                   (let ((_%tl137414137476%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137412137471%_)))
                                                         (_%hd137413137474%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137412137471%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137414137476%_))
                                                         (_%__kont144639144640%_)
                                                         (_%__kont144643144644%_))))
                                                 (_%__kont144643144644%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137410137466%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137411137468%_))
                                                     (let ((_%e137418137448%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137411137468%_))))
                                                       (let ((_%tl137420137453%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137418137448%_)))
                     (_%hd137419137451%_
                      (let () (declare (not safe)) (##car _%e137418137448%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137420137453%_))
                     (_%__kont144641144642%_)
                     (_%__kont144643144644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144643144644%_))
                                                 (_%__kont144643144644%_)))
                                         (_%__kont144643144644%_))))
                                 (_%__kont144643144644%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137382137390%_))
                     (let ((_%hd137387137487%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137382137390%_)))
                           (_%tl137388137489%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137382137390%_))))
                       (let* ((_%e137492%_ _%hd137387137487%_)
                              (_%rest137494%_ _%tl137388137489%_))
                         (_%K137386137484%_ _%rest137494%_ _%e137492%_)))
                     (_%else137384137398%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137324137354%_
                                               _%hd137321137346%_)
                                              (_%g137313137330%_
                                               _%g137314137333%_))))
                                      (_%g137313137330%_ _%g137314137333%_))))
                              (_%g137313137330%_ _%g137314137333%_))))
                      (_%g137313137330%_ _%g137314137333%_)))))
          (_%g137312137496%_ _%stx137311%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137226%_ _%stx137227%_)
        (let* ((_%g137229137250%_
                (lambda (_%g137230137247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137230137247%_))))
               (_%g137228137307%_
                (lambda (_%g137230137253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137230137253%_))
                      (let ((_%e137234137255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137230137253%_))))
                        (let ((_%hd137235137258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137234137255%_)))
                              (_%tl137236137260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137234137255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137236137260%_))
                              (let ((_%e137237137263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137236137260%_))))
                                (let ((_%hd137238137266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137237137263%_)))
                                      (_%tl137239137268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137237137263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137239137268%_))
                                      (let ((_%e137240137271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137239137268%_))))
                                        (let ((_%hd137241137274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137240137271%_)))
                                              (_%tl137242137276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137240137271%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137242137276%_))
                                              (let ((_%e137243137279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137242137276%_))))
                                                (let ((_%hd137244137282%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137243137279%_)))
                                                      (_%tl137245137284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137243137279%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137245137284%_))
                                                      ((lambda (_%L137287%_
                                                                _%L137288%_
                                                                _%L137289%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137226%_ _%L137287%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137226%_
                                      _%L137288%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137226%_
                                            _%L137289%_))
                                         (cons ''#f '()))))))
               _%hd137244137282%_
               _%hd137241137274%_
               _%hd137238137266%_)
              (_%g137229137250%_ _%g137230137253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137229137250%_
                                               _%g137230137253%_))))
                                      (_%g137229137250%_ _%g137230137253%_))))
                              (_%g137229137250%_ _%g137230137253%_))))
                      (_%g137229137250%_ _%g137230137253%_)))))
          (_%g137228137307%_ _%stx137227%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137126%_ _%stx137127%_)
        (let* ((_%g137129137154%_
                (lambda (_%g137130137151%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137130137151%_))))
               (_%g137128137223%_
                (lambda (_%g137130137157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137130137157%_))
                      (let ((_%e137135137159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137130137157%_))))
                        (let ((_%hd137136137162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137135137159%_)))
                              (_%tl137137137164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137135137159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137137137164%_))
                              (let ((_%e137138137167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137137137164%_))))
                                (let ((_%hd137139137170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137138137167%_)))
                                      (_%tl137140137172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137138137167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137140137172%_))
                                      (let ((_%e137141137175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137140137172%_))))
                                        (let ((_%hd137142137178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137141137175%_)))
                                              (_%tl137143137180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137141137175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137143137180%_))
                                              (let ((_%e137144137183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137143137180%_))))
                                                (let ((_%hd137145137186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137144137183%_)))
                                                      (_%tl137146137188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137144137183%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137146137188%_))
                                                      (let ((_%e137147137191%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137146137188%_))))
                (let ((_%hd137148137194%_
                       (let () (declare (not safe)) (##car _%e137147137191%_)))
                      (_%tl137149137196%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137147137191%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137149137196%_))
                      ((lambda (_%L137199%_
                                _%L137200%_
                                _%L137201%_
                                _%L137202%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137126%_
                                        _%L137200%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137126%_
                                              _%L137199%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137126%_
                                                    _%L137201%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137126%_
                                                          _%L137202%_))
                                                       (cons ''#f '())))))))
                       _%hd137148137194%_
                       _%hd137145137186%_
                       _%hd137142137178%_
                       _%hd137139137170%_)
                      (_%g137129137154%_ _%g137130137157%_))))
              (_%g137129137154%_ _%g137130137157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137129137154%_
                                               _%g137130137157%_))))
                                      (_%g137129137154%_ _%g137130137157%_))))
                              (_%g137129137154%_ _%g137130137157%_))))
                      (_%g137129137154%_ _%g137130137157%_)))))
          (_%g137128137223%_ _%stx137127%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137042%_ _%stx137043%_)
        (let* ((_%g137045137066%_
                (lambda (_%g137046137063%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137046137063%_))))
               (_%g137044137123%_
                (lambda (_%g137046137069%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137046137069%_))
                      (let ((_%e137050137071%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137046137069%_))))
                        (let ((_%hd137051137074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137050137071%_)))
                              (_%tl137052137076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137050137071%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137052137076%_))
                              (let ((_%e137053137079%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137052137076%_))))
                                (let ((_%hd137054137082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137053137079%_)))
                                      (_%tl137055137084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137053137079%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137055137084%_))
                                      (let ((_%e137056137087%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137055137084%_))))
                                        (let ((_%hd137057137090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137056137087%_)))
                                              (_%tl137058137092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137056137087%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137058137092%_))
                                              (let ((_%e137059137095%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137058137092%_))))
                                                (let ((_%hd137060137098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137059137095%_)))
                                                      (_%tl137061137100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137059137095%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137061137100%_))
                                                      ((lambda (_%L137103%_
                                                                _%L137104%_
                                                                _%L137105%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137042%_ _%L137103%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137042%_
                                      _%L137104%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137042%_
                                            _%L137105%_))
                                         (cons ''#f '()))))))
               _%hd137060137098%_
               _%hd137057137090%_
               _%hd137054137082%_)
              (_%g137045137066%_ _%g137046137069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137045137066%_
                                               _%g137046137069%_))))
                                      (_%g137045137066%_ _%g137046137069%_))))
                              (_%g137045137066%_ _%g137046137069%_))))
                      (_%g137045137066%_ _%g137046137069%_)))))
          (_%g137044137123%_ _%stx137043%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self136942%_ _%stx136943%_)
        (let* ((_%g136945136970%_
                (lambda (_%g136946136967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136946136967%_))))
               (_%g136944137039%_
                (lambda (_%g136946136973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136946136973%_))
                      (let ((_%e136951136975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136946136973%_))))
                        (let ((_%hd136952136978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136951136975%_)))
                              (_%tl136953136980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136951136975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136953136980%_))
                              (let ((_%e136954136983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136953136980%_))))
                                (let ((_%hd136955136986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136954136983%_)))
                                      (_%tl136956136988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136954136983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136956136988%_))
                                      (let ((_%e136957136991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136956136988%_))))
                                        (let ((_%hd136958136994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136957136991%_)))
                                              (_%tl136959136996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136957136991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136959136996%_))
                                              (let ((_%e136960136999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136959136996%_))))
                                                (let ((_%hd136961137002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136960136999%_)))
                                                      (_%tl136962137004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136960136999%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136962137004%_))
                                                      (let ((_%e136963137007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136962137004%_))))
                (let ((_%hd136964137010%_
                       (let () (declare (not safe)) (##car _%e136963137007%_)))
                      (_%tl136965137012%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136963137007%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136965137012%_))
                      ((lambda (_%L137015%_
                                _%L137016%_
                                _%L137017%_
                                _%L137018%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self136942%_
                                        _%L137016%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self136942%_
                                              _%L137015%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self136942%_
                                                    _%L137017%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self136942%_
                                                          _%L137018%_))
                                                       (cons ''#f '())))))))
                       _%hd136964137010%_
                       _%hd136961137002%_
                       _%hd136958136994%_
                       _%hd136955136986%_)
                      (_%g136945136970%_ _%g136946136973%_))))
              (_%g136945136970%_ _%g136946136973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136945136970%_
                                               _%g136946136973%_))))
                                      (_%g136945136970%_ _%g136946136973%_))))
                              (_%g136945136970%_ _%g136946136973%_))))
                      (_%g136945136970%_ _%g136946136973%_)))))
          (_%g136944137039%_ _%stx136943%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136737%_ _%stx136738%_)
        (let* ((_%g136740136761%_
                (lambda (_%g136741136758%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136741136758%_))))
               (_%g136739136939%_
                (lambda (_%g136741136764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136741136764%_))
                      (let ((_%e136745136766%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136741136764%_))))
                        (let ((_%hd136746136769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136745136766%_)))
                              (_%tl136747136771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136745136766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136747136771%_))
                              (let ((_%e136748136774%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136747136771%_))))
                                (let ((_%hd136749136777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136748136774%_)))
                                      (_%tl136750136779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136748136774%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136750136779%_))
                                      (let ((_%e136751136782%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136750136779%_))))
                                        (let ((_%hd136752136785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136751136782%_)))
                                              (_%tl136753136787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136751136782%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136753136787%_))
                                              (let ((_%e136754136790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136753136787%_))))
                                                (let ((_%hd136755136793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136754136790%_)))
                                                      (_%tl136756136795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136754136790%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136756136795%_))
                                                      ((lambda (_%L136798%_
                                                                _%L136799%_
                                                                _%L136800%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136737%_
                                    _%L136798%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136737%_
                                          _%L136799%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp136818%_ ((_%rest136821%_
                                         (cons _%L136799%_
                                               (cons _%L136798%_ '())))
                                        (_%bind136823%_ '())
                                        (_%args136824%_ '()))
                       (let* ((_%rest136825136833%_ _%rest136821%_)
                              (_%else136827136841%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind136823%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145046 _%args136824%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K136829136927%_
                               (lambda (_%rest136844%_ _%e136845%_)
                                 (let* ((_%__stx144683144684%_ _%e136845%_)
                                        (_%g136850136868%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144683144684%_)))))
                                   (let ((_%__kont144685144686%_
                                          (lambda ()
                                            (_%lp136818%_
                                             _%rest136844%_
                                             _%bind136823%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136845%_))
                                                   _%args136824%_))))
                                         (_%__kont144687144688%_
                                          (lambda ()
                                            (_%lp136818%_
                                             _%rest136844%_
                                             _%bind136823%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136845%_))
                                                   _%args136824%_))))
                                         (_%__kont144689144690%_
                                          (lambda ()
                                            (let ((_%tmp136875%_
                                                   (let ((__tmp145047
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145047))))
                                              (_%lp136818%_
                                               _%rest136844%_
                                               (cons (cons _%tmp136875%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136845%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136823%_)
                                               (cons _%tmp136875%_
                                                     _%args136824%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144683144684%_))
                                         (let ((_%e136852136906%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144683144684%_))))
                                           (let ((_%tl136854136911%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e136852136906%_)))
                                                 (_%hd136853136909%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e136852136906%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd136853136909%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd136853136909%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl136854136911%_))
                                                         (let ((_%e136855136914%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl136854136911%_))))
                   (let ((_%tl136857136919%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e136855136914%_)))
                         (_%hd136856136917%_
                          (let ()
                            (declare (not safe))
                            (##car _%e136855136914%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl136857136919%_))
                         (_%__kont144685144686%_)
                         (_%__kont144689144690%_))))
                 (_%__kont144689144690%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd136853136909%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl136854136911%_))
                     (let ((_%e136861136891%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl136854136911%_))))
                       (let ((_%tl136863136896%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e136861136891%_)))
                             (_%hd136862136894%_
                              (let ()
                                (declare (not safe))
                                (##car _%e136861136891%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl136863136896%_))
                             (_%__kont144687144688%_)
                             (_%__kont144689144690%_))))
                     (_%__kont144689144690%_))
                 (_%__kont144689144690%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144689144690%_))))
                                         (_%__kont144689144690%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest136825136833%_))
                             (let ((_%hd136830136930%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest136825136833%_)))
                                   (_%tl136831136932%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest136825136833%_))))
                               (let* ((_%e136935%_ _%hd136830136930%_)
                                      (_%rest136937%_ _%tl136831136932%_))
                                 (_%K136829136927%_
                                  _%rest136937%_
                                  _%e136935%_)))
                             (_%else136827136841%_))))))
               _%hd136755136793%_
               _%hd136752136785%_
               _%hd136749136777%_)
              (_%g136740136761%_ _%g136741136764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136740136761%_
                                               _%g136741136764%_))))
                                      (_%g136740136761%_ _%g136741136764%_))))
                              (_%g136740136761%_ _%g136741136764%_))))
                      (_%g136740136761%_ _%g136741136764%_)))))
          (_%g136739136939%_ _%stx136738%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136516%_ _%stx136517%_)
        (let* ((_%g136519136544%_
                (lambda (_%g136520136541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136520136541%_))))
               (_%g136518136734%_
                (lambda (_%g136520136547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136520136547%_))
                      (let ((_%e136525136549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136520136547%_))))
                        (let ((_%hd136526136552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136525136549%_)))
                              (_%tl136527136554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136525136549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136527136554%_))
                              (let ((_%e136528136557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136527136554%_))))
                                (let ((_%hd136529136560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136528136557%_)))
                                      (_%tl136530136562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136528136557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136530136562%_))
                                      (let ((_%e136531136565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136530136562%_))))
                                        (let ((_%hd136532136568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136531136565%_)))
                                              (_%tl136533136570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136531136565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136533136570%_))
                                              (let ((_%e136534136573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136533136570%_))))
                                                (let ((_%hd136535136576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136534136573%_)))
                                                      (_%tl136536136578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136534136573%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136536136578%_))
                                                      (let ((_%e136537136581%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136536136578%_))))
                (let ((_%hd136538136584%_
                       (let () (declare (not safe)) (##car _%e136537136581%_)))
                      (_%tl136539136586%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136537136581%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136539136586%_))
                      ((lambda (_%L136589%_
                                _%L136590%_
                                _%L136591%_
                                _%L136592%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136516%_
                                            _%L136590%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136516%_
                                                  _%L136589%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136516%_
                                                        _%L136591%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136613%_ ((_%rest136616%_
                                                 (cons _%L136591%_
                                                       (cons _%L136589%_
                                                             (cons _%L136590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136618%_ '())
                                                (_%args136619%_ '()))
                               (let* ((_%rest136620136628%_ _%rest136616%_)
                                      (_%else136622136636%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136618%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145048 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145048 _%args136619%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136624136722%_
                                       (lambda (_%rest136639%_ _%e136640%_)
                                         (let* ((_%__stx144729144730%_
                                                 _%e136640%_)
                                                (_%g136645136663%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144729144730%_)))))
                                           (let ((_%__kont144731144732%_
                                                  (lambda ()
                                                    (_%lp136613%_
                                                     _%rest136639%_
                                                     _%bind136618%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136640%_))
                                                           _%args136619%_))))
                                                 (_%__kont144733144734%_
                                                  (lambda ()
                                                    (_%lp136613%_
                                                     _%rest136639%_
                                                     _%bind136618%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136640%_))
                                                           _%args136619%_))))
                                                 (_%__kont144735144736%_
                                                  (lambda ()
                                                    (let ((_%tmp136670%_
                                                           (let ((__tmp145049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145049))))
              (_%lp136613%_
               _%rest136639%_
               (cons (cons _%tmp136670%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e136640%_))
                                 '()))
                     _%bind136618%_)
               (cons _%tmp136670%_ _%args136619%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144729144730%_))
                                                 (let ((_%e136647136701%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144729144730%_))))
                                                   (let ((_%tl136649136706%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136647136701%_)))
                                                         (_%hd136648136704%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136647136701%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136648136704%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136648136704%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136649136706%_))
                         (let ((_%e136650136709%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136649136706%_))))
                           (let ((_%tl136652136714%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136650136709%_)))
                                 (_%hd136651136712%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136650136709%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136652136714%_))
                                 (_%__kont144731144732%_)
                                 (_%__kont144735144736%_))))
                         (_%__kont144735144736%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136648136704%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136649136706%_))
                             (let ((_%e136656136686%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136649136706%_))))
                               (let ((_%tl136658136691%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136656136686%_)))
                                     (_%hd136657136689%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136656136686%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136658136691%_))
                                     (_%__kont144733144734%_)
                                     (_%__kont144735144736%_))))
                             (_%__kont144735144736%_))
                         (_%__kont144735144736%_)))
                 (_%__kont144735144736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144735144736%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136620136628%_))
                                     (let ((_%hd136625136725%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136620136628%_)))
                                           (_%tl136626136727%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136620136628%_))))
                                       (let* ((_%e136730%_ _%hd136625136725%_)
                                              (_%rest136732%_
                                               _%tl136626136727%_))
                                         (_%K136624136722%_
                                          _%rest136732%_
                                          _%e136730%_)))
                                     (_%else136622136636%_))))))
                       _%hd136538136584%_
                       _%hd136535136576%_
                       _%hd136532136568%_
                       _%hd136529136560%_)
                      (_%g136519136544%_ _%g136520136547%_))))
              (_%g136519136544%_ _%g136520136547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136519136544%_
                                               _%g136520136547%_))))
                                      (_%g136519136544%_ _%g136520136547%_))))
                              (_%g136519136544%_ _%g136520136547%_))))
                      (_%g136519136544%_ _%g136520136547%_)))))
          (_%g136518136734%_ _%stx136517%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136355%_ _%stx136356%_)
        (letrec ((_%import-set-template136358%_
                  (lambda (_%in136461%_ _%phi136462%_)
                    (let ((_%iphi136464%_
                           (fx+ _%phi136462%_
                                (##direct-structure-ref
                                 _%in136461%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136465%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136461%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136467%_ ((_%rest136469%_ _%imports136465%_)
                                         (_%r136470%_ '()))
                        (let* ((_%rest136471136479%_ _%rest136469%_)
                               (_%else136473136487%_ (lambda () _%r136470%_))
                               (_%K136475136504%_
                                (lambda (_%rest136490%_ _%in136491%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136491%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi136464%_))
                                          (_%lp136467%_
                                           _%rest136490%_
                                           (cons _%in136491%_ _%r136470%_))
                                          (_%lp136467%_
                                           _%rest136490%_
                                           _%r136470%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136491%_
                                             'gx#module-import::t))
                                          (let ((_%iphi136495%_
                                                 (fx+ _%phi136462%_
                                                      (##direct-structure-ref
                                                       _%in136491%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi136495%_))
                                                (_%lp136467%_
                                                 _%rest136490%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in136491%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r136470%_))
                                                (_%lp136467%_
                                                 _%rest136490%_
                                                 _%r136470%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136491%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi136498%_
                                                     (fx+ _%iphi136464%_
                                                          (##direct-structure-ref
                                                           _%in136491%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi136498%_))
                                                    (_%lp136467%_
                                                     _%rest136490%_
                                                     (cons (##direct-structure-ref
                                                            _%in136491%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r136470%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi136498%_))
                                                        (_%lp136467%_
                                                         _%rest136490%_
                                                         (let ((__tmp145050
                                                                (_%import-set-template136358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136491%_
                         _%iphi136464%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r136470%_ __tmp145050)))
                (_%lp136467%_ _%rest136490%_ _%r136470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp136467%_
                                               _%rest136490%_
                                               _%r136470%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136471136479%_))
                              (let ((_%hd136476136507%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136471136479%_)))
                                    (_%tl136477136509%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136471136479%_))))
                                (let* ((_%in136512%_ _%hd136476136507%_)
                                       (_%rest136514%_ _%tl136477136509%_))
                                  (_%K136475136504%_
                                   _%rest136514%_
                                   _%in136512%_)))
                              (_%else136473136487%_))))))))
          (let* ((_%g136360136370%_
                  (lambda (_%g136361136367%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136361136367%_))))
                 (_%g136359136458%_
                  (lambda (_%g136361136373%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136361136373%_))
                        (let ((_%e136363136375%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136361136373%_))))
                          (let ((_%hd136364136378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136363136375%_)))
                                (_%tl136365136380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136363136375%_))))
                            ((lambda (_%L136383%_)
                               (let ((_%ht136394%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136396%_ ((_%rest136398%_
                                                     _%L136383%_)
                                                    (_%loads136399%_ '()))
                                   (letrec ((_%K136401%_
                                             (lambda (_%ctx136451%_
                                                      _%rest136452%_)
                                               (let ((_%id136454%_
                                                      (##structure-ref
                                                       _%ctx136451%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136394%_
                                                        _%id136454%_))
                                                     (_%lp136396%_
                                                      _%rest136452%_
                                                      _%loads136399%_)
                                                     (let ((_%rt136456%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136454%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136394%_
                                                          _%id136454%_
                                                          _%rt136456%_))
                                                       (_%lp136396%_
                                                        _%rest136452%_
                                                        (cons _%rt136456%_
                                                              _%loads136399%_))))))))
                                     (let* ((_%rest136402136410%_
                                             _%rest136398%_)
                                            (_%else136404136422%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145052
                                                            (lambda (_%g136417136419%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136417136419%_)))
                   (__tmp145051 (reverse _%loads136399%_)))
               (declare (not safe))
               (##map __tmp145052 __tmp145051)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136406136439%_
                                             (lambda (_%rest136425%_
                                                      _%in136426%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136426%_
                                                      'gx#module-context::t))
                                                   (_%K136401%_
                                                    _%in136426%_
                                                    _%rest136425%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136426%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in136426%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K136401%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in136426%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest136425%_)
                   (_%lp136396%_ _%rest136425%_ _%loads136399%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136426%_
                      'gx#import-set::t))
                   (let ((_%phi136431%_
                          (##direct-structure-ref
                           _%in136426%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi136431%_)
                         (_%K136401%_
                          (##direct-structure-ref
                           _%in136426%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest136425%_)
                         (if (fxpositive? _%phi136431%_)
                             (let ((_%deps136435%_
                                    (_%import-set-template136358%_
                                     _%in136426%_
                                     '0)))
                               (_%lp136396%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest136425%_
                                   _%deps136435%_))
                                _%loads136399%_))
                             (_%lp136396%_ _%rest136425%_ _%loads136399%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx136356%_
                      _%in136426%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136402136410%_))
                                           (let ((_%hd136407136442%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136402136410%_)))
                                                 (_%tl136408136444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136402136410%_))))
                                             (let* ((_%in136447%_
                                                     _%hd136407136442%_)
                                                    (_%rest136449%_
                                                     _%tl136408136444%_))
                                               (_%K136406136439%_
                                                _%rest136449%_
                                                _%in136447%_)))
                                           (_%else136404136422%_)))))))
                             _%tl136365136380%_)))
                        (_%g136360136370%_ _%g136361136373%_)))))
            (_%g136359136458%_ _%stx136356%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136168%_ _%stx136169%_)
        (letrec ((_%add-lift!136171%_
                  (lambda (_%expr136353%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136353%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136172%_
                  (lambda (_%id136350%_ _%marks136351%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136350%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136351%_
                                                        '()))))))))
                 (_%generate-simple136173%_
                  (lambda (_%stxq136345%_)
                    (let ((_%gid136347%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136348%_
                           (gxc#generate-runtime-identifier _%stxq136345%_)))
                      (_%add-lift!136171%_
                       (cons 'define
                             (cons _%gid136347%_
                                   (cons (_%generate-syntax-quote136172%_
                                          _%qid136348%_
                                          ''())
                                         '()))))
                      (let ((__tmp145053
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145053 _%stxq136345%_ _%gid136347%_))
                      _%gid136347%_)))
                 (_%generate-serialized136174%_
                  (lambda (_%stxq136335%_ _%marks136336%_)
                    (let* ((_%mark-refs136338%_
                            (map _%generate-mark136175%_ _%marks136336%_))
                           (_%gid136340%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136342%_
                            (gxc#generate-runtime-identifier _%stxq136335%_)))
                      (_%add-lift!136171%_
                       (cons 'define
                             (cons _%gid136340%_
                                   (cons (_%generate-syntax-quote136172%_
                                          _%qid136342%_
                                          (cons 'list _%mark-refs136338%_))
                                         '()))))
                      (let ((__tmp145054
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145054 _%stxq136335%_ _%gid136340%_))
                      _%gid136340%_)))
                 (_%generate-mark136175%_
                  (lambda (_%mark136320%_)
                    (let ((_%$e136322%_
                           (let ((__tmp145055
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145055 _%mark136320%_))))
                      (if _%$e136322%_
                          (values _%$e136322%_)
                          (let* ((_%gid136326%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr136328%_
                                  (_%serialize-mark136176%_ _%mark136320%_))
                                 (_%ctx136330%_
                                  (let ((__tmp145056
                                         (##structure-ref
                                          _%mark136320%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp145056)))
                                 (_%ctx-ref136332%_
                                  (if (eq? _%ctx136330%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref136177%_
                                                               _%ctx136330%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp145057
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145057
                               _%mark136320%_
                               _%gid136326%_))
                            (_%add-lift!136171%_
                             (cons 'define
                                   (cons _%gid136326%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr136328%_ '()))
                   (cons _%ctx-ref136332%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid136326%_)))))
                 (_%serialize-mark136176%_
                  (lambda (_%mark136267%_)
                    (letrec ((_%quote-e136269%_
                              (lambda (_%sym136318%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136318%_))
                                    _%sym136318%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136318%_))))))
                      (let* ((_%mark136270136279%_ _%mark136267%_)
                             (_%E136272136283%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136270136279%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136273136295%_
                              (lambda (_%trace136286%_
                                       _%phi136287%_
                                       _%ctx136288%_
                                       _%subst136289%_)
                                (let ((_%subs136291%_
                                       (if _%subst136289%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136289%_))
                                           '())))
                                  (cons _%phi136287%_
                                        (map (lambda (_%pair136293%_)
                                               (cons (_%quote-e136269%_
                                                      (car _%pair136293%_))
                                                     (_%quote-e136269%_
                                                      (cdr _%pair136293%_))))
                                             _%subs136291%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136270136279%_
                               'gx#expander-mark::t))
                            (let* ((_%e136274136298%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136270136279%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136301%_ _%e136274136298%_)
                                   (_%e136275136303%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136270136279%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136306%_ _%e136275136303%_)
                                   (_%e136276136308%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136270136279%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136311%_ _%e136276136308%_)
                                   (_%e136277136313%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136270136279%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136316%_ _%e136277136313%_))
                              (_%K136273136295%_
                               _%trace136316%_
                               _%phi136311%_
                               _%ctx136306%_
                               _%subst136301%_))
                            (_%E136272136283%_))))))
                 (_%context-ref136177%_
                  (lambda (_%ctx136254%_)
                    (if (let ((__tmp145058
                               (##structure-ref
                                _%ctx136254%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145058
                           'gx#module-context::t))
                        (let ((_%ctx-ref136256%_
                               (_%context-ref-nested136179%_ _%ctx136254%_))
                              (_%ctx-origin136257%_
                               (_%context-ref-origin136178%_ _%ctx136254%_))
                              (_%origin136258%_
                               (_%context-ref-origin136178%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin136258%_ _%ctx-origin136257%_)
                              (let ((_%ref136260%_
                                     (_%context-ref-nested136179%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp136262%_ ((_%ref136264%_
                                                    (cdr _%ref136260%_))
                                                   (_%ctx-ref136265%_
                                                    (cdr _%ctx-ref136256%_)))
                                  (if (and (pair? _%ref136264%_)
                                           (eq? (car _%ref136264%_)
                                                (car _%ctx-ref136265%_)))
                                      (_%lp136262%_
                                       (cdr _%ref136264%_)
                                       (cdr _%ctx-ref136265%_))
                                      (cons '#f _%ctx-ref136265%_))))
                              _%ctx-ref136256%_))
                        (let ((__tmp145059
                               (##structure-ref
                                _%ctx136254%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145059)))))
                 (_%context-ref-origin136178%_
                  (lambda (_%ctx136246%_)
                    (let _%lp136248%_ ((_%ctx136250%_ _%ctx136246%_))
                      (let ((_%super136252%_
                             (##structure-ref
                              _%ctx136250%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136252%_
                               'gx#module-context::t))
                            (_%lp136248%_ _%super136252%_)
                            _%ctx136250%_)))))
                 (_%context-ref-nested136179%_
                  (lambda (_%ctx136237%_)
                    (let _%lp136239%_ ((_%ctx136241%_ _%ctx136237%_)
                                       (_%r136242%_ '()))
                      (let ((_%super136244%_
                             (##structure-ref
                              _%ctx136241%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136244%_
                               'gx#module-context::t))
                            (_%lp136239%_
                             _%super136244%_
                             (cons (car (##structure-ref
                                         _%ctx136241%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r136242%_))
                            (cons (let ((__tmp145060
                                         (##structure-ref
                                          _%ctx136241%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145060))
                                  _%r136242%_)))))))
          (let* ((_%g136181136194%_
                  (lambda (_%g136182136191%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136182136191%_))))
                 (_%g136180136234%_
                  (lambda (_%g136182136197%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136182136197%_))
                        (let ((_%e136184136199%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136182136197%_))))
                          (let ((_%hd136185136202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136184136199%_)))
                                (_%tl136186136204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136184136199%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136186136204%_))
                                (let ((_%e136187136207%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136186136204%_))))
                                  (let ((_%hd136188136210%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136187136207%_)))
                                        (_%tl136189136212%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136187136207%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136189136212%_))
                                        ((lambda (_%L136215%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136215%_))
                                               (let ((_%$e136228%_
                                                      (let ((__tmp145061
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145061 _%L136215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136228%_
                                                     (values _%$e136228%_)
                                                     (let ((_%marks136232%_
                                                            (##direct-structure-ref
                                                             _%L136215%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks136232%_)
                                                           (_%generate-simple136173%_
                                                            _%L136215%_)
                                                           (_%generate-serialized136174%_
                                                            _%L136215%_
                                                            _%marks136232%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136215%_))))
                                         _%hd136188136210%_)
                                        (_%g136181136194%_
                                         _%g136182136197%_))))
                                (_%g136181136194%_ _%g136182136197%_))))
                        (_%g136181136194%_ _%g136182136197%_)))))
            (_%g136180136234%_ _%stx136169%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136100%_ _%stx136101%_)
        (let* ((_%g136103136120%_
                (lambda (_%g136104136117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136104136117%_))))
               (_%g136102136165%_
                (lambda (_%g136104136123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136104136123%_))
                      (let ((_%e136107136125%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136104136123%_))))
                        (let ((_%hd136108136128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136107136125%_)))
                              (_%tl136109136130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136107136125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136109136130%_))
                              (let ((_%e136110136133%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136109136130%_))))
                                (let ((_%hd136111136136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136110136133%_)))
                                      (_%tl136112136138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136110136133%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136112136138%_))
                                      (let ((_%e136113136141%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136112136138%_))))
                                        (let ((_%hd136114136144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136113136141%_)))
                                              (_%tl136115136146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136113136141%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136115136146%_))
                                              ((lambda (_%L136149%_
                                                        _%L136150%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136150%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136100%_ _%L136149%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136114136144%_
                                               _%hd136111136136%_)
                                              (_%g136103136120%_
                                               _%g136104136123%_))))
                                      (_%g136103136120%_ _%g136104136123%_))))
                              (_%g136103136120%_ _%g136104136123%_))))
                      (_%g136103136120%_ _%g136104136123%_)))))
          (_%g136102136165%_ _%stx136101%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136049%_ _%stx136050%_)
        (let* ((_%g136052136062%_
                (lambda (_%g136053136059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136053136059%_))))
               (_%g136051136097%_
                (lambda (_%g136053136065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136053136065%_))
                      (let ((_%e136055136067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136053136065%_))))
                        (let ((_%hd136056136070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136055136067%_)))
                              (_%tl136057136072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136055136067%_))))
                          ((lambda (_%L136075%_)
                             (let* ((_%c-body136089%_
                                     (map (lambda (_%g136084136086%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136049%_
                                               _%g136084136086%_)))
                                          _%L136075%_))
                                    (_%c-body136094%_
                                     (let ((__tmp145062
                                            (lambda (_%$obj136091%_)
                                              (not (eq? _%$obj136091%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145062
                                        _%c-body136089%_))))
                               (cons '%#begin _%c-body136094%_)))
                           _%tl136057136072%_)))
                      (_%g136052136062%_ _%g136053136065%_)))))
          (_%g136051136097%_ _%stx136050%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self135954%_ _%stx135955%_)
        (let* ((_%g135957135967%_
                (lambda (_%g135958135964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135958135964%_))))
               (_%g135956136046%_
                (lambda (_%g135958135970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135958135970%_))
                      (let ((_%e135960135972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135958135970%_))))
                        (let ((_%hd135961135975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135960135972%_)))
                              (_%tl135962135977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135960135972%_))))
                          ((lambda (_%L135980%_)
                             (let* ((_%phi135990%_
                                     (let ((__tmp145063
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145063 '1)))
                                    (_%block135992%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self135954%_ 'state))
                                      _%phi135990%_))
                                    (_%compiled135995%_
                                     (let ((__tmp145064
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self135954%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L135980%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145064
                                        gx#current-expander-phi
                                        _%phi135990%_)))
                                    (_%g135998136008%_
                                     (lambda (_%g135999136005%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g135999136005%_))))
                                    (_%g135997136043%_
                                     (lambda (_%g135999136011%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g135999136011%_))
                                           (let ((_%e136001136013%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g135999136011%_))))
                                             (let ((_%hd136002136016%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e136001136013%_)))
                                                   (_%tl136003136018%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e136001136013%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd136002136016%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd136002136016%_))
                                                       ((lambda (_%L136021%_)
                                                          (let ((_%c-body136038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj136035%_)
                                   (not (eq? _%$obj136035%_ '#!void)))
                                 _%L136021%_)))
                    (if _%block135992%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block135992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body136038%_))
                        (if (null? _%c-body136038%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body136038%_)))))
                _%tl136003136018%_)
               (_%g135998136008%_ _%g135999136011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g135998136008%_
                                                    _%g135999136011%_))))
                                           (_%g135998136008%_
                                            _%g135999136011%_)))))
                               (_%g135997136043%_ _%compiled135995%_)))
                           _%tl135962135977%_)))
                      (_%g135957135967%_ _%g135958135970%_)))))
          (_%g135956136046%_ _%stx135955%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self135885%_ _%stx135886%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135885%_ 'state)))
        (let* ((_%g135888135902%_
                (lambda (_%g135889135899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135889135899%_))))
               (_%g135887135951%_
                (lambda (_%g135889135905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135889135905%_))
                      (let ((_%e135892135907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135889135905%_))))
                        (let ((_%hd135893135910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135892135907%_)))
                              (_%tl135894135912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135892135907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135894135912%_))
                              (let ((_%e135895135915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135894135912%_))))
                                (let ((_%hd135896135918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135895135915%_)))
                                      (_%tl135897135920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135895135915%_))))
                                  ((lambda (_%L135923%_ _%L135924%_)
                                     (let ((_%key135937%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L135924%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key135937%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx135886%_
                                              _%L135924%_
                                              _%key135937%_)))
                                       (let* ((_%ctx135939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L135924%_)))
                                              (_%code135942%_
                                               (let ((__tmp145065
                                                      (lambda ()
                                                        (let ((__tmp145066
                                                               (##structure-ref
                                                                _%ctx135939%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self135885%_
                                                           __tmp145066)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145065
                                                  gx#current-expander-context
                                                  _%ctx135939%_)))
                                              (_%rt135944%_
                                               (let ((__tmp145067
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145067
                                                  _%ctx135939%_)))
                                              (_%loader135946%_
                                               (if _%rt135944%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt135944%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid135948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L135924%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self135885%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid135948%_
                                                     (cons _%code135942%_
                                                           _%loader135946%_))))))
                                   _%tl135897135920%_
                                   _%hd135896135918%_)))
                              (_%g135888135902%_ _%g135889135905%_))))
                      (_%g135888135902%_ _%g135889135905%_)))))
          (_%g135887135951%_ _%stx135886%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx135872%_ _%context-chain135873%_)
        (let _%lp135875%_ ((_%ctx135877%_ _%ctx135872%_) (_%path135878%_ '()))
          (let ((_%super135880%_
                 (##structure-ref _%ctx135877%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super135880%_ _%context-chain135873%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx135877%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path135878%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super135880%_
                       'gx#module-context::t))
                    (_%lp135875%_
                     _%super135880%_
                     (cons (car (##structure-ref
                                 _%ctx135877%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path135878%_))
                    (cons (let ((__tmp145068
                                 (##structure-ref
                                  _%ctx135877%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp145068))
                          _%path135878%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp135865%_ ((_%ctx135867%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r135868%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx135867%_ 'gx#module-context::t))
              (_%lp135865%_
               (##structure-ref _%ctx135867%_ '3 gx#phi-context::t '#f)
               (cons _%ctx135867%_ _%r135868%_))
              _%r135868%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self135628%_ _%stx135629%_)
        (letrec* ((_%context-chain135631%_ (gxc#current-context-chain))
                  (_%make-import-spec135632%_
                   (lambda (_%in135801%_)
                     (let* ((_%in135802135814%_ _%in135801%_)
                            (_%E135804135818%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in135802135814%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K135805135828%_
                             (lambda (_%phi135821%_
                                      _%name135822%_
                                      _%src-name135823%_
                                      _%src-phi135824%_
                                      _%src-key135825%_
                                      _%src-ctx135826%_)
                               (cons _%phi135821%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name135822%_)
                                           (cons _%src-phi135824%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name135823%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in135802135814%_
                              'gx#module-import::t))
                           (let ((_%e135806135831%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in135802135814%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e135806135831%_
                                    'gx#module-export::t))
                                 (let* ((_%e135809135834%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135806135831%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx135837%_ _%e135809135834%_)
                                        (_%e135810135839%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135806135831%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key135842%_ _%e135810135839%_)
                                        (_%e135811135844%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135806135831%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi135847%_ _%e135811135844%_)
                                        (_%e135812135849%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135806135831%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name135852%_ _%e135812135849%_)
                                        (_%e135807135854%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135802135814%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name135857%_ _%e135807135854%_)
                                        (_%e135808135859%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135802135814%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi135862%_ _%e135808135859%_))
                                   (_%K135805135828%_
                                    _%phi135862%_
                                    _%name135857%_
                                    _%src-name135852%_
                                    _%src-phi135847%_
                                    _%src-key135842%_
                                    _%src-ctx135837%_))
                                 (_%E135804135818%_)))
                           (_%E135804135818%_)))))
                  (_%make-import-path135633%_
                   (lambda (_%ctx135799%_)
                     (gxc#generate-meta-import-path
                      _%ctx135799%_
                      _%context-chain135631%_)))
                  (_%make-import-spec-in135634%_
                   (lambda (_%ctx135796%_ _%in135797%_)
                     (cons 'spec:
                           (cons (_%make-import-path135633%_ _%ctx135796%_)
                                 (reverse _%in135797%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self135628%_ 'state)))
          (let* ((_%g135636135646%_
                  (lambda (_%g135637135643%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135637135643%_))))
                 (_%g135635135793%_
                  (lambda (_%g135637135649%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135637135649%_))
                        (let ((_%e135639135651%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135637135649%_))))
                          (let ((_%hd135640135654%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135639135651%_)))
                                (_%tl135641135656%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135639135651%_))))
                            ((lambda (_%L135659%_)
                               (let _%lp135670%_ ((_%rest135672%_ _%L135659%_)
                                                  (_%current-src135673%_ '#f)
                                                  (_%current-in135674%_ '())
                                                  (_%r135675%_ '()))
                                 (let* ((_%rest135676135684%_ _%rest135672%_)
                                        (_%else135678135694%_
                                         (lambda ()
                                           (let ((_%r135692%_
                                                  (if _%current-src135673%_
                                                      (cons (_%make-import-spec-in135634%_
                                                             _%current-src135673%_
                                                             _%current-in135674%_)
                                                            _%r135675%_)
                                                      _%r135675%_)))
                                             (cons '%#import
                                                   (reverse _%r135692%_)))))
                                        (_%K135680135781%_
                                         (lambda (_%rest135697%_ _%in135698%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135698%_
                                                  'gx#module-import::t))
                                               (let* ((_%in135700135707%_
                                                       _%in135698%_)
                                                      (_%E135702135711%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in135700135707%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K135703135719%_
               (lambda (_%src-ctx135714%_)
                 (if (eq? _%current-src135673%_ _%src-ctx135714%_)
                     (_%lp135670%_
                      _%rest135697%_
                      _%current-src135673%_
                      (cons (_%make-import-spec135632%_ _%in135698%_)
                            _%current-in135674%_)
                      _%r135675%_)
                     (if _%current-src135673%_
                         (_%lp135670%_
                          _%rest135697%_
                          _%src-ctx135714%_
                          (cons (_%make-import-spec135632%_ _%in135698%_) '())
                          (cons (_%make-import-spec-in135634%_
                                 _%current-src135673%_
                                 _%current-in135674%_)
                                _%r135675%_))
                         (_%lp135670%_
                          _%rest135697%_
                          _%src-ctx135714%_
                          (cons (_%make-import-spec135632%_ _%in135698%_) '())
                          _%r135675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in135700135707%_
                                                        'gx#module-import::t))
                                                     (let ((_%e135704135722%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in135700135707%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e135704135722%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e135705135725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e135704135722%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx135728%_ _%e135705135725%_))
                     (_%K135703135719%_ _%src-ctx135728%_))
                   (_%E135702135711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E135702135711%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135698%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi135731%_
                                                           (##direct-structure-ref
                                                            _%in135698%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src135733%_
                                                           (##direct-structure-ref
                                                            _%in135698%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in135773%_
                                                           (let* ((_%g135734135743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path135633%_ _%src135733%_))
                          (_%E135737135747%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g135734135743%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K135739135763%_
                            (lambda (_%path135761%_) _%path135761%_))
                           (_%K135738135753%_
                            (lambda (_%path135751%_)
                              (cons 'in: _%path135751%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g135734135743%_))
                           (let ((_%tl135741135768%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g135734135743%_)))
                                 (_%hd135740135766%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g135734135743%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl135741135768%_))
                                 (let ((_%path135771%_ _%hd135740135766%_))
                                   (_%K135739135763%_ _%path135771%_))
                                 (let ((_%path135756%_ _%g135734135743%_))
                                   (_%K135738135753%_ _%path135756%_))))
                           (let ((_%path135756%_ _%g135734135743%_))
                             (_%K135738135753%_ _%path135756%_))))))
                  (_%r135775%_
                   (if _%current-src135673%_
                       (cons (_%make-import-spec-in135634%_
                              _%current-src135673%_
                              _%current-in135674%_)
                             _%r135675%_)
                       _%r135675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp135670%_
                                                      _%rest135697%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi135731%_)
                                                                _%src-in135773%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi135731%_
                                    (cons _%src-in135773%_ '()))))
                    _%r135775%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135698%_
                                                          'gx#module-context::t))
                                                       (let ((_%r135779%_
                                                              (if _%current-src135673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in135634%_
                                 _%current-src135673%_
                                 _%current-in135674%_)
                                _%r135675%_)
                          _%r135675%_)))
                 (_%lp135670%_
                  _%rest135697%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path135633%_ _%in135698%_))
                        _%r135779%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135676135684%_))
                                       (let ((_%hd135681135784%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135676135684%_)))
                                             (_%tl135682135786%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135676135684%_))))
                                         (let* ((_%in135789%_
                                                 _%hd135681135784%_)
                                                (_%rest135791%_
                                                 _%tl135682135786%_))
                                           (_%K135680135781%_
                                            _%rest135791%_
                                            _%in135789%_)))
                                       (_%else135678135694%_)))))
                             _%tl135641135656%_)))
                        (_%g135636135646%_ _%g135637135649%_)))))
            (_%g135635135793%_ _%stx135629%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135438%_ _%stx135439%_)
        (letrec* ((_%context-chain135441%_ (gxc#current-context-chain))
                  (_%make-import-path135442%_
                   (lambda (_%ctx135626%_)
                     (gxc#generate-meta-import-path
                      _%ctx135626%_
                      _%context-chain135441%_))))
          (let* ((_%g135444135454%_
                  (lambda (_%g135445135451%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135445135451%_))))
                 (_%g135443135623%_
                  (lambda (_%g135445135457%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135445135457%_))
                        (let ((_%e135447135459%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135445135457%_))))
                          (let ((_%hd135448135462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135447135459%_)))
                                (_%tl135449135464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135447135459%_))))
                            ((lambda (_%L135467%_)
                               (let _%lp135478%_ ((_%rest135480%_ _%L135467%_)
                                                  (_%r135481%_ '()))
                                 (let* ((_%rest135482135490%_ _%rest135480%_)
                                        (_%else135484135498%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135481%_))))
                                        (_%K135486135611%_
                                         (lambda (_%rest135501%_ _%out135502%_)
                                           (let* ((_%out135503135516%_
                                                   _%out135502%_)
                                                  (_%E135506135520%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135503135516%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135510135590%_
                                                    (lambda (_%name135586%_
                                                             _%phi135587%_
                                                             _%key135588%_)
                                                      (_%lp135478%_
                                                       _%rest135501%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi135587%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key135588%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name135586%_)
                                             '()))))
                     _%r135481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135507135570%_
                                                    (lambda (_%phi135524%_
                                                             _%src135525%_)
                                                      (let* ((_%out135565%_
                                                              (if _%src135525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135526135535%_
                                              (_%make-import-path135442%_
                                               _%src135525%_))
                                             (_%E135529135539%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135526135535%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135531135555%_
                                               (lambda (_%path135553%_)
                                                 _%path135553%_))
                                              (_%K135530135545%_
                                               (lambda (_%path135543%_)
                                                 (cons 'in: _%path135543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135526135535%_))
                                              (let ((_%tl135533135560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135526135535%_)))
                                                    (_%hd135532135558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135526135535%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135533135560%_))
                                                    (let ((_%path135563%_
                                                           _%hd135532135558%_))
                                                      (_%K135531135555%_
                                                       _%path135563%_))
                                                    (let ((_%path135548%_
                                                           _%g135526135535%_))
                                                      (_%K135530135545%_
                                                       _%path135548%_))))
                                              (let ((_%path135548%_
                                                     _%g135526135535%_))
                                                (_%K135530135545%_
                                                 _%path135548%_)))))
                                      '()))
                          '#t))
                     (_%out135567%_
                      (if (fxzero? _%phi135524%_)
                          _%out135565%_
                          (cons 'phi:
                                (cons _%phi135524%_
                                      (cons _%out135565%_ '()))))))
                (_%lp135478%_
                 _%rest135501%_
                 (cons _%out135567%_ _%r135481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135505135583%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135503135516%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135508135573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135503135516%_
                               '1
                               '#f
                               '#f)))
                           (_%e135509135578%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135503135516%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135576%_ _%e135508135573%_)
                            (_%phi135581%_ _%e135509135578%_))
                        (_%K135507135570%_ _%phi135581%_ _%src135576%_)))
                    (_%E135506135520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135503135516%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135511135593%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135503135516%_
                        '1
                        '#f
                        '#f)))
                    (_%e135512135596%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135503135516%_
                        '2
                        '#f
                        '#f)))
                    (_%e135513135601%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135503135516%_
                        '3
                        '#f
                        '#f)))
                    (_%e135514135606%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135503135516%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135599%_ _%e135512135596%_)
                     (_%phi135604%_ _%e135513135601%_)
                     (_%name135609%_ _%e135514135606%_))
                 (_%K135510135590%_
                  _%name135609%_
                  _%phi135604%_
                  _%key135599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match135505135583%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135482135490%_))
                                       (let ((_%hd135487135614%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135482135490%_)))
                                             (_%tl135488135616%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135482135490%_))))
                                         (let* ((_%out135619%_
                                                 _%hd135487135614%_)
                                                (_%rest135621%_
                                                 _%tl135488135616%_))
                                           (_%K135486135611%_
                                            _%rest135621%_
                                            _%out135619%_)))
                                       (_%else135484135498%_)))))
                             _%tl135449135464%_)))
                        (_%g135444135454%_ _%g135445135457%_)))))
            (_%g135443135623%_ _%stx135439%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135399%_ _%stx135400%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135399%_ 'state)))
        (let* ((_%g135402135412%_
                (lambda (_%g135403135409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135403135409%_))))
               (_%g135401135435%_
                (lambda (_%g135403135415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135403135415%_))
                      (let ((_%e135405135417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135403135415%_))))
                        (let ((_%hd135406135420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135405135417%_)))
                              (_%tl135407135422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135405135417%_))))
                          ((lambda (_%L135425%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135425%_)))
                           _%tl135407135422%_)))
                      (_%g135402135412%_ _%g135403135415%_)))))
          (_%g135401135435%_ _%stx135400%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135270%_ _%stx135271%_)
        (letrec ((_%generate1135273%_
                  (lambda (_%id135394%_ _%eid135395%_)
                    (let ((_%eid135397%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135395%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135397%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135271%_
                             _%eid135397%_)))
                      (cons (gxc#generate-runtime-identifier _%id135394%_)
                            (cons _%eid135397%_ '()))))))
          (let* ((_%g135275135303%_
                  (lambda (_%g135276135300%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135276135300%_))))
                 (_%g135274135391%_
                  (lambda (_%g135276135306%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135276135306%_))
                        (let ((_%e135279135308%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135276135306%_))))
                          (let ((_%hd135280135311%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135279135308%_)))
                                (_%tl135281135313%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135279135308%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135281135313%_))
                                (let ((_g145069_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135281135313%_
                                          '0))))
                                  (begin
                                    (let ((_g145070_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145069_)
                                                 (##vector-length _g145069_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145070_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145070_)))
                                    (let ((_%target135282135316%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145069_ 0)))
                                          (_%tl135284135318%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145069_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135284135318%_))
                                          (letrec ((_%loop135285135321%_
                                                    (lambda (_%hd135283135324%_
                                                             _%eid135289135326%_
                                                             _%id135290135328%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135283135324%_))
                                                          (let ((_%e135286135331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135283135324%_))))
                    (let ((_%lp-hd135287135334%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135286135331%_)))
                          (_%lp-tl135288135336%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135286135331%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135287135334%_))
                          (let ((_%e135293135339%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135287135334%_))))
                            (let ((_%hd135294135342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135293135339%_)))
                                  (_%tl135295135344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135293135339%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135295135344%_))
                                  (let ((_%e135296135347%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135295135344%_))))
                                    (let ((_%hd135297135350%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135296135347%_)))
                                          (_%tl135298135352%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135296135347%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135298135352%_))
                                          (_%loop135285135321%_
                                           _%lp-tl135288135336%_
                                           (cons _%hd135297135350%_
                                                 _%eid135289135326%_)
                                           (cons _%hd135294135342%_
                                                 _%id135290135328%_))
                                          (_%g135275135303%_
                                           _%g135276135306%_))))
                                  (_%g135275135303%_ _%g135276135306%_))))
                          (_%g135275135303%_ _%g135276135306%_))))
                  (let ((_%eid135291135355%_ (reverse _%eid135289135326%_))
                        (_%id135292135357%_ (reverse _%id135290135328%_)))
                    ((lambda (_%L135360%_ _%L135361%_)
                       (cons '%#extern
                             (map _%generate1135273%_
                                  (let ((__tmp145071
                                         (lambda (_%g135376135379%_
                                                  _%g135377135381%_)
                                           (cons _%g135376135379%_
                                                 _%g135377135381%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145071 '() _%L135361%_))
                                  (let ((__tmp145072
                                         (lambda (_%g135383135386%_
                                                  _%g135384135388%_)
                                           (cons _%g135383135386%_
                                                 _%g135384135388%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145072 '() _%L135360%_)))))
                     _%eid135291135355%_
                     _%id135292135357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop135285135321%_
                                             _%target135282135316%_
                                             '()
                                             '()))
                                          (_%g135275135303%_
                                           _%g135276135306%_)))))
                                (_%g135275135303%_ _%g135276135306%_))))
                        (_%g135275135303%_ _%g135276135306%_)))))
            (_%g135274135391%_ _%stx135271%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135060%_ _%stx135061%_)
        (letrec ((_%generate1135063%_
                  (lambda (_%id135265%_)
                    (let ((_%eid135267%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135265%_)))
                          (_%ident135268%_
                           (gxc#generate-runtime-identifier _%id135265%_)))
                      (cons '%#define-runtime
                            (cons _%ident135268%_ (cons _%eid135267%_ '()))))))
                 (_%generate*135064%_
                  (lambda (_%all135233%_)
                    (let* ((_%all135234135242%_ _%all135233%_)
                           (_%else135236135250%_
                            (lambda () (cons '%#begin _%all135233%_)))
                           (_%K135238135255%_
                            (lambda (_%one135253%_) _%one135253%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135234135242%_))
                          (let ((_%hd135239135258%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135234135242%_)))
                                (_%tl135240135260%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135234135242%_))))
                            (let ((_%one135263%_ _%hd135239135258%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135240135260%_))
                                  (_%K135238135255%_ _%one135263%_)
                                  (_%else135236135250%_))))
                          (_%else135236135250%_))))))
          (let* ((_%g135066135083%_
                  (lambda (_%g135067135080%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135067135080%_))))
                 (_%g135065135230%_
                  (lambda (_%g135067135086%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135067135086%_))
                        (let ((_%e135070135088%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135067135086%_))))
                          (let ((_%hd135071135091%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135070135088%_)))
                                (_%tl135072135093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135070135088%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135072135093%_))
                                (let ((_%e135073135096%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135072135093%_))))
                                  (let ((_%hd135074135099%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135073135096%_)))
                                        (_%tl135075135101%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135073135096%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135075135101%_))
                                        (let ((_%e135076135104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135075135101%_))))
                                          (let ((_%hd135077135107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135076135104%_)))
                                                (_%tl135078135109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135076135104%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135078135109%_))
                                                ((lambda (_%L135112%_
                                                          _%L135113%_)
                                                   (let _%lp135129%_ ((_%rest135131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135113%_)
                              (_%r135132%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144808144809%_
                                                             _%rest135131%_)
                                                            (_%g135137135154%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144808144809%_)))))
               (let ((_%__kont144810144811%_
                      (lambda (_%L135217%_)
                        (_%lp135129%_ _%L135217%_ _%r135132%_)))
                     (_%__kont144812144813%_
                      (lambda (_%L135190%_ _%L135191%_)
                        (_%lp135129%_
                         _%L135190%_
                         (cons (_%generate1135063%_ _%L135191%_)
                               _%r135132%_))))
                     (_%__kont144814144815%_
                      (lambda (_%L135166%_)
                        (_%generate*135064%_
                         (let ((__tmp145073
                                (cons (_%generate1135063%_ _%L135166%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp145073 _%r135132%_)))))
                     (_%__kont144816144817%_
                      (lambda () (_%generate*135064%_ (reverse _%r135132%_)))))
                 (let ((_%g135135135177%_
                        (lambda ()
                          (let ((_%L135166%_ _%__stx144808144809%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135166%_))
                                (_%__kont144814144815%_ _%L135166%_)
                                (_%__kont144816144817%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144808144809%_))
                       (let ((_%e135140135206%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144808144809%_))))
                         (let ((_%tl135142135211%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135140135206%_)))
                               (_%hd135141135209%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135140135206%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135141135209%_))
                               (let ((_%e135143135214%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135141135209%_))))
                                 (if (equal? _%e135143135214%_ '#f)
                                     (_%__kont144810144811%_
                                      _%tl135142135211%_)
                                     (_%__kont144812144813%_
                                      _%tl135142135211%_
                                      _%hd135141135209%_)))
                               (_%__kont144812144813%_
                                _%tl135142135211%_
                                _%hd135141135209%_))))
                       (let () (declare (not safe)) (_%g135135135177%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135077135107%_
                                                 _%hd135074135099%_)
                                                (_%g135066135083%_
                                                 _%g135067135086%_))))
                                        (_%g135066135083%_
                                         _%g135067135086%_))))
                                (_%g135066135083%_ _%g135067135086%_))))
                        (_%g135066135083%_ _%g135067135086%_)))))
            (_%g135065135230%_ _%stx135061%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self134957%_ _%stx134958%_)
        (let* ((_%g134960134977%_
                (lambda (_%g134961134974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134961134974%_))))
               (_%g134959135057%_
                (lambda (_%g134961134980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134961134980%_))
                      (let ((_%e134964134982%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134961134980%_))))
                        (let ((_%hd134965134985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134964134982%_)))
                              (_%tl134966134987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134964134982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134966134987%_))
                              (let ((_%e134967134990%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134966134987%_))))
                                (let ((_%hd134968134993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134967134990%_)))
                                      (_%tl134969134995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134967134990%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134969134995%_))
                                      (let ((_%e134970134998%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134969134995%_))))
                                        (let ((_%hd134971135001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134970134998%_)))
                                              (_%tl134972135003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134970134998%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134972135003%_))
                                              ((lambda (_%L135006%_
                                                        _%L135007%_)
                                                 (let* ((_%eid135022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135007%_)))
                                                        (_%phi135024%_
                                                         (let ((__tmp145074
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145074 '1)))
                (_%block135026%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self134957%_ 'state))
                  _%phi135024%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135029135036%_
                                                           (lambda (_%g135030135033%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135030135033%_))))
                  (_%g135028135054%_
                   (lambda (_%g135030135039%_)
                     ((lambda (_%L135041%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self134957%_ 'state))
                         _%phi135024%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L135041%_ (cons _%L135006%_ '())))))
                      _%g135030135039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g135028135054%_
                                                      _%eid135022%_))
                                                   (if _%block135026%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L135007%_)
                                             (cons _%eid135022%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L135007%_)
                           (cons _%eid135022%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134971135001%_
                                               _%hd134968134993%_)
                                              (_%g134960134977%_
                                               _%g134961134980%_))))
                                      (_%g134960134977%_ _%g134961134980%_))))
                              (_%g134960134977%_ _%g134961134980%_))))
                      (_%g134960134977%_ _%g134961134980%_)))))
          (_%g134959135057%_ _%stx134958%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self134889%_ _%stx134890%_)
        (let* ((_%g134892134909%_
                (lambda (_%g134893134906%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134893134906%_))))
               (_%g134891134954%_
                (lambda (_%g134893134912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134893134912%_))
                      (let ((_%e134896134914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134893134912%_))))
                        (let ((_%hd134897134917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134896134914%_)))
                              (_%tl134898134919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134896134914%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134898134919%_))
                              (let ((_%e134899134922%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134898134919%_))))
                                (let ((_%hd134900134925%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134899134922%_)))
                                      (_%tl134901134927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134899134922%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134901134927%_))
                                      (let ((_%e134902134930%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134901134927%_))))
                                        (let ((_%hd134903134933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134902134930%_)))
                                              (_%tl134904134935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134902134930%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134904134935%_))
                                              ((lambda (_%L134938%_
                                                        _%L134939%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L134939%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L134938%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134903134933%_
                                               _%hd134900134925%_)
                                              (_%g134892134909%_
                                               _%g134893134912%_))))
                                      (_%g134892134909%_ _%g134893134912%_))))
                              (_%g134892134909%_ _%g134893134912%_))))
                      (_%g134892134909%_ _%g134893134912%_)))))
          (_%g134891134954%_ _%stx134890%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self134886%_ _%stx134887%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134886%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134887%_)
        (gxc#generate-meta-define-values% _%self134886%_ _%stx134887%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self134883%_ _%stx134884%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134883%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134884%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145076 (list)) (__tmp145075 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145076
         '(src n open blocks)
         __tmp145075
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args134880%_
        (apply make-instance gxc#meta-state::t _%$args134880%_)))
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
      (lambda (_%self134866%_ _%ctx134867%_)
        (let ((_%self134870%_ _%self134866%_))
          (if (let ((__tmp145077
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134870%_))))
                (declare (not safe))
                (##fx< '4 __tmp145077))
              (begin
                (let ((__tmp145078
                       (let ((__tmp145079
                              (##structure-ref
                               _%ctx134867%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145079))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134870%_
                   __tmp145078
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134870%_ '1 '2 '#f '#f))
                (let ((__tmp145080
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134870%_
                   __tmp145080
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134870%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145081
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134870%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134870%_
                       '4
                       __tmp145081))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145083 (list)) (__tmp145082 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145083
         '(ctx phi n code)
         __tmp145082
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134741%_
        (apply make-instance gxc#meta-state-block::t _%$args134741%_)))
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
      (lambda (_%state134700%_ _%phi134701%_)
        (let* ((_%state134702134710%_ _%state134700%_)
               (_%E134704134714%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134702134710%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134705134723%_
                (lambda (_%open134717%_ _%n134718%_ _%src134719%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134717%_ _%phi134701%_))
                      '#f
                      (let ((_%block-ref134721%_
                             (let ((__tmp145084 (number->string _%n134718%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134719%_
                                '"~"
                                __tmp145084))))
                        (##structure-set!
                         _%state134700%_
                         (let () (declare (not safe)) (##fx+ _%n134718%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145085
                               (let ((__tmp145086
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145086
                                  _%phi134701%_
                                  _%n134718%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134717%_ _%phi134701%_ __tmp145085))
                        _%block-ref134721%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134702134710%_
                 'gxc#meta-state::t))
              (let* ((_%e134706134726%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134702134710%_
                         '1
                         '#f
                         '#f)))
                     (_%src134729%_ _%e134706134726%_)
                     (_%e134707134731%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134702134710%_
                         '2
                         '#f
                         '#f)))
                     (_%n134734%_ _%e134707134731%_)
                     (_%e134708134736%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134702134710%_
                         '3
                         '#f
                         '#f)))
                     (_%open134739%_ _%e134708134736%_))
                (_%K134705134723%_ _%open134739%_ _%n134734%_ _%src134729%_))
              (_%E134704134714%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134694%_ _%phi134695%_ _%stx134696%_)
        (let ((_%block134698%_
               (let ((__tmp145087
                      (##structure-ref
                       _%state134694%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145087 _%phi134695%_))))
          (##structure-set!
           _%block134698%_
           (cons _%stx134696%_
                 (##structure-ref
                  _%block134698%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134688%_)
        (##structure-set!
         _%state134688%_
         (let ((__tmp145090
                (lambda (_%_134690%_ _%block134691%_ _%r134692%_)
                  (cons _%block134691%_ _%r134692%_)))
               (__tmp145089
                (##structure-ref _%state134688%_ '4 gxc#meta-state::t '#f))
               (__tmp145088
                (##structure-ref _%state134688%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145090 __tmp145089 __tmp145088))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134688%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134640%_)
        (gxc#meta-state-end-phi! _%state134640%_)
        (let ((__tmp145092
               (lambda (_%block134642%_ _%r134643%_)
                 (let* ((_%block134644134653%_ _%block134642%_)
                        (_%E134646134657%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134644134653%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134647134665%_
                         (lambda (_%code134660%_
                                  _%n134661%_
                                  _%phi134662%_
                                  _%ctx134663%_)
                           (if (null? _%code134660%_)
                               _%r134643%_
                               (cons (cons _%ctx134663%_
                                           (cons _%phi134662%_
                                                 (cons _%n134661%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134660%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134643%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134644134653%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134648134668%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134644134653%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134671%_ _%e134648134668%_)
                              (_%e134649134673%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134644134653%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134676%_ _%e134649134673%_)
                              (_%e134650134678%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134644134653%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134681%_ _%e134650134678%_)
                              (_%e134651134683%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134644134653%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134686%_ _%e134651134683%_))
                         (_%K134647134665%_
                          _%code134686%_
                          _%n134681%_
                          _%phi134676%_
                          _%ctx134671%_))
                       (_%E134646134657%_)))))
              (__tmp145091
               (##structure-ref _%state134640%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145092 '() __tmp145091))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134636%_)
        (let ((_%ht134638%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht134638%_ _%stx134636%_)
          _%ht134638%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134579%_ _%stx134580%_)
        (let* ((_%g134582134595%_
                (lambda (_%g134583134592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134583134592%_))))
               (_%g134581134633%_
                (lambda (_%g134583134598%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134583134598%_))
                      (let ((_%e134585134600%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134583134598%_))))
                        (let ((_%hd134586134603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134585134600%_)))
                              (_%tl134587134605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134585134600%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134587134605%_))
                              (let ((_%e134588134608%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134587134605%_))))
                                (let ((_%hd134589134611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134588134608%_)))
                                      (_%tl134590134613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134588134608%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134590134613%_))
                                      ((lambda (_%L134616%_)
                                         (let* ((_%bind134628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134616%_)))
                                                (_%eid134630%_
                                                 (if _%bind134628%_
                                                     (##structure-ref
                                                      _%bind134628%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134616%_))))
                                                (__tmp145093
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self134579%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145093
                                            _%eid134630%_
                                            _%eid134630%_)))
                                       _%hd134589134611%_)
                                      (_%g134582134595%_ _%g134583134598%_))))
                              (_%g134582134595%_ _%g134583134598%_))))
                      (_%g134582134595%_ _%g134583134598%_)))))
          (_%g134581134633%_ _%stx134580%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134506%_ _%stx134507%_)
        (let* ((_%g134509134526%_
                (lambda (_%g134510134523%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134510134523%_))))
               (_%g134508134576%_
                (lambda (_%g134510134529%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134510134529%_))
                      (let ((_%e134513134531%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134510134529%_))))
                        (let ((_%hd134514134534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134513134531%_)))
                              (_%tl134515134536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134513134531%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134515134536%_))
                              (let ((_%e134516134539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134515134536%_))))
                                (let ((_%hd134517134542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134516134539%_)))
                                      (_%tl134518134544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134516134539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134518134544%_))
                                      (let ((_%e134519134547%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134518134544%_))))
                                        (let ((_%hd134520134550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134519134547%_)))
                                              (_%tl134521134552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134519134547%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134521134552%_))
                                              ((lambda (_%L134555%_
                                                        _%L134556%_)
                                                 (let* ((_%bind134571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134556%_)))
                                                        (_%eid134573%_
                                                         (if _%bind134571%_
                                                             (##structure-ref
                                                              _%bind134571%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145094
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134506%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145094
                                                      _%eid134573%_
                                                      _%eid134573%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134506%_
                                                      _%L134555%_))))
                                               _%hd134520134550%_
                                               _%hd134517134542%_)
                                              (_%g134509134526%_
                                               _%g134510134529%_))))
                                      (_%g134509134526%_ _%g134510134529%_))))
                              (_%g134509134526%_ _%g134510134529%_))))
                      (_%g134509134526%_ _%g134510134529%_)))))
          (_%g134508134576%_ _%stx134507%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134463%_ _%stx134464%_)
        (let* ((_%g134466134476%_
                (lambda (_%g134467134473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134467134473%_))))
               (_%g134465134503%_
                (lambda (_%g134467134479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134467134479%_))
                      (let ((_%e134469134481%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134467134479%_))))
                        (let ((_%hd134470134484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134469134481%_)))
                              (_%tl134471134486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134469134481%_))))
                          ((lambda (_%L134489%_)
                             (let ((__tmp145095
                                    (lambda (_%g134498134500%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134463%_
                                         _%g134498134500%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145095 _%L134489%_)))
                           _%tl134471134486%_)))
                      (_%g134466134476%_ _%g134467134479%_)))))
          (_%g134465134503%_ _%stx134464%_))))
    (define gxc#count-values-single%
      (lambda (_%self134460%_ _%stx134461%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134326%_ _%stx134327%_)
        (let* ((_%__stx144838144839%_ _%stx134327%_)
               (_%g134330134359%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144838144839%_)))))
          (let ((_%__kont144840144841%_
                 (lambda (_%L134427%_ _%L134428%_)
                   (length (let ((__tmp145096
                                  (lambda (_%g134449134452%_ _%g134450134454%_)
                                    (cons _%g134449134452%_
                                          _%g134450134454%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145096 '() _%L134427%_)))))
                (_%__kont144844144845%_ (lambda () '#f)))
            (let ((_%__match144883144884%_
                   (lambda (_%e134334134371%_
                            _%hd134335134374%_
                            _%tl134336134376%_
                            _%e134337134379%_
                            _%hd134338134382%_
                            _%tl134339134384%_
                            _%e134340134387%_
                            _%hd134341134390%_
                            _%tl134342134392%_
                            _%e134343134395%_
                            _%hd134344134398%_
                            _%tl134345134400%_
                            _%__splice144842144843%_
                            _%target134346134403%_
                            _%tl134348134405%_)
                     (letrec ((_%loop134349134408%_
                               (lambda (_%hd134347134411%_
                                        _%rand134353134413%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134347134411%_))
                                     (let ((_%e134350134416%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134347134411%_))))
                                       (let ((_%lp-tl134352134421%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134350134416%_)))
                                             (_%lp-hd134351134419%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134350134416%_))))
                                         (_%loop134349134408%_
                                          _%lp-tl134352134421%_
                                          (cons _%lp-hd134351134419%_
                                                _%rand134353134413%_))))
                                     (let ((_%rand134354134424%_
                                            (reverse _%rand134353134413%_)))
                                       (let ((_%L134427%_ _%rand134354134424%_)
                                             (_%L134428%_ _%hd134344134398%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134428%_
                                                'values))
                                             (_%__kont144840144841%_
                                              _%L134427%_
                                              _%L134428%_)
                                             (_%__kont144844144845%_))))))))
                       (_%loop134349134408%_ _%target134346134403%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144838144839%_))
                  (let ((_%e134334134371%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144838144839%_))))
                    (let ((_%tl134336134376%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134334134371%_)))
                          (_%hd134335134374%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134334134371%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134336134376%_))
                          (let ((_%e134337134379%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134336134376%_))))
                            (let ((_%tl134339134384%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134337134379%_)))
                                  (_%hd134338134382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134337134379%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134338134382%_))
                                  (let ((_%e134340134387%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134338134382%_))))
                                    (let ((_%tl134342134392%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134340134387%_)))
                                          (_%hd134341134390%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134340134387%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134341134390%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134341134390%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134342134392%_))
                                                  (let ((_%e134343134395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134342134392%_))))
                                                    (let ((_%tl134345134400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134343134395%_)))
                                                          (_%hd134344134398%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134343134395%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134345134400%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134339134384%_))
                      (let ((_%__splice144842144843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134339134384%_
                                '0))))
                        (let ((_%tl134348134405%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144842144843%_ '1)))
                              (_%target134346134403%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144842144843%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134348134405%_))
                              (_%__match144883144884%_
                               _%e134334134371%_
                               _%hd134335134374%_
                               _%tl134336134376%_
                               _%e134337134379%_
                               _%hd134338134382%_
                               _%tl134339134384%_
                               _%e134340134387%_
                               _%hd134341134390%_
                               _%tl134342134392%_
                               _%e134343134395%_
                               _%hd134344134398%_
                               _%tl134345134400%_
                               _%__splice144842144843%_
                               _%target134346134403%_
                               _%tl134348134405%_)
                              (_%__kont144844144845%_))))
                      (_%__kont144844144845%_))
                  (_%__kont144844144845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144844144845%_))
                                              (_%__kont144844144845%_))
                                          (_%__kont144844144845%_))))
                                  (_%__kont144844144845%_))))
                          (_%__kont144844144845%_))))
                  (_%__kont144844144845%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134229%_ _%stx134230%_)
        (let* ((_%g134232134253%_
                (lambda (_%g134233134250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134233134250%_))))
               (_%g134231134323%_
                (lambda (_%g134233134256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134233134256%_))
                      (let ((_%e134237134258%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134233134256%_))))
                        (let ((_%hd134238134261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134237134258%_)))
                              (_%tl134239134263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134237134258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134239134263%_))
                              (let ((_%e134240134266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134239134263%_))))
                                (let ((_%hd134241134269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134240134266%_)))
                                      (_%tl134242134271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134240134266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134242134271%_))
                                      (let ((_%e134243134274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134242134271%_))))
                                        (let ((_%hd134244134277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134243134274%_)))
                                              (_%tl134245134279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134243134274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134245134279%_))
                                              (let ((_%e134246134282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134245134279%_))))
                                                (let ((_%hd134247134285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134246134282%_)))
                                                      (_%tl134248134287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134246134282%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134248134287%_))
                                                      ((lambda (_%L134290%_
                                                                _%L134291%_
                                                                _%L134292%_)
                                                         (let ((_%c1134309134311%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134229%_ _%L134291%_))))
                   (if _%c1134309134311%_
                       (let* ((_%c1134314%_ _%c1134309134311%_)
                              (_%c2134315134317%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134229%_
                                  _%L134290%_))))
                         (if _%c2134315134317%_
                             (let ((_%c2134320%_ _%c2134315134317%_))
                               (if (fx= _%c1134314%_ _%c2134320%_)
                                   _%c1134314%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134247134285%_
               _%hd134244134277%_
               _%hd134241134269%_)
              (_%g134232134253%_ _%g134233134256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g134232134253%_
                                               _%g134233134256%_))))
                                      (_%g134232134253%_ _%g134233134256%_))))
                              (_%g134232134253%_ _%g134233134256%_))))
                      (_%g134232134253%_ _%g134233134256%_)))))
          (_%g134231134323%_ _%stx134230%_))))))
