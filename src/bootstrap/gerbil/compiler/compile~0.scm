(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770248972)
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
        (letrec ((_%hash-e171362%_
                  (lambda (_%id171364%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id171364%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e171362%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp172749 (list gxc#::void::t))
            (__tmp172748 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp172749
         '()
         __tmp172748
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args171358%_
        (apply make-instance gxc#::collect-bindings::t _%$args171358%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp172750
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
        (__make-atomic-promise __tmp172750)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx171350%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self171353%_
                (let ((__obj172724
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj172724))
               (__tmp172751
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171353%_ _%stx171350%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172751
           gxc#current-compile-method
           _%self171353%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp172753 (list gxc#::void::t))
            (__tmp172752 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp172753
         '(modules)
         __tmp172752
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args171347%_
        (apply make-instance gxc#::lift-modules::t _%$args171347%_)))
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
      (let ((__tmp172754
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
        (__make-atomic-promise __tmp172754)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords171322%_ _%modules171319171323%_ _%stx171324%_)
        (let ((_%modules171327%_
               (if (eq? _%modules171319171323%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules171319171323%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self171329%_
                  (let ((__obj172726
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172726
                       _%modules171327%_
                       '1
                       '#f
                       '#f))
                    __obj172726))
                 (__tmp172755
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171329%_ _%stx171324%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172755
             gxc#current-compile-method
             _%self171329%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords171336%_ . _%args171337%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords171336%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171336%_
                  'modules:
                  absent-value))
               _%args171337%_)))
    (define gxc#apply-lift-modules
      (lambda _%args171320171343%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args171320171343%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp172757 (list)) (__tmp172756 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp172757
         '()
         __tmp172756
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args171315%_
        (apply make-instance gxc#::find-runtime-code::t _%$args171315%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp172758
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
        (__make-atomic-promise __tmp172758)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx171307%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self171310%_
                (let ((__obj172728
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj172728))
               (__tmp172759
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171310%_ _%stx171307%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172759
           gxc#current-compile-method
           _%self171310%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp172761 (list gxc#::false::t))
            (__tmp172760 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp172761
         '()
         __tmp172760
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args171304%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args171304%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp172762
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
        (__make-atomic-promise __tmp172762)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx171296%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self171299%_
                (let ((__obj172730
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj172730))
               (__tmp172763
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171299%_ _%stx171296%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172763
           gxc#current-compile-method
           _%self171299%_))))
    (define gxc#::count-values::t
      (let ((__tmp172765 (list gxc#::false-expression::t))
            (__tmp172764 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp172765
         '()
         __tmp172764
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args171293%_
        (apply make-instance gxc#::count-values::t _%$args171293%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp172766
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
        (__make-atomic-promise __tmp172766)))
    (define gxc#apply-count-values
      (lambda (_%stx171285%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self171288%_
                (let ((__obj172732
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj172732))
               (__tmp172767
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171288%_ _%stx171285%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172767
           gxc#current-compile-method
           _%self171288%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp172768 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp172768
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args171282%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args171282%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp172769
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
        (__make-atomic-promise __tmp172769)))
    (define gxc#::generate-loader::t
      (let ((__tmp172771 (list gxc#::generate-runtime-empty::t))
            (__tmp172770 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp172771
         '()
         __tmp172770
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args171278%_
        (apply make-instance gxc#::generate-loader::t _%$args171278%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp172772
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
        (__make-atomic-promise __tmp172772)))
    (define gxc#apply-generate-loader
      (lambda (_%stx171270%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self171273%_
                (let ((__obj172735
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj172735))
               (__tmp172773
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171273%_ _%stx171270%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172773
           gxc#current-compile-method
           _%self171273%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp172774 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp172774
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args171267%_
        (apply make-instance gxc#::generate-runtime::t _%$args171267%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp172775
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
        (__make-atomic-promise __tmp172775)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx171259%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self171262%_
                (let ((__obj172737
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj172737))
               (__tmp172776
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171262%_ _%stx171259%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172776
           gxc#current-compile-method
           _%self171262%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp172778 (list gxc#::generate-runtime::t))
            (__tmp172777 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp172778
         '()
         __tmp172777
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args171256%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args171256%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp172779
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
        (__make-atomic-promise __tmp172779)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx171248%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self171251%_
                (let ((__obj172739
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj172739))
               (__tmp172780
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171251%_ _%stx171248%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172780
           gxc#current-compile-method
           _%self171251%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp172781 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp172781
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args171245%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args171245%_)))
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
      (let ((__tmp172782
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
        (__make-atomic-promise __tmp172782)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords171220%_ _%table171217171221%_ _%stx171222%_)
        (let ((_%table171225%_
               (if (eq? _%table171217171221%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table171217171221%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self171227%_
                  (let ((__obj172741
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172741
                       _%table171225%_
                       '1
                       '#f
                       '#f))
                    __obj172741))
                 (__tmp172783
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171227%_ _%stx171222%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172783
             gxc#current-compile-method
             _%self171227%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords171234%_ . _%args171235%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords171234%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171234%_
                  'table:
                  absent-value))
               _%args171235%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args171218171241%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args171218171241%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp172785 (list gxc#::void-expression::t))
            (__tmp172784 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp172785
         '(state)
         __tmp172784
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args171213%_
        (apply make-instance gxc#::generate-meta::t _%$args171213%_)))
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
      (let ((__tmp172786
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
        (__make-atomic-promise __tmp172786)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords171188%_ _%state171185171189%_ _%stx171190%_)
        (let ((_%state171193%_
               (if (eq? _%state171185171189%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171185171189%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self171195%_
                  (let ((__obj172743
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172743
                       _%state171193%_
                       '1
                       '#f
                       '#f))
                    __obj172743))
                 (__tmp172787
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171195%_ _%stx171190%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172787
             gxc#current-compile-method
             _%self171195%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords171202%_ . _%args171203%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords171202%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171202%_
                  'state:
                  absent-value))
               _%args171203%_)))
    (define gxc#apply-generate-meta
      (lambda _%args171186171209%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args171186171209%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp172789 (list)) (__tmp172788 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp172789
         '(state)
         __tmp172788
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args171181%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args171181%_)))
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
      (let ((__tmp172790
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
        (__make-atomic-promise __tmp172790)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords171156%_ _%state171153171157%_ _%stx171158%_)
        (let ((_%state171161%_
               (if (eq? _%state171153171157%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171153171157%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self171163%_
                  (let ((__obj172745
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172745
                       _%state171161%_
                       '1
                       '#f
                       '#f))
                    __obj172745))
                 (__tmp172791
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171163%_ _%stx171158%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172791
             gxc#current-compile-method
             _%self171163%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords171170%_ . _%args171171%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords171170%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171170%_
                  'state:
                  absent-value))
               _%args171171%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args171154171177%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args171154171177%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self171082%_ _%stx171083%_)
        (let* ((_%g171085171102%_
                (lambda (_%g171086171099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171086171099%_))))
               (_%g171084171149%_
                (lambda (_%g171086171105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171086171105%_))
                      (let ((_%e171089171107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171086171105%_))))
                        (let ((_%hd171090171110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171089171107%_)))
                              (_%tl171091171112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171089171107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171091171112%_))
                              (let ((_%e171092171115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171091171112%_))))
                                (let ((_%hd171093171118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171092171115%_)))
                                      (_%tl171094171120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171092171115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171094171120%_))
                                      (let ((_%e171095171123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171094171120%_))))
                                        (let ((_%hd171096171126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171095171123%_)))
                                              (_%tl171097171128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171095171123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171097171128%_))
                                              ((lambda (_%g171087171131%_
                                                        _%g171088171132%_)
                                                 (let ((__tmp172792
                                                        (lambda (_%bind171147%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind171147%_))
                      (gxc#add-module-binding! _%bind171147%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp172792
                                                    _%g171088171132%_)))
                                               _%hd171096171126%_
                                               _%hd171093171118%_)
                                              (_%g171085171102%_
                                               _%g171086171105%_))))
                                      (_%g171085171102%_ _%g171086171105%_))))
                              (_%g171085171102%_ _%g171086171105%_))))
                      (_%g171085171102%_ _%g171086171105%_)))))
          (_%g171084171149%_ _%stx171083%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self171014%_ _%stx171015%_)
        (let* ((_%g171017171034%_
                (lambda (_%g171018171031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171018171031%_))))
               (_%g171016171079%_
                (lambda (_%g171018171037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171018171037%_))
                      (let ((_%e171021171039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171018171037%_))))
                        (let ((_%hd171022171042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171021171039%_)))
                              (_%tl171023171044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171021171039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171023171044%_))
                              (let ((_%e171024171047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171023171044%_))))
                                (let ((_%hd171025171050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171024171047%_)))
                                      (_%tl171026171052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171024171047%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171026171052%_))
                                      (let ((_%e171027171055%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171026171052%_))))
                                        (let ((_%hd171028171058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171027171055%_)))
                                              (_%tl171029171060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171027171055%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171029171060%_))
                                              ((lambda (_%g171019171063%_
                                                        _%g171020171064%_)
                                                 (gxc#add-module-binding!
                                                  _%g171020171064%_
                                                  '#t))
                                               _%hd171028171058%_
                                               _%hd171025171050%_)
                                              (_%g171017171034%_
                                               _%g171018171037%_))))
                                      (_%g171017171034%_ _%g171018171037%_))))
                              (_%g171017171034%_ _%g171018171037%_))))
                      (_%g171017171034%_ _%g171018171037%_)))))
          (_%g171016171079%_ _%stx171015%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self170956%_ _%stx170957%_)
        (let* ((_%g170959170973%_
                (lambda (_%g170960170970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170960170970%_))))
               (_%g170958171011%_
                (lambda (_%g170960170976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170960170976%_))
                      (let ((_%e170963170978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170960170976%_))))
                        (let ((_%hd170964170981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170963170978%_)))
                              (_%tl170965170983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170963170978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170965170983%_))
                              (let ((_%e170966170986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170965170983%_))))
                                (let ((_%hd170967170989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170966170986%_)))
                                      (_%tl170968170991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170966170986%_))))
                                  ((lambda (_%g170961170994%_
                                            _%g170962170995%_)
                                     (let ((_%ctx171008%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g170962170995%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170956%_
                                           'modules))
                                        (cons _%ctx171008%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self170956%_
                                                        'modules)))))
                                       (let ((__tmp172793
                                              (lambda ()
                                                (let ((__tmp172794
                                                       (##structure-ref
                                                        _%ctx171008%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170956%_
                                                   __tmp172794)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp172793
                                          gx#current-expander-context
                                          _%ctx171008%_))))
                                   _%tl170968170991%_
                                   _%hd170967170989%_)))
                              (_%g170959170973%_ _%g170960170976%_))))
                      (_%g170959170973%_ _%g170960170976%_)))))
          (_%g170958171011%_ _%stx170957%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls170910170912%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls170910170912%_
              (let ((_%decls170914%_ _%decls170910170912%_))
                (let _%lp170916%_ ((_%rest170918%_ _%decls170914%_))
                  (let* ((_%rest170919170927%_ _%rest170918%_)
                         (_%else170921170935%_ (lambda () '#f))
                         (_%K170923170944%_
                          (lambda (_%decls170938%_ _%decl170939%_)
                            (if (equal? _%decl170939%_ '(not safe))
                                '#t
                                (if (equal? _%decl170939%_ '(safe))
                                    '#f
                                    (_%lp170916%_ _%decls170938%_))))))
                    (if (pair? _%rest170919170927%_)
                        (let ((_%hd170924170947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest170919170927%_)))
                              (_%tl170925170949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest170919170927%_))))
                          (let* ((_%decl170952%_ _%hd170924170947%_)
                                 (_%decls170954%_ _%tl170925170949%_))
                            (_%K170923170944%_
                             _%decls170954%_
                             _%decl170952%_)))
                        (_%else170921170935%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id170904%_ _%syntax?170905%_)
        (let ((_%eid170907%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id170904%_))
                '1
                gx#binding::t
                '#f))
              (_%ht170908%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid170907%_))
              '#!void
              (let ((__tmp172795
                     (let ((__tmp172796
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid170907%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp172796 _%syntax?170905%_))))
                (declare (not safe))
                (hash-put! _%ht170908%_ _%eid170907%_ __tmp172795))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id170902%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id170902%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key170857%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key170857%_))
            _%key170857%_
            (if (uninterned-symbol? _%key170857%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key170857%_))
                (let* ((_%key170861170868%_ _%key170857%_)
                       (_%E170863170872%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key170861170868%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K170864170890%_
                        (lambda (_%mark170875%_ _%eid170876%_)
                          (let ((_%$e170878%_
                                 (##structure-ref
                                  _%mark170875%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e170878%_
                                ((lambda (_%ht170881%_)
                                   (let ((_%$e170883%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht170881%_
                                             _%eid170876%_))))
                                     (if _%$e170883%_
                                         ((lambda (_%id170886%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id170886%_))
                                                _%id170886%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id170886%_))))
                                          _%$e170883%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid170876%_))))
                                 _%$e170878%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid170876%_))))))
                  (if (pair? _%key170861170868%_)
                      (let ((_%hd170865170893%_
                             (let ()
                               (declare (not safe))
                               (##car _%key170861170868%_)))
                            (_%tl170866170895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key170861170868%_))))
                        (let* ((_%eid170898%_ _%hd170865170893%_)
                               (_%mark170900%_ _%tl170866170895%_))
                          (_%K170864170890%_ _%mark170900%_ _%eid170898%_)))
                      (_%E170863170872%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self170854%_ _%stx170855%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self170701%_ _%stx170702%_)
        (letrec ((_%simplify170704%_
                  (lambda (_%body170752%_)
                    (let _%lp170754%_ ((_%rest170756%_ _%body170752%_)
                                       (_%r170757%_ '()))
                      (let* ((_%rest170758170766%_ _%rest170756%_)
                             (_%else170760170774%_
                              (lambda () (reverse _%r170757%_)))
                             (_%K170762170842%_
                              (lambda (_%rest170777%_ _%hd170778%_)
                                (let* ((_%hd170779170795%_ _%hd170778%_)
                                       (_%else170783170803%_
                                        (lambda ()
                                          (_%lp170754%_
                                           _%rest170777%_
                                           (cons _%hd170778%_ _%r170757%_)))))
                                  (let ((_%K170791170832%_
                                         (lambda (_%exprs170830%_)
                                           (_%lp170754%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest170777%_
                                               _%exprs170830%_))
                                            _%r170757%_)))
                                        (_%K170786170816%_
                                         (lambda ()
                                           (if (null? _%rest170777%_)
                                               (_%lp170754%_
                                                _%rest170777%_
                                                (cons _%hd170778%_
                                                      _%r170757%_))
                                               (_%lp170754%_
                                                _%rest170777%_
                                                _%r170757%_))))
                                        (_%K170785170808%_
                                         (lambda ()
                                           (if (null? _%rest170777%_)
                                               (_%lp170754%_
                                                _%rest170777%_
                                                (cons _%hd170778%_
                                                      _%r170757%_))
                                               (_%lp170754%_
                                                _%rest170777%_
                                                _%r170757%_)))))
                                    (let ((_%try-match170782170811%_
                                           (lambda ()
                                             (if (symbol? _%hd170779170795%_)
                                                 (_%K170785170808%_)
                                                 (_%else170783170803%_)))))
                                      (if (pair? _%hd170779170795%_)
                                          (let ((_%tl170793170837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd170779170795%_)))
                                                (_%hd170792170835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd170779170795%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd170792170835%_
                                                         'begin))
                                                (let ((_%exprs170840%_
                                                       _%tl170793170837%_))
                                                  (_%K170791170832%_
                                                   _%exprs170840%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd170792170835%_
                                                             'quote))
                                                    (if (pair? _%tl170793170837%_)
                                                        (let ((_%tl170790170824%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl170793170837%_))))
                  (if (null? _%tl170790170824%_)
                      (_%K170786170816%_)
                      (_%try-match170782170811%_)))
                (_%try-match170782170811%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match170782170811%_))))
                                          (_%try-match170782170811%_))))))))
                        (if (pair? _%rest170758170766%_)
                            (let ((_%hd170763170845%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest170758170766%_)))
                                  (_%tl170764170847%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest170758170766%_))))
                              (let* ((_%hd170850%_ _%hd170763170845%_)
                                     (_%rest170852%_ _%tl170764170847%_))
                                (_%K170762170842%_
                                 _%rest170852%_
                                 _%hd170850%_)))
                            (_%else170760170774%_)))))))
          (let* ((_%g170706170716%_
                  (lambda (_%g170707170713%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g170707170713%_))))
                 (_%g170705170749%_
                  (lambda (_%g170707170719%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g170707170719%_))
                        (let ((_%e170709170721%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170707170719%_))))
                          (let ((_%hd170710170724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170709170721%_)))
                                (_%tl170711170726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170709170721%_))))
                            ((lambda (_%g170708170729%_)
                               (let* ((_%body170744%_
                                       (map (lambda (_%g170739170741%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self170701%_
                                                 _%g170739170741%_)))
                                            _%g170708170729%_))
                                      (_%body170746%_
                                       (_%simplify170704%_ _%body170744%_)))
                                 (if (let ((__tmp172797
                                            (length _%body170746%_)))
                                       (declare (not safe))
                                       (##fx= __tmp172797 '1))
                                     (car _%body170746%_)
                                     (cons 'begin _%body170746%_))))
                             _%tl170711170726%_)))
                        (_%g170706170716%_ _%g170707170719%_)))))
            (_%g170705170749%_ _%stx170702%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self170662%_ _%stx170663%_)
        (let* ((_%g170665170675%_
                (lambda (_%g170666170672%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170666170672%_))))
               (_%g170664170698%_
                (lambda (_%g170666170678%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170666170678%_))
                      (let ((_%e170668170680%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170666170678%_))))
                        (let ((_%hd170669170683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170668170680%_)))
                              (_%tl170670170685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170668170680%_))))
                          ((lambda (_%g170667170688%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g170667170688%_))))
                           _%tl170670170685%_)))
                      (_%g170665170675%_ _%g170666170678%_)))))
          (_%g170664170698%_ _%stx170663%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self170428%_ _%stx170429%_)
        (let* ((_%__stx171387171388%_ _%stx170429%_)
               (_%g170433170485%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171387171388%_)))))
          (let ((_%__kont171389171390%_
                 (lambda (_%g170435170644%_ _%g170436170645%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170428%_ _%g170435170644%_))))
                (_%__kont171391171392%_
                 (lambda (_%g170446170592%_
                          _%g170447170593%_
                          _%g170448170594%_)
                   (if (let ((__tmp172798
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g170448170594%_))))
                         (declare (not safe))
                         (##memq __tmp172798 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self170428%_
                          _%g170446170592%_)))))
                (_%__kont171395171396%_
                 (lambda (_%g170470170514%_ _%g170471170515%_)
                   (let ((_%decls170530%_
                          (map gx#syntax->datum _%g170471170515%_)))
                     (let ((__tmp172801
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls170530%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170428%_
                                                   _%g170470170514%_))
                                                '())))))
                           (__tmp172799
                            (let ((__tmp172800
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp172800 _%decls170530%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp172801
                        gxc#current-compile-decls
                        __tmp172799))))))
            (let* ((_%__match171442171443%_
                    (lambda (_%e170449170538%_
                             _%hd170450170541%_
                             _%tl170451170543%_
                             _%e170452170546%_
                             _%hd170453170549%_
                             _%tl170454170551%_
                             _%e170455170554%_
                             _%hd170456170557%_
                             _%tl170457170559%_
                             _%__splice171393171394%_
                             _%target170458170562%_
                             _%tl170460170564%_)
                      (letrec ((_%loop170461170567%_
                                (lambda (_%hd170459170570%_
                                         _%param170465170572%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170459170570%_))
                                      (let ((_%e170462170574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170459170570%_))))
                                        (let ((_%lp-tl170464170579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170462170574%_)))
                                              (_%lp-hd170463170577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170462170574%_))))
                                          (_%loop170461170567%_
                                           _%lp-tl170464170579%_
                                           (cons _%lp-hd170463170577%_
                                                 _%param170465170572%_))))
                                      (let ((_%param170466170582%_
                                             (reverse _%param170465170572%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170454170551%_))
                                            (let ((_%e170467170584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170454170551%_))))
                                              (let ((_%tl170469170589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170467170584%_)))
                                                    (_%hd170468170587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170467170584%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170469170589%_))
                                                    (let ((_%g170446170592%_
                                                           _%hd170468170587%_)
                                                          (_%g170447170593%_
                                                           _%param170466170582%_)
                                                          (_%g170448170594%_
                                                           _%hd170456170557%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g170448170594%_))
                       (not (let ((__tmp172802
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170448170594%_))))
                              (declare (not safe))
                              (##memq __tmp172802 gxc#gambit-annotations))))
                  (_%__kont171391171392%_
                   _%g170446170592%_
                   _%g170447170593%_
                   _%g170448170594%_)
                  (_%__kont171395171396%_
                   _%hd170468170587%_
                   _%hd170453170549%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170433170485%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170433170485%_))))))))
                        (_%loop170461170567%_ _%target170458170562%_ '()))))
                   (_%__match171416171417%_
                    (lambda (_%e170437170620%_
                             _%hd170438170623%_
                             _%tl170439170625%_
                             _%e170440170628%_
                             _%hd170441170631%_
                             _%tl170442170633%_
                             _%e170443170636%_
                             _%hd170444170639%_
                             _%tl170445170641%_)
                      (let ((_%g170435170644%_ _%hd170444170639%_)
                            (_%g170436170645%_ _%hd170441170631%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g170436170645%_))
                            (_%__kont171389171390%_
                             _%g170435170644%_
                             _%g170436170645%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170441170631%_))
                                (let ((_%e170455170554%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170441170631%_))))
                                  (let ((_%tl170457170559%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170455170554%_)))
                                        (_%hd170456170557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170455170554%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170457170559%_))
                                        (let ((_%__splice171393171394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl170457170559%_
                                                  '0))))
                                          (let ((_%tl170460170564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171393171394%_
                                                    '1)))
                                                (_%target170458170562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171393171394%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170460170564%_))
                                                (_%__match171442171443%_
                                                 _%e170437170620%_
                                                 _%hd170438170623%_
                                                 _%tl170439170625%_
                                                 _%e170440170628%_
                                                 _%hd170441170631%_
                                                 _%tl170442170633%_
                                                 _%e170455170554%_
                                                 _%hd170456170557%_
                                                 _%tl170457170559%_
                                                 _%__splice171393171394%_
                                                 _%target170458170562%_
                                                 _%tl170460170564%_)
                                                (_%__kont171395171396%_
                                                 _%hd170444170639%_
                                                 _%hd170441170631%_))))
                                        (_%__kont171395171396%_
                                         _%hd170444170639%_
                                         _%hd170441170631%_))))
                                (_%__kont171395171396%_
                                 _%hd170444170639%_
                                 _%hd170441170631%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171387171388%_))
                  (let ((_%e170437170620%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171387171388%_))))
                    (let ((_%tl170439170625%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170437170620%_)))
                          (_%hd170438170623%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170437170620%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170439170625%_))
                          (let ((_%e170440170628%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170439170625%_))))
                            (let ((_%tl170442170633%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170440170628%_)))
                                  (_%hd170441170631%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170440170628%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170442170633%_))
                                  (let ((_%e170443170636%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170442170633%_))))
                                    (let ((_%tl170445170641%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170443170636%_)))
                                          (_%hd170444170639%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170443170636%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170445170641%_))
                                          (_%__match171416171417%_
                                           _%e170437170620%_
                                           _%hd170438170623%_
                                           _%tl170439170625%_
                                           _%e170440170628%_
                                           _%hd170441170631%_
                                           _%tl170442170633%_
                                           _%e170443170636%_
                                           _%hd170444170639%_
                                           _%tl170445170641%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170441170631%_))
                                              (let ((_%e170455170554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170441170631%_))))
                                                (let ((_%tl170457170559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170455170554%_)))
                                                      (_%hd170456170557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170455170554%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170457170559%_))
                                                      (let ((_%__splice171393171394%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl170457170559%_
                        '0))))
                (let ((_%tl170460170564%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171393171394%_ '1)))
                      (_%target170458170562%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171393171394%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170460170564%_))
                      (_%__match171442171443%_
                       _%e170437170620%_
                       _%hd170438170623%_
                       _%tl170439170625%_
                       _%e170440170628%_
                       _%hd170441170631%_
                       _%tl170442170633%_
                       _%e170455170554%_
                       _%hd170456170557%_
                       _%tl170457170559%_
                       _%__splice171393171394%_
                       _%target170458170562%_
                       _%tl170460170564%_)
                      (let () (declare (not safe)) (_%g170433170485%_)))))
              (let () (declare (not safe)) (_%g170433170485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170433170485%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170441170631%_))
                                      (let ((_%e170455170554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170441170631%_))))
                                        (let ((_%tl170457170559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170455170554%_)))
                                              (_%hd170456170557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170455170554%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl170457170559%_))
                                              (let ((_%__splice171393171394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl170457170559%_
                                                        '0))))
                                                (let ((_%tl170460170564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171393171394%_
                                                          '1)))
                                                      (_%target170458170562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171393171394%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170460170564%_))
                                                      (_%__match171442171443%_
                                                       _%e170437170620%_
                                                       _%hd170438170623%_
                                                       _%tl170439170625%_
                                                       _%e170440170628%_
                                                       _%hd170441170631%_
                                                       _%tl170442170633%_
                                                       _%e170455170554%_
                                                       _%hd170456170557%_
                                                       _%tl170457170559%_
                                                       _%__splice171393171394%_
                                                       _%target170458170562%_
                                                       _%tl170460170564%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g170433170485%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170433170485%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170433170485%_))))))
                          (let () (declare (not safe)) (_%g170433170485%_)))))
                  (let () (declare (not safe)) (_%g170433170485%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self170387%_ _%stx170388%_)
        (let* ((_%g170390170400%_
                (lambda (_%g170391170397%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170391170397%_))))
               (_%g170389170425%_
                (lambda (_%g170391170403%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170391170403%_))
                      (let ((_%e170393170405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170391170403%_))))
                        (let ((_%hd170394170408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170393170405%_)))
                              (_%tl170395170410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170393170405%_))))
                          ((lambda (_%g170392170413%_)
                             (let ((_%decls170423%_
                                    (map gx#syntax->datum _%g170392170413%_)))
                               (let ((__tmp172803
                                      (let ((__tmp172804
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp172804
                                         _%decls170423%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp172803))
                               (cons 'declare _%decls170423%_)))
                           _%tl170395170410%_)))
                      (_%g170390170400%_ _%g170391170403%_)))))
          (_%g170389170425%_ _%stx170388%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self170134%_ _%stx170135%_)
        (let* ((_%g170137170154%_
                (lambda (_%g170138170151%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170138170151%_))))
               (_%g170136170384%_
                (lambda (_%g170138170157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170138170157%_))
                      (let ((_%e170141170159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170138170157%_))))
                        (let ((_%hd170142170162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170141170159%_)))
                              (_%tl170143170164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170141170159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170143170164%_))
                              (let ((_%e170144170167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170143170164%_))))
                                (let ((_%hd170145170170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170144170167%_)))
                                      (_%tl170146170172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170144170167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170146170172%_))
                                      (let ((_%e170147170175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170146170172%_))))
                                        (let ((_%hd170148170178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170147170175%_)))
                                              (_%tl170149170180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170147170175%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170149170180%_))
                                              ((lambda (_%g170139170183%_
                                                        _%g170140170184%_)
                                                 (let* ((_%__stx171495171496%_
                                                         _%g170140170184%_)
                                                        (_%g170201170215%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171495171496%_)))))
                                                   (let ((_%__kont171497171498%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self170134%_
                                                               _%g170139170183%_))))
                                                         (_%__kont171499171500%_
                                                          (lambda (_%g170207170347%_)
                                                            (let ((_%eid170356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g170207170347%_))))
                      (let ((_%lambda-expr170357170359%_
                             (gxc#apply-find-lambda-expression
                              _%g170139170183%_)))
                        (if _%lambda-expr170357170359%_
                            (let* ((_%lambda-expr170361%_
                                    _%lambda-expr170357170359%_)
                                   (__tmp172805
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172805
                               _%lambda-expr170361%_
                               _%eid170356%_))
                            '#f))
                      (cons 'define
                            (cons _%eid170356%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self170134%_
                                           _%g170139170183%_))
                                        '()))))))
                 (_%__kont171501171502%_
                  (lambda ()
                    (let* ((_%tmp170222%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body170331%_
                            (let _%lp170224%_ ((_%rest170226%_
                                                _%g170140170184%_)
                                               (_%k170227%_ '0)
                                               (_%r170228%_ '()))
                              (let* ((_%__stx171465171466%_ _%rest170226%_)
                                     (_%g170233170250%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171465171466%_)))))
                                (let ((_%__kont171467171468%_
                                       (lambda (_%g170235170318%_)
                                         (_%lp170224%_
                                          _%g170235170318%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170227%_ '1))
                                          _%r170228%_)))
                                      (_%__kont171469171470%_
                                       (lambda (_%g170240170291%_
                                                _%g170241170292%_)
                                         (_%lp170224%_
                                          _%g170240170291%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170227%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g170241170292%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp170222%_
                           _%k170227%_
                           _%g170240170291%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r170228%_))))
                                      (_%__kont171471171472%_
                                       (lambda (_%g170245170262%_)
                                         (let ((__tmp172806
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g170245170262%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp170222%_
                                 _%k170227%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp172806
                                            _%r170228%_))))
                                      (_%__kont171473171474%_
                                       (lambda () (reverse _%r170228%_))))
                                  (let ((_%g170231170278%_
                                         (lambda ()
                                           (let ((_%g170245170262%_
                                                  _%__stx171465171466%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g170245170262%_))
                                                 (_%__kont171471171472%_
                                                  _%g170245170262%_)
                                                 (_%__kont171473171474%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx171465171466%_))
                                        (let ((_%e170236170307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx171465171466%_))))
                                          (let ((_%tl170238170312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170236170307%_)))
                                                (_%hd170237170310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170236170307%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd170237170310%_))
                                                (let ((_%e170239170315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd170237170310%_))))
                                                  (if (equal? _%e170239170315%_
                                                              '#f)
                                                      (_%__kont171467171468%_
                                                       _%tl170238170312%_)
                                                      (_%__kont171469171470%_
                                                       _%tl170238170312%_
                                                       _%hd170237170310%_)))
                                                (_%__kont171469171470%_
                                                 _%tl170238170312%_
                                                 _%hd170237170310%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170231170278%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp170222%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self170134%_
                                                       _%g170139170183%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp170222%_
                                         _%g170140170184%_
                                         _%g170139170183%_)
                                        _%body170331%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171495171496%_))
                                                         (let ((_%e170203170368%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171495171496%_))))
                   (let ((_%tl170205170373%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170203170368%_)))
                         (_%hd170204170371%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170203170368%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd170204170371%_))
                         (let ((_%e170206170376%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170204170371%_))))
                           (if (equal? _%e170206170376%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170205170373%_))
                                   (_%__kont171497171498%_)
                                   (_%__kont171501171502%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170205170373%_))
                                   (_%__kont171499171500%_ _%hd170204170371%_)
                                   (_%__kont171501171502%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl170205170373%_))
                             (_%__kont171499171500%_ _%hd170204170371%_)
                             (_%__kont171501171502%_)))))
                 (_%__kont171501171502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd170148170178%_
                                               _%hd170145170170%_)
                                              (_%g170137170154%_
                                               _%g170138170157%_))))
                                      (_%g170137170154%_ _%g170138170157%_))))
                              (_%g170137170154%_ _%g170138170157%_))))
                      (_%g170137170154%_ _%g170138170157%_)))))
          (_%g170136170384%_ _%stx170135%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals170109%_ _%hd170110%_ _%expr170111%_)
        (let ((_%$e170113%_ (gxc#apply-count-values _%expr170111%_)))
          (if _%$e170113%_
              ((lambda (_%count170116%_)
                 (let ((_%len170118%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd170110%_)))
                       (_%cmp170119%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd170110%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len170118%_ '0))
                           (_%cmp170119%_ _%count170116%_ _%len170118%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr170111%_
                          _%hd170110%_)))))
               _%$e170113%_)
              (let* ((_%len170125%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd170110%_)))
                     (_%cmp170127%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd170110%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg170129%_
                      (let ((__tmp172808
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd170110%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp172807 (number->string _%len170125%_)))
                        (declare (not safe))
                        (##string-append __tmp172808 __tmp172807 '" values")))
                     (_%count170131%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd170110%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len170125%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count170131%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals170109%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp170127%_
                                (cons _%count170131%_
                                      (cons _%len170125%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp170127%_
                                                        (cons _%count170131%_
                                                              (cons _%len170125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg170129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count170131%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var170104%_)
        (letrec ((_%generate-inline170106%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var170104%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var170104%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170106%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170106%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var170097%_ _%i170098%_ _%rest170099%_)
        (letrec ((_%generate-inline170101%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i170098%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest170099%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var170097%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var170097%_
                                                      (cons '0 '())))
                                          (cons _%var170097%_ '()))))
                        (cons '##values-ref
                              (cons _%var170097%_ (cons _%i170098%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170101%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170101%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var170091%_ _%i170092%_)
        (if (let () (declare (not safe)) (##fx= _%i170092%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var170091%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var170091%_ '()))
                                  (cons (cons 'list (cons _%var170091%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var170091%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var170091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var170091%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i170092%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var170091%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var170091%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var170091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var170091%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var170091%_ '()))
                                (cons _%i170092%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var170091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i170092%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self170023%_ _%stx170024%_)
        (let* ((_%g170026170043%_
                (lambda (_%g170027170040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170027170040%_))))
               (_%g170025170088%_
                (lambda (_%g170027170046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170027170046%_))
                      (let ((_%e170030170048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170027170046%_))))
                        (let ((_%hd170031170051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170030170048%_)))
                              (_%tl170032170053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170030170048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170032170053%_))
                              (let ((_%e170033170056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170032170053%_))))
                                (let ((_%hd170034170059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170033170056%_)))
                                      (_%tl170035170061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170033170056%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170035170061%_))
                                      (let ((_%e170036170064%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170035170061%_))))
                                        (let ((_%hd170037170067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170036170064%_)))
                                              (_%tl170038170069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170036170064%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170038170069%_))
                                              ((lambda (_%g170028170072%_
                                                        _%g170029170073%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self170023%_
                                                  _%g170029170073%_
                                                  _%g170028170072%_))
                                               _%hd170037170067%_
                                               _%hd170034170059%_)
                                              (_%g170026170043%_
                                               _%g170027170046%_))))
                                      (_%g170026170043%_ _%g170027170046%_))))
                              (_%g170026170043%_ _%g170027170046%_))))
                      (_%g170026170043%_ _%g170027170046%_)))))
          (_%g170025170088%_ _%stx170024%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self169982%_ _%hd169983%_ _%body169984%_)
        (let* ((_%hd169986%_ (gxc#generate-runtime-lambda-head _%hd169983%_))
               (_%body169988%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self169982%_ _%body169984%_)))
               (_%body170020%_
                (let* ((_%body169989169997%_ _%body169988%_)
                       (_%else169991170005%_
                        (lambda () (cons _%body169988%_ '())))
                       (_%K169993170010%_
                        (lambda (_%exprs170008%_) _%exprs170008%_)))
                  (if (pair? _%body169989169997%_)
                      (let ((_%hd169994170013%_
                             (let ()
                               (declare (not safe))
                               (##car _%body169989169997%_)))
                            (_%tl169995170015%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body169989169997%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd169994170013%_ 'begin))
                            (let ((_%exprs170018%_ _%tl169995170015%_))
                              (_%K169993170010%_ _%exprs170018%_))
                            (_%else169991170005%_)))
                      (_%else169991170005%_)))))
          (cons 'lambda (cons _%hd169986%_ _%body170020%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd169980%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd169980%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self168537%_ _%stx168538%_)
        (letrec ((_%dispatch-case?168540%_
                  (lambda (_%hd169218%_ _%body169219%_)
                    (let* ((_%form169221%_
                            (cons _%hd169218%_ (cons _%body169219%_ '())))
                           (_%__stx171527171528%_ _%form169221%_)
                           (_%g169226169383%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171527171528%_)))))
                      (let ((_%__kont171529171530%_
                             (lambda (_%g169228169900%_
                                      _%g169229169901%_
                                      _%g169230169902%_)
                               '#t))
                            (_%__kont171535171536%_
                             (lambda (_%g169273169692%_
                                      _%g169274169693%_
                                      _%g169275169694%_
                                      _%g169276169695%_
                                      _%g169277169696%_
                                      _%g169278169697%_)
                               '#t))
                            (_%__kont171541171542%_
                             (lambda (_%g169339169491%_
                                      _%g169340169492%_
                                      _%g169341169493%_
                                      _%g169342169494%_)
                               '#t))
                            (_%__kont171543171544%_ (lambda () '#f)))
                        (let* ((_%__match171668171669%_
                                (lambda (_%e169343169395%_
                                         _%hd169344169398%_
                                         _%tl169345169400%_
                                         _%e169346169403%_
                                         _%hd169347169406%_
                                         _%tl169348169408%_
                                         _%e169349169411%_
                                         _%hd169350169414%_
                                         _%tl169351169416%_
                                         _%e169352169419%_
                                         _%hd169353169422%_
                                         _%tl169354169424%_
                                         _%e169355169427%_
                                         _%hd169356169430%_
                                         _%tl169357169432%_
                                         _%e169358169435%_
                                         _%hd169359169438%_
                                         _%tl169360169440%_
                                         _%e169361169443%_
                                         _%hd169362169446%_
                                         _%tl169363169448%_
                                         _%e169364169451%_
                                         _%hd169365169454%_
                                         _%tl169366169456%_
                                         _%e169367169459%_
                                         _%hd169368169462%_
                                         _%tl169369169464%_
                                         _%e169370169467%_
                                         _%hd169371169470%_
                                         _%tl169372169472%_
                                         _%e169373169475%_
                                         _%hd169374169478%_
                                         _%tl169375169480%_
                                         _%e169376169483%_
                                         _%hd169377169486%_
                                         _%tl169378169488%_)
                                  (let ((_%g169339169491%_ _%hd169377169486%_)
                                        (_%g169340169492%_ _%hd169368169462%_)
                                        (_%g169341169493%_ _%hd169359169438%_)
                                        (_%g169342169494%_ _%hd169344169398%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g169342169494%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g169341169493%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g169342169494%_
                                                _%g169339169491%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g169340169492%_
                                                     _%g169342169494%_))))
                                        (_%__kont171541171542%_
                                         _%g169339169491%_
                                         _%g169340169492%_
                                         _%g169341169493%_
                                         _%g169342169494%_)
                                        (_%__kont171543171544%_)))))
                               (_%__match171640171641%_
                                (lambda (_%e169343169395%_
                                         _%hd169344169398%_
                                         _%tl169345169400%_
                                         _%e169346169403%_
                                         _%hd169347169406%_
                                         _%tl169348169408%_
                                         _%e169349169411%_
                                         _%hd169350169414%_
                                         _%tl169351169416%_
                                         _%e169352169419%_
                                         _%hd169353169422%_
                                         _%tl169354169424%_
                                         _%e169355169427%_
                                         _%hd169356169430%_
                                         _%tl169357169432%_
                                         _%e169358169435%_
                                         _%hd169359169438%_
                                         _%tl169360169440%_
                                         _%e169361169443%_
                                         _%hd169362169446%_
                                         _%tl169363169448%_
                                         _%e169364169451%_
                                         _%hd169365169454%_
                                         _%tl169366169456%_
                                         _%e169367169459%_
                                         _%hd169368169462%_
                                         _%tl169369169464%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169363169448%_))
                                      (let ((_%e169370169467%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169363169448%_))))
                                        (let ((_%tl169372169472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169370169467%_)))
                                              (_%hd169371169470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169370169467%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169371169470%_))
                                              (let ((_%e169373169475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169371169470%_))))
                                                (let ((_%tl169375169480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169373169475%_)))
                                                      (_%hd169374169478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169373169475%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169374169478%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169374169478%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169375169480%_))
                      (let ((_%e169376169483%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169375169480%_))))
                        (let ((_%tl169378169488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169376169483%_)))
                              (_%hd169377169486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169376169483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169378169488%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169372169472%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169348169408%_))
                                      (_%__match171668171669%_
                                       _%e169343169395%_
                                       _%hd169344169398%_
                                       _%tl169345169400%_
                                       _%e169346169403%_
                                       _%hd169347169406%_
                                       _%tl169348169408%_
                                       _%e169349169411%_
                                       _%hd169350169414%_
                                       _%tl169351169416%_
                                       _%e169352169419%_
                                       _%hd169353169422%_
                                       _%tl169354169424%_
                                       _%e169355169427%_
                                       _%hd169356169430%_
                                       _%tl169357169432%_
                                       _%e169358169435%_
                                       _%hd169359169438%_
                                       _%tl169360169440%_
                                       _%e169361169443%_
                                       _%hd169362169446%_
                                       _%tl169363169448%_
                                       _%e169364169451%_
                                       _%hd169365169454%_
                                       _%tl169366169456%_
                                       _%e169367169459%_
                                       _%hd169368169462%_
                                       _%tl169369169464%_
                                       _%e169370169467%_
                                       _%hd169371169470%_
                                       _%tl169372169472%_
                                       _%e169373169475%_
                                       _%hd169374169478%_
                                       _%tl169375169480%_
                                       _%e169376169483%_
                                       _%hd169377169486%_
                                       _%tl169378169488%_)
                                      (_%__kont171543171544%_))
                                  (_%__kont171543171544%_))
                              (_%__kont171543171544%_))))
                      (_%__kont171543171544%_))
                  (_%__kont171543171544%_))
              (_%__kont171543171544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171543171544%_))))
                                      (_%__kont171543171544%_))))
                               (_%__match171570171571%_
                                (lambda (_%e169279169536%_
                                         _%hd169280169539%_
                                         _%tl169281169541%_
                                         _%__splice171537171538%_
                                         _%target169282169544%_
                                         _%tl169284169546%_)
                                  (letrec ((_%loop169285169549%_
                                            (lambda (_%hd169283169552%_
                                                     _%arg169289169554%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169283169552%_))
                                                  (let ((_%e169286169556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169283169552%_))))
                                                    (let ((_%lp-tl169288169561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169286169556%_)))
                                                          (_%lp-hd169287169559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169286169556%_))))
                                                      (_%loop169285169549%_
                                                       _%lp-tl169288169561%_
                                                       (cons _%lp-hd169287169559%_
                                                             _%arg169289169554%_))))
                                                  (let ((_%arg169290169564%_
                                                         (reverse _%arg169289169554%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169281169541%_))
                                                        (let ((_%e169291169566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169281169541%_))))
                  (let ((_%tl169293169571%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169291169566%_)))
                        (_%hd169292169569%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169291169566%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169292169569%_))
                        (let ((_%e169294169574%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169292169569%_))))
                          (let ((_%tl169296169579%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169294169574%_)))
                                (_%hd169295169577%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169294169574%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169295169577%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169295169577%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169296169579%_))
                                        (let ((_%e169297169582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169296169579%_))))
                                          (let ((_%tl169299169587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169297169582%_)))
                                                (_%hd169298169585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169297169582%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169298169585%_))
                                                (let ((_%e169300169590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169298169585%_))))
                                                  (let ((_%tl169302169595%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169300169590%_)))
                                                        (_%hd169301169593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169300169590%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169301169593%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169301169593%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169302169595%_))
                        (let ((_%e169303169598%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169302169595%_))))
                          (let ((_%tl169305169603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169303169598%_)))
                                (_%hd169304169601%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169303169598%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169305169603%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169299169587%_))
                                    (let ((_%e169306169606%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169299169587%_))))
                                      (let ((_%tl169308169611%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169306169606%_)))
                                            (_%hd169307169609%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169306169606%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169307169609%_))
                                            (let ((_%e169309169614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169307169609%_))))
                                              (let ((_%tl169311169619%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169309169614%_)))
                                                    (_%hd169310169617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169309169614%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169310169617%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169310169617%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169311169619%_))
                                                            (let ((_%e169312169622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169311169619%_))))
                      (let ((_%tl169314169627%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169312169622%_)))
                            (_%hd169313169625%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169312169622%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169314169627%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169308169611%_))
                                (if (let ((__tmp172809
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl169308169611%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp172809 '1))
                                    (let ((_%__splice171539171540%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169308169611%_
                                              '1))))
                                      (let ((_%tl169317169632%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171539171540%_
                                                '1)))
                                            (_%target169315169630%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171539171540%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169317169632%_))
                                            (let ((_%e169324169635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169317169632%_))))
                                              (let ((_%tl169326169640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169324169635%_)))
                                                    (_%hd169325169638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169324169635%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169325169638%_))
                                                    (let ((_%e169327169643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169325169638%_))))
                                                      (let ((_%tl169329169648%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169327169643%_)))
                    (_%hd169328169646%_
                     (let () (declare (not safe)) (##car _%e169327169643%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169328169646%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd169328169646%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169329169648%_))
                            (let ((_%e169330169651%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169329169648%_))))
                              (let ((_%tl169332169656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169330169651%_)))
                                    (_%hd169331169654%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169330169651%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169332169656%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169326169640%_))
                                        (letrec ((_%loop169318169659%_
                                                  (lambda (_%hd169316169662%_
                                                           _%xarg169322169664%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd169316169662%_))
                                                        (let ((_%e169319169666%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd169316169662%_))))
                  (let ((_%lp-tl169321169671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169319169666%_)))
                        (_%lp-hd169320169669%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169319169666%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd169320169669%_))
                        (let ((_%e169333169674%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd169320169669%_))))
                          (let ((_%tl169335169679%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169333169674%_)))
                                (_%hd169334169677%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169333169674%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169334169677%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd169334169677%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169335169679%_))
                                        (let ((_%e169336169682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169335169679%_))))
                                          (let ((_%tl169338169687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169336169682%_)))
                                                (_%hd169337169685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169336169682%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169338169687%_))
                                                (_%loop169318169659%_
                                                 _%lp-tl169321169671%_
                                                 (cons _%hd169337169685%_
                                                       _%xarg169322169664%_))
                                                (_%__match171640171641%_
                                                 _%e169279169536%_
                                                 _%hd169280169539%_
                                                 _%tl169281169541%_
                                                 _%e169291169566%_
                                                 _%hd169292169569%_
                                                 _%tl169293169571%_
                                                 _%e169294169574%_
                                                 _%hd169295169577%_
                                                 _%tl169296169579%_
                                                 _%e169297169582%_
                                                 _%hd169298169585%_
                                                 _%tl169299169587%_
                                                 _%e169300169590%_
                                                 _%hd169301169593%_
                                                 _%tl169302169595%_
                                                 _%e169303169598%_
                                                 _%hd169304169601%_
                                                 _%tl169305169603%_
                                                 _%e169306169606%_
                                                 _%hd169307169609%_
                                                 _%tl169308169611%_
                                                 _%e169309169614%_
                                                 _%hd169310169617%_
                                                 _%tl169311169619%_
                                                 _%e169312169622%_
                                                 _%hd169313169625%_
                                                 _%tl169314169627%_))))
                                        (_%__match171640171641%_
                                         _%e169279169536%_
                                         _%hd169280169539%_
                                         _%tl169281169541%_
                                         _%e169291169566%_
                                         _%hd169292169569%_
                                         _%tl169293169571%_
                                         _%e169294169574%_
                                         _%hd169295169577%_
                                         _%tl169296169579%_
                                         _%e169297169582%_
                                         _%hd169298169585%_
                                         _%tl169299169587%_
                                         _%e169300169590%_
                                         _%hd169301169593%_
                                         _%tl169302169595%_
                                         _%e169303169598%_
                                         _%hd169304169601%_
                                         _%tl169305169603%_
                                         _%e169306169606%_
                                         _%hd169307169609%_
                                         _%tl169308169611%_
                                         _%e169309169614%_
                                         _%hd169310169617%_
                                         _%tl169311169619%_
                                         _%e169312169622%_
                                         _%hd169313169625%_
                                         _%tl169314169627%_))
                                    (_%__match171640171641%_
                                     _%e169279169536%_
                                     _%hd169280169539%_
                                     _%tl169281169541%_
                                     _%e169291169566%_
                                     _%hd169292169569%_
                                     _%tl169293169571%_
                                     _%e169294169574%_
                                     _%hd169295169577%_
                                     _%tl169296169579%_
                                     _%e169297169582%_
                                     _%hd169298169585%_
                                     _%tl169299169587%_
                                     _%e169300169590%_
                                     _%hd169301169593%_
                                     _%tl169302169595%_
                                     _%e169303169598%_
                                     _%hd169304169601%_
                                     _%tl169305169603%_
                                     _%e169306169606%_
                                     _%hd169307169609%_
                                     _%tl169308169611%_
                                     _%e169309169614%_
                                     _%hd169310169617%_
                                     _%tl169311169619%_
                                     _%e169312169622%_
                                     _%hd169313169625%_
                                     _%tl169314169627%_))
                                (_%__match171640171641%_
                                 _%e169279169536%_
                                 _%hd169280169539%_
                                 _%tl169281169541%_
                                 _%e169291169566%_
                                 _%hd169292169569%_
                                 _%tl169293169571%_
                                 _%e169294169574%_
                                 _%hd169295169577%_
                                 _%tl169296169579%_
                                 _%e169297169582%_
                                 _%hd169298169585%_
                                 _%tl169299169587%_
                                 _%e169300169590%_
                                 _%hd169301169593%_
                                 _%tl169302169595%_
                                 _%e169303169598%_
                                 _%hd169304169601%_
                                 _%tl169305169603%_
                                 _%e169306169606%_
                                 _%hd169307169609%_
                                 _%tl169308169611%_
                                 _%e169309169614%_
                                 _%hd169310169617%_
                                 _%tl169311169619%_
                                 _%e169312169622%_
                                 _%hd169313169625%_
                                 _%tl169314169627%_))))
                        (_%__match171640171641%_
                         _%e169279169536%_
                         _%hd169280169539%_
                         _%tl169281169541%_
                         _%e169291169566%_
                         _%hd169292169569%_
                         _%tl169293169571%_
                         _%e169294169574%_
                         _%hd169295169577%_
                         _%tl169296169579%_
                         _%e169297169582%_
                         _%hd169298169585%_
                         _%tl169299169587%_
                         _%e169300169590%_
                         _%hd169301169593%_
                         _%tl169302169595%_
                         _%e169303169598%_
                         _%hd169304169601%_
                         _%tl169305169603%_
                         _%e169306169606%_
                         _%hd169307169609%_
                         _%tl169308169611%_
                         _%e169309169614%_
                         _%hd169310169617%_
                         _%tl169311169619%_
                         _%e169312169622%_
                         _%hd169313169625%_
                         _%tl169314169627%_))))
                (let ((_%xarg169323169690%_ (reverse _%xarg169322169664%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169293169571%_))
                      (let ((_%g169273169692%_ _%hd169331169654%_)
                            (_%g169274169693%_ _%xarg169323169690%_)
                            (_%g169275169694%_ _%hd169313169625%_)
                            (_%g169276169695%_ _%hd169304169601%_)
                            (_%g169277169696%_ _%tl169284169546%_)
                            (_%g169278169697%_ _%arg169290169564%_))
                        (if (and (let ((__tmp172810
                                        (let ((__tmp172811
                                               (lambda (_%g169740169743%_
                                                        _%g169741169745%_)
                                                 (cons _%g169740169743%_
                                                       _%g169741169745%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172811
                                           '()
                                           _%g169278169697%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp172810))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g169277169696%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g169276169695%_
                                    'apply))
                                 (let ((__tmp172814
                                        (length (let ((__tmp172815
                                                       (lambda (_%g169747169750%_
                                                                _%g169748169752%_)
                                                         (cons _%g169747169750%_
                                                               _%g169748169752%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172815
                                                   '()
                                                   _%g169278169697%_))))
                                       (__tmp172812
                                        (length (let ((__tmp172813
                                                       (lambda (_%g169754169757%_
                                                                _%g169755169759%_)
                                                         (cons _%g169754169757%_
                                                               _%g169755169759%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172813
                                                   '()
                                                   _%g169274169693%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp172814 __tmp172812))
                                 (let ((__tmp172818
                                        (let ((__tmp172819
                                               (lambda (_%g169761169764%_
                                                        _%g169762169766%_)
                                                 (cons _%g169761169764%_
                                                       _%g169762169766%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172819
                                           '()
                                           _%g169278169697%_)))
                                       (__tmp172816
                                        (let ((__tmp172817
                                               (lambda (_%g169768169771%_
                                                        _%g169769169773%_)
                                                 (cons _%g169768169771%_
                                                       _%g169769169773%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172817
                                           '()
                                           _%g169274169693%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp172818
                                    __tmp172816))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g169277169696%_
                                    _%g169273169692%_))
                                 (not (let ((__tmp172823
                                             (lambda (_%g169775169777%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g169775169777%_
                                                  _%g169275169694%_))))
                                            (__tmp172820
                                             (let ((__tmp172822
                                                    (lambda (_%g169779169782%_
                                                             _%g169780169784%_)
                                                      (cons _%g169779169782%_
                                                            _%g169780169784%_)))
                                                   (__tmp172821
                                                    (cons _%g169277169696%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp172822
                                                __tmp172821
                                                _%g169278169697%_))))
                                        (declare (not safe))
                                        (__find __tmp172823 __tmp172820))))
                            (_%__kont171535171536%_
                             _%g169273169692%_
                             _%g169274169693%_
                             _%g169275169694%_
                             _%g169276169695%_
                             _%g169277169696%_
                             _%g169278169697%_)
                            (_%__match171640171641%_
                             _%e169279169536%_
                             _%hd169280169539%_
                             _%tl169281169541%_
                             _%e169291169566%_
                             _%hd169292169569%_
                             _%tl169293169571%_
                             _%e169294169574%_
                             _%hd169295169577%_
                             _%tl169296169579%_
                             _%e169297169582%_
                             _%hd169298169585%_
                             _%tl169299169587%_
                             _%e169300169590%_
                             _%hd169301169593%_
                             _%tl169302169595%_
                             _%e169303169598%_
                             _%hd169304169601%_
                             _%tl169305169603%_
                             _%e169306169606%_
                             _%hd169307169609%_
                             _%tl169308169611%_
                             _%e169309169614%_
                             _%hd169310169617%_
                             _%tl169311169619%_
                             _%e169312169622%_
                             _%hd169313169625%_
                             _%tl169314169627%_)))
                      (_%__match171640171641%_
                       _%e169279169536%_
                       _%hd169280169539%_
                       _%tl169281169541%_
                       _%e169291169566%_
                       _%hd169292169569%_
                       _%tl169293169571%_
                       _%e169294169574%_
                       _%hd169295169577%_
                       _%tl169296169579%_
                       _%e169297169582%_
                       _%hd169298169585%_
                       _%tl169299169587%_
                       _%e169300169590%_
                       _%hd169301169593%_
                       _%tl169302169595%_
                       _%e169303169598%_
                       _%hd169304169601%_
                       _%tl169305169603%_
                       _%e169306169606%_
                       _%hd169307169609%_
                       _%tl169308169611%_
                       _%e169309169614%_
                       _%hd169310169617%_
                       _%tl169311169619%_
                       _%e169312169622%_
                       _%hd169313169625%_
                       _%tl169314169627%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop169318169659%_
                                           _%target169315169630%_
                                           '()))
                                        (_%__match171640171641%_
                                         _%e169279169536%_
                                         _%hd169280169539%_
                                         _%tl169281169541%_
                                         _%e169291169566%_
                                         _%hd169292169569%_
                                         _%tl169293169571%_
                                         _%e169294169574%_
                                         _%hd169295169577%_
                                         _%tl169296169579%_
                                         _%e169297169582%_
                                         _%hd169298169585%_
                                         _%tl169299169587%_
                                         _%e169300169590%_
                                         _%hd169301169593%_
                                         _%tl169302169595%_
                                         _%e169303169598%_
                                         _%hd169304169601%_
                                         _%tl169305169603%_
                                         _%e169306169606%_
                                         _%hd169307169609%_
                                         _%tl169308169611%_
                                         _%e169309169614%_
                                         _%hd169310169617%_
                                         _%tl169311169619%_
                                         _%e169312169622%_
                                         _%hd169313169625%_
                                         _%tl169314169627%_))
                                    (_%__match171640171641%_
                                     _%e169279169536%_
                                     _%hd169280169539%_
                                     _%tl169281169541%_
                                     _%e169291169566%_
                                     _%hd169292169569%_
                                     _%tl169293169571%_
                                     _%e169294169574%_
                                     _%hd169295169577%_
                                     _%tl169296169579%_
                                     _%e169297169582%_
                                     _%hd169298169585%_
                                     _%tl169299169587%_
                                     _%e169300169590%_
                                     _%hd169301169593%_
                                     _%tl169302169595%_
                                     _%e169303169598%_
                                     _%hd169304169601%_
                                     _%tl169305169603%_
                                     _%e169306169606%_
                                     _%hd169307169609%_
                                     _%tl169308169611%_
                                     _%e169309169614%_
                                     _%hd169310169617%_
                                     _%tl169311169619%_
                                     _%e169312169622%_
                                     _%hd169313169625%_
                                     _%tl169314169627%_))))
                            (_%__match171640171641%_
                             _%e169279169536%_
                             _%hd169280169539%_
                             _%tl169281169541%_
                             _%e169291169566%_
                             _%hd169292169569%_
                             _%tl169293169571%_
                             _%e169294169574%_
                             _%hd169295169577%_
                             _%tl169296169579%_
                             _%e169297169582%_
                             _%hd169298169585%_
                             _%tl169299169587%_
                             _%e169300169590%_
                             _%hd169301169593%_
                             _%tl169302169595%_
                             _%e169303169598%_
                             _%hd169304169601%_
                             _%tl169305169603%_
                             _%e169306169606%_
                             _%hd169307169609%_
                             _%tl169308169611%_
                             _%e169309169614%_
                             _%hd169310169617%_
                             _%tl169311169619%_
                             _%e169312169622%_
                             _%hd169313169625%_
                             _%tl169314169627%_))
                        (_%__match171640171641%_
                         _%e169279169536%_
                         _%hd169280169539%_
                         _%tl169281169541%_
                         _%e169291169566%_
                         _%hd169292169569%_
                         _%tl169293169571%_
                         _%e169294169574%_
                         _%hd169295169577%_
                         _%tl169296169579%_
                         _%e169297169582%_
                         _%hd169298169585%_
                         _%tl169299169587%_
                         _%e169300169590%_
                         _%hd169301169593%_
                         _%tl169302169595%_
                         _%e169303169598%_
                         _%hd169304169601%_
                         _%tl169305169603%_
                         _%e169306169606%_
                         _%hd169307169609%_
                         _%tl169308169611%_
                         _%e169309169614%_
                         _%hd169310169617%_
                         _%tl169311169619%_
                         _%e169312169622%_
                         _%hd169313169625%_
                         _%tl169314169627%_))
                    (_%__match171640171641%_
                     _%e169279169536%_
                     _%hd169280169539%_
                     _%tl169281169541%_
                     _%e169291169566%_
                     _%hd169292169569%_
                     _%tl169293169571%_
                     _%e169294169574%_
                     _%hd169295169577%_
                     _%tl169296169579%_
                     _%e169297169582%_
                     _%hd169298169585%_
                     _%tl169299169587%_
                     _%e169300169590%_
                     _%hd169301169593%_
                     _%tl169302169595%_
                     _%e169303169598%_
                     _%hd169304169601%_
                     _%tl169305169603%_
                     _%e169306169606%_
                     _%hd169307169609%_
                     _%tl169308169611%_
                     _%e169309169614%_
                     _%hd169310169617%_
                     _%tl169311169619%_
                     _%e169312169622%_
                     _%hd169313169625%_
                     _%tl169314169627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171640171641%_
                                                     _%e169279169536%_
                                                     _%hd169280169539%_
                                                     _%tl169281169541%_
                                                     _%e169291169566%_
                                                     _%hd169292169569%_
                                                     _%tl169293169571%_
                                                     _%e169294169574%_
                                                     _%hd169295169577%_
                                                     _%tl169296169579%_
                                                     _%e169297169582%_
                                                     _%hd169298169585%_
                                                     _%tl169299169587%_
                                                     _%e169300169590%_
                                                     _%hd169301169593%_
                                                     _%tl169302169595%_
                                                     _%e169303169598%_
                                                     _%hd169304169601%_
                                                     _%tl169305169603%_
                                                     _%e169306169606%_
                                                     _%hd169307169609%_
                                                     _%tl169308169611%_
                                                     _%e169309169614%_
                                                     _%hd169310169617%_
                                                     _%tl169311169619%_
                                                     _%e169312169622%_
                                                     _%hd169313169625%_
                                                     _%tl169314169627%_))))
                                            (_%__match171640171641%_
                                             _%e169279169536%_
                                             _%hd169280169539%_
                                             _%tl169281169541%_
                                             _%e169291169566%_
                                             _%hd169292169569%_
                                             _%tl169293169571%_
                                             _%e169294169574%_
                                             _%hd169295169577%_
                                             _%tl169296169579%_
                                             _%e169297169582%_
                                             _%hd169298169585%_
                                             _%tl169299169587%_
                                             _%e169300169590%_
                                             _%hd169301169593%_
                                             _%tl169302169595%_
                                             _%e169303169598%_
                                             _%hd169304169601%_
                                             _%tl169305169603%_
                                             _%e169306169606%_
                                             _%hd169307169609%_
                                             _%tl169308169611%_
                                             _%e169309169614%_
                                             _%hd169310169617%_
                                             _%tl169311169619%_
                                             _%e169312169622%_
                                             _%hd169313169625%_
                                             _%tl169314169627%_))))
                                    (_%__match171640171641%_
                                     _%e169279169536%_
                                     _%hd169280169539%_
                                     _%tl169281169541%_
                                     _%e169291169566%_
                                     _%hd169292169569%_
                                     _%tl169293169571%_
                                     _%e169294169574%_
                                     _%hd169295169577%_
                                     _%tl169296169579%_
                                     _%e169297169582%_
                                     _%hd169298169585%_
                                     _%tl169299169587%_
                                     _%e169300169590%_
                                     _%hd169301169593%_
                                     _%tl169302169595%_
                                     _%e169303169598%_
                                     _%hd169304169601%_
                                     _%tl169305169603%_
                                     _%e169306169606%_
                                     _%hd169307169609%_
                                     _%tl169308169611%_
                                     _%e169309169614%_
                                     _%hd169310169617%_
                                     _%tl169311169619%_
                                     _%e169312169622%_
                                     _%hd169313169625%_
                                     _%tl169314169627%_))
                                (_%__match171640171641%_
                                 _%e169279169536%_
                                 _%hd169280169539%_
                                 _%tl169281169541%_
                                 _%e169291169566%_
                                 _%hd169292169569%_
                                 _%tl169293169571%_
                                 _%e169294169574%_
                                 _%hd169295169577%_
                                 _%tl169296169579%_
                                 _%e169297169582%_
                                 _%hd169298169585%_
                                 _%tl169299169587%_
                                 _%e169300169590%_
                                 _%hd169301169593%_
                                 _%tl169302169595%_
                                 _%e169303169598%_
                                 _%hd169304169601%_
                                 _%tl169305169603%_
                                 _%e169306169606%_
                                 _%hd169307169609%_
                                 _%tl169308169611%_
                                 _%e169309169614%_
                                 _%hd169310169617%_
                                 _%tl169311169619%_
                                 _%e169312169622%_
                                 _%hd169313169625%_
                                 _%tl169314169627%_))
                            (_%__kont171543171544%_))))
                    (_%__kont171543171544%_))
                (_%__kont171543171544%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171543171544%_))))
                                            (_%__kont171543171544%_))))
                                    (_%__kont171543171544%_))
                                (_%__kont171543171544%_))))
                        (_%__kont171543171544%_))
                    (_%__kont171543171544%_))
                (_%__kont171543171544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171543171544%_))))
                                        (_%__kont171543171544%_))
                                    (_%__kont171543171544%_))
                                (_%__kont171543171544%_))))
                        (_%__kont171543171544%_))))
                (_%__kont171543171544%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169285169549%_
                                     _%target169282169544%_
                                     '()))))
                               (_%__match171558171559%_
                                (lambda (_%e169231169792%_
                                         _%hd169232169795%_
                                         _%tl169233169797%_
                                         _%__splice171531171532%_
                                         _%target169234169800%_
                                         _%tl169236169802%_)
                                  (letrec ((_%loop169237169805%_
                                            (lambda (_%hd169235169808%_
                                                     _%arg169241169810%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169235169808%_))
                                                  (let ((_%e169238169812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169235169808%_))))
                                                    (let ((_%lp-tl169240169817%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169238169812%_)))
                                                          (_%lp-hd169239169815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169238169812%_))))
                                                      (_%loop169237169805%_
                                                       _%lp-tl169240169817%_
                                                       (cons _%lp-hd169239169815%_
                                                             _%arg169241169810%_))))
                                                  (let ((_%arg169242169820%_
                                                         (reverse _%arg169241169810%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169233169797%_))
                                                        (let ((_%e169243169822%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169233169797%_))))
                  (let ((_%tl169245169827%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169243169822%_)))
                        (_%hd169244169825%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169243169822%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169244169825%_))
                        (let ((_%e169246169830%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169244169825%_))))
                          (let ((_%tl169248169835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169246169830%_)))
                                (_%hd169247169833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169246169830%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169247169833%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169247169833%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169248169835%_))
                                        (let ((_%e169249169838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169248169835%_))))
                                          (let ((_%tl169251169843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169249169838%_)))
                                                (_%hd169250169841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169249169838%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169250169841%_))
                                                (let ((_%e169252169846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169250169841%_))))
                                                  (let ((_%tl169254169851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169252169846%_)))
                                                        (_%hd169253169849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169252169846%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169253169849%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169253169849%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169254169851%_))
                        (let ((_%e169255169854%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169254169851%_))))
                          (let ((_%tl169257169859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169255169854%_)))
                                (_%hd169256169857%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169255169854%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169257169859%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169251169843%_))
                                    (let ((_%__splice171533171534%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169251169843%_
                                              '0))))
                                      (let ((_%tl169260169864%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171533171534%_
                                                '1)))
                                            (_%target169258169862%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171533171534%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169260169864%_))
                                            (letrec ((_%loop169261169867%_
                                                      (lambda (_%hd169259169870%_
                                                               _%xarg169265169872%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd169259169870%_))
                                                            (let ((_%e169262169874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169259169870%_))))
                      (let ((_%lp-tl169264169879%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169262169874%_)))
                            (_%lp-hd169263169877%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169262169874%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd169263169877%_))
                            (let ((_%e169267169882%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd169263169877%_))))
                              (let ((_%tl169269169887%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169267169882%_)))
                                    (_%hd169268169885%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169267169882%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169268169885%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd169268169885%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169269169887%_))
                                            (let ((_%e169270169890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169269169887%_))))
                                              (let ((_%tl169272169895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169270169890%_)))
                                                    (_%hd169271169893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169270169890%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169272169895%_))
                                                    (_%loop169261169867%_
                                                     _%lp-tl169264169879%_
                                                     (cons _%hd169271169893%_
                                                           _%xarg169265169872%_))
                                                    (_%__match171570171571%_
                                                     _%e169231169792%_
                                                     _%hd169232169795%_
                                                     _%tl169233169797%_
                                                     _%__splice171531171532%_
                                                     _%target169234169800%_
                                                     _%tl169236169802%_))))
                                            (_%__match171570171571%_
                                             _%e169231169792%_
                                             _%hd169232169795%_
                                             _%tl169233169797%_
                                             _%__splice171531171532%_
                                             _%target169234169800%_
                                             _%tl169236169802%_))
                                        (_%__match171570171571%_
                                         _%e169231169792%_
                                         _%hd169232169795%_
                                         _%tl169233169797%_
                                         _%__splice171531171532%_
                                         _%target169234169800%_
                                         _%tl169236169802%_))
                                    (_%__match171570171571%_
                                     _%e169231169792%_
                                     _%hd169232169795%_
                                     _%tl169233169797%_
                                     _%__splice171531171532%_
                                     _%target169234169800%_
                                     _%tl169236169802%_))))
                            (_%__match171570171571%_
                             _%e169231169792%_
                             _%hd169232169795%_
                             _%tl169233169797%_
                             _%__splice171531171532%_
                             _%target169234169800%_
                             _%tl169236169802%_))))
                    (let ((_%xarg169266169898%_
                           (reverse _%xarg169265169872%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169245169827%_))
                          (let ((_%g169228169900%_ _%xarg169266169898%_)
                                (_%g169229169901%_ _%hd169256169857%_)
                                (_%g169230169902%_ _%arg169242169820%_))
                            (if (and (let ((__tmp172824
                                            (let ((__tmp172825
                                                   (lambda (_%g169930169933%_
                                                            _%g169931169935%_)
                                                     (cons _%g169930169933%_
                                                           _%g169931169935%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172825
                                               '()
                                               _%g169230169902%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp172824))
                                     (let ((__tmp172828
                                            (length (let ((__tmp172829
                                                           (lambda (_%g169937169940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169938169942%_)
                     (cons _%g169937169940%_ _%g169938169942%_))))
              (declare (not safe))
              (__foldr1 __tmp172829 '() _%g169230169902%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp172826
                                            (length (let ((__tmp172827
                                                           (lambda (_%g169944169947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169945169949%_)
                     (cons _%g169944169947%_ _%g169945169949%_))))
              (declare (not safe))
              (__foldr1 __tmp172827 '() _%g169228169900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp172828 __tmp172826))
                                     (let ((__tmp172832
                                            (let ((__tmp172833
                                                   (lambda (_%g169951169954%_
                                                            _%g169952169956%_)
                                                     (cons _%g169951169954%_
                                                           _%g169952169956%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172833
                                               '()
                                               _%g169230169902%_)))
                                           (__tmp172830
                                            (let ((__tmp172831
                                                   (lambda (_%g169958169961%_
                                                            _%g169959169963%_)
                                                     (cons _%g169958169961%_
                                                           _%g169959169963%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172831
                                               '()
                                               _%g169228169900%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp172832
                                        __tmp172830))
                                     (not (let ((__tmp172836
                                                 (lambda (_%g169965169967%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g169965169967%_
                                                      _%g169229169901%_))))
                                                (__tmp172834
                                                 (let ((__tmp172835
                                                        (lambda (_%g169969169972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169970169974%_)
                  (cons _%g169969169972%_ _%g169970169974%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172835
                                                    '()
                                                    _%g169230169902%_))))
                                            (declare (not safe))
                                            (__find __tmp172836 __tmp172834))))
                                (_%__kont171529171530%_
                                 _%g169228169900%_
                                 _%g169229169901%_
                                 _%g169230169902%_)
                                (_%__match171570171571%_
                                 _%e169231169792%_
                                 _%hd169232169795%_
                                 _%tl169233169797%_
                                 _%__splice171531171532%_
                                 _%target169234169800%_
                                 _%tl169236169802%_)))
                          (_%__match171570171571%_
                           _%e169231169792%_
                           _%hd169232169795%_
                           _%tl169233169797%_
                           _%__splice171531171532%_
                           _%target169234169800%_
                           _%tl169236169802%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop169261169867%_
                                               _%target169258169862%_
                                               '()))
                                            (_%__match171570171571%_
                                             _%e169231169792%_
                                             _%hd169232169795%_
                                             _%tl169233169797%_
                                             _%__splice171531171532%_
                                             _%target169234169800%_
                                             _%tl169236169802%_))))
                                    (_%__match171570171571%_
                                     _%e169231169792%_
                                     _%hd169232169795%_
                                     _%tl169233169797%_
                                     _%__splice171531171532%_
                                     _%target169234169800%_
                                     _%tl169236169802%_))
                                (_%__match171570171571%_
                                 _%e169231169792%_
                                 _%hd169232169795%_
                                 _%tl169233169797%_
                                 _%__splice171531171532%_
                                 _%target169234169800%_
                                 _%tl169236169802%_))))
                        (_%__match171570171571%_
                         _%e169231169792%_
                         _%hd169232169795%_
                         _%tl169233169797%_
                         _%__splice171531171532%_
                         _%target169234169800%_
                         _%tl169236169802%_))
                    (_%__match171570171571%_
                     _%e169231169792%_
                     _%hd169232169795%_
                     _%tl169233169797%_
                     _%__splice171531171532%_
                     _%target169234169800%_
                     _%tl169236169802%_))
                (_%__match171570171571%_
                 _%e169231169792%_
                 _%hd169232169795%_
                 _%tl169233169797%_
                 _%__splice171531171532%_
                 _%target169234169800%_
                 _%tl169236169802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171570171571%_
                                                 _%e169231169792%_
                                                 _%hd169232169795%_
                                                 _%tl169233169797%_
                                                 _%__splice171531171532%_
                                                 _%target169234169800%_
                                                 _%tl169236169802%_))))
                                        (_%__match171570171571%_
                                         _%e169231169792%_
                                         _%hd169232169795%_
                                         _%tl169233169797%_
                                         _%__splice171531171532%_
                                         _%target169234169800%_
                                         _%tl169236169802%_))
                                    (_%__match171570171571%_
                                     _%e169231169792%_
                                     _%hd169232169795%_
                                     _%tl169233169797%_
                                     _%__splice171531171532%_
                                     _%target169234169800%_
                                     _%tl169236169802%_))
                                (_%__match171570171571%_
                                 _%e169231169792%_
                                 _%hd169232169795%_
                                 _%tl169233169797%_
                                 _%__splice171531171532%_
                                 _%target169234169800%_
                                 _%tl169236169802%_))))
                        (_%__match171570171571%_
                         _%e169231169792%_
                         _%hd169232169795%_
                         _%tl169233169797%_
                         _%__splice171531171532%_
                         _%target169234169800%_
                         _%tl169236169802%_))))
                (_%__match171570171571%_
                 _%e169231169792%_
                 _%hd169232169795%_
                 _%tl169233169797%_
                 _%__splice171531171532%_
                 _%target169234169800%_
                 _%tl169236169802%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169237169805%_
                                     _%target169234169800%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171527171528%_))
                              (let ((_%e169231169792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171527171528%_))))
                                (let ((_%tl169233169797%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169231169792%_)))
                                      (_%hd169232169795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169231169792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd169232169795%_))
                                      (let ((_%__splice171531171532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd169232169795%_
                                                '0))))
                                        (let ((_%tl169236169802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171531171532%_
                                                  '1)))
                                              (_%target169234169800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171531171532%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169236169802%_))
                                              (_%__match171558171559%_
                                               _%e169231169792%_
                                               _%hd169232169795%_
                                               _%tl169233169797%_
                                               _%__splice171531171532%_
                                               _%target169234169800%_
                                               _%tl169236169802%_)
                                              (_%__match171570171571%_
                                               _%e169231169792%_
                                               _%hd169232169795%_
                                               _%tl169233169797%_
                                               _%__splice171531171532%_
                                               _%target169234169800%_
                                               _%tl169236169802%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169233169797%_))
                                          (let ((_%e169346169403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169233169797%_))))
                                            (let ((_%tl169348169408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169346169403%_)))
                                                  (_%hd169347169406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169346169403%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169347169406%_))
                                                  (let ((_%e169349169411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169347169406%_))))
                                                    (let ((_%tl169351169416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169349169411%_)))
                                                          (_%hd169350169414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169349169411%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169350169414%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169350169414%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169351169416%_))
                          (let ((_%e169352169419%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169351169416%_))))
                            (let ((_%tl169354169424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169352169419%_)))
                                  (_%hd169353169422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169352169419%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169353169422%_))
                                  (let ((_%e169355169427%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169353169422%_))))
                                    (let ((_%tl169357169432%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169355169427%_)))
                                          (_%hd169356169430%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169355169427%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169356169430%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169356169430%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169357169432%_))
                                                  (let ((_%e169358169435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169357169432%_))))
                                                    (let ((_%tl169360169440%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169358169435%_)))
                                                          (_%hd169359169438%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169358169435%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169360169440%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169354169424%_))
                      (let ((_%e169361169443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169354169424%_))))
                        (let ((_%tl169363169448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169361169443%_)))
                              (_%hd169362169446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169361169443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169362169446%_))
                              (let ((_%e169364169451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169362169446%_))))
                                (let ((_%tl169366169456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169364169451%_)))
                                      (_%hd169365169454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169364169451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169365169454%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169365169454%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169366169456%_))
                                              (let ((_%e169367169459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169366169456%_))))
                                                (let ((_%tl169369169464%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169367169459%_)))
                                                      (_%hd169368169462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169367169459%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169369169464%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169363169448%_))
                                                          (let ((_%e169370169467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169363169448%_))))
                    (let ((_%tl169372169472%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169370169467%_)))
                          (_%hd169371169470%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169370169467%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169371169470%_))
                          (let ((_%e169373169475%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169371169470%_))))
                            (let ((_%tl169375169480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169373169475%_)))
                                  (_%hd169374169478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169373169475%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169374169478%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd169374169478%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169375169480%_))
                                          (let ((_%e169376169483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169375169480%_))))
                                            (let ((_%tl169378169488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169376169483%_)))
                                                  (_%hd169377169486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169376169483%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169378169488%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169372169472%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169348169408%_))
                                                          (_%__match171668171669%_
                                                           _%e169231169792%_
                                                           _%hd169232169795%_
                                                           _%tl169233169797%_
                                                           _%e169346169403%_
                                                           _%hd169347169406%_
                                                           _%tl169348169408%_
                                                           _%e169349169411%_
                                                           _%hd169350169414%_
                                                           _%tl169351169416%_
                                                           _%e169352169419%_
                                                           _%hd169353169422%_
                                                           _%tl169354169424%_
                                                           _%e169355169427%_
                                                           _%hd169356169430%_
                                                           _%tl169357169432%_
                                                           _%e169358169435%_
                                                           _%hd169359169438%_
                                                           _%tl169360169440%_
                                                           _%e169361169443%_
                                                           _%hd169362169446%_
                                                           _%tl169363169448%_
                                                           _%e169364169451%_
                                                           _%hd169365169454%_
                                                           _%tl169366169456%_
                                                           _%e169367169459%_
                                                           _%hd169368169462%_
                                                           _%tl169369169464%_
                                                           _%e169370169467%_
                                                           _%hd169371169470%_
                                                           _%tl169372169472%_
                                                           _%e169373169475%_
                                                           _%hd169374169478%_
                                                           _%tl169375169480%_
                                                           _%e169376169483%_
                                                           _%hd169377169486%_
                                                           _%tl169378169488%_)
                                                          (_%__kont171543171544%_))
                                                      (_%__kont171543171544%_))
                                                  (_%__kont171543171544%_))))
                                          (_%__kont171543171544%_))
                                      (_%__kont171543171544%_))
                                  (_%__kont171543171544%_))))
                          (_%__kont171543171544%_))))
                  (_%__kont171543171544%_))
              (_%__kont171543171544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171543171544%_))
                                          (_%__kont171543171544%_))
                                      (_%__kont171543171544%_))))
                              (_%__kont171543171544%_))))
                      (_%__kont171543171544%_))
                  (_%__kont171543171544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171543171544%_))
                                              (_%__kont171543171544%_))
                                          (_%__kont171543171544%_))))
                                  (_%__kont171543171544%_))))
                          (_%__kont171543171544%_))
                      (_%__kont171543171544%_))
                  (_%__kont171543171544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171543171544%_))))
                                          (_%__kont171543171544%_)))))
                              (_%__kont171543171544%_)))))))
                 (_%dispatch-case-e168541%_
                  (lambda (_%hd168688%_ _%body168689%_)
                    (let* ((_%form168691%_
                            (cons _%hd168688%_ (cons _%body168689%_ '())))
                           (_%__stx171671171672%_ _%form168691%_)
                           (_%g168695168819%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171671171672%_)))))
                      (let ((_%__kont171673171674%_
                             (lambda (_%g168697169184%_
                                      _%g168698169185%_
                                      _%g168699169186%_)
                               (let ((__tmp172837
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168698169185%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168537%_
                                  __tmp172837))))
                            (_%__kont171679171680%_
                             (lambda (_%g168742169036%_
                                      _%g168743169037%_
                                      _%g168744169038%_
                                      _%g168745169039%_)
                               (let ((__tmp172838
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168742169036%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168537%_
                                  __tmp172838))))
                            (_%__kont171683171684%_
                             (lambda (_%g168782168904%_
                                      _%g168783168905%_
                                      _%g168784168906%_)
                               (let ((__tmp172839
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168782168904%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168537%_
                                  __tmp172839)))))
                        (let* ((_%__match171780171781%_
                                (lambda (_%e168785168824%_
                                         _%hd168786168827%_
                                         _%tl168787168829%_
                                         _%e168788168832%_
                                         _%hd168789168835%_
                                         _%tl168790168837%_
                                         _%e168791168840%_
                                         _%hd168792168843%_
                                         _%tl168793168845%_
                                         _%e168794168848%_
                                         _%hd168795168851%_
                                         _%tl168796168853%_
                                         _%e168797168856%_
                                         _%hd168798168859%_
                                         _%tl168799168861%_
                                         _%e168800168864%_
                                         _%hd168801168867%_
                                         _%tl168802168869%_
                                         _%e168803168872%_
                                         _%hd168804168875%_
                                         _%tl168805168877%_
                                         _%e168806168880%_
                                         _%hd168807168883%_
                                         _%tl168808168885%_
                                         _%e168809168888%_
                                         _%hd168810168891%_
                                         _%tl168811168893%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168805168877%_))
                                      (let ((_%e168812168896%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168805168877%_))))
                                        (let ((_%tl168814168901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168812168896%_)))
                                              (_%hd168813168899%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168812168896%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168814168901%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl168790168837%_))
                                                  (_%__kont171683171684%_
                                                   _%hd168810168891%_
                                                   _%hd168801168867%_
                                                   _%hd168786168827%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168695168819%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168695168819%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168695168819%_)))))
                               (_%__match171710171711%_
                                (lambda (_%e168746168942%_
                                         _%hd168747168945%_
                                         _%tl168748168947%_
                                         _%__splice171681171682%_
                                         _%target168749168950%_
                                         _%tl168751168952%_)
                                  (letrec ((_%loop168752168955%_
                                            (lambda (_%hd168750168958%_
                                                     _%arg168756168960%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168750168958%_))
                                                  (let ((_%e168753168962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168750168958%_))))
                                                    (let ((_%lp-tl168755168967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168753168962%_)))
                                                          (_%lp-hd168754168965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168753168962%_))))
                                                      (_%loop168752168955%_
                                                       _%lp-tl168755168967%_
                                                       (cons _%lp-hd168754168965%_
                                                             _%arg168756168960%_))))
                                                  (let ((_%arg168757168970%_
                                                         (reverse _%arg168756168960%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168748168947%_))
                                                        (let ((_%e168758168972%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168748168947%_))))
                  (let ((_%tl168760168977%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168758168972%_)))
                        (_%hd168759168975%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168758168972%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168759168975%_))
                        (let ((_%e168761168980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168759168975%_))))
                          (let ((_%tl168763168985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168761168980%_)))
                                (_%hd168762168983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168761168980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168762168983%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168762168983%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168763168985%_))
                                        (let ((_%e168764168988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168763168985%_))))
                                          (let ((_%tl168766168993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168764168988%_)))
                                                (_%hd168765168991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168764168988%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168765168991%_))
                                                (let ((_%e168767168996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168765168991%_))))
                                                  (let ((_%tl168769169001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168767168996%_)))
                                                        (_%hd168768168999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168767168996%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168768168999%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168768168999%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168769169001%_))
                        (let ((_%e168770169004%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168769169001%_))))
                          (let ((_%tl168772169009%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168770169004%_)))
                                (_%hd168771169007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168770169004%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168772169009%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168766168993%_))
                                    (let ((_%e168773169012%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168766168993%_))))
                                      (let ((_%tl168775169017%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168773169012%_)))
                                            (_%hd168774169015%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168773169012%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd168774169015%_))
                                            (let ((_%e168776169020%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd168774169015%_))))
                                              (let ((_%tl168778169025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168776169020%_)))
                                                    (_%hd168777169023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168776169020%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd168777169023%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd168777169023%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168778169025%_))
                                                            (let ((_%e168779169028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168778169025%_))))
                      (let ((_%tl168781169033%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168779169028%_)))
                            (_%hd168780169031%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168779169028%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168781169033%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168760168977%_))
                                (_%__kont171679171680%_
                                 _%hd168780169031%_
                                 _%hd168771169007%_
                                 _%tl168751168952%_
                                 _%arg168757168970%_)
                                (_%__match171780171781%_
                                 _%e168746168942%_
                                 _%hd168747168945%_
                                 _%tl168748168947%_
                                 _%e168758168972%_
                                 _%hd168759168975%_
                                 _%tl168760168977%_
                                 _%e168761168980%_
                                 _%hd168762168983%_
                                 _%tl168763168985%_
                                 _%e168764168988%_
                                 _%hd168765168991%_
                                 _%tl168766168993%_
                                 _%e168767168996%_
                                 _%hd168768168999%_
                                 _%tl168769169001%_
                                 _%e168770169004%_
                                 _%hd168771169007%_
                                 _%tl168772169009%_
                                 _%e168773169012%_
                                 _%hd168774169015%_
                                 _%tl168775169017%_
                                 _%e168776169020%_
                                 _%hd168777169023%_
                                 _%tl168778169025%_
                                 _%e168779169028%_
                                 _%hd168780169031%_
                                 _%tl168781169033%_))
                            (let ()
                              (declare (not safe))
                              (_%g168695168819%_)))))
                    (let () (declare (not safe)) (_%g168695168819%_)))
                (let () (declare (not safe)) (_%g168695168819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168695168819%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168695168819%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168695168819%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168695168819%_)))))
                        (let () (declare (not safe)) (_%g168695168819%_)))
                    (let () (declare (not safe)) (_%g168695168819%_)))
                (let () (declare (not safe)) (_%g168695168819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168695168819%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168695168819%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168695168819%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168695168819%_)))))
                        (let () (declare (not safe)) (_%g168695168819%_)))))
                (let () (declare (not safe)) (_%g168695168819%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168752168955%_
                                     _%target168749168950%_
                                     '()))))
                               (_%__match171698171699%_
                                (lambda (_%e168700169076%_
                                         _%hd168701169079%_
                                         _%tl168702169081%_
                                         _%__splice171675171676%_
                                         _%target168703169084%_
                                         _%tl168705169086%_)
                                  (letrec ((_%loop168706169089%_
                                            (lambda (_%hd168704169092%_
                                                     _%arg168710169094%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168704169092%_))
                                                  (let ((_%e168707169096%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168704169092%_))))
                                                    (let ((_%lp-tl168709169101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168707169096%_)))
                                                          (_%lp-hd168708169099%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168707169096%_))))
                                                      (_%loop168706169089%_
                                                       _%lp-tl168709169101%_
                                                       (cons _%lp-hd168708169099%_
                                                             _%arg168710169094%_))))
                                                  (let ((_%arg168711169104%_
                                                         (reverse _%arg168710169094%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168702169081%_))
                                                        (let ((_%e168712169106%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168702169081%_))))
                  (let ((_%tl168714169111%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168712169106%_)))
                        (_%hd168713169109%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168712169106%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168713169109%_))
                        (let ((_%e168715169114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168713169109%_))))
                          (let ((_%tl168717169119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168715169114%_)))
                                (_%hd168716169117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168715169114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168716169117%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168716169117%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168717169119%_))
                                        (let ((_%e168718169122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168717169119%_))))
                                          (let ((_%tl168720169127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168718169122%_)))
                                                (_%hd168719169125%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168718169122%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168719169125%_))
                                                (let ((_%e168721169130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168719169125%_))))
                                                  (let ((_%tl168723169135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168721169130%_)))
                                                        (_%hd168722169133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168721169130%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168722169133%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168722169133%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168723169135%_))
                        (let ((_%e168724169138%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168723169135%_))))
                          (let ((_%tl168726169143%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168724169138%_)))
                                (_%hd168725169141%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168724169138%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168726169143%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168720169127%_))
                                    (let ((_%__splice171677171678%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl168720169127%_
                                              '0))))
                                      (let ((_%tl168729169148%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171677171678%_
                                                '1)))
                                            (_%target168727169146%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171677171678%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168729169148%_))
                                            (letrec ((_%loop168730169151%_
                                                      (lambda (_%hd168728169154%_
                                                               _%xarg168734169156%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd168728169154%_))
                                                            (let ((_%e168731169158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168728169154%_))))
                      (let ((_%lp-tl168733169163%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168731169158%_)))
                            (_%lp-hd168732169161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168731169158%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd168732169161%_))
                            (let ((_%e168736169166%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd168732169161%_))))
                              (let ((_%tl168738169171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168736169166%_)))
                                    (_%hd168737169169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168736169166%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168737169169%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd168737169169%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168738169171%_))
                                            (let ((_%e168739169174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168738169171%_))))
                                              (let ((_%tl168741169179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168739169174%_)))
                                                    (_%hd168740169177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168739169174%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168741169179%_))
                                                    (_%loop168730169151%_
                                                     _%lp-tl168733169163%_
                                                     (cons _%hd168740169177%_
                                                           _%xarg168734169156%_))
                                                    (_%__match171710171711%_
                                                     _%e168700169076%_
                                                     _%hd168701169079%_
                                                     _%tl168702169081%_
                                                     _%__splice171675171676%_
                                                     _%target168703169084%_
                                                     _%tl168705169086%_))))
                                            (_%__match171710171711%_
                                             _%e168700169076%_
                                             _%hd168701169079%_
                                             _%tl168702169081%_
                                             _%__splice171675171676%_
                                             _%target168703169084%_
                                             _%tl168705169086%_))
                                        (_%__match171710171711%_
                                         _%e168700169076%_
                                         _%hd168701169079%_
                                         _%tl168702169081%_
                                         _%__splice171675171676%_
                                         _%target168703169084%_
                                         _%tl168705169086%_))
                                    (_%__match171710171711%_
                                     _%e168700169076%_
                                     _%hd168701169079%_
                                     _%tl168702169081%_
                                     _%__splice171675171676%_
                                     _%target168703169084%_
                                     _%tl168705169086%_))))
                            (_%__match171710171711%_
                             _%e168700169076%_
                             _%hd168701169079%_
                             _%tl168702169081%_
                             _%__splice171675171676%_
                             _%target168703169084%_
                             _%tl168705169086%_))))
                    (let ((_%xarg168735169182%_
                           (reverse _%xarg168734169156%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168714169111%_))
                          (_%__kont171673171674%_
                           _%xarg168735169182%_
                           _%hd168725169141%_
                           _%arg168711169104%_)
                          (_%__match171710171711%_
                           _%e168700169076%_
                           _%hd168701169079%_
                           _%tl168702169081%_
                           _%__splice171675171676%_
                           _%target168703169084%_
                           _%tl168705169086%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop168730169151%_
                                               _%target168727169146%_
                                               '()))
                                            (_%__match171710171711%_
                                             _%e168700169076%_
                                             _%hd168701169079%_
                                             _%tl168702169081%_
                                             _%__splice171675171676%_
                                             _%target168703169084%_
                                             _%tl168705169086%_))))
                                    (_%__match171710171711%_
                                     _%e168700169076%_
                                     _%hd168701169079%_
                                     _%tl168702169081%_
                                     _%__splice171675171676%_
                                     _%target168703169084%_
                                     _%tl168705169086%_))
                                (_%__match171710171711%_
                                 _%e168700169076%_
                                 _%hd168701169079%_
                                 _%tl168702169081%_
                                 _%__splice171675171676%_
                                 _%target168703169084%_
                                 _%tl168705169086%_))))
                        (_%__match171710171711%_
                         _%e168700169076%_
                         _%hd168701169079%_
                         _%tl168702169081%_
                         _%__splice171675171676%_
                         _%target168703169084%_
                         _%tl168705169086%_))
                    (_%__match171710171711%_
                     _%e168700169076%_
                     _%hd168701169079%_
                     _%tl168702169081%_
                     _%__splice171675171676%_
                     _%target168703169084%_
                     _%tl168705169086%_))
                (_%__match171710171711%_
                 _%e168700169076%_
                 _%hd168701169079%_
                 _%tl168702169081%_
                 _%__splice171675171676%_
                 _%target168703169084%_
                 _%tl168705169086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171710171711%_
                                                 _%e168700169076%_
                                                 _%hd168701169079%_
                                                 _%tl168702169081%_
                                                 _%__splice171675171676%_
                                                 _%target168703169084%_
                                                 _%tl168705169086%_))))
                                        (_%__match171710171711%_
                                         _%e168700169076%_
                                         _%hd168701169079%_
                                         _%tl168702169081%_
                                         _%__splice171675171676%_
                                         _%target168703169084%_
                                         _%tl168705169086%_))
                                    (_%__match171710171711%_
                                     _%e168700169076%_
                                     _%hd168701169079%_
                                     _%tl168702169081%_
                                     _%__splice171675171676%_
                                     _%target168703169084%_
                                     _%tl168705169086%_))
                                (_%__match171710171711%_
                                 _%e168700169076%_
                                 _%hd168701169079%_
                                 _%tl168702169081%_
                                 _%__splice171675171676%_
                                 _%target168703169084%_
                                 _%tl168705169086%_))))
                        (_%__match171710171711%_
                         _%e168700169076%_
                         _%hd168701169079%_
                         _%tl168702169081%_
                         _%__splice171675171676%_
                         _%target168703169084%_
                         _%tl168705169086%_))))
                (_%__match171710171711%_
                 _%e168700169076%_
                 _%hd168701169079%_
                 _%tl168702169081%_
                 _%__splice171675171676%_
                 _%target168703169084%_
                 _%tl168705169086%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168706169089%_
                                     _%target168703169084%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171671171672%_))
                              (let ((_%e168700169076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171671171672%_))))
                                (let ((_%tl168702169081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168700169076%_)))
                                      (_%hd168701169079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168700169076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd168701169079%_))
                                      (let ((_%__splice171675171676%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd168701169079%_
                                                '0))))
                                        (let ((_%tl168705169086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171675171676%_
                                                  '1)))
                                              (_%target168703169084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171675171676%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168705169086%_))
                                              (_%__match171698171699%_
                                               _%e168700169076%_
                                               _%hd168701169079%_
                                               _%tl168702169081%_
                                               _%__splice171675171676%_
                                               _%target168703169084%_
                                               _%tl168705169086%_)
                                              (_%__match171710171711%_
                                               _%e168700169076%_
                                               _%hd168701169079%_
                                               _%tl168702169081%_
                                               _%__splice171675171676%_
                                               _%target168703169084%_
                                               _%tl168705169086%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168702169081%_))
                                          (let ((_%e168788168832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168702169081%_))))
                                            (let ((_%tl168790168837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168788168832%_)))
                                                  (_%hd168789168835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168788168832%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168789168835%_))
                                                  (let ((_%e168791168840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168789168835%_))))
                                                    (let ((_%tl168793168845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168791168840%_)))
                                                          (_%hd168792168843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168791168840%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd168792168843%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd168792168843%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168793168845%_))
                          (let ((_%e168794168848%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168793168845%_))))
                            (let ((_%tl168796168853%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168794168848%_)))
                                  (_%hd168795168851%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168794168848%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168795168851%_))
                                  (let ((_%e168797168856%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168795168851%_))))
                                    (let ((_%tl168799168861%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168797168856%_)))
                                          (_%hd168798168859%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168797168856%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd168798168859%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd168798168859%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl168799168861%_))
                                                  (let ((_%e168800168864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl168799168861%_))))
                                                    (let ((_%tl168802168869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168800168864%_)))
                                                          (_%hd168801168867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168800168864%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl168802168869%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168796168853%_))
                      (let ((_%e168803168872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168796168853%_))))
                        (let ((_%tl168805168877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168803168872%_)))
                              (_%hd168804168875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168803168872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd168804168875%_))
                              (let ((_%e168806168880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd168804168875%_))))
                                (let ((_%tl168808168885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168806168880%_)))
                                      (_%hd168807168883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168806168880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168807168883%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd168807168883%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168808168885%_))
                                              (let ((_%e168809168888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168808168885%_))))
                                                (let ((_%tl168811168893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168809168888%_)))
                                                      (_%hd168810168891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168809168888%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168811168893%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168805168877%_))
                                                          (let ((_%e168812168896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168805168877%_))))
                    (let ((_%tl168814168901%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168812168896%_)))
                          (_%hd168813168899%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168812168896%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168814168901%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168790168837%_))
                              (_%__kont171683171684%_
                               _%hd168810168891%_
                               _%hd168801168867%_
                               _%hd168701169079%_)
                              (let ()
                                (declare (not safe))
                                (_%g168695168819%_)))
                          (let () (declare (not safe)) (_%g168695168819%_)))))
                  (let () (declare (not safe)) (_%g168695168819%_)))
              (let () (declare (not safe)) (_%g168695168819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168695168819%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168695168819%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168695168819%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168695168819%_)))))
                      (let () (declare (not safe)) (_%g168695168819%_)))
                  (let () (declare (not safe)) (_%g168695168819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168695168819%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168695168819%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168695168819%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168695168819%_)))))
                          (let () (declare (not safe)) (_%g168695168819%_)))
                      (let () (declare (not safe)) (_%g168695168819%_)))
                  (let () (declare (not safe)) (_%g168695168819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168695168819%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168695168819%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168695168819%_))))))))
                 (_%generate1168542%_
                  (lambda (_%args168673%_
                           _%arglen168674%_
                           _%hd168675%_
                           _%body168676%_)
                    (let* ((_%len168678%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd168675%_)))
                           (_%condition168683%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd168675%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen168674%_
                                                (cons _%len168678%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen168674%_ (cons _%len168678%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len168678%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen168674%_
                                                    (cons _%len168678%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen168674%_ (cons _%len168678%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch168685%_
                            (if (_%dispatch-case?168540%_
                                 _%hd168675%_
                                 _%body168676%_)
                                (_%dispatch-case-e168541%_
                                 _%hd168675%_
                                 _%body168676%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self168537%_
                                 _%hd168675%_
                                 _%body168676%_))))
                      (cons _%condition168683%_
                            (cons (cons 'apply
                                        (cons _%dispatch168685%_
                                              (cons _%args168673%_ '())))
                                  '()))))))
          (let* ((_%g168544168572%_
                  (lambda (_%g168545168569%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168545168569%_))))
                 (_%g168543168670%_
                  (lambda (_%g168545168575%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168545168575%_))
                        (let ((_%e168548168577%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168545168575%_))))
                          (let ((_%hd168549168580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168548168577%_)))
                                (_%tl168550168582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168548168577%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl168550168582%_))
                                (let ((_g172840_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl168550168582%_
                                          '0))))
                                  (begin
                                    (let ((_g172841_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172840_)
                                                 (##values-length _g172840_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172841_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172841_)))
                                    (let ((_%target168551168585%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172840_ 0)))
                                          (_%tl168553168587%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172840_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168553168587%_))
                                          (letrec ((_%loop168554168590%_
                                                    (lambda (_%hd168552168593%_
                                                             _%body168558168595%_
                                                             _%hd168559168596%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd168552168593%_))
                                                          (let ((_%e168555168598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd168552168593%_))))
                    (let ((_%lp-hd168556168601%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168555168598%_)))
                          (_%lp-tl168557168603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168555168598%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd168556168601%_))
                          (let ((_%e168562168606%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd168556168601%_))))
                            (let ((_%hd168563168609%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168562168606%_)))
                                  (_%tl168564168611%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168562168606%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168564168611%_))
                                  (let ((_%e168565168614%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168564168611%_))))
                                    (let ((_%hd168566168617%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168565168614%_)))
                                          (_%tl168567168619%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168565168614%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168567168619%_))
                                          (_%loop168554168590%_
                                           _%lp-tl168557168603%_
                                           (cons _%hd168566168617%_
                                                 _%body168558168595%_)
                                           (cons _%hd168563168609%_
                                                 _%hd168559168596%_))
                                          (_%g168544168572%_
                                           _%g168545168575%_))))
                                  (_%g168544168572%_ _%g168545168575%_))))
                          (_%g168544168572%_ _%g168545168575%_))))
                  (let ((_%body168560168622%_ (reverse _%body168558168595%_))
                        (_%hd168561168623%_ (reverse _%hd168559168596%_)))
                    ((lambda (_%g168546168625%_ _%g168547168626%_)
                       (let ((_%args168645%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen168646%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name168647%_
                              (let ((_%$e168642%_
                                     (let ((__tmp172842
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp172842 _%stx168538%_))))
                                (if _%$e168642%_
                                    _%$e168642%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args168645%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen168646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args168645%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args168645%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp172846
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name168647%_
                                                                (cons _%args168645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp172843
                                  (map (lambda (_%g168648168651%_
                                                _%g168649168653%_)
                                         (_%generate1168542%_
                                          _%args168645%_
                                          _%arglen168646%_
                                          _%g168648168651%_
                                          _%g168649168653%_))
                                       (let ((__tmp172844
                                              (lambda (_%g168655168658%_
                                                       _%g168656168660%_)
                                                (cons _%g168655168658%_
                                                      _%g168656168660%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp172844
                                          '()
                                          _%g168547168626%_))
                                       (let ((__tmp172845
                                              (lambda (_%g168662168665%_
                                                       _%g168663168667%_)
                                                (cons _%g168662168665%_
                                                      _%g168663168667%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp172845
                                          '()
                                          _%g168546168625%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp172846 __tmp172843)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body168560168622%_
                     _%hd168561168623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop168554168590%_
                                             _%target168551168585%_
                                             '()
                                             '()))
                                          (_%g168544168572%_
                                           _%g168545168575%_)))))
                                (_%g168544168572%_ _%g168545168575%_))))
                        (_%g168544168572%_ _%g168545168575%_)))))
            (_%g168543168670%_ _%stx168538%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self167774%_ _%stx167775%_ _%compiled-body?167776%_)
        (letrec ((_%generate-simple167778%_
                  (lambda (_%hd168522%_ _%body168523%_)
                    (_%coalesce-boolean167779%_
                     (_%simplify-let167780%_
                      (gxc#generate-runtime-simple-let
                       _%self167774%_
                       'let
                       _%hd168522%_
                       _%body168523%_
                       _%compiled-body?167776%_)))))
                 (_%coalesce-boolean167779%_
                  (lambda (_%code168383%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code168384168410%_ _%code168383%_)
                               (_%else168386168418%_
                                (lambda () _%code168383%_))
                               (_%K168388168455%_
                                (lambda (_%expr2168421%_
                                         _%expr1168422%_
                                         _%id168423%_)
                                  (let* ((_%expr2168424168432%_
                                          _%expr2168421%_)
                                         (_%else168426168440%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1168422%_
                                                        (cons _%expr2168421%_
                                                              '())))))
                                         (_%K168428168445%_
                                          (lambda (_%exprs168443%_)
                                            (cons 'or
                                                  (cons _%expr1168422%_
                                                        _%exprs168443%_)))))
                                    (if (pair? _%expr2168424168432%_)
                                        (let ((_%hd168429168448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2168424168432%_)))
                                              (_%tl168430168450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2168424168432%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168429168448%_ 'or))
                                              (let ((_%exprs168453%_
                                                     _%tl168430168450%_))
                                                (_%K168428168445%_
                                                 _%exprs168453%_))
                                              (_%else168426168440%_)))
                                        (_%else168426168440%_))))))
                          (if (pair? _%code168384168410%_)
                              (let ((_%hd168389168458%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code168384168410%_)))
                                    (_%tl168390168460%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code168384168410%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd168389168458%_ 'let))
                                    (if (pair? _%tl168390168460%_)
                                        (let ((_%hd168391168463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl168390168460%_)))
                                              (_%tl168392168465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl168390168460%_))))
                                          (if (pair? _%hd168391168463%_)
                                              (let ((_%hd168403168468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd168391168463%_)))
                                                    (_%tl168404168470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd168391168463%_))))
                                                (if (pair? _%hd168403168468%_)
                                                    (let ((_%hd168405168473%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd168403168468%_)))
                                                          (_%tl168406168475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd168403168468%_))))
                                                      (let ((_%id168478%_
                                                             _%hd168405168473%_))
                                                        (if (pair? _%tl168406168475%_)
                                                            (let ((_%hd168407168480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl168406168475%_)))
                          (_%tl168408168482%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168406168475%_))))
                      (let ((_%expr1168485%_ _%hd168407168480%_))
                        (if (null? _%tl168408168482%_)
                            (if (null? _%tl168404168470%_)
                                (if (pair? _%tl168392168465%_)
                                    (let ((_%hd168393168487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl168392168465%_)))
                                          (_%tl168394168489%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl168392168465%_))))
                                      (if (pair? _%hd168393168487%_)
                                          (let ((_%hd168395168492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd168393168487%_)))
                                                (_%tl168396168494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd168393168487%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd168395168492%_
                                                         'if))
                                                (if (pair? _%tl168396168494%_)
                                                    (let ((_%hd168397168497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl168396168494%_)))
                                                          (_%tl168398168499%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl168396168494%_))))
                                                      (if ((lambda (_%g168501168503%_)
                                                             (eq? _%g168501168503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168478%_))
                   _%hd168397168497%_)
                  (if (pair? _%tl168398168499%_)
                      (let ((_%hd168399168506%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl168398168499%_)))
                            (_%tl168400168508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl168398168499%_))))
                        (if ((lambda (_%g168510168512%_)
                               (eq? _%g168510168512%_ _%id168478%_))
                             _%hd168399168506%_)
                            (if (pair? _%tl168400168508%_)
                                (let ((_%hd168401168515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168400168508%_)))
                                      (_%tl168402168517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168400168508%_))))
                                  (let ((_%expr2168520%_ _%hd168401168515%_))
                                    (if (null? _%tl168402168517%_)
                                        (if (null? _%tl168394168489%_)
                                            (_%K168388168455%_
                                             _%expr2168520%_
                                             _%expr1168485%_
                                             _%id168478%_)
                                            (_%else168386168418%_))
                                        (_%else168386168418%_))))
                                (_%else168386168418%_))
                            (_%else168386168418%_)))
                      (_%else168386168418%_))
                  (_%else168386168418%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168386168418%_))
                                                (_%else168386168418%_)))
                                          (_%else168386168418%_)))
                                    (_%else168386168418%_))
                                (_%else168386168418%_))
                            (_%else168386168418%_))))
                    (_%else168386168418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168386168418%_)))
                                              (_%else168386168418%_)))
                                        (_%else168386168418%_))
                                    (_%else168386168418%_)))
                              (_%else168386168418%_)))
                        _%code168383%_)))
                 (_%simplify-let167780%_
                  (lambda (_%code168082%_)
                    (let* ((_%code168083168155%_ _%code168082%_)
                           (_%else168088168163%_ (lambda () _%code168082%_)))
                      (let ((_%K168147168363%_
                             (lambda (_%expr168361%_) _%expr168361%_))
                            (_%K168130168309%_
                             (lambda (_%body168305%_
                                      _%expr168306%_
                                      _%id168307%_)
                               (cons 'let
                                     (cons (cons (cons _%id168307%_
                                                       (cons _%expr168306%_
                                                             '()))
                                                 '())
                                           _%body168305%_))))
                            (_%K168107168233%_
                             (lambda (_%body168227%_
                                      _%expr2168228%_
                                      _%id2168229%_
                                      _%expr1168230%_
                                      _%id1168231%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168231%_
                                                       (cons _%expr1168230%_
                                                             '()))
                                                 (cons (cons _%id2168229%_
                                                             (cons _%expr2168228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body168227%_))))
                            (_%K168090168172%_
                             (lambda (_%body168167%_
                                      _%bind168168%_
                                      _%expr1168169%_
                                      _%id1168170%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168170%_
                                                       (cons _%expr1168169%_
                                                             '()))
                                                 _%bind168168%_)
                                           _%body168167%_)))))
                        (if (pair? _%code168083168155%_)
                            (let ((_%tl168149168368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code168083168155%_)))
                                  (_%hd168148168366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code168083168155%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd168148168366%_ 'let))
                                  (if (pair? _%tl168149168368%_)
                                      (let ((_%tl168151168373%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl168149168368%_)))
                                            (_%hd168150168371%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl168149168368%_))))
                                        (if (null? _%hd168150168371%_)
                                            (if (pair? _%tl168151168373%_)
                                                (let ((_%tl168153168378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl168151168373%_)))
                                                      (_%hd168152168376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl168151168373%_))))
                                                  (if (null? _%tl168153168378%_)
                                                      (let ((_%expr168381%_
                                                             _%hd168152168376%_))
                                                        (_%K168147168363%_
                                                         _%expr168381%_))
                                                      (_%else168088168163%_)))
                                                (_%else168088168163%_))
                                            (if (pair? _%hd168150168371%_)
                                                (let ((_%tl168142168324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168150168371%_)))
                                                      (_%hd168141168322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168150168371%_))))
                                                  (if (pair? _%hd168141168322%_)
                                                      (let ((_%tl168144168329%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd168141168322%_)))
                    (_%hd168143168327%_
                     (let () (declare (not safe)) (##car _%hd168141168322%_))))
                (if (pair? _%tl168144168329%_)
                    (let ((_%tl168146168336%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168144168329%_)))
                          (_%hd168145168334%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl168144168329%_))))
                      (if (null? _%tl168146168336%_)
                          (if (null? _%tl168142168324%_)
                              (if (pair? _%tl168151168373%_)
                                  (let ((_%tl168136168343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl168151168373%_)))
                                        (_%hd168135168341%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl168151168373%_))))
                                    (if (pair? _%hd168135168341%_)
                                        (let ((_%tl168138168348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd168135168341%_)))
                                              (_%hd168137168346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd168135168341%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168137168346%_
                                                       'let))
                                              (if (pair? _%tl168138168348%_)
                                                  (let ((_%tl168140168353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl168138168348%_)))
                                                        (_%hd168139168351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl168138168348%_))))
                                                    (if (null? _%hd168139168351%_)
                                                        (if (null? _%tl168136168343%_)
                                                            (let ((_%id168332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd168143168327%_)
                          (_%expr168339%_ _%hd168145168334%_)
                          (_%body168356%_ _%tl168140168353%_))
                      (_%K168130168309%_
                       _%body168356%_
                       _%expr168339%_
                       _%id168332%_))
                    (_%else168088168163%_))
                (if (pair? _%hd168139168351%_)
                    (let ((_%tl168119168282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd168139168351%_)))
                          (_%hd168118168280%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd168139168351%_))))
                      (if (pair? _%hd168118168280%_)
                          (let ((_%tl168121168287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd168118168280%_)))
                                (_%hd168120168285%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd168118168280%_))))
                            (if (pair? _%tl168121168287%_)
                                (let ((_%tl168123168294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168121168287%_)))
                                      (_%hd168122168292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168121168287%_))))
                                  (if (null? _%tl168123168294%_)
                                      (if (null? _%tl168119168282%_)
                                          (if (null? _%tl168136168343%_)
                                              (let ((_%id1168256%_
                                                     _%hd168143168327%_)
                                                    (_%expr1168263%_
                                                     _%hd168145168334%_)
                                                    (_%id2168290%_
                                                     _%hd168120168285%_)
                                                    (_%expr2168297%_
                                                     _%hd168122168292%_)
                                                    (_%body168299%_
                                                     _%tl168140168353%_))
                                                (_%K168107168233%_
                                                 _%body168299%_
                                                 _%expr2168297%_
                                                 _%id2168290%_
                                                 _%expr1168263%_
                                                 _%id1168256%_))
                                              (_%else168088168163%_))
                                          (_%else168088168163%_))
                                      (_%else168088168163%_)))
                                (_%else168088168163%_)))
                          (_%else168088168163%_)))
                    (_%else168088168163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168088168163%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd168137168346%_
                                                           'let*))
                                                  (if (pair? _%tl168138168348%_)
                                                      (let ((_%tl168100168216%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl168138168348%_)))
                    (_%hd168099168214%_
                     (let () (declare (not safe)) (##car _%tl168138168348%_))))
                (if (null? _%tl168136168343%_)
                    (let ((_%id1168195%_ _%hd168143168327%_)
                          (_%expr1168202%_ _%hd168145168334%_)
                          (_%bind168219%_ _%hd168099168214%_)
                          (_%body168221%_ _%tl168100168216%_))
                      (_%K168090168172%_
                       _%body168221%_
                       _%bind168219%_
                       _%expr1168202%_
                       _%id1168195%_))
                    (_%else168088168163%_)))
              (_%else168088168163%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168088168163%_))))
                                        (_%else168088168163%_)))
                                  (_%else168088168163%_))
                              (_%else168088168163%_))
                          (_%else168088168163%_)))
                    (_%else168088168163%_)))
              (_%else168088168163%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else168088168163%_))))
                                      (_%else168088168163%_))
                                  (_%else168088168163%_)))
                            (_%else168088168163%_))))))
                 (_%generate-values167781%_
                  (lambda (_%hd167895%_ _%body167896%_)
                    (let _%lp167898%_ ((_%rest167900%_ _%hd167895%_)
                                       (_%bind167901%_ '())
                                       (_%check167902%_ '())
                                       (_%post167903%_ '()))
                      (let* ((_%__stx172000172001%_ _%rest167900%_)
                             (_%g167906167917%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172000172001%_)))))
                        (let ((_%__kont172002172003%_
                               (lambda (_%g167908167944%_ _%g167909167945%_)
                                 (let* ((_%__stx171956171957%_
                                         _%g167909167945%_)
                                        (_%g167960167985%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx171956171957%_)))))
                                   (let ((_%__kont171958171959%_
                                          (lambda (_%g167962168058%_
                                                   _%g167963168059%_)
                                            (let ((_%eid168073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167963168059%_)))
                                                  (_%expr168074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167774%_
                                                      _%g167962168058%_))))
                                              (_%lp167898%_
                                               _%g167908167944%_
                                               (cons (cons _%eid168073%_
                                                           (cons _%expr168074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167901%_)
                                               _%check167902%_
                                               _%post167903%_))))
                                         (_%__kont171960171961%_
                                          (lambda (_%g167973168006%_
                                                   _%g167974168007%_)
                                            (let* ((_%vals168020%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values168022%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals168020%_
                                                     _%g167974168007%_
                                                     _%g167973168006%_))
                                                   (_%refs168024%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals168020%_
                                                     _%g167974168007%_))
                                                   (_%expr168026%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167774%_
                                                       _%g167973168006%_))))
                                              (_%lp167898%_
                                               _%g167908167944%_
                                               (cons (cons _%vals168020%_
                                                           (cons _%expr168026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167901%_)
                                               (cons _%check-values168022%_
                                                     _%check167902%_)
                                               (cons _%refs168024%_
                                                     _%post167903%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx171956171957%_))
                                         (let ((_%e167964168034%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx171956171957%_))))
                                           (let ((_%tl167966168039%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167964168034%_)))
                                                 (_%hd167965168037%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167964168034%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167965168037%_))
                                                 (let ((_%e167967168042%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167965168037%_))))
                                                   (let ((_%tl167969168047%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167967168042%_)))
                                                         (_%hd167968168045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167967168042%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167969168047%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167966168039%_))
                     (let ((_%e167970168050%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167966168039%_))))
                       (let ((_%tl167972168055%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167970168050%_)))
                             (_%hd167971168053%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167970168050%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167972168055%_))
                             (_%__kont171958171959%_
                              _%hd167971168053%_
                              _%hd167968168045%_)
                             (let ()
                               (declare (not safe))
                               (_%g167960167985%_)))))
                     (let () (declare (not safe)) (_%g167960167985%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167966168039%_))
                     (let ((_%e167978167998%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167966168039%_))))
                       (let ((_%tl167980168003%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167978167998%_)))
                             (_%hd167979168001%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167978167998%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167980168003%_))
                             (_%__kont171960171961%_
                              _%hd167979168001%_
                              _%hd167965168037%_)
                             (let ()
                               (declare (not safe))
                               (_%g167960167985%_)))))
                     (let () (declare (not safe)) (_%g167960167985%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167966168039%_))
                                                     (let ((_%e167978167998%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167966168039%_))))
                                                       (let ((_%tl167980168003%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167978167998%_)))
                     (_%hd167979168001%_
                      (let () (declare (not safe)) (##car _%e167978167998%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167980168003%_))
                     (_%__kont171960171961%_
                      _%hd167979168001%_
                      _%hd167965168037%_)
                     (let () (declare (not safe)) (_%g167960167985%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167960167985%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167960167985%_)))))))
                              (_%__kont172004172005%_
                               (lambda ()
                                 (let* ((_%body167924%_
                                         (if _%compiled-body?167776%_
                                             _%body167896%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167774%_
                                                _%body167896%_))))
                                        (_%body167926%_
                                         (_%generate-values-post167782%_
                                          _%post167903%_
                                          _%body167924%_))
                                        (_%body167928%_
                                         (_%generate-values-check167783%_
                                          _%check167902%_
                                          _%body167926%_)))
                                   (cons 'let
                                         (cons (reverse _%bind167901%_)
                                               (cons _%body167928%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172000172001%_))
                              (let ((_%e167910167936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172000172001%_))))
                                (let ((_%tl167912167941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167910167936%_)))
                                      (_%hd167911167939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167910167936%_))))
                                  (_%__kont172002172003%_
                                   _%tl167912167941%_
                                   _%hd167911167939%_)))
                              (_%__kont172004172005%_)))))))
                 (_%generate-values-post167782%_
                  (lambda (_%post167854%_ _%body167855%_)
                    (let _%lp167857%_ ((_%rest167859%_ _%post167854%_)
                                       (_%body167860%_ _%body167855%_))
                      (let* ((_%rest167861167869%_ _%rest167859%_)
                             (_%else167863167877%_ (lambda () _%body167860%_))
                             (_%K167865167883%_
                              (lambda (_%rest167880%_ _%bind167881%_)
                                (_%lp167857%_
                                 _%rest167880%_
                                 (cons 'let
                                       (cons _%bind167881%_
                                             (cons _%body167860%_ '())))))))
                        (if (pair? _%rest167861167869%_)
                            (let ((_%hd167866167886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167861167869%_)))
                                  (_%tl167867167888%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167861167869%_))))
                              (let* ((_%bind167891%_ _%hd167866167886%_)
                                     (_%rest167893%_ _%tl167867167888%_))
                                (_%K167865167883%_
                                 _%rest167893%_
                                 _%bind167891%_)))
                            (_%else167863167877%_))))))
                 (_%generate-values-check167783%_
                  (lambda (_%check167851%_ _%body167852%_)
                    (cons 'begin
                          (let ((__tmp172848 (cons _%body167852%_ '()))
                                (__tmp172847 (reverse _%check167851%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp172848 __tmp172847))))))
          (let* ((_%g167785167802%_
                  (lambda (_%g167786167799%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167786167799%_))))
                 (_%g167784167848%_
                  (lambda (_%g167786167805%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167786167805%_))
                        (let ((_%e167789167807%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167786167805%_))))
                          (let ((_%hd167790167810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167789167807%_)))
                                (_%tl167791167812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167789167807%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167791167812%_))
                                (let ((_%e167792167815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167791167812%_))))
                                  (let ((_%hd167793167818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167792167815%_)))
                                        (_%tl167794167820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167792167815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167794167820%_))
                                        (let ((_%e167795167823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167794167820%_))))
                                          (let ((_%hd167796167826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167795167823%_)))
                                                (_%tl167797167828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167795167823%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167797167828%_))
                                                ((lambda (_%g167787167831%_
                                                          _%g167788167832%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167788167832%_)
                                                       (_%generate-simple167778%_
                                                        _%g167788167832%_
                                                        _%g167787167831%_)
                                                       (_%generate-values167781%_
                                                        _%g167788167832%_
                                                        _%g167787167831%_)))
                                                 _%hd167796167826%_
                                                 _%hd167793167818%_)
                                                (_%g167785167802%_
                                                 _%g167786167805%_))))
                                        (_%g167785167802%_
                                         _%g167786167805%_))))
                                (_%g167785167802%_ _%g167786167805%_))))
                        (_%g167785167802%_ _%g167786167805%_)))))
            (_%g167784167848%_ _%stx167775%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self168528%_ _%stx168529%_)
        (let ((_%compiled-body?168531%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self168528%_
           _%stx168529%_
           _%compiled-body?168531%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g172849_
        (let ((_g172850_ (let () (declare (not safe)) (##length _g172849_))))
          (cond ((let () (declare (not safe)) (##fx= _g172850_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g172849_))
                ((let () (declare (not safe)) (##fx= _g172850_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g172849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g172849_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals167668%_ _%hd167669%_)
        (let _%lp167671%_ ((_%rest167673%_ _%hd167669%_)
                           (_%k167674%_ '0)
                           (_%r167675%_ '()))
          (let* ((_%__stx172014172015%_ _%rest167673%_)
                 (_%g167680167697%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172014172015%_)))))
            (let ((_%__kont172016172017%_
                   (lambda (_%g167682167760%_)
                     (_%lp167671%_
                      _%g167682167760%_
                      (let () (declare (not safe)) (##fx+ _%k167674%_ '1))
                      _%r167675%_)))
                  (_%__kont172018172019%_
                   (lambda (_%g167687167733%_ _%g167688167734%_)
                     (_%lp167671%_
                      _%g167687167733%_
                      (let () (declare (not safe)) (##fx+ _%k167674%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g167688167734%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals167668%_
                                         _%k167674%_
                                         _%g167687167733%_)
                                        '()))
                            _%r167675%_))))
                  (_%__kont172020172021%_
                   (lambda (_%g167692167709%_)
                     (let ((__tmp172851
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g167692167709%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals167668%_
                                               _%k167674%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp172851 _%r167675%_))))
                  (_%__kont172022172023%_ (lambda () (reverse _%r167675%_))))
              (let ((_%g167678167720%_
                     (lambda ()
                       (let ((_%g167692167709%_ _%__stx172014172015%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g167692167709%_))
                             (_%__kont172020172021%_ _%g167692167709%_)
                             (_%__kont172022172023%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172014172015%_))
                    (let ((_%e167683167749%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172014172015%_))))
                      (let ((_%tl167685167754%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167683167749%_)))
                            (_%hd167684167752%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167683167749%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd167684167752%_))
                            (let ((_%e167686167757%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167684167752%_))))
                              (if (equal? _%e167686167757%_ '#f)
                                  (_%__kont172016172017%_ _%tl167685167754%_)
                                  (_%__kont172018172019%_
                                   _%tl167685167754%_
                                   _%hd167684167752%_)))
                            (_%__kont172018172019%_
                             _%tl167685167754%_
                             _%hd167684167752%_))))
                    (let () (declare (not safe)) (_%g167678167720%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self167347%_ _%stx167348%_ _%compiled-body?167349%_)
        (letrec ((_%generate-simple167351%_
                  (lambda (_%hd167653%_ _%body167654%_)
                    (gxc#generate-runtime-simple-let
                     _%self167347%_
                     'letrec
                     _%hd167653%_
                     _%body167654%_
                     _%compiled-body?167349%_)))
                 (_%generate-values167352%_
                  (lambda (_%hd167432%_ _%body167433%_)
                    (let _%lp167435%_ ((_%rest167437%_ _%hd167432%_)
                                       (_%bind167438%_ '())
                                       (_%check167439%_ '())
                                       (_%post167440%_ '()))
                      (let* ((_%__stx172088172089%_ _%rest167437%_)
                             (_%g167443167454%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172088172089%_)))))
                        (let ((_%__kont172090172091%_
                               (lambda (_%g167445167481%_ _%g167446167482%_)
                                 (let* ((_%__stx172044172045%_
                                         _%g167446167482%_)
                                        (_%g167497167522%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172044172045%_)))))
                                   (let ((_%__kont172046172047%_
                                          (lambda (_%g167499167629%_
                                                   _%g167500167630%_)
                                            (let ((_%eid167644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167500167630%_)))
                                                  (_%expr167645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167347%_
                                                      _%g167499167629%_))))
                                              (_%lp167435%_
                                               _%g167445167481%_
                                               (cons (cons _%eid167644%_
                                                           (cons _%expr167645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167438%_)
                                               _%check167439%_
                                               _%post167440%_))))
                                         (_%__kont172048172049%_
                                          (lambda (_%g167510167543%_
                                                   _%g167511167544%_)
                                            (let* ((_%vals167557%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values167559%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals167557%_
                                                     _%g167511167544%_
                                                     _%g167510167543%_))
                                                   (_%refs167561%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals167557%_
                                                     _%g167511167544%_))
                                                   (_%expr167563%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167347%_
                                                       _%g167510167543%_))))
                                              (_%lp167435%_
                                               _%g167445167481%_
                                               (let ((__tmp172853
                                                      (cons (cons _%vals167557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr167563%_ '()))
                    _%bind167438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp172852
                                                      (map (lambda (_%e167565167567%_)
                                                             (let* ((_%e167565167569167578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e167565167567%_)
                            (_%E167571167582%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e167565167569167578%_
                                        '([eid _])))
                               '#!void))
                            (_%K167572167587%_
                             (lambda (_%eid167585%_)
                               (cons _%eid167585%_ (cons '#!void '())))))
                       (if (pair? _%e167565167569167578%_)
                           (let ((_%hd167573167590%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e167565167569167578%_)))
                                 (_%tl167574167592%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e167565167569167578%_))))
                             (let ((_%eid167595%_ _%hd167573167590%_))
                               (if (pair? _%tl167574167592%_)
                                   (let ((_%tl167576167597%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl167574167592%_))))
                                     (if (null? _%tl167576167597%_)
                                         (_%K167572167587%_ _%eid167595%_)
                                         (_%E167571167582%_)))
                                   (_%E167571167582%_))))
                           (_%E167571167582%_))))
                   _%refs167561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp172853
                                                  __tmp172852))
                                               (cons _%check-values167559%_
                                                     _%check167439%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs167561%_
                                                  _%post167440%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172044172045%_))
                                         (let ((_%e167501167605%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172044172045%_))))
                                           (let ((_%tl167503167610%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167501167605%_)))
                                                 (_%hd167502167608%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167501167605%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167502167608%_))
                                                 (let ((_%e167504167613%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167502167608%_))))
                                                   (let ((_%tl167506167618%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167504167613%_)))
                                                         (_%hd167505167616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167504167613%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167506167618%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167503167610%_))
                     (let ((_%e167507167621%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167503167610%_))))
                       (let ((_%tl167509167626%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167507167621%_)))
                             (_%hd167508167624%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167507167621%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167509167626%_))
                             (_%__kont172046172047%_
                              _%hd167508167624%_
                              _%hd167505167616%_)
                             (let ()
                               (declare (not safe))
                               (_%g167497167522%_)))))
                     (let () (declare (not safe)) (_%g167497167522%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167503167610%_))
                     (let ((_%e167515167535%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167503167610%_))))
                       (let ((_%tl167517167540%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167515167535%_)))
                             (_%hd167516167538%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167515167535%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167517167540%_))
                             (_%__kont172048172049%_
                              _%hd167516167538%_
                              _%hd167502167608%_)
                             (let ()
                               (declare (not safe))
                               (_%g167497167522%_)))))
                     (let () (declare (not safe)) (_%g167497167522%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167503167610%_))
                                                     (let ((_%e167515167535%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167503167610%_))))
                                                       (let ((_%tl167517167540%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167515167535%_)))
                     (_%hd167516167538%_
                      (let () (declare (not safe)) (##car _%e167515167535%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167517167540%_))
                     (_%__kont172048172049%_
                      _%hd167516167538%_
                      _%hd167502167608%_)
                     (let () (declare (not safe)) (_%g167497167522%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167497167522%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167497167522%_)))))))
                              (_%__kont172092172093%_
                               (lambda ()
                                 (let* ((_%body167461%_
                                         (if _%compiled-body?167349%_
                                             _%body167433%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167347%_
                                                _%body167433%_))))
                                        (_%body167463%_
                                         (_%generate-values-post167354%_
                                          _%post167440%_
                                          _%body167461%_))
                                        (_%body167465%_
                                         (_%generate-values-check167353%_
                                          _%check167439%_
                                          _%body167463%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind167438%_)
                                               (cons _%body167465%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172088172089%_))
                              (let ((_%e167447167473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172088172089%_))))
                                (let ((_%tl167449167478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167447167473%_)))
                                      (_%hd167448167476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167447167473%_))))
                                  (_%__kont172090172091%_
                                   _%tl167449167478%_
                                   _%hd167448167476%_)))
                              (_%__kont172092172093%_)))))))
                 (_%generate-values-check167353%_
                  (lambda (_%check167429%_ _%body167430%_)
                    (cons 'begin
                          (let ((__tmp172855 (cons _%body167430%_ '()))
                                (__tmp172854 (reverse _%check167429%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp172855 __tmp172854)))))
                 (_%generate-values-post167354%_
                  (lambda (_%post167422%_ _%body167423%_)
                    (cons 'begin
                          (let ((__tmp172859 (cons _%body167423%_ '()))
                                (__tmp172856
                                 (let ((__tmp172858
                                        (lambda (_%g167424167426%_)
                                          (cons 'set! _%g167424167426%_)))
                                       (__tmp172857 (reverse _%post167422%_)))
                                   (declare (not safe))
                                   (##map __tmp172858 __tmp172857))))
                            (declare (not safe))
                            (__foldr1 cons __tmp172859 __tmp172856))))))
          (let* ((_%g167356167373%_
                  (lambda (_%g167357167370%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167357167370%_))))
                 (_%g167355167419%_
                  (lambda (_%g167357167376%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167357167376%_))
                        (let ((_%e167360167378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167357167376%_))))
                          (let ((_%hd167361167381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167360167378%_)))
                                (_%tl167362167383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167360167378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167362167383%_))
                                (let ((_%e167363167386%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167362167383%_))))
                                  (let ((_%hd167364167389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167363167386%_)))
                                        (_%tl167365167391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167363167386%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167365167391%_))
                                        (let ((_%e167366167394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167365167391%_))))
                                          (let ((_%hd167367167397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167366167394%_)))
                                                (_%tl167368167399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167366167394%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167368167399%_))
                                                ((lambda (_%g167358167402%_
                                                          _%g167359167403%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167359167403%_)
                                                       (_%generate-simple167351%_
                                                        _%g167359167403%_
                                                        _%g167358167402%_)
                                                       (_%generate-values167352%_
                                                        _%g167359167403%_
                                                        _%g167358167402%_)))
                                                 _%hd167367167397%_
                                                 _%hd167364167389%_)
                                                (_%g167356167373%_
                                                 _%g167357167376%_))))
                                        (_%g167356167373%_
                                         _%g167357167376%_))))
                                (_%g167356167373%_ _%g167357167376%_))))
                        (_%g167356167373%_ _%g167357167376%_)))))
            (_%g167355167419%_ _%stx167348%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self167659%_ _%stx167660%_)
        (let ((_%compiled-body?167662%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self167659%_
           _%stx167660%_
           _%compiled-body?167662%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g172860_
        (let ((_g172861_ (let () (declare (not safe)) (##length _g172860_))))
          (cond ((let () (declare (not safe)) (##fx= _g172861_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g172860_))
                ((let () (declare (not safe)) (##fx= _g172861_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g172860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g172860_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self166928%_ _%stx166929%_)
        (letrec ((_%generate-values166931%_
                  (lambda (_%hd167174%_ _%body167175%_)
                    (let _%lp167177%_ ((_%rest167179%_ _%hd167174%_)
                                       (_%bind167180%_ '()))
                      (let* ((_%rest167181167189%_ _%rest167179%_)
                             (_%else167183167200%_
                              (lambda ()
                                (let ((_%bind167197%_ (reverse _%bind167180%_))
                                      (_%body167198%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self166928%_
                                          _%body167175%_))))
                                  (cons 'letrec*
                                        (cons _%bind167197%_
                                              (cons _%body167198%_ '()))))))
                             (_%K167185167334%_
                              (lambda (_%rest167203%_ _%hd-bind167204%_)
                                (let* ((_%__stx172102172103%_
                                        _%hd-bind167204%_)
                                       (_%g167207167232%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172102172103%_)))))
                                  (let ((_%__kont172104172105%_
                                         (lambda (_%g167209167313%_
                                                  _%g167210167314%_)
                                           (let ((_%eid167328%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g167210167314%_)))
                                                 (_%expr167329%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self166928%_
                                                     _%g167209167313%_))))
                                             (_%lp167177%_
                                              _%rest167203%_
                                              (cons (cons _%eid167328%_
                                                          (cons _%expr167329%_
                                                                '()))
                                                    _%bind167180%_)))))
                                        (_%__kont172106172107%_
                                         (lambda (_%g167220167253%_
                                                  _%g167221167254%_)
                                           (let* ((_%vals167273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp167275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values167277%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp167275%_
                                                    _%g167221167254%_
                                                    _%g167220167253%_))
                                                  (_%refs167279%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals167273%_
                                                    _%g167221167254%_))
                                                  (_%expr167281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self166928%_
                                                      _%g167220167253%_))))
                                             (_%lp167177%_
                                              _%rest167203%_
                                              (let ((__tmp172862
                                                     (cons (cons _%vals167273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp167275%_
                                                       (cons _%expr167281%_
                                                             '()))
                                                 '())
                                           (cons _%check-values167277%_
                                                 (cons _%tmp167275%_ '()))))
                               '()))
                   _%bind167180%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp172862
                                                 _%refs167279%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx172102172103%_))
                                        (let ((_%e167211167289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx172102172103%_))))
                                          (let ((_%tl167213167294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167211167289%_)))
                                                (_%hd167212167292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167211167289%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167212167292%_))
                                                (let ((_%e167214167297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167212167292%_))))
                                                  (let ((_%tl167216167302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167214167297%_)))
                                                        (_%hd167215167300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167214167297%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167216167302%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167213167294%_))
                                                            (let ((_%e167217167305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167213167294%_))))
                      (let ((_%tl167219167310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167217167305%_)))
                            (_%hd167218167308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167217167305%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167219167310%_))
                            (_%__kont172104172105%_
                             _%hd167218167308%_
                             _%hd167215167300%_)
                            (let ()
                              (declare (not safe))
                              (_%g167207167232%_)))))
                    (let () (declare (not safe)) (_%g167207167232%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl167213167294%_))
                    (let ((_%e167225167245%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167213167294%_))))
                      (let ((_%tl167227167250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167225167245%_)))
                            (_%hd167226167248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167225167245%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167227167250%_))
                            (_%__kont172106172107%_
                             _%hd167226167248%_
                             _%hd167212167292%_)
                            (let ()
                              (declare (not safe))
                              (_%g167207167232%_)))))
                    (let () (declare (not safe)) (_%g167207167232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167213167294%_))
                                                    (let ((_%e167225167245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167213167294%_))))
                                                      (let ((_%tl167227167250%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167225167245%_)))
                    (_%hd167226167248%_
                     (let () (declare (not safe)) (##car _%e167225167245%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167227167250%_))
                    (_%__kont172106172107%_
                     _%hd167226167248%_
                     _%hd167212167292%_)
                    (let () (declare (not safe)) (_%g167207167232%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167207167232%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167207167232%_))))))))
                        (if (pair? _%rest167181167189%_)
                            (let ((_%hd167186167337%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167181167189%_)))
                                  (_%tl167187167339%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167181167189%_))))
                              (let* ((_%hd-bind167342%_ _%hd167186167337%_)
                                     (_%rest167344%_ _%tl167187167339%_))
                                (_%K167185167334%_
                                 _%rest167344%_
                                 _%hd-bind167342%_)))
                            (_%else167183167200%_))))))
                 (_%generate-letrec?166932%_
                  (lambda (_%hd167064%_)
                    (let _%lp167066%_ ((_%rest167068%_ _%hd167064%_))
                      (let* ((_%rest167069167077%_ _%rest167068%_)
                             (_%else167071167085%_ (lambda () '#t))
                             (_%K167073167162%_
                              (lambda (_%rest167088%_ _%hd-bind167089%_)
                                (let* ((_%g167091167108%_
                                        (lambda (_%g167092167105%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g167092167105%_))))
                                       (_%g167090167159%_
                                        (lambda (_%g167092167111%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g167092167111%_))
                                              (let ((_%e167095167113%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g167092167111%_))))
                                                (let ((_%hd167096167116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167095167113%_)))
                                                      (_%tl167097167118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167095167113%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd167096167116%_))
                                                      (let ((_%e167098167121%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd167096167116%_))))
                (let ((_%hd167099167124%_
                       (let () (declare (not safe)) (##car _%e167098167121%_)))
                      (_%tl167100167126%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e167098167121%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167100167126%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167097167118%_))
                          (let ((_%e167101167129%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167097167118%_))))
                            (let ((_%hd167102167132%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167101167129%_)))
                                  (_%tl167103167134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167101167129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167103167134%_))
                                  ((lambda (_%g167093167137%_
                                            _%g167094167138%_)
                                     (if (_%is-lambda-expr?166933%_
                                          _%g167093167137%_)
                                         (_%lp167066%_ _%rest167088%_)
                                         '#f))
                                   _%hd167102167132%_
                                   _%hd167099167124%_)
                                  (_%g167091167108%_ _%g167092167111%_))))
                          (_%g167091167108%_ _%g167092167111%_))
                      (_%g167091167108%_ _%g167092167111%_))))
              (_%g167091167108%_ _%g167092167111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g167091167108%_
                                               _%g167092167111%_)))))
                                  (_%g167090167159%_ _%hd-bind167089%_)))))
                        (if (pair? _%rest167069167077%_)
                            (let ((_%hd167074167165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167069167077%_)))
                                  (_%tl167075167167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167069167077%_))))
                              (let* ((_%hd-bind167170%_ _%hd167074167165%_)
                                     (_%rest167172%_ _%tl167075167167%_))
                                (_%K167073167162%_
                                 _%rest167172%_
                                 _%hd-bind167170%_)))
                            (_%else167071167085%_))))))
                 (_%is-lambda-expr?166933%_
                  (lambda (_%expr167001%_)
                    (let* ((_%__stx172146172147%_ _%expr167001%_)
                           (_%g167004167018%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx172146172147%_)))))
                      (let ((_%__kont172148172149%_
                             (lambda (_%g167006167046%_ _%g167007167047%_)
                               '#t))
                            (_%__kont172150172151%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx172146172147%_))
                            (let ((_%e167008167030%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx172146172147%_))))
                              (let ((_%tl167010167035%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167008167030%_)))
                                    (_%hd167009167033%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167008167030%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167009167033%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd167009167033%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167010167035%_))
                                            (let ((_%e167011167038%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167010167035%_))))
                                              (let ((_%tl167013167043%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167011167038%_)))
                                                    (_%hd167012167041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167011167038%_))))
                                                (_%__kont172148172149%_
                                                 _%tl167013167043%_
                                                 _%hd167012167041%_)))
                                            (_%__kont172150172151%_))
                                        (_%__kont172150172151%_))
                                    (_%__kont172150172151%_))))
                            (_%__kont172150172151%_)))))))
          (let* ((_%g166935166952%_
                  (lambda (_%g166936166949%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166936166949%_))))
                 (_%g166934166998%_
                  (lambda (_%g166936166955%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166936166955%_))
                        (let ((_%e166939166957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166936166955%_))))
                          (let ((_%hd166940166960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166939166957%_)))
                                (_%tl166941166962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166939166957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166941166962%_))
                                (let ((_%e166942166965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166941166962%_))))
                                  (let ((_%hd166943166968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166942166965%_)))
                                        (_%tl166944166970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166942166965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl166944166970%_))
                                        (let ((_%e166945166973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl166944166970%_))))
                                          (let ((_%hd166946166976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166945166973%_)))
                                                (_%tl166947166978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166945166973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166947166978%_))
                                                ((lambda (_%g166937166981%_
                                                          _%g166938166982%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g166938166982%_)
                                                       (if (_%generate-letrec?166932%_
                                                            _%g166938166982%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self166928%_
                                                            'letrec
                                                            _%g166938166982%_
                                                            _%g166937166981%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self166928%_
                                                            'letrec*
                                                            _%g166938166982%_
                                                            _%g166937166981%_
                                                            '#f))
                                                       (_%generate-values166931%_
                                                        _%g166938166982%_
                                                        _%g166937166981%_)))
                                                 _%hd166946166976%_
                                                 _%hd166943166968%_)
                                                (_%g166935166952%_
                                                 _%g166936166955%_))))
                                        (_%g166935166952%_
                                         _%g166936166955%_))))
                                (_%g166935166952%_ _%g166936166955%_))))
                        (_%g166935166952%_ _%g166936166955%_)))))
            (_%g166934166998%_ _%stx166929%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd166865%_)
        (let _%lp166867%_ ((_%rest166869%_ _%hd166865%_))
          (let* ((_%rest166870166886%_ _%rest166869%_)
                 (_%else166873166894%_ (lambda () '#f)))
            (let ((_%K166876166907%_
                   (lambda (_%rest166905%_) (_%lp166867%_ _%rest166905%_)))
                  (_%K166875166899%_ (lambda () '#t)))
              (let ((_%try-match166872166902%_
                     (lambda ()
                       (if (null? _%rest166870166886%_)
                           (_%K166875166899%_)
                           (_%else166873166894%_)))))
                (if (pair? _%rest166870166886%_)
                    (let ((_%tl166878166912%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166870166886%_)))
                          (_%hd166877166910%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166870166886%_))))
                      (if (pair? _%hd166877166910%_)
                          (let ((_%tl166880166917%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd166877166910%_)))
                                (_%hd166879166915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd166877166910%_))))
                            (if (pair? _%hd166879166915%_)
                                (let ((_%tl166884166920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd166879166915%_))))
                                  (if (null? _%tl166884166920%_)
                                      (if (pair? _%tl166880166917%_)
                                          (let ((_%tl166882166923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl166880166917%_))))
                                            (if (null? _%tl166882166923%_)
                                                (let ((_%rest166926%_
                                                       _%tl166878166912%_))
                                                  (_%lp166867%_
                                                   _%rest166926%_))
                                                (_%else166873166894%_)))
                                          (_%else166873166894%_))
                                      (_%else166873166894%_)))
                                (_%else166873166894%_)))
                          (_%else166873166894%_)))
                    (_%try-match166872166902%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self166777%_
               _%form166778%_
               _%hd166779%_
               _%body166780%_
               _%compiled-body?166781%_)
        (letrec ((_%generate1166783%_
                  (lambda (_%bind166822%_)
                    (let* ((_%bind166823166834%_ _%bind166822%_)
                           (_%E166825166837%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind166823166834%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K166826166843%_
                            (lambda (_%expr166840%_ _%id166841%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id166841%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self166777%_
                                             _%expr166840%_))
                                          '())))))
                      (if (pair? _%bind166823166834%_)
                          (let ((_%hd166827166846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind166823166834%_)))
                                (_%tl166828166848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind166823166834%_))))
                            (if (pair? _%hd166827166846%_)
                                (let ((_%hd166831166851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd166827166846%_)))
                                      (_%tl166832166853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd166827166846%_))))
                                  (let ((_%id166856%_ _%hd166831166851%_))
                                    (if (null? _%tl166832166853%_)
                                        (if (pair? _%tl166828166848%_)
                                            (let ((_%hd166829166858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl166828166848%_)))
                                                  (_%tl166830166860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl166828166848%_))))
                                              (let ((_%expr166863%_
                                                     _%hd166829166858%_))
                                                (if (null? _%tl166830166860%_)
                                                    (_%K166826166843%_
                                                     _%expr166863%_
                                                     _%id166856%_)
                                                    (_%E166825166837%_))))
                                            (_%E166825166837%_))
                                        (_%E166825166837%_))))
                                (_%E166825166837%_)))
                          (_%E166825166837%_))))))
          (let* ((_%bind166785%_ (map _%generate1166783%_ _%hd166779%_))
                 (_%body166787%_
                  (if _%compiled-body?166781%_
                      _%body166780%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166777%_ _%body166780%_))))
                 (_%body166819%_
                  (let* ((_%body166788166796%_ _%body166787%_)
                         (_%else166790166804%_
                          (lambda () (cons _%body166787%_ '())))
                         (_%K166792166809%_
                          (lambda (_%exprs166807%_) _%exprs166807%_)))
                    (if (pair? _%body166788166796%_)
                        (let ((_%hd166793166812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body166788166796%_)))
                              (_%tl166794166814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body166788166796%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd166793166812%_ 'begin))
                              (let ((_%exprs166817%_ _%tl166794166814%_))
                                (_%K166792166809%_ _%exprs166817%_))
                              (_%else166790166804%_)))
                        (_%else166790166804%_)))))
            (cons _%form166778%_ (cons _%bind166785%_ _%body166819%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self166677%_ _%stx166678%_)
        (letrec ((_%generate1166680%_
                  (lambda (_%datum166732%_)
                    (if (or (null? _%datum166732%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum166732%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum166732%_))
                            (eof-object? _%datum166732%_))
                        _%datum166732%_
                        (if (uninterned-symbol? _%datum166732%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum166732%_
                               '#t))
                            (if (pair? _%datum166732%_)
                                (cons (_%generate1166680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum166732%_)))
                                      (_%generate1166680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum166732%_))))
                                (if (box? _%datum166732%_)
                                    (box (_%generate1166680%_
                                          (unbox _%datum166732%_)))
                                    (if (vector? _%datum166732%_)
                                        (vector-map
                                         _%generate1166680%_
                                         _%datum166732%_)
                                        (if (or (s8vector? _%datum166732%_)
                                                (u8vector? _%datum166732%_)
                                                (s16vector? _%datum166732%_)
                                                (u16vector? _%datum166732%_)
                                                (s32vector? _%datum166732%_)
                                                (u32vector? _%datum166732%_)
                                                (s64vector? _%datum166732%_)
                                                (u64vector? _%datum166732%_)
                                                (f32vector? _%datum166732%_)
                                                (f64vector? _%datum166732%_))
                                            _%datum166732%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx166678%_)))))))))))
          (let* ((_%g166682166695%_
                  (lambda (_%g166683166692%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166683166692%_))))
                 (_%g166681166729%_
                  (lambda (_%g166683166698%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166683166698%_))
                        (let ((_%e166685166700%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166683166698%_))))
                          (let ((_%hd166686166703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166685166700%_)))
                                (_%tl166687166705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166685166700%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166687166705%_))
                                (let ((_%e166688166708%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166687166705%_))))
                                  (let ((_%hd166689166711%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166688166708%_)))
                                        (_%tl166690166713%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166688166708%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166690166713%_))
                                        ((lambda (_%g166684166716%_)
                                           (cons 'quote
                                                 (cons (_%generate1166680%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g166684166716%_)))
                                                       '())))
                                         _%hd166689166711%_)
                                        (_%g166682166695%_
                                         _%g166683166698%_))))
                                (_%g166682166695%_ _%g166683166698%_))))
                        (_%g166682166695%_ _%g166683166698%_)))))
            (_%g166681166729%_ _%stx166678%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self166124%_ _%stx166125%_)
        (letrec ((_%compile-call166127%_
                  (lambda (_%rator166414%_ _%rands166415%_)
                    (let ((_%rator166421%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self166124%_
                              _%rator166414%_)))
                          (_%rands166422%_
                           (map (lambda (_%g166416166418%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self166124%_
                                     _%g166416166418%_)))
                                _%rands166415%_)))
                      (let* ((_%__stx172193172194%_ _%rator166421%_)
                             (_%g166425166477%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172193172194%_)))))
                        (let ((_%__kont172195172196%_
                               (lambda (_%g166427166597%_
                                        _%g166428166598%_
                                        _%g166429166599%_
                                        _%g166430166600%_)
                                 (if (let ((__tmp172865
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands166422%_)))
                                           (__tmp172863
                                            (length (let ((__tmp172864
                                                           (lambda (_%g166636166639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g166637166641%_)
                     (cons _%g166636166639%_ _%g166637166641%_))))
              (declare (not safe))
              (__foldr1 __tmp172864 '() _%g166429166599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp172865 __tmp172863))
                                     (let* ((_%id166644%_ _%g166430166600%_)
                                            (_%args166653%_
                                             (let ((__tmp172866
                                                    (lambda (_%g166645166648%_
                                                             _%g166646166650%_)
                                                      (cons _%g166645166648%_
                                                            _%g166646166650%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp172866
                                                '()
                                                _%g166429166599%_)))
                                            (_%body166662%_
                                             (let ((__tmp172867
                                                    (lambda (_%g166654166657%_
                                                             _%g166655166659%_)
                                                      (cons _%g166654166657%_
                                                            _%g166655166659%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp172867
                                                '()
                                                _%g166428166598%_)))
                                            (_%init166664%_
                                             (map list
                                                  _%args166653%_
                                                  _%rands166422%_)))
                                       (cons 'let
                                             (cons _%id166644%_
                                                   (cons _%init166664%_
                                                         _%body166662%_))))
                                     (let ((__tmp172868
                                            (let ((__tmp172869
                                                   (lambda (_%g166666166669%_
                                                            _%g166667166671%_)
                                                     (cons _%g166666166669%_
                                                           _%g166667166671%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172869
                                               '()
                                               _%g166429166599%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx166125%_
                                        __tmp172868
                                        _%rands166422%_)))))
                              (_%__kont172201172202%_
                               (lambda ()
                                 (cons _%rator166421%_ _%rands166422%_))))
                          (let ((_%__match172260172261%_
                                 (lambda (_%e166431166489%_
                                          _%hd166432166492%_
                                          _%tl166433166494%_
                                          _%e166434166497%_
                                          _%hd166435166500%_
                                          _%tl166436166502%_
                                          _%e166437166505%_
                                          _%hd166438166508%_
                                          _%tl166439166510%_
                                          _%e166440166513%_
                                          _%hd166441166516%_
                                          _%tl166442166518%_
                                          _%e166443166521%_
                                          _%hd166444166524%_
                                          _%tl166445166526%_
                                          _%e166446166529%_
                                          _%hd166447166532%_
                                          _%tl166448166534%_
                                          _%e166449166537%_
                                          _%hd166450166540%_
                                          _%tl166451166542%_
                                          _%__splice172197172198%_
                                          _%target166452166545%_
                                          _%tl166454166547%_)
                                   (letrec ((_%loop166455166550%_
                                             (lambda (_%hd166453166553%_
                                                      _%arg166459166555%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd166453166553%_))
                                                   (let ((_%e166456166557%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd166453166553%_))))
                                                     (let ((_%lp-tl166458166562%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e166456166557%_)))
                                                           (_%lp-hd166457166560%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e166456166557%_))))
                                                       (_%loop166455166550%_
                                                        _%lp-tl166458166562%_
                                                        (cons _%lp-hd166457166560%_
                                                              _%arg166459166555%_))))
                                                   (let ((_%arg166460166565%_
                                                          (reverse _%arg166459166555%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl166451166542%_))
                                                         (let ((_%__splice172199172200%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl166451166542%_
                           '0))))
                   (let ((_%tl166463166569%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172199172200%_ '1)))
                         (_%target166461166567%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172199172200%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl166463166569%_))
                         (letrec ((_%loop166464166572%_
                                   (lambda (_%hd166462166575%_
                                            _%body166468166577%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd166462166575%_))
                                         (let ((_%e166465166579%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd166462166575%_))))
                                           (let ((_%lp-tl166467166584%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166465166579%_)))
                                                 (_%lp-hd166466166582%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166465166579%_))))
                                             (_%loop166464166572%_
                                              _%lp-tl166467166584%_
                                              (cons _%lp-hd166466166582%_
                                                    _%body166468166577%_))))
                                         (let ((_%body166469166587%_
                                                (reverse _%body166468166577%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl166445166526%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl166439166510%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl166436166502%_))
                                                       (let ((_%e166470166589%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl166436166502%_))))
                 (let ((_%tl166472166594%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e166470166589%_)))
                       (_%hd166471166592%_
                        (let ()
                          (declare (not safe))
                          (##car _%e166470166589%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl166472166594%_))
                       (let ((_%g166427166597%_ _%hd166471166592%_)
                             (_%g166428166598%_ _%body166469166587%_)
                             (_%g166429166599%_ _%arg166460166565%_)
                             (_%g166430166600%_ _%hd166441166516%_))
                         (if (eq? _%g166430166600%_ _%g166427166597%_)
                             (_%__kont172195172196%_
                              _%g166427166597%_
                              _%g166428166598%_
                              _%g166429166599%_
                              _%g166430166600%_)
                             (_%__kont172201172202%_)))
                       (_%__kont172201172202%_))))
               (_%__kont172201172202%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172201172202%_))
                                               (_%__kont172201172202%_)))))))
                           (_%loop166464166572%_ _%target166461166567%_ '()))
                         (_%__kont172201172202%_))))
                 (_%__kont172201172202%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop166455166550%_
                                      _%target166452166545%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172193172194%_))
                                (let ((_%e166431166489%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172193172194%_))))
                                  (let ((_%tl166433166494%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166431166489%_)))
                                        (_%hd166432166492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166431166489%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166432166492%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd166432166492%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166433166494%_))
                                                (let ((_%e166434166497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166433166494%_))))
                                                  (let ((_%tl166436166502%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166434166497%_)))
                                                        (_%hd166435166500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166434166497%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd166435166500%_))
                                                        (let ((_%e166437166505%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd166435166500%_))))
                  (let ((_%tl166439166510%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166437166505%_)))
                        (_%hd166438166508%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166437166505%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd166438166508%_))
                        (let ((_%e166440166513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd166438166508%_))))
                          (let ((_%tl166442166518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166440166513%_)))
                                (_%hd166441166516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166440166513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166442166518%_))
                                (let ((_%e166443166521%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166442166518%_))))
                                  (let ((_%tl166445166526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166443166521%_)))
                                        (_%hd166444166524%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166443166521%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166444166524%_))
                                        (let ((_%e166446166529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166444166524%_))))
                                          (let ((_%tl166448166534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166446166529%_)))
                                                (_%hd166447166532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166446166529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd166447166532%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd166447166532%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl166448166534%_))
                                                        (let ((_%e166449166537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl166448166534%_))))
                  (let ((_%tl166451166542%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166449166537%_)))
                        (_%hd166450166540%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166449166537%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd166450166540%_))
                        (let ((_%__splice172197172198%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd166450166540%_
                                  '0))))
                          (let ((_%tl166454166547%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice172197172198%_ '1)))
                                (_%target166452166545%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice172197172198%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl166454166547%_))
                                (_%__match172260172261%_
                                 _%e166431166489%_
                                 _%hd166432166492%_
                                 _%tl166433166494%_
                                 _%e166434166497%_
                                 _%hd166435166500%_
                                 _%tl166436166502%_
                                 _%e166437166505%_
                                 _%hd166438166508%_
                                 _%tl166439166510%_
                                 _%e166440166513%_
                                 _%hd166441166516%_
                                 _%tl166442166518%_
                                 _%e166443166521%_
                                 _%hd166444166524%_
                                 _%tl166445166526%_
                                 _%e166446166529%_
                                 _%hd166447166532%_
                                 _%tl166448166534%_
                                 _%e166449166537%_
                                 _%hd166450166540%_
                                 _%tl166451166542%_
                                 _%__splice172197172198%_
                                 _%target166452166545%_
                                 _%tl166454166547%_)
                                (_%__kont172201172202%_))))
                        (_%__kont172201172202%_))))
                (_%__kont172201172202%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172201172202%_))
                                                (_%__kont172201172202%_))))
                                        (_%__kont172201172202%_))))
                                (_%__kont172201172202%_))))
                        (_%__kont172201172202%_))))
                (_%__kont172201172202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172201172202%_))
                                            (_%__kont172201172202%_))
                                        (_%__kont172201172202%_))))
                                (_%__kont172201172202%_)))))))))
          (let* ((_%g166129166152%_
                  (lambda (_%g166130166149%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166130166149%_))))
                 (_%g166128166411%_
                  (lambda (_%g166130166155%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166130166155%_))
                        (let ((_%e166133166157%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166130166155%_))))
                          (let ((_%hd166134166160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166133166157%_)))
                                (_%tl166135166162%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166133166157%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166135166162%_))
                                (let ((_%e166136166165%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166135166162%_))))
                                  (let ((_%hd166137166168%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166136166165%_)))
                                        (_%tl166138166170%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166136166165%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166138166170%_))
                                        (let ((_g172870_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166138166170%_
                                                  '0))))
                                          (begin
                                            (let ((_g172871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g172870_)
                                                         (##values-length
                                                          _g172870_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g172871_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g172871_)))
                                            (let ((_%target166139166173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g172870_
                                                      0)))
                                                  (_%tl166141166175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g172870_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166141166175%_))
                                                  (letrec ((_%loop166142166178%_
                                                            (lambda (_%hd166140166181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand166146166183%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166140166181%_))
                          (let ((_%e166143166185%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166140166181%_))))
                            (let ((_%lp-hd166144166188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166143166185%_)))
                                  (_%lp-tl166145166190%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166143166185%_))))
                              (_%loop166142166178%_
                               _%lp-tl166145166190%_
                               (cons _%lp-hd166144166188%_
                                     _%rand166146166183%_))))
                          (let ((_%rand166147166193%_
                                 (reverse _%rand166146166183%_)))
                            ((lambda (_%g166131166195%_ _%g166132166196%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call166127%_
                                    _%g166132166196%_
                                    (let ((__tmp172872
                                           (lambda (_%g166213166216%_
                                                    _%g166214166218%_)
                                             (cons _%g166213166216%_
                                                   _%g166214166218%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp172872
                                       '()
                                       _%g166131166195%_)))
                                   (let* ((_%__stx172309172310%_
                                           _%g166132166196%_)
                                          (_%g166222166234%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx172309172310%_)))))
                                     (let ((_%__kont172311172312%_
                                            (lambda ()
                                              (let ((_%f166271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self166124%_
                                                        _%g166132166196%_))))
                                                (if (and (let ((__tmp172873
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f166271%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp172873))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f166271%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp166273%_ ((_%rest166276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp172875
                                                (lambda (_%g166393166396%_
                                                         _%g166394166398%_)
                                                  (cons _%g166393166396%_
                                                        _%g166394166398%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp172875
                                            '()
                                            _%g166131166195%_))))
                               (_%bind166278%_ '())
                               (_%args166279%_ '()))
              (let* ((_%rest166280166288%_ _%rest166276%_)
                     (_%else166282166296%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind166278%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f166271%_
                                                      _%args166279%_)
                                                '()))))))
                     (_%K166284166382%_
                      (lambda (_%rest166299%_ _%e166300%_)
                        (let* ((_%__stx172263172264%_ _%e166300%_)
                               (_%g166305166323%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx172263172264%_)))))
                          (let ((_%__kont172265172266%_
                                 (lambda ()
                                   (_%lp166273%_
                                    _%rest166299%_
                                    _%bind166278%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166300%_))
                                          _%args166279%_))))
                                (_%__kont172267172268%_
                                 (lambda ()
                                   (_%lp166273%_
                                    _%rest166299%_
                                    _%bind166278%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166300%_))
                                          _%args166279%_))))
                                (_%__kont172269172270%_
                                 (lambda ()
                                   (let ((_%tmp166330%_
                                          (let ((__tmp172874
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp172874))))
                                     (_%lp166273%_
                                      _%rest166299%_
                                      (cons (cons _%tmp166330%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e166300%_))
                                                        '()))
                                            _%bind166278%_)
                                      (cons _%tmp166330%_ _%args166279%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172263172264%_))
                                (let ((_%e166307166361%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172263172264%_))))
                                  (let ((_%tl166309166366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166307166361%_)))
                                        (_%hd166308166364%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166307166361%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166308166364%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166308166364%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166309166366%_))
                                                (let ((_%e166310166369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166309166366%_))))
                                                  (let ((_%tl166312166374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166310166369%_)))
                                                        (_%hd166311166372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166310166369%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166312166374%_))
                                                        (_%__kont172265172266%_)
                                                        (_%__kont172269172270%_))))
                                                (_%__kont172269172270%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd166308166364%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166309166366%_))
                                                    (let ((_%e166316166346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166309166366%_))))
                                                      (let ((_%tl166318166351%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166316166346%_)))
                    (_%hd166317166349%_
                     (let () (declare (not safe)) (##car _%e166316166346%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166318166351%_))
                    (_%__kont172267172268%_)
                    (_%__kont172269172270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172269172270%_))
                                                (_%__kont172269172270%_)))
                                        (_%__kont172269172270%_))))
                                (_%__kont172269172270%_)))))))
                (if (pair? _%rest166280166288%_)
                    (let ((_%hd166285166385%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166280166288%_)))
                          (_%tl166286166387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166280166288%_))))
                      (let* ((_%e166390%_ _%hd166285166385%_)
                             (_%rest166392%_ _%tl166286166387%_))
                        (_%K166284166382%_ _%rest166392%_ _%e166390%_)))
                    (_%else166282166296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call166127%_
                                                     _%g166132166196%_
                                                     (let ((__tmp172876
                                                            (lambda (_%g166400166403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g166401166405%_)
                      (cons _%g166400166403%_ _%g166401166405%_))))
               (declare (not safe))
               (__foldr1 __tmp172876 '() _%g166131166195%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont172313172314%_
                                            (lambda ()
                                              (_%compile-call166127%_
                                               _%g166132166196%_
                                               (let ((__tmp172877
                                                      (lambda (_%g166240166243%_
                                                               _%g166241166245%_)
                                                        (cons _%g166240166243%_
                                                              _%g166241166245%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp172877
                                                  '()
                                                  _%g166131166195%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx172309172310%_))
                                           (let ((_%e166224166253%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx172309172310%_))))
                                             (let ((_%tl166226166258%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e166224166253%_)))
                                                   (_%hd166225166256%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e166224166253%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd166225166256%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd166225166256%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl166226166258%_))
                                                           (let ((_%e166227166261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl166226166258%_))))
                     (let ((_%tl166229166266%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e166227166261%_)))
                           (_%hd166228166264%_
                            (let ()
                              (declare (not safe))
                              (##car _%e166227166261%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl166229166266%_))
                           (_%__kont172311172312%_)
                           (_%__kont172313172314%_))))
                   (_%__kont172313172314%_))
               (_%__kont172313172314%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172313172314%_))))
                                           (_%__kont172313172314%_))))))
                             _%rand166147166193%_
                             _%hd166137166168%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop166142166178%_
                                                     _%target166139166173%_
                                                     '()))
                                                  (_%g166129166152%_
                                                   _%g166130166155%_)))))
                                        (_%g166129166152%_
                                         _%g166130166155%_))))
                                (_%g166129166152%_ _%g166130166155%_))))
                        (_%g166129166152%_ _%g166130166155%_)))))
            (_%g166128166411%_ _%stx166125%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self165869%_ _%stx165870%_)
        (let* ((_%__stx172381172382%_ _%stx165870%_)
               (_%g165873165902%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172381172382%_)))))
          (let ((_%__kont172383172384%_
                 (lambda (_%g165875165968%_ _%g165876165969%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self165869%_
                        _%stx165870%_)
                       (let ((_%f165991%_
                              (let ((__tmp172878
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g165876165969%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self165869%_
                                 __tmp172878))))
                         (let _%lp165993%_ ((_%rest165996%_
                                             (reverse (let ((__tmp172880
                                                             (lambda (_%g166113166116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g166114166118%_)
                       (cons _%g166113166116%_ _%g166114166118%_))))
                (declare (not safe))
                (__foldr1 __tmp172880 '() _%g165875165968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind165998%_ '())
                                            (_%args165999%_ '()))
                           (let* ((_%rest166000166008%_ _%rest165996%_)
                                  (_%else166002166016%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind165998%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f165991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args165999%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K166004166102%_
                                   (lambda (_%rest166019%_ _%e166020%_)
                                     (let* ((_%__stx172335172336%_ _%e166020%_)
                                            (_%g166025166043%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx172335172336%_)))))
                                       (let ((_%__kont172337172338%_
                                              (lambda ()
                                                (_%lp165993%_
                                                 _%rest166019%_
                                                 _%bind165998%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166020%_))
                                                       _%args165999%_))))
                                             (_%__kont172339172340%_
                                              (lambda ()
                                                (_%lp165993%_
                                                 _%rest166019%_
                                                 _%bind165998%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166020%_))
                                                       _%args165999%_))))
                                             (_%__kont172341172342%_
                                              (lambda ()
                                                (let ((_%tmp166050%_
                                                       (let ((__tmp172879
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp172879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp165993%_
                                                   _%rest166019%_
                                                   (cons (cons _%tmp166050%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e166020%_))
                             '()))
                 _%bind165998%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp166050%_
                                                         _%args165999%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx172335172336%_))
                                             (let ((_%e166027166081%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx172335172336%_))))
                                               (let ((_%tl166029166086%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e166027166081%_)))
                                                     (_%hd166028166084%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e166027166081%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd166028166084%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd166028166084%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166029166086%_))
                     (let ((_%e166030166089%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166029166086%_))))
                       (let ((_%tl166032166094%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166030166089%_)))
                             (_%hd166031166092%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166030166089%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166032166094%_))
                             (_%__kont172337172338%_)
                             (_%__kont172341172342%_))))
                     (_%__kont172341172342%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd166028166084%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl166029166086%_))
                         (let ((_%e166036166066%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl166029166086%_))))
                           (let ((_%tl166038166071%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166036166066%_)))
                                 (_%hd166037166069%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166036166066%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl166038166071%_))
                                 (_%__kont172339172340%_)
                                 (_%__kont172341172342%_))))
                         (_%__kont172341172342%_))
                     (_%__kont172341172342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172341172342%_))))
                                             (_%__kont172341172342%_)))))))
                             (if (pair? _%rest166000166008%_)
                                 (let ((_%hd166005166105%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest166000166008%_)))
                                       (_%tl166006166107%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest166000166008%_))))
                                   (let* ((_%e166110%_ _%hd166005166105%_)
                                          (_%rest166112%_ _%tl166006166107%_))
                                     (_%K166004166102%_
                                      _%rest166112%_
                                      _%e166110%_)))
                                 (_%else166002166016%_))))))))
                (_%__kont172387172388%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self165869%_ _%stx165870%_))))
            (let ((_%__match172426172427%_
                   (lambda (_%e165877165914%_
                            _%hd165878165917%_
                            _%tl165879165919%_
                            _%e165880165922%_
                            _%hd165881165925%_
                            _%tl165882165927%_
                            _%e165883165930%_
                            _%hd165884165933%_
                            _%tl165885165935%_
                            _%e165886165938%_
                            _%hd165887165941%_
                            _%tl165888165943%_
                            _%__splice172385172386%_
                            _%target165889165946%_
                            _%tl165891165948%_)
                     (letrec ((_%loop165892165951%_
                               (lambda (_%hd165890165954%_
                                        _%rand165896165956%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd165890165954%_))
                                     (let ((_%e165893165958%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd165890165954%_))))
                                       (let ((_%lp-tl165895165963%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e165893165958%_)))
                                             (_%lp-hd165894165961%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e165893165958%_))))
                                         (_%loop165892165951%_
                                          _%lp-tl165895165963%_
                                          (cons _%lp-hd165894165961%_
                                                _%rand165896165956%_))))
                                     (let ((_%rand165897165966%_
                                            (reverse _%rand165896165956%_)))
                                       (_%__kont172383172384%_
                                        _%rand165897165966%_
                                        _%hd165887165941%_))))))
                       (_%loop165892165951%_ _%target165889165946%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172381172382%_))
                  (let ((_%e165877165914%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172381172382%_))))
                    (let ((_%tl165879165919%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e165877165914%_)))
                          (_%hd165878165917%_
                           (let ()
                             (declare (not safe))
                             (##car _%e165877165914%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl165879165919%_))
                          (let ((_%e165880165922%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl165879165919%_))))
                            (let ((_%tl165882165927%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e165880165922%_)))
                                  (_%hd165881165925%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e165880165922%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd165881165925%_))
                                  (let ((_%e165883165930%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd165881165925%_))))
                                    (let ((_%tl165885165935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e165883165930%_)))
                                          (_%hd165884165933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e165883165930%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd165884165933%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd165884165933%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl165885165935%_))
                                                  (let ((_%e165886165938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl165885165935%_))))
                                                    (let ((_%tl165888165943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e165886165938%_)))
                                                          (_%hd165887165941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e165886165938%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl165888165943%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl165882165927%_))
                      (let ((_%__splice172385172386%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl165882165927%_
                                '0))))
                        (let ((_%tl165891165948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172385172386%_ '1)))
                              (_%target165889165946%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172385172386%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl165891165948%_))
                              (_%__match172426172427%_
                               _%e165877165914%_
                               _%hd165878165917%_
                               _%tl165879165919%_
                               _%e165880165922%_
                               _%hd165881165925%_
                               _%tl165882165927%_
                               _%e165883165930%_
                               _%hd165884165933%_
                               _%tl165885165935%_
                               _%e165886165938%_
                               _%hd165887165941%_
                               _%tl165888165943%_
                               _%__splice172385172386%_
                               _%target165889165946%_
                               _%tl165891165948%_)
                              (_%__kont172387172388%_))))
                      (_%__kont172387172388%_))
                  (_%__kont172387172388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172387172388%_))
                                              (_%__kont172387172388%_))
                                          (_%__kont172387172388%_))))
                                  (_%__kont172387172388%_))))
                          (_%__kont172387172388%_))))
                  (_%__kont172387172388%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self165681%_ _%stx165682%_)
        (letrec ((_%simplify165684%_
                  (lambda (_%code165769%_)
                    (let* ((_%code165770165788%_ _%code165769%_)
                           (_%else165772165796%_ (lambda () _%code165769%_))
                           (_%K165774165832%_
                            (lambda (_%expr165799%_ _%test165800%_)
                              (let* ((_%expr165801165809%_ _%expr165799%_)
                                     (_%else165803165817%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test165800%_
                                                    (cons _%expr165799%_
                                                          '())))))
                                     (_%K165805165822%_
                                      (lambda (_%exprs165820%_)
                                        (cons 'and
                                              (cons _%test165800%_
                                                    _%exprs165820%_)))))
                                (if (pair? _%expr165801165809%_)
                                    (let ((_%hd165806165825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr165801165809%_)))
                                          (_%tl165807165827%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr165801165809%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd165806165825%_ 'and))
                                          (let ((_%exprs165830%_
                                                 _%tl165807165827%_))
                                            (_%K165805165822%_
                                             _%exprs165830%_))
                                          (_%else165803165817%_)))
                                    (_%else165803165817%_))))))
                      (if (pair? _%code165770165788%_)
                          (let ((_%hd165775165835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code165770165788%_)))
                                (_%tl165776165837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code165770165788%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd165775165835%_ 'if))
                                (if (pair? _%tl165776165837%_)
                                    (let ((_%hd165777165840%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl165776165837%_)))
                                          (_%tl165778165842%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl165776165837%_))))
                                      (let ((_%test165845%_
                                             _%hd165777165840%_))
                                        (if (pair? _%tl165778165842%_)
                                            (let ((_%hd165779165847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl165778165842%_)))
                                                  (_%tl165780165849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl165778165842%_))))
                                              (let ((_%expr165852%_
                                                     _%hd165779165847%_))
                                                (if (pair? _%tl165780165849%_)
                                                    (let ((_%hd165781165854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl165780165849%_)))
                                                          (_%tl165782165856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl165780165849%_))))
                                                      (if (pair? _%hd165781165854%_)
                                                          (let ((_%hd165783165859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd165781165854%_)))
                        (_%tl165784165861%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd165781165854%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd165783165859%_ 'quote))
                        (if (pair? _%tl165784165861%_)
                            (let ((_%hd165785165864%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl165784165861%_)))
                                  (_%tl165786165866%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl165784165861%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd165785165864%_ '#f))
                                  (if (null? _%tl165786165866%_)
                                      (if (null? _%tl165782165856%_)
                                          (_%K165774165832%_
                                           _%expr165852%_
                                           _%test165845%_)
                                          (_%else165772165796%_))
                                      (_%else165772165796%_))
                                  (_%else165772165796%_)))
                            (_%else165772165796%_))
                        (_%else165772165796%_)))
                  (_%else165772165796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else165772165796%_))))
                                            (_%else165772165796%_))))
                                    (_%else165772165796%_))
                                (_%else165772165796%_)))
                          (_%else165772165796%_))))))
          (let* ((_%g165686165707%_
                  (lambda (_%g165687165704%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165687165704%_))))
                 (_%g165685165766%_
                  (lambda (_%g165687165710%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165687165710%_))
                        (let ((_%e165691165712%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165687165710%_))))
                          (let ((_%hd165692165715%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165691165712%_)))
                                (_%tl165693165717%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165691165712%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165693165717%_))
                                (let ((_%e165694165720%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165693165717%_))))
                                  (let ((_%hd165695165723%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165694165720%_)))
                                        (_%tl165696165725%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165694165720%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165696165725%_))
                                        (let ((_%e165697165728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165696165725%_))))
                                          (let ((_%hd165698165731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165697165728%_)))
                                                (_%tl165699165733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165697165728%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165699165733%_))
                                                (let ((_%e165700165736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165699165733%_))))
                                                  (let ((_%hd165701165739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165700165736%_)))
                                                        (_%tl165702165741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165700165736%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165702165741%_))
                                                        ((lambda (_%g165688165744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g165689165745%_
                          _%g165690165746%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify165684%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self165681%_
                                       _%g165690165746%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165681%_
                                             _%g165689165745%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self165681%_
                                                   _%g165688165744%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp172881
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self165681%_
                                               _%g165690165746%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp172881
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165681%_
                                            _%g165689165745%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165681%_
                                                  _%g165688165744%_))
                                               '()))))))
                 _%hd165701165739%_
                 _%hd165698165731%_
                 _%hd165695165723%_)
                (_%g165686165707%_ _%g165687165710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g165686165707%_
                                                 _%g165687165710%_))))
                                        (_%g165686165707%_
                                         _%g165687165710%_))))
                                (_%g165686165707%_ _%g165687165710%_))))
                        (_%g165686165707%_ _%g165687165710%_)))))
            (_%g165685165766%_ _%stx165682%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self165629%_ _%stx165630%_)
        (let* ((_%g165632165645%_
                (lambda (_%g165633165642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165633165642%_))))
               (_%g165631165678%_
                (lambda (_%g165633165648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165633165648%_))
                      (let ((_%e165635165650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165633165648%_))))
                        (let ((_%hd165636165653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165635165650%_)))
                              (_%tl165637165655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165635165650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165637165655%_))
                              (let ((_%e165638165658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165637165655%_))))
                                (let ((_%hd165639165661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165638165658%_)))
                                      (_%tl165640165663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165638165658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165640165663%_))
                                      ((lambda (_%g165634165666%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g165634165666%_)))
                                       _%hd165639165661%_)
                                      (_%g165632165645%_ _%g165633165648%_))))
                              (_%g165632165645%_ _%g165633165648%_))))
                      (_%g165632165645%_ _%g165633165648%_)))))
          (_%g165631165678%_ _%stx165630%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self165561%_ _%stx165562%_)
        (let* ((_%g165564165581%_
                (lambda (_%g165565165578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165565165578%_))))
               (_%g165563165626%_
                (lambda (_%g165565165584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165565165584%_))
                      (let ((_%e165568165586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165565165584%_))))
                        (let ((_%hd165569165589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165568165586%_)))
                              (_%tl165570165591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165568165586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165570165591%_))
                              (let ((_%e165571165594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165570165591%_))))
                                (let ((_%hd165572165597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165571165594%_)))
                                      (_%tl165573165599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165571165594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165573165599%_))
                                      (let ((_%e165574165602%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165573165599%_))))
                                        (let ((_%hd165575165605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165574165602%_)))
                                              (_%tl165576165607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165574165602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165576165607%_))
                                              ((lambda (_%g165566165610%_
                                                        _%g165567165611%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g165567165611%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self165561%_
                              _%g165566165610%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165575165605%_
                                               _%hd165572165597%_)
                                              (_%g165564165581%_
                                               _%g165565165584%_))))
                                      (_%g165564165581%_ _%g165565165584%_))))
                              (_%g165564165581%_ _%g165565165584%_))))
                      (_%g165564165581%_ _%g165565165584%_)))))
          (_%g165563165626%_ _%stx165562%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self165372%_ _%stx165373%_)
        (let* ((_%g165375165392%_
                (lambda (_%g165376165389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165376165389%_))))
               (_%g165374165558%_
                (lambda (_%g165376165395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165376165395%_))
                      (let ((_%e165379165397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165376165395%_))))
                        (let ((_%hd165380165400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165379165397%_)))
                              (_%tl165381165402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165379165397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165381165402%_))
                              (let ((_%e165382165405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165381165402%_))))
                                (let ((_%hd165383165408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165382165405%_)))
                                      (_%tl165384165410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165382165405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165384165410%_))
                                      (let ((_%e165385165413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165384165410%_))))
                                        (let ((_%hd165386165416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165385165413%_)))
                                              (_%tl165387165418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165385165413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165387165418%_))
                                              ((lambda (_%g165377165421%_
                                                        _%g165378165422%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165372%_ _%g165377165421%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165372%_
                                  _%g165378165422%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165437%_ ((_%rest165440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165378165422%_
                                       (cons _%g165377165421%_ '())))
                                (_%bind165442%_ '())
                                (_%args165443%_ '()))
               (let* ((_%rest165444165452%_ _%rest165440%_)
                      (_%else165446165460%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165442%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args165443%_)
                                                 '()))))))
                      (_%K165448165546%_
                       (lambda (_%rest165463%_ _%e165464%_)
                         (let* ((_%__stx172429172430%_ _%e165464%_)
                                (_%g165469165487%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172429172430%_)))))
                           (let ((_%__kont172431172432%_
                                  (lambda ()
                                    (_%lp165437%_
                                     _%rest165463%_
                                     _%bind165442%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165464%_))
                                           _%args165443%_))))
                                 (_%__kont172433172434%_
                                  (lambda ()
                                    (_%lp165437%_
                                     _%rest165463%_
                                     _%bind165442%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165464%_))
                                           _%args165443%_))))
                                 (_%__kont172435172436%_
                                  (lambda ()
                                    (let ((_%tmp165494%_
                                           (let ((__tmp172882
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp172882))))
                                      (_%lp165437%_
                                       _%rest165463%_
                                       (cons (cons _%tmp165494%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165464%_))
                                                         '()))
                                             _%bind165442%_)
                                       (cons _%tmp165494%_ _%args165443%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172429172430%_))
                                 (let ((_%e165471165525%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172429172430%_))))
                                   (let ((_%tl165473165530%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165471165525%_)))
                                         (_%hd165472165528%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165471165525%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165472165528%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165472165528%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165473165530%_))
                                                 (let ((_%e165474165533%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165473165530%_))))
                                                   (let ((_%tl165476165538%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165474165533%_)))
                                                         (_%hd165475165536%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165474165533%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165476165538%_))
                                                         (_%__kont172431172432%_)
                                                         (_%__kont172435172436%_))))
                                                 (_%__kont172435172436%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165472165528%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165473165530%_))
                                                     (let ((_%e165480165510%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165473165530%_))))
                                                       (let ((_%tl165482165515%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165480165510%_)))
                     (_%hd165481165513%_
                      (let () (declare (not safe)) (##car _%e165480165510%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165482165515%_))
                     (_%__kont172433172434%_)
                     (_%__kont172435172436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172435172436%_))
                                                 (_%__kont172435172436%_)))
                                         (_%__kont172435172436%_))))
                                 (_%__kont172435172436%_)))))))
                 (if (pair? _%rest165444165452%_)
                     (let ((_%hd165449165549%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165444165452%_)))
                           (_%tl165450165551%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165444165452%_))))
                       (let* ((_%e165554%_ _%hd165449165549%_)
                              (_%rest165556%_ _%tl165450165551%_))
                         (_%K165448165546%_ _%rest165556%_ _%e165554%_)))
                     (_%else165446165460%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165386165416%_
                                               _%hd165383165408%_)
                                              (_%g165375165392%_
                                               _%g165376165395%_))))
                                      (_%g165375165392%_ _%g165376165395%_))))
                              (_%g165375165392%_ _%g165376165395%_))))
                      (_%g165375165392%_ _%g165376165395%_)))))
          (_%g165374165558%_ _%stx165373%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self165183%_ _%stx165184%_)
        (let* ((_%g165186165203%_
                (lambda (_%g165187165200%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165187165200%_))))
               (_%g165185165369%_
                (lambda (_%g165187165206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165187165206%_))
                      (let ((_%e165190165208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165187165206%_))))
                        (let ((_%hd165191165211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165190165208%_)))
                              (_%tl165192165213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165190165208%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165192165213%_))
                              (let ((_%e165193165216%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165192165213%_))))
                                (let ((_%hd165194165219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165193165216%_)))
                                      (_%tl165195165221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165193165216%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165195165221%_))
                                      (let ((_%e165196165224%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165195165221%_))))
                                        (let ((_%hd165197165227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165196165224%_)))
                                              (_%tl165198165229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165196165224%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165198165229%_))
                                              ((lambda (_%g165188165232%_
                                                        _%g165189165233%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165183%_ _%g165188165232%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165183%_
                                  _%g165189165233%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165248%_ ((_%rest165251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165189165233%_
                                       (cons _%g165188165232%_ '())))
                                (_%bind165253%_ '())
                                (_%args165254%_ '()))
               (let* ((_%rest165255165263%_ _%rest165251%_)
                      (_%else165257165271%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165253%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args165254%_)
                                                 '()))))))
                      (_%K165259165357%_
                       (lambda (_%rest165274%_ _%e165275%_)
                         (let* ((_%__stx172475172476%_ _%e165275%_)
                                (_%g165280165298%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172475172476%_)))))
                           (let ((_%__kont172477172478%_
                                  (lambda ()
                                    (_%lp165248%_
                                     _%rest165274%_
                                     _%bind165253%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165275%_))
                                           _%args165254%_))))
                                 (_%__kont172479172480%_
                                  (lambda ()
                                    (_%lp165248%_
                                     _%rest165274%_
                                     _%bind165253%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165275%_))
                                           _%args165254%_))))
                                 (_%__kont172481172482%_
                                  (lambda ()
                                    (let ((_%tmp165305%_
                                           (let ((__tmp172883
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp172883))))
                                      (_%lp165248%_
                                       _%rest165274%_
                                       (cons (cons _%tmp165305%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165275%_))
                                                         '()))
                                             _%bind165253%_)
                                       (cons _%tmp165305%_ _%args165254%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172475172476%_))
                                 (let ((_%e165282165336%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172475172476%_))))
                                   (let ((_%tl165284165341%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165282165336%_)))
                                         (_%hd165283165339%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165282165336%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165283165339%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165283165339%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165284165341%_))
                                                 (let ((_%e165285165344%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165284165341%_))))
                                                   (let ((_%tl165287165349%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165285165344%_)))
                                                         (_%hd165286165347%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165285165344%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165287165349%_))
                                                         (_%__kont172477172478%_)
                                                         (_%__kont172481172482%_))))
                                                 (_%__kont172481172482%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165283165339%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165284165341%_))
                                                     (let ((_%e165291165321%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165284165341%_))))
                                                       (let ((_%tl165293165326%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165291165321%_)))
                     (_%hd165292165324%_
                      (let () (declare (not safe)) (##car _%e165291165321%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165293165326%_))
                     (_%__kont172479172480%_)
                     (_%__kont172481172482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172481172482%_))
                                                 (_%__kont172481172482%_)))
                                         (_%__kont172481172482%_))))
                                 (_%__kont172481172482%_)))))))
                 (if (pair? _%rest165255165263%_)
                     (let ((_%hd165260165360%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165255165263%_)))
                           (_%tl165261165362%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165255165263%_))))
                       (let* ((_%e165365%_ _%hd165260165360%_)
                              (_%rest165367%_ _%tl165261165362%_))
                         (_%K165259165357%_ _%rest165367%_ _%e165365%_)))
                     (_%else165257165271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165197165227%_
                                               _%hd165194165219%_)
                                              (_%g165186165203%_
                                               _%g165187165206%_))))
                                      (_%g165186165203%_ _%g165187165206%_))))
                              (_%g165186165203%_ _%g165187165206%_))))
                      (_%g165186165203%_ _%g165187165206%_)))))
          (_%g165185165369%_ _%stx165184%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self165099%_ _%stx165100%_)
        (let* ((_%g165102165123%_
                (lambda (_%g165103165120%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165103165120%_))))
               (_%g165101165180%_
                (lambda (_%g165103165126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165103165126%_))
                      (let ((_%e165107165128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165103165126%_))))
                        (let ((_%hd165108165131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165107165128%_)))
                              (_%tl165109165133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165107165128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165109165133%_))
                              (let ((_%e165110165136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165109165133%_))))
                                (let ((_%hd165111165139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165110165136%_)))
                                      (_%tl165112165141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165110165136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165112165141%_))
                                      (let ((_%e165113165144%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165112165141%_))))
                                        (let ((_%hd165114165147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165113165144%_)))
                                              (_%tl165115165149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165113165144%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165115165149%_))
                                              (let ((_%e165116165152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165115165149%_))))
                                                (let ((_%hd165117165155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165116165152%_)))
                                                      (_%tl165118165157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165116165152%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165118165157%_))
                                                      ((lambda (_%g165104165160%_
                                                                _%g165105165161%_
                                                                _%g165106165162%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165099%_
                                _%g165104165160%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165099%_
                                      _%g165105165161%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165099%_
                                            _%g165106165162%_))
                                         (cons ''#f '()))))))
               _%hd165117165155%_
               _%hd165114165147%_
               _%hd165111165139%_)
              (_%g165102165123%_ _%g165103165126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165102165123%_
                                               _%g165103165126%_))))
                                      (_%g165102165123%_ _%g165103165126%_))))
                              (_%g165102165123%_ _%g165103165126%_))))
                      (_%g165102165123%_ _%g165103165126%_)))))
          (_%g165101165180%_ _%stx165100%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self164999%_ _%stx165000%_)
        (let* ((_%g165002165027%_
                (lambda (_%g165003165024%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165003165024%_))))
               (_%g165001165096%_
                (lambda (_%g165003165030%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165003165030%_))
                      (let ((_%e165008165032%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165003165030%_))))
                        (let ((_%hd165009165035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165008165032%_)))
                              (_%tl165010165037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165008165032%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165010165037%_))
                              (let ((_%e165011165040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165010165037%_))))
                                (let ((_%hd165012165043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165011165040%_)))
                                      (_%tl165013165045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165011165040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165013165045%_))
                                      (let ((_%e165014165048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165013165045%_))))
                                        (let ((_%hd165015165051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165014165048%_)))
                                              (_%tl165016165053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165014165048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165016165053%_))
                                              (let ((_%e165017165056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165016165053%_))))
                                                (let ((_%hd165018165059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165017165056%_)))
                                                      (_%tl165019165061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165017165056%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165019165061%_))
                                                      (let ((_%e165020165064%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165019165061%_))))
                (let ((_%hd165021165067%_
                       (let () (declare (not safe)) (##car _%e165020165064%_)))
                      (_%tl165022165069%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165020165064%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165022165069%_))
                      ((lambda (_%g165004165072%_
                                _%g165005165073%_
                                _%g165006165074%_
                                _%g165007165075%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self164999%_
                                        _%g165005165073%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self164999%_
                                              _%g165004165072%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self164999%_
                                                    _%g165006165074%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self164999%_
                                                          _%g165007165075%_))
                                                       (cons ''#f '())))))))
                       _%hd165021165067%_
                       _%hd165018165059%_
                       _%hd165015165051%_
                       _%hd165012165043%_)
                      (_%g165002165027%_ _%g165003165030%_))))
              (_%g165002165027%_ _%g165003165030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165002165027%_
                                               _%g165003165030%_))))
                                      (_%g165002165027%_ _%g165003165030%_))))
                              (_%g165002165027%_ _%g165003165030%_))))
                      (_%g165002165027%_ _%g165003165030%_)))))
          (_%g165001165096%_ _%stx165000%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self164915%_ _%stx164916%_)
        (let* ((_%g164918164939%_
                (lambda (_%g164919164936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164919164936%_))))
               (_%g164917164996%_
                (lambda (_%g164919164942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164919164942%_))
                      (let ((_%e164923164944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164919164942%_))))
                        (let ((_%hd164924164947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164923164944%_)))
                              (_%tl164925164949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164923164944%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164925164949%_))
                              (let ((_%e164926164952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164925164949%_))))
                                (let ((_%hd164927164955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164926164952%_)))
                                      (_%tl164928164957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164926164952%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164928164957%_))
                                      (let ((_%e164929164960%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164928164957%_))))
                                        (let ((_%hd164930164963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164929164960%_)))
                                              (_%tl164931164965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164929164960%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164931164965%_))
                                              (let ((_%e164932164968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164931164965%_))))
                                                (let ((_%hd164933164971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164932164968%_)))
                                                      (_%tl164934164973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164932164968%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164934164973%_))
                                                      ((lambda (_%g164920164976%_
                                                                _%g164921164977%_
                                                                _%g164922164978%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self164915%_
                                _%g164920164976%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164915%_
                                      _%g164921164977%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164915%_
                                            _%g164922164978%_))
                                         (cons ''#f '()))))))
               _%hd164933164971%_
               _%hd164930164963%_
               _%hd164927164955%_)
              (_%g164918164939%_ _%g164919164942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164918164939%_
                                               _%g164919164942%_))))
                                      (_%g164918164939%_ _%g164919164942%_))))
                              (_%g164918164939%_ _%g164919164942%_))))
                      (_%g164918164939%_ _%g164919164942%_)))))
          (_%g164917164996%_ _%stx164916%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self164815%_ _%stx164816%_)
        (let* ((_%g164818164843%_
                (lambda (_%g164819164840%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164819164840%_))))
               (_%g164817164912%_
                (lambda (_%g164819164846%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164819164846%_))
                      (let ((_%e164824164848%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164819164846%_))))
                        (let ((_%hd164825164851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164824164848%_)))
                              (_%tl164826164853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164824164848%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164826164853%_))
                              (let ((_%e164827164856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164826164853%_))))
                                (let ((_%hd164828164859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164827164856%_)))
                                      (_%tl164829164861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164827164856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164829164861%_))
                                      (let ((_%e164830164864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164829164861%_))))
                                        (let ((_%hd164831164867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164830164864%_)))
                                              (_%tl164832164869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164830164864%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164832164869%_))
                                              (let ((_%e164833164872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164832164869%_))))
                                                (let ((_%hd164834164875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164833164872%_)))
                                                      (_%tl164835164877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164833164872%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164835164877%_))
                                                      (let ((_%e164836164880%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164835164877%_))))
                (let ((_%hd164837164883%_
                       (let () (declare (not safe)) (##car _%e164836164880%_)))
                      (_%tl164838164885%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164836164880%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164838164885%_))
                      ((lambda (_%g164820164888%_
                                _%g164821164889%_
                                _%g164822164890%_
                                _%g164823164891%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self164815%_
                                        _%g164821164889%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self164815%_
                                              _%g164820164888%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self164815%_
                                                    _%g164822164890%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self164815%_
                                                          _%g164823164891%_))
                                                       (cons ''#f '())))))))
                       _%hd164837164883%_
                       _%hd164834164875%_
                       _%hd164831164867%_
                       _%hd164828164859%_)
                      (_%g164818164843%_ _%g164819164846%_))))
              (_%g164818164843%_ _%g164819164846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164818164843%_
                                               _%g164819164846%_))))
                                      (_%g164818164843%_ _%g164819164846%_))))
                              (_%g164818164843%_ _%g164819164846%_))))
                      (_%g164818164843%_ _%g164819164846%_)))))
          (_%g164817164912%_ _%stx164816%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self164610%_ _%stx164611%_)
        (let* ((_%g164613164634%_
                (lambda (_%g164614164631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164614164631%_))))
               (_%g164612164812%_
                (lambda (_%g164614164637%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164614164637%_))
                      (let ((_%e164618164639%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164614164637%_))))
                        (let ((_%hd164619164642%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164618164639%_)))
                              (_%tl164620164644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164618164639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164620164644%_))
                              (let ((_%e164621164647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164620164644%_))))
                                (let ((_%hd164622164650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164621164647%_)))
                                      (_%tl164623164652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164621164647%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164623164652%_))
                                      (let ((_%e164624164655%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164623164652%_))))
                                        (let ((_%hd164625164658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164624164655%_)))
                                              (_%tl164626164660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164624164655%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164626164660%_))
                                              (let ((_%e164627164663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164626164660%_))))
                                                (let ((_%hd164628164666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164627164663%_)))
                                                      (_%tl164629164668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164627164663%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164629164668%_))
                                                      ((lambda (_%g164615164671%_
                                                                _%g164616164672%_
                                                                _%g164617164673%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self164610%_
                                    _%g164615164671%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self164610%_
                                          _%g164616164672%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp164691%_ ((_%rest164694%_
                                         (cons _%g164616164672%_
                                               (cons _%g164615164671%_ '())))
                                        (_%bind164696%_ '())
                                        (_%args164697%_ '()))
                       (let* ((_%rest164698164706%_ _%rest164694%_)
                              (_%else164700164714%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind164696%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp172884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp172884 _%args164697%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K164702164800%_
                               (lambda (_%rest164717%_ _%e164718%_)
                                 (let* ((_%__stx172521172522%_ _%e164718%_)
                                        (_%g164723164741%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172521172522%_)))))
                                   (let ((_%__kont172523172524%_
                                          (lambda ()
                                            (_%lp164691%_
                                             _%rest164717%_
                                             _%bind164696%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164718%_))
                                                   _%args164697%_))))
                                         (_%__kont172525172526%_
                                          (lambda ()
                                            (_%lp164691%_
                                             _%rest164717%_
                                             _%bind164696%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164718%_))
                                                   _%args164697%_))))
                                         (_%__kont172527172528%_
                                          (lambda ()
                                            (let ((_%tmp164748%_
                                                   (let ((__tmp172885
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp172885))))
                                              (_%lp164691%_
                                               _%rest164717%_
                                               (cons (cons _%tmp164748%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e164718%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind164696%_)
                                               (cons _%tmp164748%_
                                                     _%args164697%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172521172522%_))
                                         (let ((_%e164725164779%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172521172522%_))))
                                           (let ((_%tl164727164784%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e164725164779%_)))
                                                 (_%hd164726164782%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e164725164779%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd164726164782%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd164726164782%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl164727164784%_))
                                                         (let ((_%e164728164787%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl164727164784%_))))
                   (let ((_%tl164730164792%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e164728164787%_)))
                         (_%hd164729164790%_
                          (let ()
                            (declare (not safe))
                            (##car _%e164728164787%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl164730164792%_))
                         (_%__kont172523172524%_)
                         (_%__kont172527172528%_))))
                 (_%__kont172527172528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd164726164782%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164727164784%_))
                     (let ((_%e164734164764%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164727164784%_))))
                       (let ((_%tl164736164769%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164734164764%_)))
                             (_%hd164735164767%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164734164764%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164736164769%_))
                             (_%__kont172525172526%_)
                             (_%__kont172527172528%_))))
                     (_%__kont172527172528%_))
                 (_%__kont172527172528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172527172528%_))))
                                         (_%__kont172527172528%_)))))))
                         (if (pair? _%rest164698164706%_)
                             (let ((_%hd164703164803%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest164698164706%_)))
                                   (_%tl164704164805%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest164698164706%_))))
                               (let* ((_%e164808%_ _%hd164703164803%_)
                                      (_%rest164810%_ _%tl164704164805%_))
                                 (_%K164702164800%_
                                  _%rest164810%_
                                  _%e164808%_)))
                             (_%else164700164714%_))))))
               _%hd164628164666%_
               _%hd164625164658%_
               _%hd164622164650%_)
              (_%g164613164634%_ _%g164614164637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164613164634%_
                                               _%g164614164637%_))))
                                      (_%g164613164634%_ _%g164614164637%_))))
                              (_%g164613164634%_ _%g164614164637%_))))
                      (_%g164613164634%_ _%g164614164637%_)))))
          (_%g164612164812%_ _%stx164611%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self164389%_ _%stx164390%_)
        (let* ((_%g164392164417%_
                (lambda (_%g164393164414%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164393164414%_))))
               (_%g164391164607%_
                (lambda (_%g164393164420%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164393164420%_))
                      (let ((_%e164398164422%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164393164420%_))))
                        (let ((_%hd164399164425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164398164422%_)))
                              (_%tl164400164427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164398164422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164400164427%_))
                              (let ((_%e164401164430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164400164427%_))))
                                (let ((_%hd164402164433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164401164430%_)))
                                      (_%tl164403164435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164401164430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164403164435%_))
                                      (let ((_%e164404164438%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164403164435%_))))
                                        (let ((_%hd164405164441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164404164438%_)))
                                              (_%tl164406164443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164404164438%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164406164443%_))
                                              (let ((_%e164407164446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164406164443%_))))
                                                (let ((_%hd164408164449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164407164446%_)))
                                                      (_%tl164409164451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164407164446%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164409164451%_))
                                                      (let ((_%e164410164454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164409164451%_))))
                (let ((_%hd164411164457%_
                       (let () (declare (not safe)) (##car _%e164410164454%_)))
                      (_%tl164412164459%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164410164454%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164412164459%_))
                      ((lambda (_%g164394164462%_
                                _%g164395164463%_
                                _%g164396164464%_
                                _%g164397164465%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164389%_
                                            _%g164395164463%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164389%_
                                                  _%g164394164462%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164389%_
                                                        _%g164396164464%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp164486%_ ((_%rest164489%_
                                                 (cons _%g164396164464%_
                                                       (cons _%g164394164462%_
                                                             (cons _%g164395164463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind164491%_ '())
                                                (_%args164492%_ '()))
                               (let* ((_%rest164493164501%_ _%rest164489%_)
                                      (_%else164495164509%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind164491%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp172886 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp172886 _%args164492%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K164497164595%_
                                       (lambda (_%rest164512%_ _%e164513%_)
                                         (let* ((_%__stx172567172568%_
                                                 _%e164513%_)
                                                (_%g164518164536%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx172567172568%_)))))
                                           (let ((_%__kont172569172570%_
                                                  (lambda ()
                                                    (_%lp164486%_
                                                     _%rest164512%_
                                                     _%bind164491%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164513%_))
                                                           _%args164492%_))))
                                                 (_%__kont172571172572%_
                                                  (lambda ()
                                                    (_%lp164486%_
                                                     _%rest164512%_
                                                     _%bind164491%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164513%_))
                                                           _%args164492%_))))
                                                 (_%__kont172573172574%_
                                                  (lambda ()
                                                    (let ((_%tmp164543%_
                                                           (let ((__tmp172887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp172887))))
              (_%lp164486%_
               _%rest164512%_
               (cons (cons _%tmp164543%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e164513%_))
                                 '()))
                     _%bind164491%_)
               (cons _%tmp164543%_ _%args164492%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx172567172568%_))
                                                 (let ((_%e164520164574%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx172567172568%_))))
                                                   (let ((_%tl164522164579%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164520164574%_)))
                                                         (_%hd164521164577%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164520164574%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd164521164577%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd164521164577%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164522164579%_))
                         (let ((_%e164523164582%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164522164579%_))))
                           (let ((_%tl164525164587%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164523164582%_)))
                                 (_%hd164524164585%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164523164582%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164525164587%_))
                                 (_%__kont172569172570%_)
                                 (_%__kont172573172574%_))))
                         (_%__kont172573172574%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd164521164577%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl164522164579%_))
                             (let ((_%e164529164559%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl164522164579%_))))
                               (let ((_%tl164531164564%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e164529164559%_)))
                                     (_%hd164530164562%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e164529164559%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl164531164564%_))
                                     (_%__kont172571172572%_)
                                     (_%__kont172573172574%_))))
                             (_%__kont172573172574%_))
                         (_%__kont172573172574%_)))
                 (_%__kont172573172574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172573172574%_)))))))
                                 (if (pair? _%rest164493164501%_)
                                     (let ((_%hd164498164598%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest164493164501%_)))
                                           (_%tl164499164600%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest164493164501%_))))
                                       (let* ((_%e164603%_ _%hd164498164598%_)
                                              (_%rest164605%_
                                               _%tl164499164600%_))
                                         (_%K164497164595%_
                                          _%rest164605%_
                                          _%e164603%_)))
                                     (_%else164495164509%_))))))
                       _%hd164411164457%_
                       _%hd164408164449%_
                       _%hd164405164441%_
                       _%hd164402164433%_)
                      (_%g164392164417%_ _%g164393164420%_))))
              (_%g164392164417%_ _%g164393164420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164392164417%_
                                               _%g164393164420%_))))
                                      (_%g164392164417%_ _%g164393164420%_))))
                              (_%g164392164417%_ _%g164393164420%_))))
                      (_%g164392164417%_ _%g164393164420%_)))))
          (_%g164391164607%_ _%stx164390%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self164228%_ _%stx164229%_)
        (letrec ((_%import-set-template164231%_
                  (lambda (_%in164334%_ _%phi164335%_)
                    (let ((_%iphi164337%_
                           (fx+ _%phi164335%_
                                (##direct-structure-ref
                                 _%in164334%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports164338%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in164334%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp164340%_ ((_%rest164342%_ _%imports164338%_)
                                         (_%r164343%_ '()))
                        (let* ((_%rest164344164352%_ _%rest164342%_)
                               (_%else164346164360%_ (lambda () _%r164343%_))
                               (_%K164348164377%_
                                (lambda (_%rest164363%_ _%in164364%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in164364%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi164337%_))
                                          (_%lp164340%_
                                           _%rest164363%_
                                           (cons _%in164364%_ _%r164343%_))
                                          (_%lp164340%_
                                           _%rest164363%_
                                           _%r164343%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in164364%_
                                             'gx#module-import::t))
                                          (let ((_%iphi164368%_
                                                 (fx+ _%phi164335%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in164364%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi164368%_))
                                                (_%lp164340%_
                                                 _%rest164363%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in164364%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r164343%_))
                                                (_%lp164340%_
                                                 _%rest164363%_
                                                 _%r164343%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in164364%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi164371%_
                                                     (fx+ _%iphi164337%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in164364%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi164371%_))
                                                    (_%lp164340%_
                                                     _%rest164363%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in164364%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r164343%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi164371%_))
                                                        (_%lp164340%_
                                                         _%rest164363%_
                                                         (let ((__tmp172888
                                                                (_%import-set-template164231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in164364%_
                         _%iphi164337%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r164343%_ __tmp172888)))
                (_%lp164340%_ _%rest164363%_ _%r164343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp164340%_
                                               _%rest164363%_
                                               _%r164343%_)))))))
                          (if (pair? _%rest164344164352%_)
                              (let ((_%hd164349164380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164344164352%_)))
                                    (_%tl164350164382%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164344164352%_))))
                                (let* ((_%in164385%_ _%hd164349164380%_)
                                       (_%rest164387%_ _%tl164350164382%_))
                                  (_%K164348164377%_
                                   _%rest164387%_
                                   _%in164385%_)))
                              (_%else164346164360%_))))))))
          (let* ((_%g164233164243%_
                  (lambda (_%g164234164240%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164234164240%_))))
                 (_%g164232164331%_
                  (lambda (_%g164234164246%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164234164246%_))
                        (let ((_%e164236164248%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164234164246%_))))
                          (let ((_%hd164237164251%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164236164248%_)))
                                (_%tl164238164253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164236164248%_))))
                            ((lambda (_%g164235164256%_)
                               (let ((_%ht164267%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp164269%_ ((_%rest164271%_
                                                     _%g164235164256%_)
                                                    (_%loads164272%_ '()))
                                   (letrec ((_%K164274%_
                                             (lambda (_%ctx164324%_
                                                      _%rest164325%_)
                                               (let ((_%id164327%_
                                                      (##structure-ref
                                                       _%ctx164324%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht164267%_
                                                        _%id164327%_))
                                                     (_%lp164269%_
                                                      _%rest164325%_
                                                      _%loads164272%_)
                                                     (let ((_%rt164329%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id164327%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht164267%_
                                                          _%id164327%_
                                                          _%rt164329%_))
                                                       (_%lp164269%_
                                                        _%rest164325%_
                                                        (cons _%rt164329%_
                                                              _%loads164272%_))))))))
                                     (let* ((_%rest164275164283%_
                                             _%rest164271%_)
                                            (_%else164277164295%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp172890
                                                            (lambda (_%g164290164292%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g164290164292%_)))
                   (__tmp172889 (reverse _%loads164272%_)))
               (declare (not safe))
               (##map __tmp172890 __tmp172889)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K164279164312%_
                                             (lambda (_%rest164298%_
                                                      _%in164299%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in164299%_
                                                      'gx#module-context::t))
                                                   (_%K164274%_
                                                    _%in164299%_
                                                    _%rest164298%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in164299%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in164299%_
                               '3
                               '#f
                               '#f)))
                   (_%K164274%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in164299%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest164298%_)
                   (_%lp164269%_ _%rest164298%_ _%loads164272%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in164299%_
                      'gx#import-set::t))
                   (let ((_%phi164304%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164299%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi164304%_)
                         (_%K164274%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164299%_
                             '1
                             '#f
                             '#f))
                          _%rest164298%_)
                         (if (fxpositive? _%phi164304%_)
                             (let ((_%deps164308%_
                                    (_%import-set-template164231%_
                                     _%in164299%_
                                     '0)))
                               (_%lp164269%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest164298%_
                                   _%deps164308%_))
                                _%loads164272%_))
                             (_%lp164269%_ _%rest164298%_ _%loads164272%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx164229%_
                      _%in164299%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest164275164283%_)
                                           (let ((_%hd164280164315%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest164275164283%_)))
                                                 (_%tl164281164317%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest164275164283%_))))
                                             (let* ((_%in164320%_
                                                     _%hd164280164315%_)
                                                    (_%rest164322%_
                                                     _%tl164281164317%_))
                                               (_%K164279164312%_
                                                _%rest164322%_
                                                _%in164320%_)))
                                           (_%else164277164295%_)))))))
                             _%tl164238164253%_)))
                        (_%g164233164243%_ _%g164234164246%_)))))
            (_%g164232164331%_ _%stx164229%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self164042%_ _%stx164043%_)
        (letrec ((_%add-lift!164045%_
                  (lambda (_%expr164226%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr164226%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote164046%_
                  (lambda (_%id164223%_ _%marks164224%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id164223%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks164224%_
                                                        '()))))))))
                 (_%generate-simple164047%_
                  (lambda (_%stxq164218%_)
                    (let ((_%gid164220%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid164221%_
                           (gxc#generate-runtime-identifier _%stxq164218%_)))
                      (_%add-lift!164045%_
                       (cons 'define
                             (cons _%gid164220%_
                                   (cons (_%generate-syntax-quote164046%_
                                          _%qid164221%_
                                          ''())
                                         '()))))
                      (let ((__tmp172891
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp172891 _%stxq164218%_ _%gid164220%_))
                      _%gid164220%_)))
                 (_%generate-serialized164048%_
                  (lambda (_%stxq164208%_ _%marks164209%_)
                    (let* ((_%mark-refs164211%_
                            (map _%generate-mark164049%_ _%marks164209%_))
                           (_%gid164213%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid164215%_
                            (gxc#generate-runtime-identifier _%stxq164208%_)))
                      (_%add-lift!164045%_
                       (cons 'define
                             (cons _%gid164213%_
                                   (cons (_%generate-syntax-quote164046%_
                                          _%qid164215%_
                                          (cons 'list _%mark-refs164211%_))
                                         '()))))
                      (let ((__tmp172892
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp172892 _%stxq164208%_ _%gid164213%_))
                      _%gid164213%_)))
                 (_%generate-mark164049%_
                  (lambda (_%mark164193%_)
                    (let ((_%$e164195%_
                           (let ((__tmp172893
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp172893 _%mark164193%_))))
                      (if _%$e164195%_
                          _%$e164195%_
                          (let* ((_%gid164199%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr164201%_
                                  (_%serialize-mark164050%_ _%mark164193%_))
                                 (_%ctx164203%_
                                  (let ((__tmp172894
                                         (##structure-ref
                                          _%mark164193%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp172894)))
                                 (_%ctx-ref164205%_
                                  (if (eq? _%ctx164203%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref164051%_
                                                               _%ctx164203%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp172895
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172895
                               _%mark164193%_
                               _%gid164199%_))
                            (_%add-lift!164045%_
                             (cons 'define
                                   (cons _%gid164199%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr164201%_ '()))
                   (cons _%ctx-ref164205%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid164199%_)))))
                 (_%serialize-mark164050%_
                  (lambda (_%mark164141%_)
                    (letrec ((_%quote-e164143%_
                              (lambda (_%sym164191%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym164191%_))
                                    _%sym164191%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym164191%_))))))
                      (let* ((_%mark164144164153%_ _%mark164141%_)
                             (_%E164146164156%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark164144164153%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K164147164168%_
                              (lambda (_%trace164159%_
                                       _%phi164160%_
                                       _%ctx164161%_
                                       _%subst164162%_)
                                (let ((_%subs164164%_
                                       (if _%subst164162%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst164162%_))
                                           '())))
                                  (cons _%phi164160%_
                                        (let ((__tmp172896
                                               (lambda (_%pair164166%_)
                                                 (cons (_%quote-e164143%_
                                                        (car _%pair164166%_))
                                                       (_%quote-e164143%_
                                                        (cdr _%pair164166%_))))))
                                          (declare (not safe))
                                          (##map __tmp172896
                                                 _%subs164164%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark164144164153%_
                               'gx#expander-mark::t))
                            (let* ((_%e164148164171%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164144164153%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst164174%_ _%e164148164171%_)
                                   (_%e164149164176%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164144164153%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx164179%_ _%e164149164176%_)
                                   (_%e164150164181%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164144164153%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi164184%_ _%e164150164181%_)
                                   (_%e164151164186%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164144164153%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace164189%_ _%e164151164186%_))
                              (_%K164147164168%_
                               _%trace164189%_
                               _%phi164184%_
                               _%ctx164179%_
                               _%subst164174%_))
                            (_%E164146164156%_))))))
                 (_%context-ref164051%_
                  (lambda (_%ctx164128%_)
                    (if (let ((__tmp172897
                               (##structure-ref
                                _%ctx164128%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp172897
                           'gx#module-context::t))
                        (let ((_%ctx-ref164130%_
                               (_%context-ref-nested164053%_ _%ctx164128%_))
                              (_%ctx-origin164131%_
                               (_%context-ref-origin164052%_ _%ctx164128%_))
                              (_%origin164132%_
                               (_%context-ref-origin164052%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin164132%_ _%ctx-origin164131%_)
                              (let ((_%ref164134%_
                                     (_%context-ref-nested164053%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp164136%_ ((_%ref164138%_
                                                    (cdr _%ref164134%_))
                                                   (_%ctx-ref164139%_
                                                    (cdr _%ctx-ref164130%_)))
                                  (if (and (pair? _%ref164138%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref164138%_))
                                                (car _%ctx-ref164139%_)))
                                      (_%lp164136%_
                                       (cdr _%ref164138%_)
                                       (cdr _%ctx-ref164139%_))
                                      (cons '#f _%ctx-ref164139%_))))
                              _%ctx-ref164130%_))
                        (let ((__tmp172898
                               (##structure-ref
                                _%ctx164128%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp172898)))))
                 (_%context-ref-origin164052%_
                  (lambda (_%ctx164120%_)
                    (let _%lp164122%_ ((_%ctx164124%_ _%ctx164120%_))
                      (let ((_%super164126%_
                             (##structure-ref
                              _%ctx164124%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164126%_
                               'gx#module-context::t))
                            (_%lp164122%_ _%super164126%_)
                            _%ctx164124%_)))))
                 (_%context-ref-nested164053%_
                  (lambda (_%ctx164111%_)
                    (let _%lp164113%_ ((_%ctx164115%_ _%ctx164111%_)
                                       (_%r164116%_ '()))
                      (let ((_%super164118%_
                             (##structure-ref
                              _%ctx164115%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164118%_
                               'gx#module-context::t))
                            (_%lp164113%_
                             _%super164118%_
                             (cons (car (##structure-ref
                                         _%ctx164115%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r164116%_))
                            (cons (let ((__tmp172899
                                         (##structure-ref
                                          _%ctx164115%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp172899))
                                  _%r164116%_)))))))
          (let* ((_%g164055164068%_
                  (lambda (_%g164056164065%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164056164065%_))))
                 (_%g164054164108%_
                  (lambda (_%g164056164071%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164056164071%_))
                        (let ((_%e164058164073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164056164071%_))))
                          (let ((_%hd164059164076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164058164073%_)))
                                (_%tl164060164078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164058164073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164060164078%_))
                                (let ((_%e164061164081%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164060164078%_))))
                                  (let ((_%hd164062164084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164061164081%_)))
                                        (_%tl164063164086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164061164081%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164063164086%_))
                                        ((lambda (_%g164057164089%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g164057164089%_))
                                               (let ((_%$e164102%_
                                                      (let ((__tmp172900
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp172900 _%g164057164089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e164102%_
                                                     _%$e164102%_
                                                     (let ((_%marks164106%_
                                                            (##direct-structure-ref
                                                             _%g164057164089%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks164106%_)
                                                           (_%generate-simple164047%_
                                                            _%g164057164089%_)
                                                           (_%generate-serialized164048%_
                                                            _%g164057164089%_
                                                            _%marks164106%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g164057164089%_))))
                                         _%hd164062164084%_)
                                        (_%g164055164068%_
                                         _%g164056164071%_))))
                                (_%g164055164068%_ _%g164056164071%_))))
                        (_%g164055164068%_ _%g164056164071%_)))))
            (_%g164054164108%_ _%stx164043%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self163974%_ _%stx163975%_)
        (let* ((_%g163977163994%_
                (lambda (_%g163978163991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163978163991%_))))
               (_%g163976164039%_
                (lambda (_%g163978163997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163978163997%_))
                      (let ((_%e163981163999%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163978163997%_))))
                        (let ((_%hd163982164002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163981163999%_)))
                              (_%tl163983164004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163981163999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163983164004%_))
                              (let ((_%e163984164007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163983164004%_))))
                                (let ((_%hd163985164010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163984164007%_)))
                                      (_%tl163986164012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163984164007%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163986164012%_))
                                      (let ((_%e163987164015%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163986164012%_))))
                                        (let ((_%hd163988164018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163987164015%_)))
                                              (_%tl163989164020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163987164015%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163989164020%_))
                                              ((lambda (_%g163979164023%_
                                                        _%g163980164024%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g163980164024%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self163974%_
                              _%g163979164023%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163988164018%_
                                               _%hd163985164010%_)
                                              (_%g163977163994%_
                                               _%g163978163997%_))))
                                      (_%g163977163994%_ _%g163978163997%_))))
                              (_%g163977163994%_ _%g163978163997%_))))
                      (_%g163977163994%_ _%g163978163997%_)))))
          (_%g163976164039%_ _%stx163975%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self163923%_ _%stx163924%_)
        (let* ((_%g163926163936%_
                (lambda (_%g163927163933%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163927163933%_))))
               (_%g163925163971%_
                (lambda (_%g163927163939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163927163939%_))
                      (let ((_%e163929163941%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163927163939%_))))
                        (let ((_%hd163930163944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163929163941%_)))
                              (_%tl163931163946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163929163941%_))))
                          ((lambda (_%g163928163949%_)
                             (let* ((_%c-body163963%_
                                     (map (lambda (_%g163958163960%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self163923%_
                                               _%g163958163960%_)))
                                          _%g163928163949%_))
                                    (_%c-body163968%_
                                     (let ((__tmp172901
                                            (lambda (_%$obj163965%_)
                                              (not (eq? _%$obj163965%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp172901
                                        _%c-body163963%_))))
                               (cons '%#begin _%c-body163968%_)))
                           _%tl163931163946%_)))
                      (_%g163926163936%_ _%g163927163939%_)))))
          (_%g163925163971%_ _%stx163924%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self163828%_ _%stx163829%_)
        (let* ((_%g163831163841%_
                (lambda (_%g163832163838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163832163838%_))))
               (_%g163830163920%_
                (lambda (_%g163832163844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163832163844%_))
                      (let ((_%e163834163846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163832163844%_))))
                        (let ((_%hd163835163849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163834163846%_)))
                              (_%tl163836163851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163834163846%_))))
                          ((lambda (_%g163833163854%_)
                             (let* ((_%phi163864%_
                                     (let ((__tmp172902
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp172902 '1)))
                                    (_%block163866%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self163828%_ 'state))
                                      _%phi163864%_))
                                    (_%compiled163869%_
                                     (let ((__tmp172903
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self163828%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g163833163854%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp172903
                                        gx#current-expander-phi
                                        _%phi163864%_)))
                                    (_%g163872163882%_
                                     (lambda (_%g163873163879%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g163873163879%_))))
                                    (_%g163871163917%_
                                     (lambda (_%g163873163885%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g163873163885%_))
                                           (let ((_%e163875163887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g163873163885%_))))
                                             (let ((_%hd163876163890%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e163875163887%_)))
                                                   (_%tl163877163892%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e163875163887%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd163876163890%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd163876163890%_))
                                                       ((lambda (_%g163874163895%_)
                                                          (let ((_%c-body163912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj163909%_)
                                   (not (eq? _%$obj163909%_ '#!void)))
                                 _%g163874163895%_)))
                    (if _%block163866%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block163866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body163912%_))
                        (if (null? _%c-body163912%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body163912%_)))))
                _%tl163877163892%_)
               (_%g163872163882%_ _%g163873163885%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g163872163882%_
                                                    _%g163873163885%_))))
                                           (_%g163872163882%_
                                            _%g163873163885%_)))))
                               (_%g163871163917%_ _%compiled163869%_)))
                           _%tl163836163851%_)))
                      (_%g163831163841%_ _%g163832163844%_)))))
          (_%g163830163920%_ _%stx163829%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self163759%_ _%stx163760%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163759%_ 'state)))
        (let* ((_%g163762163776%_
                (lambda (_%g163763163773%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163763163773%_))))
               (_%g163761163825%_
                (lambda (_%g163763163779%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163763163779%_))
                      (let ((_%e163766163781%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163763163779%_))))
                        (let ((_%hd163767163784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163766163781%_)))
                              (_%tl163768163786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163766163781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163768163786%_))
                              (let ((_%e163769163789%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163768163786%_))))
                                (let ((_%hd163770163792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163769163789%_)))
                                      (_%tl163771163794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163769163789%_))))
                                  ((lambda (_%g163764163797%_
                                            _%g163765163798%_)
                                     (let ((_%key163811%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g163765163798%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key163811%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx163760%_
                                              _%g163765163798%_
                                              _%key163811%_)))
                                       (let* ((_%ctx163813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g163765163798%_)))
                                              (_%code163816%_
                                               (let ((__tmp172904
                                                      (lambda ()
                                                        (let ((__tmp172905
                                                               (##structure-ref
                                                                _%ctx163813%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self163759%_
                                                           __tmp172905)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp172904
                                                  gx#current-expander-context
                                                  _%ctx163813%_)))
                                              (_%rt163818%_
                                               (let ((__tmp172906
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp172906
                                                  _%ctx163813%_)))
                                              (_%loader163820%_
                                               (if _%rt163818%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt163818%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid163822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g163765163798%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self163759%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid163822%_
                                                     (cons _%code163816%_
                                                           _%loader163820%_))))))
                                   _%tl163771163794%_
                                   _%hd163770163792%_)))
                              (_%g163762163776%_ _%g163763163779%_))))
                      (_%g163762163776%_ _%g163763163779%_)))))
          (_%g163761163825%_ _%stx163760%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx163746%_ _%context-chain163747%_)
        (let _%lp163749%_ ((_%ctx163751%_ _%ctx163746%_) (_%path163752%_ '()))
          (let ((_%super163754%_
                 (##structure-ref _%ctx163751%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super163754%_ _%context-chain163747%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx163751%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path163752%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super163754%_
                       'gx#module-context::t))
                    (_%lp163749%_
                     _%super163754%_
                     (cons (car (##structure-ref
                                 _%ctx163751%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path163752%_))
                    (cons (let ((__tmp172907
                                 (##structure-ref
                                  _%ctx163751%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp172907))
                          _%path163752%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp163739%_ ((_%ctx163741%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r163742%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx163741%_ 'gx#module-context::t))
              (_%lp163739%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx163741%_ '3 '#f '#f))
               (cons _%ctx163741%_ _%r163742%_))
              _%r163742%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self163504%_ _%stx163505%_)
        (letrec* ((_%context-chain163507%_ (gxc#current-context-chain))
                  (_%make-import-spec163508%_
                   (lambda (_%in163676%_)
                     (let* ((_%in163677163689%_ _%in163676%_)
                            (_%E163679163692%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in163677163689%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K163680163702%_
                             (lambda (_%phi163695%_
                                      _%name163696%_
                                      _%src-name163697%_
                                      _%src-phi163698%_
                                      _%src-key163699%_
                                      _%src-ctx163700%_)
                               (cons _%phi163695%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name163696%_)
                                           (cons _%src-phi163698%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name163697%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in163677163689%_
                              'gx#module-import::t))
                           (let ((_%e163681163705%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in163677163689%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e163681163705%_
                                    'gx#module-export::t))
                                 (let* ((_%e163684163708%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163681163705%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx163711%_ _%e163684163708%_)
                                        (_%e163685163713%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163681163705%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key163716%_ _%e163685163713%_)
                                        (_%e163686163718%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163681163705%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi163721%_ _%e163686163718%_)
                                        (_%e163687163723%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163681163705%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name163726%_ _%e163687163723%_)
                                        (_%e163682163728%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163677163689%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name163731%_ _%e163682163728%_)
                                        (_%e163683163733%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163677163689%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi163736%_ _%e163683163733%_))
                                   (_%K163680163702%_
                                    _%phi163736%_
                                    _%name163731%_
                                    _%src-name163726%_
                                    _%src-phi163721%_
                                    _%src-key163716%_
                                    _%src-ctx163711%_))
                                 (_%E163679163692%_)))
                           (_%E163679163692%_)))))
                  (_%make-import-path163509%_
                   (lambda (_%ctx163674%_)
                     (gxc#generate-meta-import-path
                      _%ctx163674%_
                      _%context-chain163507%_)))
                  (_%make-import-spec-in163510%_
                   (lambda (_%ctx163671%_ _%in163672%_)
                     (cons 'spec:
                           (cons (_%make-import-path163509%_ _%ctx163671%_)
                                 (reverse _%in163672%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self163504%_ 'state)))
          (let* ((_%g163512163522%_
                  (lambda (_%g163513163519%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163513163519%_))))
                 (_%g163511163668%_
                  (lambda (_%g163513163525%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163513163525%_))
                        (let ((_%e163515163527%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163513163525%_))))
                          (let ((_%hd163516163530%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163515163527%_)))
                                (_%tl163517163532%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163515163527%_))))
                            ((lambda (_%g163514163535%_)
                               (let _%lp163546%_ ((_%rest163548%_
                                                   _%g163514163535%_)
                                                  (_%current-src163549%_ '#f)
                                                  (_%current-in163550%_ '())
                                                  (_%r163551%_ '()))
                                 (let* ((_%rest163552163560%_ _%rest163548%_)
                                        (_%else163554163570%_
                                         (lambda ()
                                           (let ((_%r163568%_
                                                  (if _%current-src163549%_
                                                      (cons (_%make-import-spec-in163510%_
                                                             _%current-src163549%_
                                                             _%current-in163550%_)
                                                            _%r163551%_)
                                                      _%r163551%_)))
                                             (cons '%#import
                                                   (reverse _%r163568%_)))))
                                        (_%K163556163656%_
                                         (lambda (_%rest163573%_ _%in163574%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in163574%_
                                                  'gx#module-import::t))
                                               (let* ((_%in163576163583%_
                                                       _%in163574%_)
                                                      (_%E163578163586%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in163576163583%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K163579163594%_
               (lambda (_%src-ctx163589%_)
                 (if (eq? _%current-src163549%_ _%src-ctx163589%_)
                     (_%lp163546%_
                      _%rest163573%_
                      _%current-src163549%_
                      (cons (_%make-import-spec163508%_ _%in163574%_)
                            _%current-in163550%_)
                      _%r163551%_)
                     (if _%current-src163549%_
                         (_%lp163546%_
                          _%rest163573%_
                          _%src-ctx163589%_
                          (cons (_%make-import-spec163508%_ _%in163574%_) '())
                          (cons (_%make-import-spec-in163510%_
                                 _%current-src163549%_
                                 _%current-in163550%_)
                                _%r163551%_))
                         (_%lp163546%_
                          _%rest163573%_
                          _%src-ctx163589%_
                          (cons (_%make-import-spec163508%_ _%in163574%_) '())
                          _%r163551%_)))))
              (_%e163580163597%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in163576163583%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e163580163597%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163581163600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e163580163597%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx163603%_ _%e163581163600%_))
               (_%K163579163594%_ _%src-ctx163603%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163578163586%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in163574%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi163606%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163574%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src163608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163574%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in163648%_
                                                           (let* ((_%g163609163618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path163509%_ _%src163608%_))
                          (_%E163612163622%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g163609163618%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K163614163638%_
                            (lambda (_%path163636%_) _%path163636%_))
                           (_%K163613163628%_
                            (lambda (_%path163626%_)
                              (cons 'in: _%path163626%_))))
                       (if (pair? _%g163609163618%_)
                           (let ((_%tl163616163643%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g163609163618%_)))
                                 (_%hd163615163641%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g163609163618%_))))
                             (if (null? _%tl163616163643%_)
                                 (let ((_%path163646%_ _%hd163615163641%_))
                                   (_%K163614163638%_ _%path163646%_))
                                 (let ((_%path163631%_ _%g163609163618%_))
                                   (_%K163613163628%_ _%path163631%_))))
                           (let ((_%path163631%_ _%g163609163618%_))
                             (_%K163613163628%_ _%path163631%_))))))
                  (_%r163650%_
                   (if _%current-src163549%_
                       (cons (_%make-import-spec-in163510%_
                              _%current-src163549%_
                              _%current-in163550%_)
                             _%r163551%_)
                       _%r163551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp163546%_
                                                      _%rest163573%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi163606%_)
                                                                _%src-in163648%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi163606%_
                                    (cons _%src-in163648%_ '()))))
                    _%r163650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in163574%_
                                                          'gx#module-context::t))
                                                       (let ((_%r163654%_
                                                              (if _%current-src163549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in163510%_
                                 _%current-src163549%_
                                 _%current-in163550%_)
                                _%r163551%_)
                          _%r163551%_)))
                 (_%lp163546%_
                  _%rest163573%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path163509%_ _%in163574%_))
                        _%r163654%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest163552163560%_)
                                       (let ((_%hd163557163659%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163552163560%_)))
                                             (_%tl163558163661%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163552163560%_))))
                                         (let* ((_%in163664%_
                                                 _%hd163557163659%_)
                                                (_%rest163666%_
                                                 _%tl163558163661%_))
                                           (_%K163556163656%_
                                            _%rest163666%_
                                            _%in163664%_)))
                                       (_%else163554163570%_)))))
                             _%tl163517163532%_)))
                        (_%g163512163522%_ _%g163513163525%_)))))
            (_%g163511163668%_ _%stx163505%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self163314%_ _%stx163315%_)
        (letrec* ((_%context-chain163317%_ (gxc#current-context-chain))
                  (_%make-import-path163318%_
                   (lambda (_%ctx163502%_)
                     (gxc#generate-meta-import-path
                      _%ctx163502%_
                      _%context-chain163317%_))))
          (let* ((_%g163320163330%_
                  (lambda (_%g163321163327%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163321163327%_))))
                 (_%g163319163499%_
                  (lambda (_%g163321163333%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163321163333%_))
                        (let ((_%e163323163335%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163321163333%_))))
                          (let ((_%hd163324163338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163323163335%_)))
                                (_%tl163325163340%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163323163335%_))))
                            ((lambda (_%g163322163343%_)
                               (let _%lp163354%_ ((_%rest163356%_
                                                   _%g163322163343%_)
                                                  (_%r163357%_ '()))
                                 (let* ((_%rest163358163366%_ _%rest163356%_)
                                        (_%else163360163374%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r163357%_))))
                                        (_%K163362163487%_
                                         (lambda (_%rest163377%_ _%out163378%_)
                                           (let* ((_%out163379163392%_
                                                   _%out163378%_)
                                                  (_%E163382163396%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out163379163392%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163386163466%_
                                                    (lambda (_%name163462%_
                                                             _%phi163463%_
                                                             _%key163464%_)
                                                      (_%lp163354%_
                                                       _%rest163377%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi163463%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key163464%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name163462%_)
                                             '()))))
                     _%r163357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163383163446%_
                                                    (lambda (_%phi163400%_
                                                             _%src163401%_)
                                                      (let* ((_%out163441%_
                                                              (if _%src163401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g163402163411%_
                                              (_%make-import-path163318%_
                                               _%src163401%_))
                                             (_%E163405163415%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g163402163411%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K163407163431%_
                                               (lambda (_%path163429%_)
                                                 _%path163429%_))
                                              (_%K163406163421%_
                                               (lambda (_%path163419%_)
                                                 (cons 'in: _%path163419%_))))
                                          (if (pair? _%g163402163411%_)
                                              (let ((_%tl163409163436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g163402163411%_)))
                                                    (_%hd163408163434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g163402163411%_))))
                                                (if (null? _%tl163409163436%_)
                                                    (let ((_%path163439%_
                                                           _%hd163408163434%_))
                                                      (_%K163407163431%_
                                                       _%path163439%_))
                                                    (let ((_%path163424%_
                                                           _%g163402163411%_))
                                                      (_%K163406163421%_
                                                       _%path163424%_))))
                                              (let ((_%path163424%_
                                                     _%g163402163411%_))
                                                (_%K163406163421%_
                                                 _%path163424%_)))))
                                      '()))
                          '#t))
                     (_%out163443%_
                      (if (fxzero? _%phi163400%_)
                          _%out163441%_
                          (cons 'phi:
                                (cons _%phi163400%_
                                      (cons _%out163441%_ '()))))))
                (_%lp163354%_
                 _%rest163377%_
                 (cons _%out163443%_ _%r163357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match163381163459%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out163379163392%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e163384163449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163379163392%_
                               '1
                               '#f
                               '#f)))
                           (_%e163385163454%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163379163392%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src163452%_ _%e163384163449%_)
                            (_%phi163457%_ _%e163385163454%_))
                        (_%K163383163446%_ _%phi163457%_ _%src163452%_)))
                    (_%E163382163396%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out163379163392%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163387163469%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out163379163392%_
                        '1
                        '#f
                        '#f)))
                    (_%e163388163472%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163379163392%_
                        '2
                        '#f
                        '#f)))
                    (_%e163389163477%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163379163392%_
                        '3
                        '#f
                        '#f)))
                    (_%e163390163482%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163379163392%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key163475%_ _%e163388163472%_)
                     (_%phi163480%_ _%e163389163477%_)
                     (_%name163485%_ _%e163390163482%_))
                 (_%K163386163466%_
                  _%name163485%_
                  _%phi163480%_
                  _%key163475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match163381163459%_))))))))
                                   (if (pair? _%rest163358163366%_)
                                       (let ((_%hd163363163490%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163358163366%_)))
                                             (_%tl163364163492%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163358163366%_))))
                                         (let* ((_%out163495%_
                                                 _%hd163363163490%_)
                                                (_%rest163497%_
                                                 _%tl163364163492%_))
                                           (_%K163362163487%_
                                            _%rest163497%_
                                            _%out163495%_)))
                                       (_%else163360163374%_)))))
                             _%tl163325163340%_)))
                        (_%g163320163330%_ _%g163321163333%_)))))
            (_%g163319163499%_ _%stx163315%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self163275%_ _%stx163276%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163275%_ 'state)))
        (let* ((_%g163278163288%_
                (lambda (_%g163279163285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163279163285%_))))
               (_%g163277163311%_
                (lambda (_%g163279163291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163279163291%_))
                      (let ((_%e163281163293%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163279163291%_))))
                        (let ((_%hd163282163296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163281163293%_)))
                              (_%tl163283163298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163281163293%_))))
                          ((lambda (_%g163280163301%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g163280163301%_)))
                           _%tl163283163298%_)))
                      (_%g163278163288%_ _%g163279163291%_)))))
          (_%g163277163311%_ _%stx163276%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self163150%_ _%stx163151%_)
        (letrec ((_%generate1163153%_
                  (lambda (_%id163270%_ _%eid163271%_)
                    (let ((_%eid163273%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid163271%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid163273%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx163151%_
                             _%eid163273%_)))
                      (cons (gxc#generate-runtime-identifier _%id163270%_)
                            (cons _%eid163273%_ '()))))))
          (let* ((_%g163155163183%_
                  (lambda (_%g163156163180%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163156163180%_))))
                 (_%g163154163267%_
                  (lambda (_%g163156163186%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163156163186%_))
                        (let ((_%e163159163188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163156163186%_))))
                          (let ((_%hd163160163191%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163159163188%_)))
                                (_%tl163161163193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163159163188%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl163161163193%_))
                                (let ((_g172908_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl163161163193%_
                                          '0))))
                                  (begin
                                    (let ((_g172909_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172908_)
                                                 (##values-length _g172908_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172909_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172909_)))
                                    (let ((_%target163162163196%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172908_ 0)))
                                          (_%tl163164163198%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g172908_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163164163198%_))
                                          (letrec ((_%loop163165163201%_
                                                    (lambda (_%hd163163163204%_
                                                             _%eid163169163206%_
                                                             _%id163170163207%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd163163163204%_))
                                                          (let ((_%e163166163209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd163163163204%_))))
                    (let ((_%lp-hd163167163212%_
                           (let ()
                             (declare (not safe))
                             (##car _%e163166163209%_)))
                          (_%lp-tl163168163214%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e163166163209%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd163167163212%_))
                          (let ((_%e163173163217%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd163167163212%_))))
                            (let ((_%hd163174163220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e163173163217%_)))
                                  (_%tl163175163222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e163173163217%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl163175163222%_))
                                  (let ((_%e163176163225%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl163175163222%_))))
                                    (let ((_%hd163177163228%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e163176163225%_)))
                                          (_%tl163178163230%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e163176163225%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163178163230%_))
                                          (_%loop163165163201%_
                                           _%lp-tl163168163214%_
                                           (cons _%hd163177163228%_
                                                 _%eid163169163206%_)
                                           (cons _%hd163174163220%_
                                                 _%id163170163207%_))
                                          (_%g163155163183%_
                                           _%g163156163186%_))))
                                  (_%g163155163183%_ _%g163156163186%_))))
                          (_%g163155163183%_ _%g163156163186%_))))
                  (let ((_%eid163171163233%_ (reverse _%eid163169163206%_))
                        (_%id163172163234%_ (reverse _%id163170163207%_)))
                    ((lambda (_%g163157163236%_ _%g163158163237%_)
                       (cons '%#extern
                             (map _%generate1163153%_
                                  (let ((__tmp172910
                                         (lambda (_%g163252163255%_
                                                  _%g163253163257%_)
                                           (cons _%g163252163255%_
                                                 _%g163253163257%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp172910
                                     '()
                                     _%g163158163237%_))
                                  (let ((__tmp172911
                                         (lambda (_%g163259163262%_
                                                  _%g163260163264%_)
                                           (cons _%g163259163262%_
                                                 _%g163260163264%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp172911
                                     '()
                                     _%g163157163236%_)))))
                     _%eid163171163233%_
                     _%id163172163234%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop163165163201%_
                                             _%target163162163196%_
                                             '()
                                             '()))
                                          (_%g163155163183%_
                                           _%g163156163186%_)))))
                                (_%g163155163183%_ _%g163156163186%_))))
                        (_%g163155163183%_ _%g163156163186%_)))))
            (_%g163154163267%_ _%stx163151%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self162940%_ _%stx162941%_)
        (letrec ((_%generate1162943%_
                  (lambda (_%id163145%_)
                    (let ((_%eid163147%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id163145%_)))
                          (_%ident163148%_
                           (gxc#generate-runtime-identifier _%id163145%_)))
                      (cons '%#define-runtime
                            (cons _%ident163148%_ (cons _%eid163147%_ '()))))))
                 (_%generate*162944%_
                  (lambda (_%all163113%_)
                    (let* ((_%all163114163122%_ _%all163113%_)
                           (_%else163116163130%_
                            (lambda () (cons '%#begin _%all163113%_)))
                           (_%K163118163135%_
                            (lambda (_%one163133%_) _%one163133%_)))
                      (if (pair? _%all163114163122%_)
                          (let ((_%hd163119163138%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all163114163122%_)))
                                (_%tl163120163140%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all163114163122%_))))
                            (let ((_%one163143%_ _%hd163119163138%_))
                              (if (null? _%tl163120163140%_)
                                  (_%K163118163135%_ _%one163143%_)
                                  (_%else163116163130%_))))
                          (_%else163116163130%_))))))
          (let* ((_%g162946162963%_
                  (lambda (_%g162947162960%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g162947162960%_))))
                 (_%g162945163110%_
                  (lambda (_%g162947162966%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g162947162966%_))
                        (let ((_%e162950162968%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g162947162966%_))))
                          (let ((_%hd162951162971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e162950162968%_)))
                                (_%tl162952162973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e162950162968%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl162952162973%_))
                                (let ((_%e162953162976%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl162952162973%_))))
                                  (let ((_%hd162954162979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e162953162976%_)))
                                        (_%tl162955162981%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e162953162976%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl162955162981%_))
                                        (let ((_%e162956162984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl162955162981%_))))
                                          (let ((_%hd162957162987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e162956162984%_)))
                                                (_%tl162958162989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e162956162984%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl162958162989%_))
                                                ((lambda (_%g162948162992%_
                                                          _%g162949162993%_)
                                                   (let _%lp163009%_ ((_%rest163011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g162949162993%_)
                              (_%r163012%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx172646172647%_
                                                             _%rest163011%_)
                                                            (_%g163017163034%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx172646172647%_)))))
               (let ((_%__kont172648172649%_
                      (lambda (_%g163019163097%_)
                        (_%lp163009%_ _%g163019163097%_ _%r163012%_)))
                     (_%__kont172650172651%_
                      (lambda (_%g163024163070%_ _%g163025163071%_)
                        (_%lp163009%_
                         _%g163024163070%_
                         (cons (_%generate1162943%_ _%g163025163071%_)
                               _%r163012%_))))
                     (_%__kont172652172653%_
                      (lambda (_%g163029163046%_)
                        (_%generate*162944%_
                         (let ((__tmp172912
                                (cons (_%generate1162943%_ _%g163029163046%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp172912 _%r163012%_)))))
                     (_%__kont172654172655%_
                      (lambda () (_%generate*162944%_ (reverse _%r163012%_)))))
                 (let ((_%g163015163057%_
                        (lambda ()
                          (let ((_%g163029163046%_ _%__stx172646172647%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g163029163046%_))
                                (_%__kont172652172653%_ _%g163029163046%_)
                                (_%__kont172654172655%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx172646172647%_))
                       (let ((_%e163020163086%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx172646172647%_))))
                         (let ((_%tl163022163091%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e163020163086%_)))
                               (_%hd163021163089%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e163020163086%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd163021163089%_))
                               (let ((_%e163023163094%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd163021163089%_))))
                                 (if (equal? _%e163023163094%_ '#f)
                                     (_%__kont172648172649%_
                                      _%tl163022163091%_)
                                     (_%__kont172650172651%_
                                      _%tl163022163091%_
                                      _%hd163021163089%_)))
                               (_%__kont172650172651%_
                                _%tl163022163091%_
                                _%hd163021163089%_))))
                       (let () (declare (not safe)) (_%g163015163057%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd162957162987%_
                                                 _%hd162954162979%_)
                                                (_%g162946162963%_
                                                 _%g162947162966%_))))
                                        (_%g162946162963%_
                                         _%g162947162966%_))))
                                (_%g162946162963%_ _%g162947162966%_))))
                        (_%g162946162963%_ _%g162947162966%_)))))
            (_%g162945163110%_ _%stx162941%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self162837%_ _%stx162838%_)
        (let* ((_%g162840162857%_
                (lambda (_%g162841162854%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162841162854%_))))
               (_%g162839162937%_
                (lambda (_%g162841162860%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162841162860%_))
                      (let ((_%e162844162862%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162841162860%_))))
                        (let ((_%hd162845162865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162844162862%_)))
                              (_%tl162846162867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162844162862%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162846162867%_))
                              (let ((_%e162847162870%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162846162867%_))))
                                (let ((_%hd162848162873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162847162870%_)))
                                      (_%tl162849162875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162847162870%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162849162875%_))
                                      (let ((_%e162850162878%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162849162875%_))))
                                        (let ((_%hd162851162881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162850162878%_)))
                                              (_%tl162852162883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162850162878%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162852162883%_))
                                              ((lambda (_%g162842162886%_
                                                        _%g162843162887%_)
                                                 (let* ((_%eid162902%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g162843162887%_)))
                                                        (_%phi162904%_
                                                         (let ((__tmp172913
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp172913 '1)))
                (_%block162906%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self162837%_ 'state))
                  _%phi162904%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g162909162916%_
                                                           (lambda (_%g162910162913%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g162910162913%_))))
                  (_%g162908162934%_
                   (lambda (_%g162910162919%_)
                     ((lambda (_%g162911162921%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self162837%_ 'state))
                         _%phi162904%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g162911162921%_
                                     (cons _%g162842162886%_ '())))))
                      _%g162910162919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g162908162934%_
                                                      _%eid162902%_))
                                                   (if _%block162906%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block162906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%g162843162887%_)
                                             (cons _%eid162902%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%g162843162887%_)
                           (cons _%eid162902%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd162851162881%_
                                               _%hd162848162873%_)
                                              (_%g162840162857%_
                                               _%g162841162860%_))))
                                      (_%g162840162857%_ _%g162841162860%_))))
                              (_%g162840162857%_ _%g162841162860%_))))
                      (_%g162840162857%_ _%g162841162860%_)))))
          (_%g162839162937%_ _%stx162838%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self162769%_ _%stx162770%_)
        (let* ((_%g162772162789%_
                (lambda (_%g162773162786%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162773162786%_))))
               (_%g162771162834%_
                (lambda (_%g162773162792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162773162792%_))
                      (let ((_%e162776162794%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162773162792%_))))
                        (let ((_%hd162777162797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162776162794%_)))
                              (_%tl162778162799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162776162794%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162778162799%_))
                              (let ((_%e162779162802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162778162799%_))))
                                (let ((_%hd162780162805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162779162802%_)))
                                      (_%tl162781162807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162779162802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162781162807%_))
                                      (let ((_%e162782162810%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162781162807%_))))
                                        (let ((_%hd162783162813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162782162810%_)))
                                              (_%tl162784162815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162782162810%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162784162815%_))
                                              ((lambda (_%g162774162818%_
                                                        _%g162775162819%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%g162775162819%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g162774162818%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd162783162813%_
                                               _%hd162780162805%_)
                                              (_%g162772162789%_
                                               _%g162773162792%_))))
                                      (_%g162772162789%_ _%g162773162792%_))))
                              (_%g162772162789%_ _%g162773162792%_))))
                      (_%g162772162789%_ _%g162773162792%_)))))
          (_%g162771162834%_ _%stx162770%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self162766%_ _%stx162767%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162766%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162767%_)
        (gxc#generate-meta-define-values% _%self162766%_ _%stx162767%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self162763%_ _%stx162764%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162763%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162764%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp172915 (list)) (__tmp172914 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp172915
         '(src n open blocks)
         __tmp172914
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args162760%_
        (apply make-instance gxc#meta-state::t _%$args162760%_)))
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
      (lambda (_%self162746%_ _%ctx162747%_)
        (let ((_%self162750%_ _%self162746%_))
          (if (let ((__tmp172916
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162750%_))))
                (declare (not safe))
                (##fx< '4 __tmp172916))
              (begin
                (let ((__tmp172917
                       (let ((__tmp172918
                              (##structure-ref
                               _%ctx162747%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp172918))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162750%_
                   __tmp172917
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162750%_ '1 '2 '#f '#f))
                (let ((__tmp172919
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162750%_
                   __tmp172919
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162750%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp172920
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162750%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self162750%_
                       '4
                       __tmp172920))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp172922 (list)) (__tmp172921 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp172922
         '(ctx phi n code)
         __tmp172921
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args162621%_
        (apply make-instance gxc#meta-state-block::t _%$args162621%_)))
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
      (lambda (_%state162581%_ _%phi162582%_)
        (let* ((_%state162583162591%_ _%state162581%_)
               (_%E162585162594%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state162583162591%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K162586162603%_
                (lambda (_%open162597%_ _%n162598%_ _%src162599%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open162597%_ _%phi162582%_))
                      '#f
                      (let ((_%block-ref162601%_
                             (let ((__tmp172923 (number->string _%n162598%_)))
                               (declare (not safe))
                               (##string-append
                                _%src162599%_
                                '"~"
                                __tmp172923))))
                        (##structure-set!
                         _%state162581%_
                         (let () (declare (not safe)) (##fx+ _%n162598%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp172924
                               (let ((__tmp172925
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp172925
                                  _%phi162582%_
                                  _%n162598%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open162597%_ _%phi162582%_ __tmp172924))
                        _%block-ref162601%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state162583162591%_
                 'gxc#meta-state::t))
              (let* ((_%e162587162606%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162583162591%_
                         '1
                         '#f
                         '#f)))
                     (_%src162609%_ _%e162587162606%_)
                     (_%e162588162611%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162583162591%_
                         '2
                         '#f
                         '#f)))
                     (_%n162614%_ _%e162588162611%_)
                     (_%e162589162616%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162583162591%_
                         '3
                         '#f
                         '#f)))
                     (_%open162619%_ _%e162589162616%_))
                (_%K162586162603%_ _%open162619%_ _%n162614%_ _%src162609%_))
              (_%E162585162594%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state162575%_ _%phi162576%_ _%stx162577%_)
        (let ((_%block162579%_
               (let ((__tmp172926
                      (##structure-ref
                       _%state162575%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp172926 _%phi162576%_))))
          (##structure-set!
           _%block162579%_
           (cons _%stx162577%_
                 (##structure-ref
                  _%block162579%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state162569%_)
        (##structure-set!
         _%state162569%_
         (let ((__tmp172929
                (lambda (_%_162571%_ _%block162572%_ _%r162573%_)
                  (cons _%block162572%_ _%r162573%_)))
               (__tmp172928
                (##structure-ref _%state162569%_ '4 gxc#meta-state::t '#f))
               (__tmp172927
                (##structure-ref _%state162569%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp172929 __tmp172928 __tmp172927))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state162569%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state162522%_)
        (gxc#meta-state-end-phi! _%state162522%_)
        (let ((__tmp172931
               (lambda (_%block162524%_ _%r162525%_)
                 (let* ((_%block162526162535%_ _%block162524%_)
                        (_%E162528162538%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block162526162535%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K162529162546%_
                         (lambda (_%code162541%_
                                  _%n162542%_
                                  _%phi162543%_
                                  _%ctx162544%_)
                           (if (null? _%code162541%_)
                               _%r162525%_
                               (cons (cons _%ctx162544%_
                                           (cons _%phi162543%_
                                                 (cons _%n162542%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code162541%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r162525%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block162526162535%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e162530162549%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162526162535%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx162552%_ _%e162530162549%_)
                              (_%e162531162554%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162526162535%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi162557%_ _%e162531162554%_)
                              (_%e162532162559%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162526162535%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n162562%_ _%e162532162559%_)
                              (_%e162533162564%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162526162535%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code162567%_ _%e162533162564%_))
                         (_%K162529162546%_
                          _%code162567%_
                          _%n162562%_
                          _%phi162557%_
                          _%ctx162552%_))
                       (_%E162528162538%_)))))
              (__tmp172930
               (##structure-ref _%state162522%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp172931 '() __tmp172930))))
    (define gxc#collect-expression-refs
      (lambda (_%stx162518%_)
        (let ((_%ht162520%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht162520%_ _%stx162518%_)
          _%ht162520%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self162461%_ _%stx162462%_)
        (let* ((_%g162464162477%_
                (lambda (_%g162465162474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162465162474%_))))
               (_%g162463162515%_
                (lambda (_%g162465162480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162465162480%_))
                      (let ((_%e162467162482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162465162480%_))))
                        (let ((_%hd162468162485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162467162482%_)))
                              (_%tl162469162487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162467162482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162469162487%_))
                              (let ((_%e162470162490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162469162487%_))))
                                (let ((_%hd162471162493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162470162490%_)))
                                      (_%tl162472162495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162470162490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162472162495%_))
                                      ((lambda (_%g162466162498%_)
                                         (let* ((_%bind162510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g162466162498%_)))
                                                (_%eid162512%_
                                                 (if _%bind162510%_
                                                     (##structure-ref
                                                      _%bind162510%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g162466162498%_))))
                                                (__tmp172932
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162461%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp172932
                                            _%eid162512%_
                                            _%eid162512%_)))
                                       _%hd162471162493%_)
                                      (_%g162464162477%_ _%g162465162480%_))))
                              (_%g162464162477%_ _%g162465162480%_))))
                      (_%g162464162477%_ _%g162465162480%_)))))
          (_%g162463162515%_ _%stx162462%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self162388%_ _%stx162389%_)
        (let* ((_%g162391162408%_
                (lambda (_%g162392162405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162392162405%_))))
               (_%g162390162458%_
                (lambda (_%g162392162411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162392162411%_))
                      (let ((_%e162395162413%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162392162411%_))))
                        (let ((_%hd162396162416%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162395162413%_)))
                              (_%tl162397162418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162395162413%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162397162418%_))
                              (let ((_%e162398162421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162397162418%_))))
                                (let ((_%hd162399162424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162398162421%_)))
                                      (_%tl162400162426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162398162421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162400162426%_))
                                      (let ((_%e162401162429%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162400162426%_))))
                                        (let ((_%hd162402162432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162401162429%_)))
                                              (_%tl162403162434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162401162429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162403162434%_))
                                              ((lambda (_%g162393162437%_
                                                        _%g162394162438%_)
                                                 (let* ((_%bind162453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g162394162438%_)))
                                                        (_%eid162455%_
                                                         (if _%bind162453%_
                                                             (##structure-ref
                                                              _%bind162453%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162394162438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp172933
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self162388%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp172933
                                                      _%eid162455%_
                                                      _%eid162455%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162388%_
                                                      _%g162393162437%_))))
                                               _%hd162402162432%_
                                               _%hd162399162424%_)
                                              (_%g162391162408%_
                                               _%g162392162411%_))))
                                      (_%g162391162408%_ _%g162392162411%_))))
                              (_%g162391162408%_ _%g162392162411%_))))
                      (_%g162391162408%_ _%g162392162411%_)))))
          (_%g162390162458%_ _%stx162389%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self162345%_ _%stx162346%_)
        (let* ((_%g162348162358%_
                (lambda (_%g162349162355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162349162355%_))))
               (_%g162347162385%_
                (lambda (_%g162349162361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162349162361%_))
                      (let ((_%e162351162363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162349162361%_))))
                        (let ((_%hd162352162366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162351162363%_)))
                              (_%tl162353162368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162351162363%_))))
                          ((lambda (_%g162350162371%_)
                             (let ((__tmp172934
                                    (lambda (_%g162380162382%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self162345%_
                                         _%g162380162382%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp172934 _%g162350162371%_)))
                           _%tl162353162368%_)))
                      (_%g162348162358%_ _%g162349162361%_)))))
          (_%g162347162385%_ _%stx162346%_))))
    (define gxc#count-values-single%
      (lambda (_%self162342%_ _%stx162343%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self162210%_ _%stx162211%_)
        (let* ((_%__stx172676172677%_ _%stx162211%_)
               (_%g162214162243%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172676172677%_)))))
          (let ((_%__kont172678172679%_
                 (lambda (_%g162216162309%_ _%g162217162310%_)
                   (length (let ((__tmp172935
                                  (lambda (_%g162331162334%_ _%g162332162336%_)
                                    (cons _%g162331162334%_
                                          _%g162332162336%_))))
                             (declare (not safe))
                             (__foldr1 __tmp172935 '() _%g162216162309%_)))))
                (_%__kont172682172683%_ (lambda () '#f)))
            (let ((_%__match172721172722%_
                   (lambda (_%e162218162255%_
                            _%hd162219162258%_
                            _%tl162220162260%_
                            _%e162221162263%_
                            _%hd162222162266%_
                            _%tl162223162268%_
                            _%e162224162271%_
                            _%hd162225162274%_
                            _%tl162226162276%_
                            _%e162227162279%_
                            _%hd162228162282%_
                            _%tl162229162284%_
                            _%__splice172680172681%_
                            _%target162230162287%_
                            _%tl162232162289%_)
                     (letrec ((_%loop162233162292%_
                               (lambda (_%hd162231162295%_
                                        _%rand162237162297%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd162231162295%_))
                                     (let ((_%e162234162299%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd162231162295%_))))
                                       (let ((_%lp-tl162236162304%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e162234162299%_)))
                                             (_%lp-hd162235162302%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e162234162299%_))))
                                         (_%loop162233162292%_
                                          _%lp-tl162236162304%_
                                          (cons _%lp-hd162235162302%_
                                                _%rand162237162297%_))))
                                     (let ((_%rand162238162307%_
                                            (reverse _%rand162237162297%_)))
                                       (let ((_%g162216162309%_
                                              _%rand162238162307%_)
                                             (_%g162217162310%_
                                              _%hd162228162282%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g162217162310%_
                                                'values))
                                             (_%__kont172678172679%_
                                              _%g162216162309%_
                                              _%g162217162310%_)
                                             (_%__kont172682172683%_))))))))
                       (_%loop162233162292%_ _%target162230162287%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172676172677%_))
                  (let ((_%e162218162255%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172676172677%_))))
                    (let ((_%tl162220162260%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e162218162255%_)))
                          (_%hd162219162258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e162218162255%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl162220162260%_))
                          (let ((_%e162221162263%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl162220162260%_))))
                            (let ((_%tl162223162268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e162221162263%_)))
                                  (_%hd162222162266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e162221162263%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd162222162266%_))
                                  (let ((_%e162224162271%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd162222162266%_))))
                                    (let ((_%tl162226162276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e162224162271%_)))
                                          (_%hd162225162274%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e162224162271%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd162225162274%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd162225162274%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl162226162276%_))
                                                  (let ((_%e162227162279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl162226162276%_))))
                                                    (let ((_%tl162229162284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e162227162279%_)))
                                                          (_%hd162228162282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e162227162279%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl162229162284%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl162223162268%_))
                      (let ((_%__splice172680172681%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl162223162268%_
                                '0))))
                        (let ((_%tl162232162289%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172680172681%_ '1)))
                              (_%target162230162287%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172680172681%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl162232162289%_))
                              (_%__match172721172722%_
                               _%e162218162255%_
                               _%hd162219162258%_
                               _%tl162220162260%_
                               _%e162221162263%_
                               _%hd162222162266%_
                               _%tl162223162268%_
                               _%e162224162271%_
                               _%hd162225162274%_
                               _%tl162226162276%_
                               _%e162227162279%_
                               _%hd162228162282%_
                               _%tl162229162284%_
                               _%__splice172680172681%_
                               _%target162230162287%_
                               _%tl162232162289%_)
                              (_%__kont172682172683%_))))
                      (_%__kont172682172683%_))
                  (_%__kont172682172683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172682172683%_))
                                              (_%__kont172682172683%_))
                                          (_%__kont172682172683%_))))
                                  (_%__kont172682172683%_))))
                          (_%__kont172682172683%_))))
                  (_%__kont172682172683%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self162115%_ _%stx162116%_)
        (let* ((_%g162118162139%_
                (lambda (_%g162119162136%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162119162136%_))))
               (_%g162117162207%_
                (lambda (_%g162119162142%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162119162142%_))
                      (let ((_%e162123162144%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162119162142%_))))
                        (let ((_%hd162124162147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162123162144%_)))
                              (_%tl162125162149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162123162144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162125162149%_))
                              (let ((_%e162126162152%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162125162149%_))))
                                (let ((_%hd162127162155%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162126162152%_)))
                                      (_%tl162128162157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162126162152%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162128162157%_))
                                      (let ((_%e162129162160%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162128162157%_))))
                                        (let ((_%hd162130162163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162129162160%_)))
                                              (_%tl162131162165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162129162160%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl162131162165%_))
                                              (let ((_%e162132162168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl162131162165%_))))
                                                (let ((_%hd162133162171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e162132162168%_)))
                                                      (_%tl162134162173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e162132162168%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl162134162173%_))
                                                      ((lambda (_%g162120162176%_
                                                                _%g162121162177%_
                                                                _%g162122162178%_)
                                                         (let ((_%c1162195162197%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self162115%_
                           _%g162121162177%_))))
                   (if _%c1162195162197%_
                       (let* ((_%c1162199%_ _%c1162195162197%_)
                              (_%c2162200162202%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self162115%_
                                  _%g162120162176%_))))
                         (if _%c2162200162202%_
                             (let ((_%c2162204%_ _%c2162200162202%_))
                               (if (fx= _%c1162199%_ _%c2162204%_)
                                   _%c1162199%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd162133162171%_
               _%hd162130162163%_
               _%hd162127162155%_)
              (_%g162118162139%_ _%g162119162142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g162118162139%_
                                               _%g162119162142%_))))
                                      (_%g162118162139%_ _%g162119162142%_))))
                              (_%g162118162139%_ _%g162119162142%_))))
                      (_%g162118162139%_ _%g162119162142%_)))))
          (_%g162117162207%_ _%stx162116%_))))))
