(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771025402)
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
      (let ((__tmp205136 (list gxc#::void::t))
            (__tmp205135 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp205136
         '()
         __tmp205135
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args203750%_
        (apply make-instance gxc#::collect-bindings::t _%$args203750%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp205137
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
        (__make-atomic-promise __tmp205137)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx203742%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self203745%_
                (let ((__obj205111
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj205111))
               (__tmp205138
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203745%_ _%stx203742%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205138
           gxc#current-compile-method
           _%self203745%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp205140 (list gxc#::void::t))
            (__tmp205139 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp205140
         '(modules)
         __tmp205139
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args203739%_
        (apply make-instance gxc#::lift-modules::t _%$args203739%_)))
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
      (let ((__tmp205141
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
        (__make-atomic-promise __tmp205141)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords203714%_ _%modules203711203715%_ _%stx203716%_)
        (let ((_%modules203719%_
               (if (eq? _%modules203711203715%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules203711203715%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self203721%_
                  (let ((__obj205113
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205113
                       _%modules203719%_
                       '1
                       '#f
                       '#f))
                    __obj205113))
                 (__tmp205142
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self203721%_ _%stx203716%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205142
             gxc#current-compile-method
             _%self203721%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords203728%_ . _%args203729%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords203728%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords203728%_
                  'modules:
                  absent-value))
               _%args203729%_)))
    (define gxc#apply-lift-modules
      (lambda _%args203712203735%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args203712203735%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp205144 (list)) (__tmp205143 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp205144
         '()
         __tmp205143
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args203707%_
        (apply make-instance gxc#::find-runtime-code::t _%$args203707%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp205145
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
        (__make-atomic-promise __tmp205145)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx203699%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self203702%_
                (let ((__obj205115
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj205115))
               (__tmp205146
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203702%_ _%stx203699%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205146
           gxc#current-compile-method
           _%self203702%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp205148 (list gxc#::false::t))
            (__tmp205147 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp205148
         '()
         __tmp205147
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args203696%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args203696%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp205149
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
        (__make-atomic-promise __tmp205149)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx203688%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self203691%_
                (let ((__obj205117
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj205117))
               (__tmp205150
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203691%_ _%stx203688%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205150
           gxc#current-compile-method
           _%self203691%_))))
    (define gxc#::count-values::t
      (let ((__tmp205152 (list gxc#::false-expression::t))
            (__tmp205151 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp205152
         '()
         __tmp205151
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args203685%_
        (apply make-instance gxc#::count-values::t _%$args203685%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp205153
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
        (__make-atomic-promise __tmp205153)))
    (define gxc#apply-count-values
      (lambda (_%stx203677%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self203680%_
                (let ((__obj205119
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj205119))
               (__tmp205154
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203680%_ _%stx203677%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205154
           gxc#current-compile-method
           _%self203680%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp205155 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp205155
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args203674%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args203674%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp205156
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
        (__make-atomic-promise __tmp205156)))
    (define gxc#::generate-loader::t
      (let ((__tmp205158 (list gxc#::generate-runtime-empty::t))
            (__tmp205157 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp205158
         '()
         __tmp205157
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args203670%_
        (apply make-instance gxc#::generate-loader::t _%$args203670%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp205159
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
        (__make-atomic-promise __tmp205159)))
    (define gxc#apply-generate-loader
      (lambda (_%stx203662%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self203665%_
                (let ((__obj205122
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj205122))
               (__tmp205160
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203665%_ _%stx203662%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205160
           gxc#current-compile-method
           _%self203665%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp205161 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp205161
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args203659%_
        (apply make-instance gxc#::generate-runtime::t _%$args203659%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp205162
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
        (__make-atomic-promise __tmp205162)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx203651%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self203654%_
                (let ((__obj205124
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj205124))
               (__tmp205163
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203654%_ _%stx203651%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205163
           gxc#current-compile-method
           _%self203654%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp205165 (list gxc#::generate-runtime::t))
            (__tmp205164 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp205165
         '()
         __tmp205164
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args203648%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args203648%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp205166
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
        (__make-atomic-promise __tmp205166)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx203640%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self203643%_
                (let ((__obj205126
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj205126))
               (__tmp205167
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self203643%_ _%stx203640%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp205167
           gxc#current-compile-method
           _%self203643%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp205168 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp205168
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args203637%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args203637%_)))
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
      (let ((__tmp205169
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
        (__make-atomic-promise __tmp205169)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords203612%_ _%table203609203613%_ _%stx203614%_)
        (let ((_%table203617%_
               (if (eq? _%table203609203613%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table203609203613%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self203619%_
                  (let ((__obj205128
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205128
                       _%table203617%_
                       '1
                       '#f
                       '#f))
                    __obj205128))
                 (__tmp205170
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self203619%_ _%stx203614%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205170
             gxc#current-compile-method
             _%self203619%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords203626%_ . _%args203627%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords203626%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords203626%_
                  'table:
                  absent-value))
               _%args203627%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args203610203633%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args203610203633%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp205172 (list gxc#::void-expression::t))
            (__tmp205171 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp205172
         '(state)
         __tmp205171
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args203605%_
        (apply make-instance gxc#::generate-meta::t _%$args203605%_)))
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
      (let ((__tmp205173
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
        (__make-atomic-promise __tmp205173)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords203580%_ _%state203577203581%_ _%stx203582%_)
        (let ((_%state203585%_
               (if (eq? _%state203577203581%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state203577203581%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self203587%_
                  (let ((__obj205130
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205130
                       _%state203585%_
                       '1
                       '#f
                       '#f))
                    __obj205130))
                 (__tmp205174
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self203587%_ _%stx203582%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205174
             gxc#current-compile-method
             _%self203587%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords203594%_ . _%args203595%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords203594%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords203594%_
                  'state:
                  absent-value))
               _%args203595%_)))
    (define gxc#apply-generate-meta
      (lambda _%args203578203601%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args203578203601%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp205176 (list)) (__tmp205175 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp205176
         '(state)
         __tmp205175
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args203573%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args203573%_)))
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
      (let ((__tmp205177
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
        (__make-atomic-promise __tmp205177)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords203548%_ _%state203545203549%_ _%stx203550%_)
        (let ((_%state203553%_
               (if (eq? _%state203545203549%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state203545203549%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self203555%_
                  (let ((__obj205132
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj205132
                       _%state203553%_
                       '1
                       '#f
                       '#f))
                    __obj205132))
                 (__tmp205178
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self203555%_ _%stx203550%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp205178
             gxc#current-compile-method
             _%self203555%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords203562%_ . _%args203563%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords203562%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords203562%_
                  'state:
                  absent-value))
               _%args203563%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args203546203569%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args203546203569%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self203474%_ _%stx203475%_)
        (let* ((_%g203477203494%_
                (lambda (_%g203478203491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203478203491%_))))
               (_%g203476203541%_
                (lambda (_%g203478203497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203478203497%_))
                      (let ((_%e203481203499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203478203497%_))))
                        (let ((_%hd203482203502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203481203499%_)))
                              (_%tl203483203504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203481203499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203483203504%_))
                              (let ((_%e203484203507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203483203504%_))))
                                (let ((_%hd203485203510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203484203507%_)))
                                      (_%tl203486203512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203484203507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203486203512%_))
                                      (let ((_%e203487203515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203486203512%_))))
                                        (let ((_%hd203488203518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203487203515%_)))
                                              (_%tl203489203520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203487203515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203489203520%_))
                                              ((lambda (_%g203479203523%_
                                                        _%g203480203524%_)
                                                 (let ((__tmp205179
                                                        (lambda (_%bind203539%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind203539%_))
                      (gxc#add-module-binding! _%bind203539%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp205179
                                                    _%g203480203524%_)))
                                               _%hd203488203518%_
                                               _%hd203485203510%_)
                                              (_%g203477203494%_
                                               _%g203478203497%_))))
                                      (_%g203477203494%_ _%g203478203497%_))))
                              (_%g203477203494%_ _%g203478203497%_))))
                      (_%g203477203494%_ _%g203478203497%_)))))
          (_%g203476203541%_ _%stx203475%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self203406%_ _%stx203407%_)
        (let* ((_%g203409203426%_
                (lambda (_%g203410203423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203410203423%_))))
               (_%g203408203471%_
                (lambda (_%g203410203429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203410203429%_))
                      (let ((_%e203413203431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203410203429%_))))
                        (let ((_%hd203414203434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203413203431%_)))
                              (_%tl203415203436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203413203431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203415203436%_))
                              (let ((_%e203416203439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203415203436%_))))
                                (let ((_%hd203417203442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203416203439%_)))
                                      (_%tl203418203444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203416203439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203418203444%_))
                                      (let ((_%e203419203447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203418203444%_))))
                                        (let ((_%hd203420203450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203419203447%_)))
                                              (_%tl203421203452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203419203447%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203421203452%_))
                                              ((lambda (_%g203411203455%_
                                                        _%g203412203456%_)
                                                 (gxc#add-module-binding!
                                                  _%g203412203456%_
                                                  '#t))
                                               _%hd203420203450%_
                                               _%hd203417203442%_)
                                              (_%g203409203426%_
                                               _%g203410203429%_))))
                                      (_%g203409203426%_ _%g203410203429%_))))
                              (_%g203409203426%_ _%g203410203429%_))))
                      (_%g203409203426%_ _%g203410203429%_)))))
          (_%g203408203471%_ _%stx203407%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self203348%_ _%stx203349%_)
        (let* ((_%g203351203365%_
                (lambda (_%g203352203362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203352203362%_))))
               (_%g203350203403%_
                (lambda (_%g203352203368%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203352203368%_))
                      (let ((_%e203355203370%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203352203368%_))))
                        (let ((_%hd203356203373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203355203370%_)))
                              (_%tl203357203375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203355203370%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203357203375%_))
                              (let ((_%e203358203378%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203357203375%_))))
                                (let ((_%hd203359203381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203358203378%_)))
                                      (_%tl203360203383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203358203378%_))))
                                  ((lambda (_%g203353203386%_
                                            _%g203354203387%_)
                                     (let ((_%ctx203400%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g203354203387%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self203348%_
                                           'modules))
                                        (cons _%ctx203400%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self203348%_
                                                        'modules)))))
                                       (let ((__tmp205180
                                              (lambda ()
                                                (let ((__tmp205181
                                                       (##structure-ref
                                                        _%ctx203400%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203348%_
                                                   __tmp205181)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp205180
                                          gx#current-expander-context
                                          _%ctx203400%_))))
                                   _%tl203360203383%_
                                   _%hd203359203381%_)))
                              (_%g203351203365%_ _%g203352203368%_))))
                      (_%g203351203365%_ _%g203352203368%_)))))
          (_%g203350203403%_ _%stx203349%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls203302203304%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls203302203304%_
              (let ((_%decls203306%_ _%decls203302203304%_))
                (let _%lp203308%_ ((_%rest203310%_ _%decls203306%_))
                  (let* ((_%rest203311203319%_ _%rest203310%_)
                         (_%else203313203327%_ (lambda () '#f))
                         (_%K203315203336%_
                          (lambda (_%decls203330%_ _%decl203331%_)
                            (if (equal? _%decl203331%_ '(not safe))
                                '#t
                                (if (equal? _%decl203331%_ '(safe))
                                    '#f
                                    (_%lp203308%_ _%decls203330%_))))))
                    (if (pair? _%rest203311203319%_)
                        (let ((_%hd203316203339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest203311203319%_)))
                              (_%tl203317203341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest203311203319%_))))
                          (let* ((_%decl203344%_ _%hd203316203339%_)
                                 (_%decls203346%_ _%tl203317203341%_))
                            (_%K203315203336%_
                             _%decls203346%_
                             _%decl203344%_)))
                        (_%else203313203327%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id203296%_ _%syntax?203297%_)
        (let ((_%eid203299%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id203296%_))
                '1
                gx#binding::t
                '#f))
              (_%ht203300%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid203299%_))
              '#!void
              (let ((__tmp205182
                     (let ((__tmp205183
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid203299%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp205183 _%syntax?203297%_))))
                (declare (not safe))
                (hash-put! _%ht203300%_ _%eid203299%_ __tmp205182))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self203293%_ _%stx203294%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self203140%_ _%stx203141%_)
        (letrec ((_%simplify203143%_
                  (lambda (_%body203191%_)
                    (let _%lp203193%_ ((_%rest203195%_ _%body203191%_)
                                       (_%r203196%_ '()))
                      (let* ((_%rest203197203205%_ _%rest203195%_)
                             (_%else203199203213%_
                              (lambda () (reverse _%r203196%_)))
                             (_%K203201203281%_
                              (lambda (_%rest203216%_ _%hd203217%_)
                                (let* ((_%hd203218203234%_ _%hd203217%_)
                                       (_%else203222203242%_
                                        (lambda ()
                                          (_%lp203193%_
                                           _%rest203216%_
                                           (cons _%hd203217%_ _%r203196%_)))))
                                  (let ((_%K203230203271%_
                                         (lambda (_%exprs203269%_)
                                           (_%lp203193%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest203216%_
                                               _%exprs203269%_))
                                            _%r203196%_)))
                                        (_%K203225203255%_
                                         (lambda ()
                                           (if (null? _%rest203216%_)
                                               (_%lp203193%_
                                                _%rest203216%_
                                                (cons _%hd203217%_
                                                      _%r203196%_))
                                               (_%lp203193%_
                                                _%rest203216%_
                                                _%r203196%_))))
                                        (_%K203224203247%_
                                         (lambda ()
                                           (if (null? _%rest203216%_)
                                               (_%lp203193%_
                                                _%rest203216%_
                                                (cons _%hd203217%_
                                                      _%r203196%_))
                                               (_%lp203193%_
                                                _%rest203216%_
                                                _%r203196%_)))))
                                    (let ((_%try-match203221203250%_
                                           (lambda ()
                                             (if (symbol? _%hd203218203234%_)
                                                 (_%K203224203247%_)
                                                 (_%else203222203242%_)))))
                                      (if (pair? _%hd203218203234%_)
                                          (let ((_%tl203232203276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd203218203234%_)))
                                                (_%hd203231203274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd203218203234%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203231203274%_
                                                         'begin))
                                                (let ((_%exprs203279%_
                                                       _%tl203232203276%_))
                                                  (_%K203230203271%_
                                                   _%exprs203279%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203231203274%_
                                                             'quote))
                                                    (if (pair? _%tl203232203276%_)
                                                        (let ((_%tl203229203263%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl203232203276%_))))
                  (if (null? _%tl203229203263%_)
                      (_%K203225203255%_)
                      (_%try-match203221203250%_)))
                (_%try-match203221203250%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match203221203250%_))))
                                          (_%try-match203221203250%_))))))))
                        (if (pair? _%rest203197203205%_)
                            (let ((_%hd203202203284%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203197203205%_)))
                                  (_%tl203203203286%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203197203205%_))))
                              (let* ((_%hd203289%_ _%hd203202203284%_)
                                     (_%rest203291%_ _%tl203203203286%_))
                                (_%K203201203281%_
                                 _%rest203291%_
                                 _%hd203289%_)))
                            (_%else203199203213%_)))))))
          (let* ((_%g203145203155%_
                  (lambda (_%g203146203152%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g203146203152%_))))
                 (_%g203144203188%_
                  (lambda (_%g203146203158%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g203146203158%_))
                        (let ((_%e203148203160%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g203146203158%_))))
                          (let ((_%hd203149203163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203148203160%_)))
                                (_%tl203150203165%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203148203160%_))))
                            ((lambda (_%g203147203168%_)
                               (let* ((_%body203183%_
                                       (map (lambda (_%g203178203180%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self203140%_
                                                 _%g203178203180%_)))
                                            _%g203147203168%_))
                                      (_%body203185%_
                                       (_%simplify203143%_ _%body203183%_)))
                                 (if (let ((__tmp205184
                                            (length _%body203185%_)))
                                       (declare (not safe))
                                       (##fx= __tmp205184 '1))
                                     (car _%body203185%_)
                                     (cons 'begin _%body203185%_))))
                             _%tl203150203165%_)))
                        (_%g203145203155%_ _%g203146203158%_)))))
            (_%g203144203188%_ _%stx203141%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self203101%_ _%stx203102%_)
        (let* ((_%g203104203114%_
                (lambda (_%g203105203111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203105203111%_))))
               (_%g203103203137%_
                (lambda (_%g203105203117%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203105203117%_))
                      (let ((_%e203107203119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203105203117%_))))
                        (let ((_%hd203108203122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203107203119%_)))
                              (_%tl203109203124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203107203119%_))))
                          ((lambda (_%g203106203127%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g203106203127%_))))
                           _%tl203109203124%_)))
                      (_%g203104203114%_ _%g203105203117%_)))))
          (_%g203103203137%_ _%stx203102%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self202867%_ _%stx202868%_)
        (let* ((_%__stx203774203775%_ _%stx202868%_)
               (_%g202872202924%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203774203775%_)))))
          (let ((_%__kont203776203777%_
                 (lambda (_%g202874203083%_ _%g202875203084%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self202867%_ _%g202874203083%_))))
                (_%__kont203778203779%_
                 (lambda (_%g202885203031%_
                          _%g202886203032%_
                          _%g202887203033%_)
                   (if (let ((__tmp205185
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g202887203033%_))))
                         (declare (not safe))
                         (##memq __tmp205185 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self202867%_
                          _%g202885203031%_)))))
                (_%__kont203782203783%_
                 (lambda (_%g202909202953%_ _%g202910202954%_)
                   (let ((_%decls202969%_
                          (map gx#syntax->datum _%g202910202954%_)))
                     (let ((__tmp205188
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls202969%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self202867%_
                                                   _%g202909202953%_))
                                                '())))))
                           (__tmp205186
                            (let ((__tmp205187
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp205187 _%decls202969%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp205188
                        gxc#current-compile-decls
                        __tmp205186))))))
            (let* ((_%__match203829203830%_
                    (lambda (_%e202888202977%_
                             _%hd202889202980%_
                             _%tl202890202982%_
                             _%e202891202985%_
                             _%hd202892202988%_
                             _%tl202893202990%_
                             _%e202894202993%_
                             _%hd202895202996%_
                             _%tl202896202998%_
                             _%__splice203780203781%_
                             _%target202897203001%_
                             _%tl202899203003%_)
                      (letrec ((_%loop202900203006%_
                                (lambda (_%hd202898203009%_
                                         _%param202904203011%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202898203009%_))
                                      (let ((_%e202901203013%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd202898203009%_))))
                                        (let ((_%lp-tl202903203018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202901203013%_)))
                                              (_%lp-hd202902203016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202901203013%_))))
                                          (_%loop202900203006%_
                                           _%lp-tl202903203018%_
                                           (cons _%lp-hd202902203016%_
                                                 _%param202904203011%_))))
                                      (let ((_%param202905203021%_
                                             (reverse _%param202904203011%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202893202990%_))
                                            (let ((_%e202906203023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202893202990%_))))
                                              (let ((_%tl202908203028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202906203023%_)))
                                                    (_%hd202907203026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202906203023%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202908203028%_))
                                                    (let ((_%g202885203031%_
                                                           _%hd202907203026%_)
                                                          (_%g202886203032%_
                                                           _%param202905203021%_)
                                                          (_%g202887203033%_
                                                           _%hd202895202996%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g202887203033%_))
                       (not (let ((__tmp205189
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g202887203033%_))))
                              (declare (not safe))
                              (##memq __tmp205189 gxc#gambit-annotations))))
                  (_%__kont203778203779%_
                   _%g202885203031%_
                   _%g202886203032%_
                   _%g202887203033%_)
                  (_%__kont203782203783%_
                   _%hd202907203026%_
                   _%hd202892202988%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202872202924%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202872202924%_))))))))
                        (_%loop202900203006%_ _%target202897203001%_ '()))))
                   (_%__match203803203804%_
                    (lambda (_%e202876203059%_
                             _%hd202877203062%_
                             _%tl202878203064%_
                             _%e202879203067%_
                             _%hd202880203070%_
                             _%tl202881203072%_
                             _%e202882203075%_
                             _%hd202883203078%_
                             _%tl202884203080%_)
                      (let ((_%g202874203083%_ _%hd202883203078%_)
                            (_%g202875203084%_ _%hd202880203070%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g202875203084%_))
                            (_%__kont203776203777%_
                             _%g202874203083%_
                             _%g202875203084%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd202880203070%_))
                                (let ((_%e202894202993%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd202880203070%_))))
                                  (let ((_%tl202896202998%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202894202993%_)))
                                        (_%hd202895202996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202894202993%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl202896202998%_))
                                        (let ((_%__splice203780203781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl202896202998%_
                                                  '0))))
                                          (let ((_%tl202899203003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice203780203781%_
                                                    '1)))
                                                (_%target202897203001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice203780203781%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202899203003%_))
                                                (_%__match203829203830%_
                                                 _%e202876203059%_
                                                 _%hd202877203062%_
                                                 _%tl202878203064%_
                                                 _%e202879203067%_
                                                 _%hd202880203070%_
                                                 _%tl202881203072%_
                                                 _%e202894202993%_
                                                 _%hd202895202996%_
                                                 _%tl202896202998%_
                                                 _%__splice203780203781%_
                                                 _%target202897203001%_
                                                 _%tl202899203003%_)
                                                (_%__kont203782203783%_
                                                 _%hd202883203078%_
                                                 _%hd202880203070%_))))
                                        (_%__kont203782203783%_
                                         _%hd202883203078%_
                                         _%hd202880203070%_))))
                                (_%__kont203782203783%_
                                 _%hd202883203078%_
                                 _%hd202880203070%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203774203775%_))
                  (let ((_%e202876203059%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx203774203775%_))))
                    (let ((_%tl202878203064%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202876203059%_)))
                          (_%hd202877203062%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202876203059%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202878203064%_))
                          (let ((_%e202879203067%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202878203064%_))))
                            (let ((_%tl202881203072%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202879203067%_)))
                                  (_%hd202880203070%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202879203067%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202881203072%_))
                                  (let ((_%e202882203075%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202881203072%_))))
                                    (let ((_%tl202884203080%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202882203075%_)))
                                          (_%hd202883203078%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202882203075%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202884203080%_))
                                          (_%__match203803203804%_
                                           _%e202876203059%_
                                           _%hd202877203062%_
                                           _%tl202878203064%_
                                           _%e202879203067%_
                                           _%hd202880203070%_
                                           _%tl202881203072%_
                                           _%e202882203075%_
                                           _%hd202883203078%_
                                           _%tl202884203080%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd202880203070%_))
                                              (let ((_%e202894202993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202880203070%_))))
                                                (let ((_%tl202896202998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202894202993%_)))
                                                      (_%hd202895202996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202894202993%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl202896202998%_))
                                                      (let ((_%__splice203780203781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl202896202998%_
                        '0))))
                (let ((_%tl202899203003%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203780203781%_ '1)))
                      (_%target202897203001%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203780203781%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202899203003%_))
                      (_%__match203829203830%_
                       _%e202876203059%_
                       _%hd202877203062%_
                       _%tl202878203064%_
                       _%e202879203067%_
                       _%hd202880203070%_
                       _%tl202881203072%_
                       _%e202894202993%_
                       _%hd202895202996%_
                       _%tl202896202998%_
                       _%__splice203780203781%_
                       _%target202897203001%_
                       _%tl202899203003%_)
                      (let () (declare (not safe)) (_%g202872202924%_)))))
              (let () (declare (not safe)) (_%g202872202924%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202872202924%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202880203070%_))
                                      (let ((_%e202894202993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd202880203070%_))))
                                        (let ((_%tl202896202998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202894202993%_)))
                                              (_%hd202895202996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202894202993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl202896202998%_))
                                              (let ((_%__splice203780203781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl202896202998%_
                                                        '0))))
                                                (let ((_%tl202899203003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203780203781%_
                                                          '1)))
                                                      (_%target202897203001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203780203781%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202899203003%_))
                                                      (_%__match203829203830%_
                                                       _%e202876203059%_
                                                       _%hd202877203062%_
                                                       _%tl202878203064%_
                                                       _%e202879203067%_
                                                       _%hd202880203070%_
                                                       _%tl202881203072%_
                                                       _%e202894202993%_
                                                       _%hd202895202996%_
                                                       _%tl202896202998%_
                                                       _%__splice203780203781%_
                                                       _%target202897203001%_
                                                       _%tl202899203003%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202872202924%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202872202924%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202872202924%_))))))
                          (let () (declare (not safe)) (_%g202872202924%_)))))
                  (let () (declare (not safe)) (_%g202872202924%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self202826%_ _%stx202827%_)
        (let* ((_%g202829202839%_
                (lambda (_%g202830202836%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202830202836%_))))
               (_%g202828202864%_
                (lambda (_%g202830202842%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202830202842%_))
                      (let ((_%e202832202844%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202830202842%_))))
                        (let ((_%hd202833202847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202832202844%_)))
                              (_%tl202834202849%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202832202844%_))))
                          ((lambda (_%g202831202852%_)
                             (let ((_%decls202862%_
                                    (map gx#syntax->datum _%g202831202852%_)))
                               (let ((__tmp205190
                                      (let ((__tmp205191
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp205191
                                         _%decls202862%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp205190))
                               (cons 'declare _%decls202862%_)))
                           _%tl202834202849%_)))
                      (_%g202829202839%_ _%g202830202842%_)))))
          (_%g202828202864%_ _%stx202827%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self202573%_ _%stx202574%_)
        (let* ((_%g202576202593%_
                (lambda (_%g202577202590%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202577202590%_))))
               (_%g202575202823%_
                (lambda (_%g202577202596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202577202596%_))
                      (let ((_%e202580202598%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202577202596%_))))
                        (let ((_%hd202581202601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202580202598%_)))
                              (_%tl202582202603%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202580202598%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202582202603%_))
                              (let ((_%e202583202606%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202582202603%_))))
                                (let ((_%hd202584202609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202583202606%_)))
                                      (_%tl202585202611%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202583202606%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202585202611%_))
                                      (let ((_%e202586202614%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202585202611%_))))
                                        (let ((_%hd202587202617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202586202614%_)))
                                              (_%tl202588202619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202586202614%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202588202619%_))
                                              ((lambda (_%g202578202622%_
                                                        _%g202579202623%_)
                                                 (let* ((_%__stx203882203883%_
                                                         _%g202579202623%_)
                                                        (_%g202640202654%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx203882203883%_)))))
                                                   (let ((_%__kont203884203885%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self202573%_
                                                               _%g202578202622%_))))
                                                         (_%__kont203886203887%_
                                                          (lambda (_%g202646202786%_)
                                                            (let ((_%eid202795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g202646202786%_))))
                      (let ((_%lambda-expr202796202798%_
                             (gxc#apply-find-lambda-expression
                              _%g202578202622%_)))
                        (if _%lambda-expr202796202798%_
                            (let* ((_%lambda-expr202800%_
                                    _%lambda-expr202796202798%_)
                                   (__tmp205192
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp205192
                               _%lambda-expr202800%_
                               _%eid202795%_))
                            '#f))
                      (cons 'define
                            (cons _%eid202795%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self202573%_
                                           _%g202578202622%_))
                                        '()))))))
                 (_%__kont203888203889%_
                  (lambda ()
                    (let* ((_%tmp202661%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body202770%_
                            (let _%lp202663%_ ((_%rest202665%_
                                                _%g202579202623%_)
                                               (_%k202666%_ '0)
                                               (_%r202667%_ '()))
                              (let* ((_%__stx203852203853%_ _%rest202665%_)
                                     (_%g202672202689%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx203852203853%_)))))
                                (let ((_%__kont203854203855%_
                                       (lambda (_%g202674202757%_)
                                         (_%lp202663%_
                                          _%g202674202757%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k202666%_ '1))
                                          _%r202667%_)))
                                      (_%__kont203856203857%_
                                       (lambda (_%g202679202730%_
                                                _%g202680202731%_)
                                         (_%lp202663%_
                                          _%g202679202730%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k202666%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g202680202731%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp202661%_
                           _%k202666%_
                           _%g202679202730%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r202667%_))))
                                      (_%__kont203858203859%_
                                       (lambda (_%g202684202701%_)
                                         (let ((__tmp205193
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g202684202701%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp202661%_
                                 _%k202666%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp205193
                                            _%r202667%_))))
                                      (_%__kont203860203861%_
                                       (lambda () (reverse _%r202667%_))))
                                  (let ((_%g202670202717%_
                                         (lambda ()
                                           (let ((_%g202684202701%_
                                                  _%__stx203852203853%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g202684202701%_))
                                                 (_%__kont203858203859%_
                                                  _%g202684202701%_)
                                                 (_%__kont203860203861%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx203852203853%_))
                                        (let ((_%e202675202746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx203852203853%_))))
                                          (let ((_%tl202677202751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202675202746%_)))
                                                (_%hd202676202749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202675202746%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd202676202749%_))
                                                (let ((_%e202678202754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202676202749%_))))
                                                  (if (equal? _%e202678202754%_
                                                              '#f)
                                                      (_%__kont203854203855%_
                                                       _%tl202677202751%_)
                                                      (_%__kont203856203857%_
                                                       _%tl202677202751%_
                                                       _%hd202676202749%_)))
                                                (_%__kont203856203857%_
                                                 _%tl202677202751%_
                                                 _%hd202676202749%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202670202717%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp202661%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self202573%_
                                                       _%g202578202622%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp202661%_
                                         _%g202579202623%_
                                         _%g202578202622%_)
                                        _%body202770%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx203882203883%_))
                                                         (let ((_%e202642202807%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx203882203883%_))))
                   (let ((_%tl202644202812%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e202642202807%_)))
                         (_%hd202643202810%_
                          (let ()
                            (declare (not safe))
                            (##car _%e202642202807%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd202643202810%_))
                         (let ((_%e202645202815%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd202643202810%_))))
                           (if (equal? _%e202645202815%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl202644202812%_))
                                   (_%__kont203884203885%_)
                                   (_%__kont203888203889%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl202644202812%_))
                                   (_%__kont203886203887%_ _%hd202643202810%_)
                                   (_%__kont203888203889%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202644202812%_))
                             (_%__kont203886203887%_ _%hd202643202810%_)
                             (_%__kont203888203889%_)))))
                 (_%__kont203888203889%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202587202617%_
                                               _%hd202584202609%_)
                                              (_%g202576202593%_
                                               _%g202577202596%_))))
                                      (_%g202576202593%_ _%g202577202596%_))))
                              (_%g202576202593%_ _%g202577202596%_))))
                      (_%g202576202593%_ _%g202577202596%_)))))
          (_%g202575202823%_ _%stx202574%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals202548%_ _%hd202549%_ _%expr202550%_)
        (let ((_%$e202552%_ (gxc#apply-count-values _%expr202550%_)))
          (if _%$e202552%_
              ((lambda (_%count202555%_)
                 (let ((_%len202557%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd202549%_)))
                       (_%cmp202558%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd202549%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len202557%_ '0))
                           (_%cmp202558%_ _%count202555%_ _%len202557%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr202550%_
                          _%hd202549%_)))))
               _%$e202552%_)
              (let* ((_%len202564%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd202549%_)))
                     (_%cmp202566%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd202549%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg202568%_
                      (let ((__tmp205195
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd202549%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp205194 (number->string _%len202564%_)))
                        (declare (not safe))
                        (##string-append __tmp205195 __tmp205194 '" values")))
                     (_%count202570%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd202549%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len202564%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count202570%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals202548%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp202566%_
                                (cons _%count202570%_
                                      (cons _%len202564%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp202566%_
                                                        (cons _%count202570%_
                                                              (cons _%len202564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg202568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count202570%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var202543%_)
        (letrec ((_%generate-inline202545%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var202543%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var202543%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline202545%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline202545%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var202536%_ _%i202537%_ _%rest202538%_)
        (letrec ((_%generate-inline202540%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i202537%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest202538%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var202536%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var202536%_
                                                      (cons '0 '())))
                                          (cons _%var202536%_ '()))))
                        (cons '##values-ref
                              (cons _%var202536%_ (cons _%i202537%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline202540%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline202540%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var202530%_ _%i202531%_)
        (if (let () (declare (not safe)) (##fx= _%i202531%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var202530%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var202530%_ '()))
                                  (cons (cons 'list (cons _%var202530%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var202530%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var202530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var202530%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i202531%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var202530%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var202530%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var202530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var202530%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var202530%_ '()))
                                (cons _%i202531%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var202530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i202531%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self202462%_ _%stx202463%_)
        (let* ((_%g202465202482%_
                (lambda (_%g202466202479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202466202479%_))))
               (_%g202464202527%_
                (lambda (_%g202466202485%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202466202485%_))
                      (let ((_%e202469202487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g202466202485%_))))
                        (let ((_%hd202470202490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202469202487%_)))
                              (_%tl202471202492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202469202487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202471202492%_))
                              (let ((_%e202472202495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl202471202492%_))))
                                (let ((_%hd202473202498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202472202495%_)))
                                      (_%tl202474202500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202472202495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202474202500%_))
                                      (let ((_%e202475202503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202474202500%_))))
                                        (let ((_%hd202476202506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202475202503%_)))
                                              (_%tl202477202508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202475202503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202477202508%_))
                                              ((lambda (_%g202467202511%_
                                                        _%g202468202512%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self202462%_
                                                  _%g202468202512%_
                                                  _%g202467202511%_))
                                               _%hd202476202506%_
                                               _%hd202473202498%_)
                                              (_%g202465202482%_
                                               _%g202466202485%_))))
                                      (_%g202465202482%_ _%g202466202485%_))))
                              (_%g202465202482%_ _%g202466202485%_))))
                      (_%g202465202482%_ _%g202466202485%_)))))
          (_%g202464202527%_ _%stx202463%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self202421%_ _%hd202422%_ _%body202423%_)
        (let* ((_%hd202425%_ (gxc#generate-runtime-lambda-head _%hd202422%_))
               (_%body202427%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self202421%_ _%body202423%_)))
               (_%body202459%_
                (let* ((_%body202428202436%_ _%body202427%_)
                       (_%else202430202444%_
                        (lambda () (cons _%body202427%_ '())))
                       (_%K202432202449%_
                        (lambda (_%exprs202447%_) _%exprs202447%_)))
                  (if (pair? _%body202428202436%_)
                      (let ((_%hd202433202452%_
                             (let ()
                               (declare (not safe))
                               (##car _%body202428202436%_)))
                            (_%tl202434202454%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body202428202436%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd202433202452%_ 'begin))
                            (let ((_%exprs202457%_ _%tl202434202454%_))
                              (_%K202432202449%_ _%exprs202457%_))
                            (_%else202430202444%_)))
                      (_%else202430202444%_)))))
          (cons 'lambda (cons _%hd202425%_ _%body202459%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd202419%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd202419%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self200976%_ _%stx200977%_)
        (letrec ((_%dispatch-case?200979%_
                  (lambda (_%hd201657%_ _%body201658%_)
                    (let* ((_%form201660%_
                            (cons _%hd201657%_ (cons _%body201658%_ '())))
                           (_%__stx203914203915%_ _%form201660%_)
                           (_%g201665201822%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx203914203915%_)))))
                      (let ((_%__kont203916203917%_
                             (lambda (_%g201667202339%_
                                      _%g201668202340%_
                                      _%g201669202341%_)
                               '#t))
                            (_%__kont203922203923%_
                             (lambda (_%g201712202131%_
                                      _%g201713202132%_
                                      _%g201714202133%_
                                      _%g201715202134%_
                                      _%g201716202135%_
                                      _%g201717202136%_)
                               '#t))
                            (_%__kont203928203929%_
                             (lambda (_%g201778201930%_
                                      _%g201779201931%_
                                      _%g201780201932%_
                                      _%g201781201933%_)
                               '#t))
                            (_%__kont203930203931%_ (lambda () '#f)))
                        (let* ((_%__match204055204056%_
                                (lambda (_%e201782201834%_
                                         _%hd201783201837%_
                                         _%tl201784201839%_
                                         _%e201785201842%_
                                         _%hd201786201845%_
                                         _%tl201787201847%_
                                         _%e201788201850%_
                                         _%hd201789201853%_
                                         _%tl201790201855%_
                                         _%e201791201858%_
                                         _%hd201792201861%_
                                         _%tl201793201863%_
                                         _%e201794201866%_
                                         _%hd201795201869%_
                                         _%tl201796201871%_
                                         _%e201797201874%_
                                         _%hd201798201877%_
                                         _%tl201799201879%_
                                         _%e201800201882%_
                                         _%hd201801201885%_
                                         _%tl201802201887%_
                                         _%e201803201890%_
                                         _%hd201804201893%_
                                         _%tl201805201895%_
                                         _%e201806201898%_
                                         _%hd201807201901%_
                                         _%tl201808201903%_
                                         _%e201809201906%_
                                         _%hd201810201909%_
                                         _%tl201811201911%_
                                         _%e201812201914%_
                                         _%hd201813201917%_
                                         _%tl201814201919%_
                                         _%e201815201922%_
                                         _%hd201816201925%_
                                         _%tl201817201927%_)
                                  (let ((_%g201778201930%_ _%hd201816201925%_)
                                        (_%g201779201931%_ _%hd201807201901%_)
                                        (_%g201780201932%_ _%hd201798201877%_)
                                        (_%g201781201933%_ _%hd201783201837%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g201781201933%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g201780201932%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g201781201933%_
                                                _%g201778201930%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g201779201931%_
                                                     _%g201781201933%_))))
                                        (_%__kont203928203929%_
                                         _%g201778201930%_
                                         _%g201779201931%_
                                         _%g201780201932%_
                                         _%g201781201933%_)
                                        (_%__kont203930203931%_)))))
                               (_%__match204027204028%_
                                (lambda (_%e201782201834%_
                                         _%hd201783201837%_
                                         _%tl201784201839%_
                                         _%e201785201842%_
                                         _%hd201786201845%_
                                         _%tl201787201847%_
                                         _%e201788201850%_
                                         _%hd201789201853%_
                                         _%tl201790201855%_
                                         _%e201791201858%_
                                         _%hd201792201861%_
                                         _%tl201793201863%_
                                         _%e201794201866%_
                                         _%hd201795201869%_
                                         _%tl201796201871%_
                                         _%e201797201874%_
                                         _%hd201798201877%_
                                         _%tl201799201879%_
                                         _%e201800201882%_
                                         _%hd201801201885%_
                                         _%tl201802201887%_
                                         _%e201803201890%_
                                         _%hd201804201893%_
                                         _%tl201805201895%_
                                         _%e201806201898%_
                                         _%hd201807201901%_
                                         _%tl201808201903%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201802201887%_))
                                      (let ((_%e201809201906%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201802201887%_))))
                                        (let ((_%tl201811201911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201809201906%_)))
                                              (_%hd201810201909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201809201906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd201810201909%_))
                                              (let ((_%e201812201914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd201810201909%_))))
                                                (let ((_%tl201814201919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201812201914%_)))
                                                      (_%hd201813201917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201812201914%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd201813201917%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd201813201917%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201814201919%_))
                      (let ((_%e201815201922%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201814201919%_))))
                        (let ((_%tl201817201927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201815201922%_)))
                              (_%hd201816201925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201815201922%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201817201927%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201811201911%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201787201847%_))
                                      (_%__match204055204056%_
                                       _%e201782201834%_
                                       _%hd201783201837%_
                                       _%tl201784201839%_
                                       _%e201785201842%_
                                       _%hd201786201845%_
                                       _%tl201787201847%_
                                       _%e201788201850%_
                                       _%hd201789201853%_
                                       _%tl201790201855%_
                                       _%e201791201858%_
                                       _%hd201792201861%_
                                       _%tl201793201863%_
                                       _%e201794201866%_
                                       _%hd201795201869%_
                                       _%tl201796201871%_
                                       _%e201797201874%_
                                       _%hd201798201877%_
                                       _%tl201799201879%_
                                       _%e201800201882%_
                                       _%hd201801201885%_
                                       _%tl201802201887%_
                                       _%e201803201890%_
                                       _%hd201804201893%_
                                       _%tl201805201895%_
                                       _%e201806201898%_
                                       _%hd201807201901%_
                                       _%tl201808201903%_
                                       _%e201809201906%_
                                       _%hd201810201909%_
                                       _%tl201811201911%_
                                       _%e201812201914%_
                                       _%hd201813201917%_
                                       _%tl201814201919%_
                                       _%e201815201922%_
                                       _%hd201816201925%_
                                       _%tl201817201927%_)
                                      (_%__kont203930203931%_))
                                  (_%__kont203930203931%_))
                              (_%__kont203930203931%_))))
                      (_%__kont203930203931%_))
                  (_%__kont203930203931%_))
              (_%__kont203930203931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont203930203931%_))))
                                      (_%__kont203930203931%_))))
                               (_%__match203957203958%_
                                (lambda (_%e201718201975%_
                                         _%hd201719201978%_
                                         _%tl201720201980%_
                                         _%__splice203924203925%_
                                         _%target201721201983%_
                                         _%tl201723201985%_)
                                  (letrec ((_%loop201724201988%_
                                            (lambda (_%hd201722201991%_
                                                     _%arg201728201993%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201722201991%_))
                                                  (let ((_%e201725201995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201722201991%_))))
                                                    (let ((_%lp-tl201727202000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201725201995%_)))
                                                          (_%lp-hd201726201998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201725201995%_))))
                                                      (_%loop201724201988%_
                                                       _%lp-tl201727202000%_
                                                       (cons _%lp-hd201726201998%_
                                                             _%arg201728201993%_))))
                                                  (let ((_%arg201729202003%_
                                                         (reverse _%arg201728201993%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201720201980%_))
                                                        (let ((_%e201730202005%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201720201980%_))))
                  (let ((_%tl201732202010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201730202005%_)))
                        (_%hd201731202008%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201730202005%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201731202008%_))
                        (let ((_%e201733202013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201731202008%_))))
                          (let ((_%tl201735202018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201733202013%_)))
                                (_%hd201734202016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201733202013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201734202016%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201734202016%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201735202018%_))
                                        (let ((_%e201736202021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201735202018%_))))
                                          (let ((_%tl201738202026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201736202021%_)))
                                                (_%hd201737202024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201736202021%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201737202024%_))
                                                (let ((_%e201739202029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201737202024%_))))
                                                  (let ((_%tl201741202034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201739202029%_)))
                                                        (_%hd201740202032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201739202029%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201740202032%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201740202032%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201741202034%_))
                        (let ((_%e201742202037%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201741202034%_))))
                          (let ((_%tl201744202042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201742202037%_)))
                                (_%hd201743202040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201742202037%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201744202042%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl201738202026%_))
                                    (let ((_%e201745202045%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl201738202026%_))))
                                      (let ((_%tl201747202050%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201745202045%_)))
                                            (_%hd201746202048%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201745202045%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201746202048%_))
                                            (let ((_%e201748202053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd201746202048%_))))
                                              (let ((_%tl201750202058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201748202053%_)))
                                                    (_%hd201749202056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201748202053%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd201749202056%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd201749202056%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201750202058%_))
                                                            (let ((_%e201751202061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201750202058%_))))
                      (let ((_%tl201753202066%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201751202061%_)))
                            (_%hd201752202064%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201751202061%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201753202066%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl201747202050%_))
                                (if (let ((__tmp205196
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl201747202050%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp205196 '1))
                                    (let ((_%__splice203926203927%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl201747202050%_
                                              '1))))
                                      (let ((_%tl201756202071%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice203926203927%_
                                                '1)))
                                            (_%target201754202069%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice203926203927%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201756202071%_))
                                            (let ((_%e201763202074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201756202071%_))))
                                              (let ((_%tl201765202079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201763202074%_)))
                                                    (_%hd201764202077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201763202074%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd201764202077%_))
                                                    (let ((_%e201766202082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd201764202077%_))))
                                                      (let ((_%tl201768202087%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e201766202082%_)))
                    (_%hd201767202085%_
                     (let () (declare (not safe)) (##car _%e201766202082%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd201767202085%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd201767202085%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201768202087%_))
                            (let ((_%e201769202090%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl201768202087%_))))
                              (let ((_%tl201771202095%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201769202090%_)))
                                    (_%hd201770202093%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201769202090%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201771202095%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201765202079%_))
                                        (letrec ((_%loop201757202098%_
                                                  (lambda (_%hd201755202101%_
                                                           _%xarg201761202103%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201755202101%_))
                                                        (let ((_%e201758202105%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd201755202101%_))))
                  (let ((_%lp-tl201760202110%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201758202105%_)))
                        (_%lp-hd201759202108%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201758202105%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201759202108%_))
                        (let ((_%e201772202113%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd201759202108%_))))
                          (let ((_%tl201774202118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201772202113%_)))
                                (_%hd201773202116%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201772202113%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201773202116%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd201773202116%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201774202118%_))
                                        (let ((_%e201775202121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201774202118%_))))
                                          (let ((_%tl201777202126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201775202121%_)))
                                                (_%hd201776202124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201775202121%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201777202126%_))
                                                (_%loop201757202098%_
                                                 _%lp-tl201760202110%_
                                                 (cons _%hd201776202124%_
                                                       _%xarg201761202103%_))
                                                (_%__match204027204028%_
                                                 _%e201718201975%_
                                                 _%hd201719201978%_
                                                 _%tl201720201980%_
                                                 _%e201730202005%_
                                                 _%hd201731202008%_
                                                 _%tl201732202010%_
                                                 _%e201733202013%_
                                                 _%hd201734202016%_
                                                 _%tl201735202018%_
                                                 _%e201736202021%_
                                                 _%hd201737202024%_
                                                 _%tl201738202026%_
                                                 _%e201739202029%_
                                                 _%hd201740202032%_
                                                 _%tl201741202034%_
                                                 _%e201742202037%_
                                                 _%hd201743202040%_
                                                 _%tl201744202042%_
                                                 _%e201745202045%_
                                                 _%hd201746202048%_
                                                 _%tl201747202050%_
                                                 _%e201748202053%_
                                                 _%hd201749202056%_
                                                 _%tl201750202058%_
                                                 _%e201751202061%_
                                                 _%hd201752202064%_
                                                 _%tl201753202066%_))))
                                        (_%__match204027204028%_
                                         _%e201718201975%_
                                         _%hd201719201978%_
                                         _%tl201720201980%_
                                         _%e201730202005%_
                                         _%hd201731202008%_
                                         _%tl201732202010%_
                                         _%e201733202013%_
                                         _%hd201734202016%_
                                         _%tl201735202018%_
                                         _%e201736202021%_
                                         _%hd201737202024%_
                                         _%tl201738202026%_
                                         _%e201739202029%_
                                         _%hd201740202032%_
                                         _%tl201741202034%_
                                         _%e201742202037%_
                                         _%hd201743202040%_
                                         _%tl201744202042%_
                                         _%e201745202045%_
                                         _%hd201746202048%_
                                         _%tl201747202050%_
                                         _%e201748202053%_
                                         _%hd201749202056%_
                                         _%tl201750202058%_
                                         _%e201751202061%_
                                         _%hd201752202064%_
                                         _%tl201753202066%_))
                                    (_%__match204027204028%_
                                     _%e201718201975%_
                                     _%hd201719201978%_
                                     _%tl201720201980%_
                                     _%e201730202005%_
                                     _%hd201731202008%_
                                     _%tl201732202010%_
                                     _%e201733202013%_
                                     _%hd201734202016%_
                                     _%tl201735202018%_
                                     _%e201736202021%_
                                     _%hd201737202024%_
                                     _%tl201738202026%_
                                     _%e201739202029%_
                                     _%hd201740202032%_
                                     _%tl201741202034%_
                                     _%e201742202037%_
                                     _%hd201743202040%_
                                     _%tl201744202042%_
                                     _%e201745202045%_
                                     _%hd201746202048%_
                                     _%tl201747202050%_
                                     _%e201748202053%_
                                     _%hd201749202056%_
                                     _%tl201750202058%_
                                     _%e201751202061%_
                                     _%hd201752202064%_
                                     _%tl201753202066%_))
                                (_%__match204027204028%_
                                 _%e201718201975%_
                                 _%hd201719201978%_
                                 _%tl201720201980%_
                                 _%e201730202005%_
                                 _%hd201731202008%_
                                 _%tl201732202010%_
                                 _%e201733202013%_
                                 _%hd201734202016%_
                                 _%tl201735202018%_
                                 _%e201736202021%_
                                 _%hd201737202024%_
                                 _%tl201738202026%_
                                 _%e201739202029%_
                                 _%hd201740202032%_
                                 _%tl201741202034%_
                                 _%e201742202037%_
                                 _%hd201743202040%_
                                 _%tl201744202042%_
                                 _%e201745202045%_
                                 _%hd201746202048%_
                                 _%tl201747202050%_
                                 _%e201748202053%_
                                 _%hd201749202056%_
                                 _%tl201750202058%_
                                 _%e201751202061%_
                                 _%hd201752202064%_
                                 _%tl201753202066%_))))
                        (_%__match204027204028%_
                         _%e201718201975%_
                         _%hd201719201978%_
                         _%tl201720201980%_
                         _%e201730202005%_
                         _%hd201731202008%_
                         _%tl201732202010%_
                         _%e201733202013%_
                         _%hd201734202016%_
                         _%tl201735202018%_
                         _%e201736202021%_
                         _%hd201737202024%_
                         _%tl201738202026%_
                         _%e201739202029%_
                         _%hd201740202032%_
                         _%tl201741202034%_
                         _%e201742202037%_
                         _%hd201743202040%_
                         _%tl201744202042%_
                         _%e201745202045%_
                         _%hd201746202048%_
                         _%tl201747202050%_
                         _%e201748202053%_
                         _%hd201749202056%_
                         _%tl201750202058%_
                         _%e201751202061%_
                         _%hd201752202064%_
                         _%tl201753202066%_))))
                (let ((_%xarg201762202129%_ (reverse _%xarg201761202103%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201732202010%_))
                      (let ((_%g201712202131%_ _%hd201770202093%_)
                            (_%g201713202132%_ _%xarg201762202129%_)
                            (_%g201714202133%_ _%hd201752202064%_)
                            (_%g201715202134%_ _%hd201743202040%_)
                            (_%g201716202135%_ _%tl201723201985%_)
                            (_%g201717202136%_ _%arg201729202003%_))
                        (if (and (let ((__tmp205197
                                        (let ((__tmp205198
                                               (lambda (_%g202179202182%_
                                                        _%g202180202184%_)
                                                 (cons _%g202179202182%_
                                                       _%g202180202184%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205198
                                           '()
                                           _%g201717202136%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp205197))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g201716202135%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g201715202134%_
                                    'apply))
                                 (let ((__tmp205201
                                        (length (let ((__tmp205202
                                                       (lambda (_%g202186202189%_
                                                                _%g202187202191%_)
                                                         (cons _%g202186202189%_
                                                               _%g202187202191%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp205202
                                                   '()
                                                   _%g201717202136%_))))
                                       (__tmp205199
                                        (length (let ((__tmp205200
                                                       (lambda (_%g202193202196%_
                                                                _%g202194202198%_)
                                                         (cons _%g202193202196%_
                                                               _%g202194202198%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp205200
                                                   '()
                                                   _%g201713202132%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp205201 __tmp205199))
                                 (let ((__tmp205205
                                        (let ((__tmp205206
                                               (lambda (_%g202200202203%_
                                                        _%g202201202205%_)
                                                 (cons _%g202200202203%_
                                                       _%g202201202205%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205206
                                           '()
                                           _%g201717202136%_)))
                                       (__tmp205203
                                        (let ((__tmp205204
                                               (lambda (_%g202207202210%_
                                                        _%g202208202212%_)
                                                 (cons _%g202207202210%_
                                                       _%g202208202212%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp205204
                                           '()
                                           _%g201713202132%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp205205
                                    __tmp205203))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g201716202135%_
                                    _%g201712202131%_))
                                 (not (let ((__tmp205210
                                             (lambda (_%g202214202216%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g202214202216%_
                                                  _%g201714202133%_))))
                                            (__tmp205207
                                             (let ((__tmp205209
                                                    (lambda (_%g202218202221%_
                                                             _%g202219202223%_)
                                                      (cons _%g202218202221%_
                                                            _%g202219202223%_)))
                                                   (__tmp205208
                                                    (cons _%g201716202135%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205209
                                                __tmp205208
                                                _%g201717202136%_))))
                                        (declare (not safe))
                                        (__find __tmp205210 __tmp205207))))
                            (_%__kont203922203923%_
                             _%g201712202131%_
                             _%g201713202132%_
                             _%g201714202133%_
                             _%g201715202134%_
                             _%g201716202135%_
                             _%g201717202136%_)
                            (_%__match204027204028%_
                             _%e201718201975%_
                             _%hd201719201978%_
                             _%tl201720201980%_
                             _%e201730202005%_
                             _%hd201731202008%_
                             _%tl201732202010%_
                             _%e201733202013%_
                             _%hd201734202016%_
                             _%tl201735202018%_
                             _%e201736202021%_
                             _%hd201737202024%_
                             _%tl201738202026%_
                             _%e201739202029%_
                             _%hd201740202032%_
                             _%tl201741202034%_
                             _%e201742202037%_
                             _%hd201743202040%_
                             _%tl201744202042%_
                             _%e201745202045%_
                             _%hd201746202048%_
                             _%tl201747202050%_
                             _%e201748202053%_
                             _%hd201749202056%_
                             _%tl201750202058%_
                             _%e201751202061%_
                             _%hd201752202064%_
                             _%tl201753202066%_)))
                      (_%__match204027204028%_
                       _%e201718201975%_
                       _%hd201719201978%_
                       _%tl201720201980%_
                       _%e201730202005%_
                       _%hd201731202008%_
                       _%tl201732202010%_
                       _%e201733202013%_
                       _%hd201734202016%_
                       _%tl201735202018%_
                       _%e201736202021%_
                       _%hd201737202024%_
                       _%tl201738202026%_
                       _%e201739202029%_
                       _%hd201740202032%_
                       _%tl201741202034%_
                       _%e201742202037%_
                       _%hd201743202040%_
                       _%tl201744202042%_
                       _%e201745202045%_
                       _%hd201746202048%_
                       _%tl201747202050%_
                       _%e201748202053%_
                       _%hd201749202056%_
                       _%tl201750202058%_
                       _%e201751202061%_
                       _%hd201752202064%_
                       _%tl201753202066%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201757202098%_
                                           _%target201754202069%_
                                           '()))
                                        (_%__match204027204028%_
                                         _%e201718201975%_
                                         _%hd201719201978%_
                                         _%tl201720201980%_
                                         _%e201730202005%_
                                         _%hd201731202008%_
                                         _%tl201732202010%_
                                         _%e201733202013%_
                                         _%hd201734202016%_
                                         _%tl201735202018%_
                                         _%e201736202021%_
                                         _%hd201737202024%_
                                         _%tl201738202026%_
                                         _%e201739202029%_
                                         _%hd201740202032%_
                                         _%tl201741202034%_
                                         _%e201742202037%_
                                         _%hd201743202040%_
                                         _%tl201744202042%_
                                         _%e201745202045%_
                                         _%hd201746202048%_
                                         _%tl201747202050%_
                                         _%e201748202053%_
                                         _%hd201749202056%_
                                         _%tl201750202058%_
                                         _%e201751202061%_
                                         _%hd201752202064%_
                                         _%tl201753202066%_))
                                    (_%__match204027204028%_
                                     _%e201718201975%_
                                     _%hd201719201978%_
                                     _%tl201720201980%_
                                     _%e201730202005%_
                                     _%hd201731202008%_
                                     _%tl201732202010%_
                                     _%e201733202013%_
                                     _%hd201734202016%_
                                     _%tl201735202018%_
                                     _%e201736202021%_
                                     _%hd201737202024%_
                                     _%tl201738202026%_
                                     _%e201739202029%_
                                     _%hd201740202032%_
                                     _%tl201741202034%_
                                     _%e201742202037%_
                                     _%hd201743202040%_
                                     _%tl201744202042%_
                                     _%e201745202045%_
                                     _%hd201746202048%_
                                     _%tl201747202050%_
                                     _%e201748202053%_
                                     _%hd201749202056%_
                                     _%tl201750202058%_
                                     _%e201751202061%_
                                     _%hd201752202064%_
                                     _%tl201753202066%_))))
                            (_%__match204027204028%_
                             _%e201718201975%_
                             _%hd201719201978%_
                             _%tl201720201980%_
                             _%e201730202005%_
                             _%hd201731202008%_
                             _%tl201732202010%_
                             _%e201733202013%_
                             _%hd201734202016%_
                             _%tl201735202018%_
                             _%e201736202021%_
                             _%hd201737202024%_
                             _%tl201738202026%_
                             _%e201739202029%_
                             _%hd201740202032%_
                             _%tl201741202034%_
                             _%e201742202037%_
                             _%hd201743202040%_
                             _%tl201744202042%_
                             _%e201745202045%_
                             _%hd201746202048%_
                             _%tl201747202050%_
                             _%e201748202053%_
                             _%hd201749202056%_
                             _%tl201750202058%_
                             _%e201751202061%_
                             _%hd201752202064%_
                             _%tl201753202066%_))
                        (_%__match204027204028%_
                         _%e201718201975%_
                         _%hd201719201978%_
                         _%tl201720201980%_
                         _%e201730202005%_
                         _%hd201731202008%_
                         _%tl201732202010%_
                         _%e201733202013%_
                         _%hd201734202016%_
                         _%tl201735202018%_
                         _%e201736202021%_
                         _%hd201737202024%_
                         _%tl201738202026%_
                         _%e201739202029%_
                         _%hd201740202032%_
                         _%tl201741202034%_
                         _%e201742202037%_
                         _%hd201743202040%_
                         _%tl201744202042%_
                         _%e201745202045%_
                         _%hd201746202048%_
                         _%tl201747202050%_
                         _%e201748202053%_
                         _%hd201749202056%_
                         _%tl201750202058%_
                         _%e201751202061%_
                         _%hd201752202064%_
                         _%tl201753202066%_))
                    (_%__match204027204028%_
                     _%e201718201975%_
                     _%hd201719201978%_
                     _%tl201720201980%_
                     _%e201730202005%_
                     _%hd201731202008%_
                     _%tl201732202010%_
                     _%e201733202013%_
                     _%hd201734202016%_
                     _%tl201735202018%_
                     _%e201736202021%_
                     _%hd201737202024%_
                     _%tl201738202026%_
                     _%e201739202029%_
                     _%hd201740202032%_
                     _%tl201741202034%_
                     _%e201742202037%_
                     _%hd201743202040%_
                     _%tl201744202042%_
                     _%e201745202045%_
                     _%hd201746202048%_
                     _%tl201747202050%_
                     _%e201748202053%_
                     _%hd201749202056%_
                     _%tl201750202058%_
                     _%e201751202061%_
                     _%hd201752202064%_
                     _%tl201753202066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match204027204028%_
                                                     _%e201718201975%_
                                                     _%hd201719201978%_
                                                     _%tl201720201980%_
                                                     _%e201730202005%_
                                                     _%hd201731202008%_
                                                     _%tl201732202010%_
                                                     _%e201733202013%_
                                                     _%hd201734202016%_
                                                     _%tl201735202018%_
                                                     _%e201736202021%_
                                                     _%hd201737202024%_
                                                     _%tl201738202026%_
                                                     _%e201739202029%_
                                                     _%hd201740202032%_
                                                     _%tl201741202034%_
                                                     _%e201742202037%_
                                                     _%hd201743202040%_
                                                     _%tl201744202042%_
                                                     _%e201745202045%_
                                                     _%hd201746202048%_
                                                     _%tl201747202050%_
                                                     _%e201748202053%_
                                                     _%hd201749202056%_
                                                     _%tl201750202058%_
                                                     _%e201751202061%_
                                                     _%hd201752202064%_
                                                     _%tl201753202066%_))))
                                            (_%__match204027204028%_
                                             _%e201718201975%_
                                             _%hd201719201978%_
                                             _%tl201720201980%_
                                             _%e201730202005%_
                                             _%hd201731202008%_
                                             _%tl201732202010%_
                                             _%e201733202013%_
                                             _%hd201734202016%_
                                             _%tl201735202018%_
                                             _%e201736202021%_
                                             _%hd201737202024%_
                                             _%tl201738202026%_
                                             _%e201739202029%_
                                             _%hd201740202032%_
                                             _%tl201741202034%_
                                             _%e201742202037%_
                                             _%hd201743202040%_
                                             _%tl201744202042%_
                                             _%e201745202045%_
                                             _%hd201746202048%_
                                             _%tl201747202050%_
                                             _%e201748202053%_
                                             _%hd201749202056%_
                                             _%tl201750202058%_
                                             _%e201751202061%_
                                             _%hd201752202064%_
                                             _%tl201753202066%_))))
                                    (_%__match204027204028%_
                                     _%e201718201975%_
                                     _%hd201719201978%_
                                     _%tl201720201980%_
                                     _%e201730202005%_
                                     _%hd201731202008%_
                                     _%tl201732202010%_
                                     _%e201733202013%_
                                     _%hd201734202016%_
                                     _%tl201735202018%_
                                     _%e201736202021%_
                                     _%hd201737202024%_
                                     _%tl201738202026%_
                                     _%e201739202029%_
                                     _%hd201740202032%_
                                     _%tl201741202034%_
                                     _%e201742202037%_
                                     _%hd201743202040%_
                                     _%tl201744202042%_
                                     _%e201745202045%_
                                     _%hd201746202048%_
                                     _%tl201747202050%_
                                     _%e201748202053%_
                                     _%hd201749202056%_
                                     _%tl201750202058%_
                                     _%e201751202061%_
                                     _%hd201752202064%_
                                     _%tl201753202066%_))
                                (_%__match204027204028%_
                                 _%e201718201975%_
                                 _%hd201719201978%_
                                 _%tl201720201980%_
                                 _%e201730202005%_
                                 _%hd201731202008%_
                                 _%tl201732202010%_
                                 _%e201733202013%_
                                 _%hd201734202016%_
                                 _%tl201735202018%_
                                 _%e201736202021%_
                                 _%hd201737202024%_
                                 _%tl201738202026%_
                                 _%e201739202029%_
                                 _%hd201740202032%_
                                 _%tl201741202034%_
                                 _%e201742202037%_
                                 _%hd201743202040%_
                                 _%tl201744202042%_
                                 _%e201745202045%_
                                 _%hd201746202048%_
                                 _%tl201747202050%_
                                 _%e201748202053%_
                                 _%hd201749202056%_
                                 _%tl201750202058%_
                                 _%e201751202061%_
                                 _%hd201752202064%_
                                 _%tl201753202066%_))
                            (_%__kont203930203931%_))))
                    (_%__kont203930203931%_))
                (_%__kont203930203931%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont203930203931%_))))
                                            (_%__kont203930203931%_))))
                                    (_%__kont203930203931%_))
                                (_%__kont203930203931%_))))
                        (_%__kont203930203931%_))
                    (_%__kont203930203931%_))
                (_%__kont203930203931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont203930203931%_))))
                                        (_%__kont203930203931%_))
                                    (_%__kont203930203931%_))
                                (_%__kont203930203931%_))))
                        (_%__kont203930203931%_))))
                (_%__kont203930203931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201724201988%_
                                     _%target201721201983%_
                                     '()))))
                               (_%__match203945203946%_
                                (lambda (_%e201670202231%_
                                         _%hd201671202234%_
                                         _%tl201672202236%_
                                         _%__splice203918203919%_
                                         _%target201673202239%_
                                         _%tl201675202241%_)
                                  (letrec ((_%loop201676202244%_
                                            (lambda (_%hd201674202247%_
                                                     _%arg201680202249%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201674202247%_))
                                                  (let ((_%e201677202251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201674202247%_))))
                                                    (let ((_%lp-tl201679202256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201677202251%_)))
                                                          (_%lp-hd201678202254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201677202251%_))))
                                                      (_%loop201676202244%_
                                                       _%lp-tl201679202256%_
                                                       (cons _%lp-hd201678202254%_
                                                             _%arg201680202249%_))))
                                                  (let ((_%arg201681202259%_
                                                         (reverse _%arg201680202249%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201672202236%_))
                                                        (let ((_%e201682202261%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201672202236%_))))
                  (let ((_%tl201684202266%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201682202261%_)))
                        (_%hd201683202264%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201682202261%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201683202264%_))
                        (let ((_%e201685202269%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201683202264%_))))
                          (let ((_%tl201687202274%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201685202269%_)))
                                (_%hd201686202272%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201685202269%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201686202272%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201686202272%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201687202274%_))
                                        (let ((_%e201688202277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201687202274%_))))
                                          (let ((_%tl201690202282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201688202277%_)))
                                                (_%hd201689202280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201688202277%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201689202280%_))
                                                (let ((_%e201691202285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201689202280%_))))
                                                  (let ((_%tl201693202290%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201691202285%_)))
                                                        (_%hd201692202288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201691202285%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201692202288%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201692202288%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201693202290%_))
                        (let ((_%e201694202293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201693202290%_))))
                          (let ((_%tl201696202298%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201694202293%_)))
                                (_%hd201695202296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201694202293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201696202298%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl201690202282%_))
                                    (let ((_%__splice203920203921%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl201690202282%_
                                              '0))))
                                      (let ((_%tl201699202303%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice203920203921%_
                                                '1)))
                                            (_%target201697202301%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice203920203921%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201699202303%_))
                                            (letrec ((_%loop201700202306%_
                                                      (lambda (_%hd201698202309%_
                                                               _%xarg201704202311%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd201698202309%_))
                                                            (let ((_%e201701202313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd201698202309%_))))
                      (let ((_%lp-tl201703202318%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201701202313%_)))
                            (_%lp-hd201702202316%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201701202313%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd201702202316%_))
                            (let ((_%e201706202321%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd201702202316%_))))
                              (let ((_%tl201708202326%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201706202321%_)))
                                    (_%hd201707202324%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201706202321%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201707202324%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd201707202324%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201708202326%_))
                                            (let ((_%e201709202329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201708202326%_))))
                                              (let ((_%tl201711202334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201709202329%_)))
                                                    (_%hd201710202332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201709202329%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl201711202334%_))
                                                    (_%loop201700202306%_
                                                     _%lp-tl201703202318%_
                                                     (cons _%hd201710202332%_
                                                           _%xarg201704202311%_))
                                                    (_%__match203957203958%_
                                                     _%e201670202231%_
                                                     _%hd201671202234%_
                                                     _%tl201672202236%_
                                                     _%__splice203918203919%_
                                                     _%target201673202239%_
                                                     _%tl201675202241%_))))
                                            (_%__match203957203958%_
                                             _%e201670202231%_
                                             _%hd201671202234%_
                                             _%tl201672202236%_
                                             _%__splice203918203919%_
                                             _%target201673202239%_
                                             _%tl201675202241%_))
                                        (_%__match203957203958%_
                                         _%e201670202231%_
                                         _%hd201671202234%_
                                         _%tl201672202236%_
                                         _%__splice203918203919%_
                                         _%target201673202239%_
                                         _%tl201675202241%_))
                                    (_%__match203957203958%_
                                     _%e201670202231%_
                                     _%hd201671202234%_
                                     _%tl201672202236%_
                                     _%__splice203918203919%_
                                     _%target201673202239%_
                                     _%tl201675202241%_))))
                            (_%__match203957203958%_
                             _%e201670202231%_
                             _%hd201671202234%_
                             _%tl201672202236%_
                             _%__splice203918203919%_
                             _%target201673202239%_
                             _%tl201675202241%_))))
                    (let ((_%xarg201705202337%_
                           (reverse _%xarg201704202311%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201684202266%_))
                          (let ((_%g201667202339%_ _%xarg201705202337%_)
                                (_%g201668202340%_ _%hd201695202296%_)
                                (_%g201669202341%_ _%arg201681202259%_))
                            (if (and (let ((__tmp205211
                                            (let ((__tmp205212
                                                   (lambda (_%g202369202372%_
                                                            _%g202370202374%_)
                                                     (cons _%g202369202372%_
                                                           _%g202370202374%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205212
                                               '()
                                               _%g201669202341%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp205211))
                                     (let ((__tmp205215
                                            (length (let ((__tmp205216
                                                           (lambda (_%g202376202379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g202377202381%_)
                     (cons _%g202376202379%_ _%g202377202381%_))))
              (declare (not safe))
              (foldr__0 __tmp205216 '() _%g201669202341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp205213
                                            (length (let ((__tmp205214
                                                           (lambda (_%g202383202386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g202384202388%_)
                     (cons _%g202383202386%_ _%g202384202388%_))))
              (declare (not safe))
              (foldr__0 __tmp205214 '() _%g201667202339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp205215 __tmp205213))
                                     (let ((__tmp205219
                                            (let ((__tmp205220
                                                   (lambda (_%g202390202393%_
                                                            _%g202391202395%_)
                                                     (cons _%g202390202393%_
                                                           _%g202391202395%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205220
                                               '()
                                               _%g201669202341%_)))
                                           (__tmp205217
                                            (let ((__tmp205218
                                                   (lambda (_%g202397202400%_
                                                            _%g202398202402%_)
                                                     (cons _%g202397202400%_
                                                           _%g202398202402%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205218
                                               '()
                                               _%g201667202339%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp205219
                                        __tmp205217))
                                     (not (let ((__tmp205223
                                                 (lambda (_%g202404202406%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g202404202406%_
                                                      _%g201668202340%_))))
                                                (__tmp205221
                                                 (let ((__tmp205222
                                                        (lambda (_%g202408202411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g202409202413%_)
                  (cons _%g202408202411%_ _%g202409202413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp205222
                                                    '()
                                                    _%g201669202341%_))))
                                            (declare (not safe))
                                            (__find __tmp205223 __tmp205221))))
                                (_%__kont203916203917%_
                                 _%g201667202339%_
                                 _%g201668202340%_
                                 _%g201669202341%_)
                                (_%__match203957203958%_
                                 _%e201670202231%_
                                 _%hd201671202234%_
                                 _%tl201672202236%_
                                 _%__splice203918203919%_
                                 _%target201673202239%_
                                 _%tl201675202241%_)))
                          (_%__match203957203958%_
                           _%e201670202231%_
                           _%hd201671202234%_
                           _%tl201672202236%_
                           _%__splice203918203919%_
                           _%target201673202239%_
                           _%tl201675202241%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop201700202306%_
                                               _%target201697202301%_
                                               '()))
                                            (_%__match203957203958%_
                                             _%e201670202231%_
                                             _%hd201671202234%_
                                             _%tl201672202236%_
                                             _%__splice203918203919%_
                                             _%target201673202239%_
                                             _%tl201675202241%_))))
                                    (_%__match203957203958%_
                                     _%e201670202231%_
                                     _%hd201671202234%_
                                     _%tl201672202236%_
                                     _%__splice203918203919%_
                                     _%target201673202239%_
                                     _%tl201675202241%_))
                                (_%__match203957203958%_
                                 _%e201670202231%_
                                 _%hd201671202234%_
                                 _%tl201672202236%_
                                 _%__splice203918203919%_
                                 _%target201673202239%_
                                 _%tl201675202241%_))))
                        (_%__match203957203958%_
                         _%e201670202231%_
                         _%hd201671202234%_
                         _%tl201672202236%_
                         _%__splice203918203919%_
                         _%target201673202239%_
                         _%tl201675202241%_))
                    (_%__match203957203958%_
                     _%e201670202231%_
                     _%hd201671202234%_
                     _%tl201672202236%_
                     _%__splice203918203919%_
                     _%target201673202239%_
                     _%tl201675202241%_))
                (_%__match203957203958%_
                 _%e201670202231%_
                 _%hd201671202234%_
                 _%tl201672202236%_
                 _%__splice203918203919%_
                 _%target201673202239%_
                 _%tl201675202241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match203957203958%_
                                                 _%e201670202231%_
                                                 _%hd201671202234%_
                                                 _%tl201672202236%_
                                                 _%__splice203918203919%_
                                                 _%target201673202239%_
                                                 _%tl201675202241%_))))
                                        (_%__match203957203958%_
                                         _%e201670202231%_
                                         _%hd201671202234%_
                                         _%tl201672202236%_
                                         _%__splice203918203919%_
                                         _%target201673202239%_
                                         _%tl201675202241%_))
                                    (_%__match203957203958%_
                                     _%e201670202231%_
                                     _%hd201671202234%_
                                     _%tl201672202236%_
                                     _%__splice203918203919%_
                                     _%target201673202239%_
                                     _%tl201675202241%_))
                                (_%__match203957203958%_
                                 _%e201670202231%_
                                 _%hd201671202234%_
                                 _%tl201672202236%_
                                 _%__splice203918203919%_
                                 _%target201673202239%_
                                 _%tl201675202241%_))))
                        (_%__match203957203958%_
                         _%e201670202231%_
                         _%hd201671202234%_
                         _%tl201672202236%_
                         _%__splice203918203919%_
                         _%target201673202239%_
                         _%tl201675202241%_))))
                (_%__match203957203958%_
                 _%e201670202231%_
                 _%hd201671202234%_
                 _%tl201672202236%_
                 _%__splice203918203919%_
                 _%target201673202239%_
                 _%tl201675202241%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201676202244%_
                                     _%target201673202239%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx203914203915%_))
                              (let ((_%e201670202231%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx203914203915%_))))
                                (let ((_%tl201672202236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201670202231%_)))
                                      (_%hd201671202234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201670202231%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd201671202234%_))
                                      (let ((_%__splice203918203919%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd201671202234%_
                                                '0))))
                                        (let ((_%tl201675202241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203918203919%_
                                                  '1)))
                                              (_%target201673202239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203918203919%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201675202241%_))
                                              (_%__match203945203946%_
                                               _%e201670202231%_
                                               _%hd201671202234%_
                                               _%tl201672202236%_
                                               _%__splice203918203919%_
                                               _%target201673202239%_
                                               _%tl201675202241%_)
                                              (_%__match203957203958%_
                                               _%e201670202231%_
                                               _%hd201671202234%_
                                               _%tl201672202236%_
                                               _%__splice203918203919%_
                                               _%target201673202239%_
                                               _%tl201675202241%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201672202236%_))
                                          (let ((_%e201785201842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201672202236%_))))
                                            (let ((_%tl201787201847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201785201842%_)))
                                                  (_%hd201786201845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201785201842%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201786201845%_))
                                                  (let ((_%e201788201850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201786201845%_))))
                                                    (let ((_%tl201790201855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201788201850%_)))
                                                          (_%hd201789201853%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201788201850%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd201789201853%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd201789201853%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201790201855%_))
                          (let ((_%e201791201858%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201790201855%_))))
                            (let ((_%tl201793201863%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201791201858%_)))
                                  (_%hd201792201861%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201791201858%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201792201861%_))
                                  (let ((_%e201794201866%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201792201861%_))))
                                    (let ((_%tl201796201871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201794201866%_)))
                                          (_%hd201795201869%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201794201866%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201795201869%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd201795201869%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201796201871%_))
                                                  (let ((_%e201797201874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201796201871%_))))
                                                    (let ((_%tl201799201879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201797201874%_)))
                                                          (_%hd201798201877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201797201874%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201799201879%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201793201863%_))
                      (let ((_%e201800201882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201793201863%_))))
                        (let ((_%tl201802201887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201800201882%_)))
                              (_%hd201801201885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201800201882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd201801201885%_))
                              (let ((_%e201803201890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd201801201885%_))))
                                (let ((_%tl201805201895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201803201890%_)))
                                      (_%hd201804201893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201803201890%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd201804201893%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd201804201893%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201805201895%_))
                                              (let ((_%e201806201898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201805201895%_))))
                                                (let ((_%tl201808201903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201806201898%_)))
                                                      (_%hd201807201901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201806201898%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201808201903%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201802201887%_))
                                                          (let ((_%e201809201906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201802201887%_))))
                    (let ((_%tl201811201911%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201809201906%_)))
                          (_%hd201810201909%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201809201906%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd201810201909%_))
                          (let ((_%e201812201914%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd201810201909%_))))
                            (let ((_%tl201814201919%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201812201914%_)))
                                  (_%hd201813201917%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201812201914%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd201813201917%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd201813201917%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201814201919%_))
                                          (let ((_%e201815201922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201814201919%_))))
                                            (let ((_%tl201817201927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201815201922%_)))
                                                  (_%hd201816201925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201815201922%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201817201927%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201811201911%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201787201847%_))
                                                          (_%__match204055204056%_
                                                           _%e201670202231%_
                                                           _%hd201671202234%_
                                                           _%tl201672202236%_
                                                           _%e201785201842%_
                                                           _%hd201786201845%_
                                                           _%tl201787201847%_
                                                           _%e201788201850%_
                                                           _%hd201789201853%_
                                                           _%tl201790201855%_
                                                           _%e201791201858%_
                                                           _%hd201792201861%_
                                                           _%tl201793201863%_
                                                           _%e201794201866%_
                                                           _%hd201795201869%_
                                                           _%tl201796201871%_
                                                           _%e201797201874%_
                                                           _%hd201798201877%_
                                                           _%tl201799201879%_
                                                           _%e201800201882%_
                                                           _%hd201801201885%_
                                                           _%tl201802201887%_
                                                           _%e201803201890%_
                                                           _%hd201804201893%_
                                                           _%tl201805201895%_
                                                           _%e201806201898%_
                                                           _%hd201807201901%_
                                                           _%tl201808201903%_
                                                           _%e201809201906%_
                                                           _%hd201810201909%_
                                                           _%tl201811201911%_
                                                           _%e201812201914%_
                                                           _%hd201813201917%_
                                                           _%tl201814201919%_
                                                           _%e201815201922%_
                                                           _%hd201816201925%_
                                                           _%tl201817201927%_)
                                                          (_%__kont203930203931%_))
                                                      (_%__kont203930203931%_))
                                                  (_%__kont203930203931%_))))
                                          (_%__kont203930203931%_))
                                      (_%__kont203930203931%_))
                                  (_%__kont203930203931%_))))
                          (_%__kont203930203931%_))))
                  (_%__kont203930203931%_))
              (_%__kont203930203931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont203930203931%_))
                                          (_%__kont203930203931%_))
                                      (_%__kont203930203931%_))))
                              (_%__kont203930203931%_))))
                      (_%__kont203930203931%_))
                  (_%__kont203930203931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont203930203931%_))
                                              (_%__kont203930203931%_))
                                          (_%__kont203930203931%_))))
                                  (_%__kont203930203931%_))))
                          (_%__kont203930203931%_))
                      (_%__kont203930203931%_))
                  (_%__kont203930203931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont203930203931%_))))
                                          (_%__kont203930203931%_)))))
                              (_%__kont203930203931%_)))))))
                 (_%dispatch-case-e200980%_
                  (lambda (_%hd201127%_ _%body201128%_)
                    (let* ((_%form201130%_
                            (cons _%hd201127%_ (cons _%body201128%_ '())))
                           (_%__stx204058204059%_ _%form201130%_)
                           (_%g201134201258%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204058204059%_)))))
                      (let ((_%__kont204060204061%_
                             (lambda (_%g201136201623%_
                                      _%g201137201624%_
                                      _%g201138201625%_)
                               (let ((__tmp205224
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201137201624%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self200976%_
                                  __tmp205224))))
                            (_%__kont204066204067%_
                             (lambda (_%g201181201475%_
                                      _%g201182201476%_
                                      _%g201183201477%_
                                      _%g201184201478%_)
                               (let ((__tmp205225
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201181201475%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self200976%_
                                  __tmp205225))))
                            (_%__kont204070204071%_
                             (lambda (_%g201221201343%_
                                      _%g201222201344%_
                                      _%g201223201345%_)
                               (let ((__tmp205226
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g201221201343%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self200976%_
                                  __tmp205226)))))
                        (let* ((_%__match204167204168%_
                                (lambda (_%e201224201263%_
                                         _%hd201225201266%_
                                         _%tl201226201268%_
                                         _%e201227201271%_
                                         _%hd201228201274%_
                                         _%tl201229201276%_
                                         _%e201230201279%_
                                         _%hd201231201282%_
                                         _%tl201232201284%_
                                         _%e201233201287%_
                                         _%hd201234201290%_
                                         _%tl201235201292%_
                                         _%e201236201295%_
                                         _%hd201237201298%_
                                         _%tl201238201300%_
                                         _%e201239201303%_
                                         _%hd201240201306%_
                                         _%tl201241201308%_
                                         _%e201242201311%_
                                         _%hd201243201314%_
                                         _%tl201244201316%_
                                         _%e201245201319%_
                                         _%hd201246201322%_
                                         _%tl201247201324%_
                                         _%e201248201327%_
                                         _%hd201249201330%_
                                         _%tl201250201332%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201244201316%_))
                                      (let ((_%e201251201335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl201244201316%_))))
                                        (let ((_%tl201253201340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201251201335%_)))
                                              (_%hd201252201338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201251201335%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201253201340%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl201229201276%_))
                                                  (_%__kont204070204071%_
                                                   _%hd201249201330%_
                                                   _%hd201240201306%_
                                                   _%hd201225201266%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201134201258%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201134201258%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201134201258%_)))))
                               (_%__match204097204098%_
                                (lambda (_%e201185201381%_
                                         _%hd201186201384%_
                                         _%tl201187201386%_
                                         _%__splice204068204069%_
                                         _%target201188201389%_
                                         _%tl201190201391%_)
                                  (letrec ((_%loop201191201394%_
                                            (lambda (_%hd201189201397%_
                                                     _%arg201195201399%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201189201397%_))
                                                  (let ((_%e201192201401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201189201397%_))))
                                                    (let ((_%lp-tl201194201406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201192201401%_)))
                                                          (_%lp-hd201193201404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201192201401%_))))
                                                      (_%loop201191201394%_
                                                       _%lp-tl201194201406%_
                                                       (cons _%lp-hd201193201404%_
                                                             _%arg201195201399%_))))
                                                  (let ((_%arg201196201409%_
                                                         (reverse _%arg201195201399%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201187201386%_))
                                                        (let ((_%e201197201411%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201187201386%_))))
                  (let ((_%tl201199201416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201197201411%_)))
                        (_%hd201198201414%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201197201411%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201198201414%_))
                        (let ((_%e201200201419%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201198201414%_))))
                          (let ((_%tl201202201424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201200201419%_)))
                                (_%hd201201201422%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201200201419%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201201201422%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201201201422%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201202201424%_))
                                        (let ((_%e201203201427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201202201424%_))))
                                          (let ((_%tl201205201432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201203201427%_)))
                                                (_%hd201204201430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201203201427%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201204201430%_))
                                                (let ((_%e201206201435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201204201430%_))))
                                                  (let ((_%tl201208201440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201206201435%_)))
                                                        (_%hd201207201438%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201206201435%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201207201438%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201207201438%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201208201440%_))
                        (let ((_%e201209201443%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201208201440%_))))
                          (let ((_%tl201211201448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201209201443%_)))
                                (_%hd201210201446%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201209201443%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201211201448%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl201205201432%_))
                                    (let ((_%e201212201451%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl201205201432%_))))
                                      (let ((_%tl201214201456%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201212201451%_)))
                                            (_%hd201213201454%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201212201451%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd201213201454%_))
                                            (let ((_%e201215201459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd201213201454%_))))
                                              (let ((_%tl201217201464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201215201459%_)))
                                                    (_%hd201216201462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201215201459%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd201216201462%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd201216201462%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201217201464%_))
                                                            (let ((_%e201218201467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201217201464%_))))
                      (let ((_%tl201220201472%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201218201467%_)))
                            (_%hd201219201470%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201218201467%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201220201472%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201199201416%_))
                                (_%__kont204066204067%_
                                 _%hd201219201470%_
                                 _%hd201210201446%_
                                 _%tl201190201391%_
                                 _%arg201196201409%_)
                                (_%__match204167204168%_
                                 _%e201185201381%_
                                 _%hd201186201384%_
                                 _%tl201187201386%_
                                 _%e201197201411%_
                                 _%hd201198201414%_
                                 _%tl201199201416%_
                                 _%e201200201419%_
                                 _%hd201201201422%_
                                 _%tl201202201424%_
                                 _%e201203201427%_
                                 _%hd201204201430%_
                                 _%tl201205201432%_
                                 _%e201206201435%_
                                 _%hd201207201438%_
                                 _%tl201208201440%_
                                 _%e201209201443%_
                                 _%hd201210201446%_
                                 _%tl201211201448%_
                                 _%e201212201451%_
                                 _%hd201213201454%_
                                 _%tl201214201456%_
                                 _%e201215201459%_
                                 _%hd201216201462%_
                                 _%tl201217201464%_
                                 _%e201218201467%_
                                 _%hd201219201470%_
                                 _%tl201220201472%_))
                            (let ()
                              (declare (not safe))
                              (_%g201134201258%_)))))
                    (let () (declare (not safe)) (_%g201134201258%_)))
                (let () (declare (not safe)) (_%g201134201258%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201134201258%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g201134201258%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g201134201258%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201134201258%_)))))
                        (let () (declare (not safe)) (_%g201134201258%_)))
                    (let () (declare (not safe)) (_%g201134201258%_)))
                (let () (declare (not safe)) (_%g201134201258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201134201258%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201134201258%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g201134201258%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201134201258%_)))))
                        (let () (declare (not safe)) (_%g201134201258%_)))))
                (let () (declare (not safe)) (_%g201134201258%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201191201394%_
                                     _%target201188201389%_
                                     '()))))
                               (_%__match204085204086%_
                                (lambda (_%e201139201515%_
                                         _%hd201140201518%_
                                         _%tl201141201520%_
                                         _%__splice204062204063%_
                                         _%target201142201523%_
                                         _%tl201144201525%_)
                                  (letrec ((_%loop201145201528%_
                                            (lambda (_%hd201143201531%_
                                                     _%arg201149201533%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201143201531%_))
                                                  (let ((_%e201146201535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201143201531%_))))
                                                    (let ((_%lp-tl201148201540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201146201535%_)))
                                                          (_%lp-hd201147201538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201146201535%_))))
                                                      (_%loop201145201528%_
                                                       _%lp-tl201148201540%_
                                                       (cons _%lp-hd201147201538%_
                                                             _%arg201149201533%_))))
                                                  (let ((_%arg201150201543%_
                                                         (reverse _%arg201149201533%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201141201520%_))
                                                        (let ((_%e201151201545%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl201141201520%_))))
                  (let ((_%tl201153201550%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201151201545%_)))
                        (_%hd201152201548%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201151201545%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201152201548%_))
                        (let ((_%e201154201553%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd201152201548%_))))
                          (let ((_%tl201156201558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201154201553%_)))
                                (_%hd201155201556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201154201553%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd201155201556%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd201155201556%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201156201558%_))
                                        (let ((_%e201157201561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201156201558%_))))
                                          (let ((_%tl201159201566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201157201561%_)))
                                                (_%hd201158201564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201157201561%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201158201564%_))
                                                (let ((_%e201160201569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201158201564%_))))
                                                  (let ((_%tl201162201574%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201160201569%_)))
                                                        (_%hd201161201572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201160201569%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd201161201572%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd201161201572%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201162201574%_))
                        (let ((_%e201163201577%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl201162201574%_))))
                          (let ((_%tl201165201582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201163201577%_)))
                                (_%hd201164201580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201163201577%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201165201582%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl201159201566%_))
                                    (let ((_%__splice204064204065%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl201159201566%_
                                              '0))))
                                      (let ((_%tl201168201587%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204064204065%_
                                                '1)))
                                            (_%target201166201585%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204064204065%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201168201587%_))
                                            (letrec ((_%loop201169201590%_
                                                      (lambda (_%hd201167201593%_
                                                               _%xarg201173201595%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd201167201593%_))
                                                            (let ((_%e201170201597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd201167201593%_))))
                      (let ((_%lp-tl201172201602%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201170201597%_)))
                            (_%lp-hd201171201600%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201170201597%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd201171201600%_))
                            (let ((_%e201175201605%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd201171201600%_))))
                              (let ((_%tl201177201610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201175201605%_)))
                                    (_%hd201176201608%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201175201605%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201176201608%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd201176201608%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201177201610%_))
                                            (let ((_%e201178201613%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201177201610%_))))
                                              (let ((_%tl201180201618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201178201613%_)))
                                                    (_%hd201179201616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201178201613%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl201180201618%_))
                                                    (_%loop201169201590%_
                                                     _%lp-tl201172201602%_
                                                     (cons _%hd201179201616%_
                                                           _%xarg201173201595%_))
                                                    (_%__match204097204098%_
                                                     _%e201139201515%_
                                                     _%hd201140201518%_
                                                     _%tl201141201520%_
                                                     _%__splice204062204063%_
                                                     _%target201142201523%_
                                                     _%tl201144201525%_))))
                                            (_%__match204097204098%_
                                             _%e201139201515%_
                                             _%hd201140201518%_
                                             _%tl201141201520%_
                                             _%__splice204062204063%_
                                             _%target201142201523%_
                                             _%tl201144201525%_))
                                        (_%__match204097204098%_
                                         _%e201139201515%_
                                         _%hd201140201518%_
                                         _%tl201141201520%_
                                         _%__splice204062204063%_
                                         _%target201142201523%_
                                         _%tl201144201525%_))
                                    (_%__match204097204098%_
                                     _%e201139201515%_
                                     _%hd201140201518%_
                                     _%tl201141201520%_
                                     _%__splice204062204063%_
                                     _%target201142201523%_
                                     _%tl201144201525%_))))
                            (_%__match204097204098%_
                             _%e201139201515%_
                             _%hd201140201518%_
                             _%tl201141201520%_
                             _%__splice204062204063%_
                             _%target201142201523%_
                             _%tl201144201525%_))))
                    (let ((_%xarg201174201621%_
                           (reverse _%xarg201173201595%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201153201550%_))
                          (_%__kont204060204061%_
                           _%xarg201174201621%_
                           _%hd201164201580%_
                           _%arg201150201543%_)
                          (_%__match204097204098%_
                           _%e201139201515%_
                           _%hd201140201518%_
                           _%tl201141201520%_
                           _%__splice204062204063%_
                           _%target201142201523%_
                           _%tl201144201525%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop201169201590%_
                                               _%target201166201585%_
                                               '()))
                                            (_%__match204097204098%_
                                             _%e201139201515%_
                                             _%hd201140201518%_
                                             _%tl201141201520%_
                                             _%__splice204062204063%_
                                             _%target201142201523%_
                                             _%tl201144201525%_))))
                                    (_%__match204097204098%_
                                     _%e201139201515%_
                                     _%hd201140201518%_
                                     _%tl201141201520%_
                                     _%__splice204062204063%_
                                     _%target201142201523%_
                                     _%tl201144201525%_))
                                (_%__match204097204098%_
                                 _%e201139201515%_
                                 _%hd201140201518%_
                                 _%tl201141201520%_
                                 _%__splice204062204063%_
                                 _%target201142201523%_
                                 _%tl201144201525%_))))
                        (_%__match204097204098%_
                         _%e201139201515%_
                         _%hd201140201518%_
                         _%tl201141201520%_
                         _%__splice204062204063%_
                         _%target201142201523%_
                         _%tl201144201525%_))
                    (_%__match204097204098%_
                     _%e201139201515%_
                     _%hd201140201518%_
                     _%tl201141201520%_
                     _%__splice204062204063%_
                     _%target201142201523%_
                     _%tl201144201525%_))
                (_%__match204097204098%_
                 _%e201139201515%_
                 _%hd201140201518%_
                 _%tl201141201520%_
                 _%__splice204062204063%_
                 _%target201142201523%_
                 _%tl201144201525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match204097204098%_
                                                 _%e201139201515%_
                                                 _%hd201140201518%_
                                                 _%tl201141201520%_
                                                 _%__splice204062204063%_
                                                 _%target201142201523%_
                                                 _%tl201144201525%_))))
                                        (_%__match204097204098%_
                                         _%e201139201515%_
                                         _%hd201140201518%_
                                         _%tl201141201520%_
                                         _%__splice204062204063%_
                                         _%target201142201523%_
                                         _%tl201144201525%_))
                                    (_%__match204097204098%_
                                     _%e201139201515%_
                                     _%hd201140201518%_
                                     _%tl201141201520%_
                                     _%__splice204062204063%_
                                     _%target201142201523%_
                                     _%tl201144201525%_))
                                (_%__match204097204098%_
                                 _%e201139201515%_
                                 _%hd201140201518%_
                                 _%tl201141201520%_
                                 _%__splice204062204063%_
                                 _%target201142201523%_
                                 _%tl201144201525%_))))
                        (_%__match204097204098%_
                         _%e201139201515%_
                         _%hd201140201518%_
                         _%tl201141201520%_
                         _%__splice204062204063%_
                         _%target201142201523%_
                         _%tl201144201525%_))))
                (_%__match204097204098%_
                 _%e201139201515%_
                 _%hd201140201518%_
                 _%tl201141201520%_
                 _%__splice204062204063%_
                 _%target201142201523%_
                 _%tl201144201525%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop201145201528%_
                                     _%target201142201523%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204058204059%_))
                              (let ((_%e201139201515%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204058204059%_))))
                                (let ((_%tl201141201520%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201139201515%_)))
                                      (_%hd201140201518%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201139201515%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd201140201518%_))
                                      (let ((_%__splice204062204063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd201140201518%_
                                                '0))))
                                        (let ((_%tl201144201525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204062204063%_
                                                  '1)))
                                              (_%target201142201523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204062204063%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201144201525%_))
                                              (_%__match204085204086%_
                                               _%e201139201515%_
                                               _%hd201140201518%_
                                               _%tl201141201520%_
                                               _%__splice204062204063%_
                                               _%target201142201523%_
                                               _%tl201144201525%_)
                                              (_%__match204097204098%_
                                               _%e201139201515%_
                                               _%hd201140201518%_
                                               _%tl201141201520%_
                                               _%__splice204062204063%_
                                               _%target201142201523%_
                                               _%tl201144201525%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201141201520%_))
                                          (let ((_%e201227201271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl201141201520%_))))
                                            (let ((_%tl201229201276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201227201271%_)))
                                                  (_%hd201228201274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201227201271%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd201228201274%_))
                                                  (let ((_%e201230201279%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd201228201274%_))))
                                                    (let ((_%tl201232201284%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201230201279%_)))
                                                          (_%hd201231201282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201230201279%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd201231201282%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd201231201282%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201232201284%_))
                          (let ((_%e201233201287%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201232201284%_))))
                            (let ((_%tl201235201292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201233201287%_)))
                                  (_%hd201234201290%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201233201287%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd201234201290%_))
                                  (let ((_%e201236201295%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201234201290%_))))
                                    (let ((_%tl201238201300%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201236201295%_)))
                                          (_%hd201237201298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201236201295%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd201237201298%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd201237201298%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201238201300%_))
                                                  (let ((_%e201239201303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl201238201300%_))))
                                                    (let ((_%tl201241201308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201239201303%_)))
                                                          (_%hd201240201306%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201239201303%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201241201308%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl201235201292%_))
                      (let ((_%e201242201311%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl201235201292%_))))
                        (let ((_%tl201244201316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201242201311%_)))
                              (_%hd201243201314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201242201311%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd201243201314%_))
                              (let ((_%e201245201319%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd201243201314%_))))
                                (let ((_%tl201247201324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201245201319%_)))
                                      (_%hd201246201322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201245201319%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd201246201322%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd201246201322%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201247201324%_))
                                              (let ((_%e201248201327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl201247201324%_))))
                                                (let ((_%tl201250201332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201248201327%_)))
                                                      (_%hd201249201330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201248201327%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201250201332%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201244201316%_))
                                                          (let ((_%e201251201335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl201244201316%_))))
                    (let ((_%tl201253201340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201251201335%_)))
                          (_%hd201252201338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201251201335%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201253201340%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201229201276%_))
                              (_%__kont204070204071%_
                               _%hd201249201330%_
                               _%hd201240201306%_
                               _%hd201140201518%_)
                              (let ()
                                (declare (not safe))
                                (_%g201134201258%_)))
                          (let () (declare (not safe)) (_%g201134201258%_)))))
                  (let () (declare (not safe)) (_%g201134201258%_)))
              (let () (declare (not safe)) (_%g201134201258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201134201258%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201134201258%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g201134201258%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g201134201258%_)))))
                      (let () (declare (not safe)) (_%g201134201258%_)))
                  (let () (declare (not safe)) (_%g201134201258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201134201258%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201134201258%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201134201258%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201134201258%_)))))
                          (let () (declare (not safe)) (_%g201134201258%_)))
                      (let () (declare (not safe)) (_%g201134201258%_)))
                  (let () (declare (not safe)) (_%g201134201258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201134201258%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201134201258%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g201134201258%_))))))))
                 (_%generate1200981%_
                  (lambda (_%args201112%_
                           _%arglen201113%_
                           _%hd201114%_
                           _%body201115%_)
                    (let* ((_%len201117%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd201114%_)))
                           (_%condition201122%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd201114%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen201113%_
                                                (cons _%len201117%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen201113%_ (cons _%len201117%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len201117%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen201113%_
                                                    (cons _%len201117%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen201113%_ (cons _%len201117%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch201124%_
                            (if (_%dispatch-case?200979%_
                                 _%hd201114%_
                                 _%body201115%_)
                                (_%dispatch-case-e200980%_
                                 _%hd201114%_
                                 _%body201115%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self200976%_
                                 _%hd201114%_
                                 _%body201115%_))))
                      (cons _%condition201122%_
                            (cons (cons 'apply
                                        (cons _%dispatch201124%_
                                              (cons _%args201112%_ '())))
                                  '()))))))
          (let* ((_%g200983201011%_
                  (lambda (_%g200984201008%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200984201008%_))))
                 (_%g200982201109%_
                  (lambda (_%g200984201014%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200984201014%_))
                        (let ((_%e200987201016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200984201014%_))))
                          (let ((_%hd200988201019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200987201016%_)))
                                (_%tl200989201021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200987201016%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl200989201021%_))
                                (let ((_g205227_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl200989201021%_
                                          '0))))
                                  (begin
                                    (let ((_g205228_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205227_)
                                                 (##values-length _g205227_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205228_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205228_)))
                                    (let ((_%target200990201024%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205227_ 0)))
                                          (_%tl200992201026%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205227_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200992201026%_))
                                          (letrec ((_%loop200993201029%_
                                                    (lambda (_%hd200991201032%_
                                                             _%body200997201034%_
                                                             _%hd200998201035%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200991201032%_))
                                                          (let ((_%e200994201037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200991201032%_))))
                    (let ((_%lp-hd200995201040%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200994201037%_)))
                          (_%lp-tl200996201042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200994201037%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd200995201040%_))
                          (let ((_%e201001201045%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd200995201040%_))))
                            (let ((_%hd201002201048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201001201045%_)))
                                  (_%tl201003201050%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201001201045%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201003201050%_))
                                  (let ((_%e201004201053%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl201003201050%_))))
                                    (let ((_%hd201005201056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201004201053%_)))
                                          (_%tl201006201058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201004201053%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl201006201058%_))
                                          (_%loop200993201029%_
                                           _%lp-tl200996201042%_
                                           (cons _%hd201005201056%_
                                                 _%body200997201034%_)
                                           (cons _%hd201002201048%_
                                                 _%hd200998201035%_))
                                          (_%g200983201011%_
                                           _%g200984201014%_))))
                                  (_%g200983201011%_ _%g200984201014%_))))
                          (_%g200983201011%_ _%g200984201014%_))))
                  (let ((_%body200999201061%_ (reverse _%body200997201034%_))
                        (_%hd201000201062%_ (reverse _%hd200998201035%_)))
                    ((lambda (_%g200985201064%_ _%g200986201065%_)
                       (let ((_%args201084%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen201085%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name201086%_
                              (let ((_%$e201081%_
                                     (let ((__tmp205229
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp205229 _%stx200977%_))))
                                (if _%$e201081%_
                                    _%$e201081%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args201084%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen201085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args201084%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args201084%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp205233
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name201086%_
                                                                (cons _%args201084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp205230
                                  (map (lambda (_%g201087201090%_
                                                _%g201088201092%_)
                                         (_%generate1200981%_
                                          _%args201084%_
                                          _%arglen201085%_
                                          _%g201087201090%_
                                          _%g201088201092%_))
                                       (let ((__tmp205231
                                              (lambda (_%g201094201097%_
                                                       _%g201095201099%_)
                                                (cons _%g201094201097%_
                                                      _%g201095201099%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp205231
                                          '()
                                          _%g200986201065%_))
                                       (let ((__tmp205232
                                              (lambda (_%g201101201104%_
                                                       _%g201102201106%_)
                                                (cons _%g201101201104%_
                                                      _%g201102201106%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp205232
                                          '()
                                          _%g200985201064%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp205233 __tmp205230)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body200999201061%_
                     _%hd201000201062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop200993201029%_
                                             _%target200990201024%_
                                             '()
                                             '()))
                                          (_%g200983201011%_
                                           _%g200984201014%_)))))
                                (_%g200983201011%_ _%g200984201014%_))))
                        (_%g200983201011%_ _%g200984201014%_)))))
            (_%g200982201109%_ _%stx200977%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self200213%_ _%stx200214%_ _%compiled-body?200215%_)
        (letrec ((_%generate-simple200217%_
                  (lambda (_%hd200961%_ _%body200962%_)
                    (_%coalesce-boolean200218%_
                     (_%simplify-let200219%_
                      (gxc#generate-runtime-simple-let
                       _%self200213%_
                       'let
                       _%hd200961%_
                       _%body200962%_
                       _%compiled-body?200215%_)))))
                 (_%coalesce-boolean200218%_
                  (lambda (_%code200822%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code200823200849%_ _%code200822%_)
                               (_%else200825200857%_
                                (lambda () _%code200822%_))
                               (_%K200827200894%_
                                (lambda (_%expr2200860%_
                                         _%expr1200861%_
                                         _%id200862%_)
                                  (let* ((_%expr2200863200871%_
                                          _%expr2200860%_)
                                         (_%else200865200879%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1200861%_
                                                        (cons _%expr2200860%_
                                                              '())))))
                                         (_%K200867200884%_
                                          (lambda (_%exprs200882%_)
                                            (cons 'or
                                                  (cons _%expr1200861%_
                                                        _%exprs200882%_)))))
                                    (if (pair? _%expr2200863200871%_)
                                        (let ((_%hd200868200887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2200863200871%_)))
                                              (_%tl200869200889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2200863200871%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd200868200887%_ 'or))
                                              (let ((_%exprs200892%_
                                                     _%tl200869200889%_))
                                                (_%K200867200884%_
                                                 _%exprs200892%_))
                                              (_%else200865200879%_)))
                                        (_%else200865200879%_))))))
                          (if (pair? _%code200823200849%_)
                              (let ((_%hd200828200897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code200823200849%_)))
                                    (_%tl200829200899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code200823200849%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd200828200897%_ 'let))
                                    (if (pair? _%tl200829200899%_)
                                        (let ((_%hd200830200902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl200829200899%_)))
                                              (_%tl200831200904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl200829200899%_))))
                                          (if (pair? _%hd200830200902%_)
                                              (let ((_%hd200842200907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd200830200902%_)))
                                                    (_%tl200843200909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd200830200902%_))))
                                                (if (pair? _%hd200842200907%_)
                                                    (let ((_%hd200844200912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd200842200907%_)))
                                                          (_%tl200845200914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd200842200907%_))))
                                                      (let ((_%id200917%_
                                                             _%hd200844200912%_))
                                                        (if (pair? _%tl200845200914%_)
                                                            (let ((_%hd200846200919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl200845200914%_)))
                          (_%tl200847200921%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl200845200914%_))))
                      (let ((_%expr1200924%_ _%hd200846200919%_))
                        (if (null? _%tl200847200921%_)
                            (if (null? _%tl200843200909%_)
                                (if (pair? _%tl200831200904%_)
                                    (let ((_%hd200832200926%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl200831200904%_)))
                                          (_%tl200833200928%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl200831200904%_))))
                                      (if (pair? _%hd200832200926%_)
                                          (let ((_%hd200834200931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd200832200926%_)))
                                                (_%tl200835200933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd200832200926%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200834200931%_
                                                         'if))
                                                (if (pair? _%tl200835200933%_)
                                                    (let ((_%hd200836200936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl200835200933%_)))
                                                          (_%tl200837200938%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl200835200933%_))))
                                                      (if ((lambda (_%g200940200942%_)
                                                             (eq? _%g200940200942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id200917%_))
                   _%hd200836200936%_)
                  (if (pair? _%tl200837200938%_)
                      (let ((_%hd200838200945%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl200837200938%_)))
                            (_%tl200839200947%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl200837200938%_))))
                        (if ((lambda (_%g200949200951%_)
                               (eq? _%g200949200951%_ _%id200917%_))
                             _%hd200838200945%_)
                            (if (pair? _%tl200839200947%_)
                                (let ((_%hd200840200954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl200839200947%_)))
                                      (_%tl200841200956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl200839200947%_))))
                                  (let ((_%expr2200959%_ _%hd200840200954%_))
                                    (if (null? _%tl200841200956%_)
                                        (if (null? _%tl200833200928%_)
                                            (_%K200827200894%_
                                             _%expr2200959%_
                                             _%expr1200924%_
                                             _%id200917%_)
                                            (_%else200825200857%_))
                                        (_%else200825200857%_))))
                                (_%else200825200857%_))
                            (_%else200825200857%_)))
                      (_%else200825200857%_))
                  (_%else200825200857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else200825200857%_))
                                                (_%else200825200857%_)))
                                          (_%else200825200857%_)))
                                    (_%else200825200857%_))
                                (_%else200825200857%_))
                            (_%else200825200857%_))))
                    (_%else200825200857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else200825200857%_)))
                                              (_%else200825200857%_)))
                                        (_%else200825200857%_))
                                    (_%else200825200857%_)))
                              (_%else200825200857%_)))
                        _%code200822%_)))
                 (_%simplify-let200219%_
                  (lambda (_%code200521%_)
                    (let* ((_%code200522200594%_ _%code200521%_)
                           (_%else200527200602%_ (lambda () _%code200521%_)))
                      (let ((_%K200586200802%_
                             (lambda (_%expr200800%_) _%expr200800%_))
                            (_%K200569200748%_
                             (lambda (_%body200744%_
                                      _%expr200745%_
                                      _%id200746%_)
                               (cons 'let
                                     (cons (cons (cons _%id200746%_
                                                       (cons _%expr200745%_
                                                             '()))
                                                 '())
                                           _%body200744%_))))
                            (_%K200546200672%_
                             (lambda (_%body200666%_
                                      _%expr2200667%_
                                      _%id2200668%_
                                      _%expr1200669%_
                                      _%id1200670%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1200670%_
                                                       (cons _%expr1200669%_
                                                             '()))
                                                 (cons (cons _%id2200668%_
                                                             (cons _%expr2200667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body200666%_))))
                            (_%K200529200611%_
                             (lambda (_%body200606%_
                                      _%bind200607%_
                                      _%expr1200608%_
                                      _%id1200609%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1200609%_
                                                       (cons _%expr1200608%_
                                                             '()))
                                                 _%bind200607%_)
                                           _%body200606%_)))))
                        (if (pair? _%code200522200594%_)
                            (let ((_%tl200588200807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code200522200594%_)))
                                  (_%hd200587200805%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code200522200594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd200587200805%_ 'let))
                                  (if (pair? _%tl200588200807%_)
                                      (let ((_%tl200590200812%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl200588200807%_)))
                                            (_%hd200589200810%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl200588200807%_))))
                                        (if (null? _%hd200589200810%_)
                                            (if (pair? _%tl200590200812%_)
                                                (let ((_%tl200592200817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl200590200812%_)))
                                                      (_%hd200591200815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl200590200812%_))))
                                                  (if (null? _%tl200592200817%_)
                                                      (let ((_%expr200820%_
                                                             _%hd200591200815%_))
                                                        (_%K200586200802%_
                                                         _%expr200820%_))
                                                      (_%else200527200602%_)))
                                                (_%else200527200602%_))
                                            (if (pair? _%hd200589200810%_)
                                                (let ((_%tl200581200763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd200589200810%_)))
                                                      (_%hd200580200761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd200589200810%_))))
                                                  (if (pair? _%hd200580200761%_)
                                                      (let ((_%tl200583200768%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd200580200761%_)))
                    (_%hd200582200766%_
                     (let () (declare (not safe)) (##car _%hd200580200761%_))))
                (if (pair? _%tl200583200768%_)
                    (let ((_%tl200585200775%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl200583200768%_)))
                          (_%hd200584200773%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl200583200768%_))))
                      (if (null? _%tl200585200775%_)
                          (if (null? _%tl200581200763%_)
                              (if (pair? _%tl200590200812%_)
                                  (let ((_%tl200575200782%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl200590200812%_)))
                                        (_%hd200574200780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl200590200812%_))))
                                    (if (pair? _%hd200574200780%_)
                                        (let ((_%tl200577200787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd200574200780%_)))
                                              (_%hd200576200785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd200574200780%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd200576200785%_
                                                       'let))
                                              (if (pair? _%tl200577200787%_)
                                                  (let ((_%tl200579200792%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl200577200787%_)))
                                                        (_%hd200578200790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl200577200787%_))))
                                                    (if (null? _%hd200578200790%_)
                                                        (if (null? _%tl200575200782%_)
                                                            (let ((_%id200771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd200582200766%_)
                          (_%expr200778%_ _%hd200584200773%_)
                          (_%body200795%_ _%tl200579200792%_))
                      (_%K200569200748%_
                       _%body200795%_
                       _%expr200778%_
                       _%id200771%_))
                    (_%else200527200602%_))
                (if (pair? _%hd200578200790%_)
                    (let ((_%tl200558200721%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd200578200790%_)))
                          (_%hd200557200719%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd200578200790%_))))
                      (if (pair? _%hd200557200719%_)
                          (let ((_%tl200560200726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd200557200719%_)))
                                (_%hd200559200724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd200557200719%_))))
                            (if (pair? _%tl200560200726%_)
                                (let ((_%tl200562200733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl200560200726%_)))
                                      (_%hd200561200731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl200560200726%_))))
                                  (if (null? _%tl200562200733%_)
                                      (if (null? _%tl200558200721%_)
                                          (if (null? _%tl200575200782%_)
                                              (let ((_%id1200695%_
                                                     _%hd200582200766%_)
                                                    (_%expr1200702%_
                                                     _%hd200584200773%_)
                                                    (_%id2200729%_
                                                     _%hd200559200724%_)
                                                    (_%expr2200736%_
                                                     _%hd200561200731%_)
                                                    (_%body200738%_
                                                     _%tl200579200792%_))
                                                (_%K200546200672%_
                                                 _%body200738%_
                                                 _%expr2200736%_
                                                 _%id2200729%_
                                                 _%expr1200702%_
                                                 _%id1200695%_))
                                              (_%else200527200602%_))
                                          (_%else200527200602%_))
                                      (_%else200527200602%_)))
                                (_%else200527200602%_)))
                          (_%else200527200602%_)))
                    (_%else200527200602%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else200527200602%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd200576200785%_
                                                           'let*))
                                                  (if (pair? _%tl200577200787%_)
                                                      (let ((_%tl200539200655%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl200577200787%_)))
                    (_%hd200538200653%_
                     (let () (declare (not safe)) (##car _%tl200577200787%_))))
                (if (null? _%tl200575200782%_)
                    (let ((_%id1200634%_ _%hd200582200766%_)
                          (_%expr1200641%_ _%hd200584200773%_)
                          (_%bind200658%_ _%hd200538200653%_)
                          (_%body200660%_ _%tl200539200655%_))
                      (_%K200529200611%_
                       _%body200660%_
                       _%bind200658%_
                       _%expr1200641%_
                       _%id1200634%_))
                    (_%else200527200602%_)))
              (_%else200527200602%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else200527200602%_))))
                                        (_%else200527200602%_)))
                                  (_%else200527200602%_))
                              (_%else200527200602%_))
                          (_%else200527200602%_)))
                    (_%else200527200602%_)))
              (_%else200527200602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else200527200602%_))))
                                      (_%else200527200602%_))
                                  (_%else200527200602%_)))
                            (_%else200527200602%_))))))
                 (_%generate-values200220%_
                  (lambda (_%hd200334%_ _%body200335%_)
                    (let _%lp200337%_ ((_%rest200339%_ _%hd200334%_)
                                       (_%bind200340%_ '())
                                       (_%check200341%_ '())
                                       (_%post200342%_ '()))
                      (let* ((_%__stx204387204388%_ _%rest200339%_)
                             (_%g200345200356%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx204387204388%_)))))
                        (let ((_%__kont204389204390%_
                               (lambda (_%g200347200383%_ _%g200348200384%_)
                                 (let* ((_%__stx204343204344%_
                                         _%g200348200384%_)
                                        (_%g200399200424%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx204343204344%_)))))
                                   (let ((_%__kont204345204346%_
                                          (lambda (_%g200401200497%_
                                                   _%g200402200498%_)
                                            (let ((_%eid200512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g200402200498%_)))
                                                  (_%expr200513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200213%_
                                                      _%g200401200497%_))))
                                              (_%lp200337%_
                                               _%g200347200383%_
                                               (cons (cons _%eid200512%_
                                                           (cons _%expr200513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200340%_)
                                               _%check200341%_
                                               _%post200342%_))))
                                         (_%__kont204347204348%_
                                          (lambda (_%g200412200445%_
                                                   _%g200413200446%_)
                                            (let* ((_%vals200459%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values200461%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals200459%_
                                                     _%g200413200446%_
                                                     _%g200412200445%_))
                                                   (_%refs200463%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals200459%_
                                                     _%g200413200446%_))
                                                   (_%expr200465%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200213%_
                                                       _%g200412200445%_))))
                                              (_%lp200337%_
                                               _%g200347200383%_
                                               (cons (cons _%vals200459%_
                                                           (cons _%expr200465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200340%_)
                                               (cons _%check-values200461%_
                                                     _%check200341%_)
                                               (cons _%refs200463%_
                                                     _%post200342%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx204343204344%_))
                                         (let ((_%e200403200473%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx204343204344%_))))
                                           (let ((_%tl200405200478%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200403200473%_)))
                                                 (_%hd200404200476%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200403200473%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd200404200476%_))
                                                 (let ((_%e200406200481%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd200404200476%_))))
                                                   (let ((_%tl200408200486%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200406200481%_)))
                                                         (_%hd200407200484%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200406200481%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200408200486%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200405200478%_))
                     (let ((_%e200409200489%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200405200478%_))))
                       (let ((_%tl200411200494%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200409200489%_)))
                             (_%hd200410200492%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200409200489%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200411200494%_))
                             (_%__kont204345204346%_
                              _%hd200410200492%_
                              _%hd200407200484%_)
                             (let ()
                               (declare (not safe))
                               (_%g200399200424%_)))))
                     (let () (declare (not safe)) (_%g200399200424%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl200405200478%_))
                     (let ((_%e200417200437%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200405200478%_))))
                       (let ((_%tl200419200442%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200417200437%_)))
                             (_%hd200418200440%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200417200437%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200419200442%_))
                             (_%__kont204347204348%_
                              _%hd200418200440%_
                              _%hd200404200476%_)
                             (let ()
                               (declare (not safe))
                               (_%g200399200424%_)))))
                     (let () (declare (not safe)) (_%g200399200424%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl200405200478%_))
                                                     (let ((_%e200417200437%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl200405200478%_))))
                                                       (let ((_%tl200419200442%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e200417200437%_)))
                     (_%hd200418200440%_
                      (let () (declare (not safe)) (##car _%e200417200437%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl200419200442%_))
                     (_%__kont204347204348%_
                      _%hd200418200440%_
                      _%hd200404200476%_)
                     (let () (declare (not safe)) (_%g200399200424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200399200424%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g200399200424%_)))))))
                              (_%__kont204391204392%_
                               (lambda ()
                                 (let* ((_%body200363%_
                                         (if _%compiled-body?200215%_
                                             _%body200335%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200213%_
                                                _%body200335%_))))
                                        (_%body200365%_
                                         (_%generate-values-post200221%_
                                          _%post200342%_
                                          _%body200363%_))
                                        (_%body200367%_
                                         (_%generate-values-check200222%_
                                          _%check200341%_
                                          _%body200365%_)))
                                   (cons 'let
                                         (cons (reverse _%bind200340%_)
                                               (cons _%body200367%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204387204388%_))
                              (let ((_%e200349200375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204387204388%_))))
                                (let ((_%tl200351200380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200349200375%_)))
                                      (_%hd200350200378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200349200375%_))))
                                  (_%__kont204389204390%_
                                   _%tl200351200380%_
                                   _%hd200350200378%_)))
                              (_%__kont204391204392%_)))))))
                 (_%generate-values-post200221%_
                  (lambda (_%post200293%_ _%body200294%_)
                    (let _%lp200296%_ ((_%rest200298%_ _%post200293%_)
                                       (_%body200299%_ _%body200294%_))
                      (let* ((_%rest200300200308%_ _%rest200298%_)
                             (_%else200302200316%_ (lambda () _%body200299%_))
                             (_%K200304200322%_
                              (lambda (_%rest200319%_ _%bind200320%_)
                                (_%lp200296%_
                                 _%rest200319%_
                                 (cons 'let
                                       (cons _%bind200320%_
                                             (cons _%body200299%_ '())))))))
                        (if (pair? _%rest200300200308%_)
                            (let ((_%hd200305200325%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200300200308%_)))
                                  (_%tl200306200327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200300200308%_))))
                              (let* ((_%bind200330%_ _%hd200305200325%_)
                                     (_%rest200332%_ _%tl200306200327%_))
                                (_%K200304200322%_
                                 _%rest200332%_
                                 _%bind200330%_)))
                            (_%else200302200316%_))))))
                 (_%generate-values-check200222%_
                  (lambda (_%check200290%_ _%body200291%_)
                    (cons 'begin
                          (let ((__tmp205235 (cons _%body200291%_ '()))
                                (__tmp205234 (reverse _%check200290%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp205235 __tmp205234))))))
          (let* ((_%g200224200241%_
                  (lambda (_%g200225200238%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200225200238%_))))
                 (_%g200223200287%_
                  (lambda (_%g200225200244%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200225200244%_))
                        (let ((_%e200228200246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200225200244%_))))
                          (let ((_%hd200229200249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200228200246%_)))
                                (_%tl200230200251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200228200246%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200230200251%_))
                                (let ((_%e200231200254%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200230200251%_))))
                                  (let ((_%hd200232200257%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200231200254%_)))
                                        (_%tl200233200259%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200231200254%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200233200259%_))
                                        (let ((_%e200234200262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200233200259%_))))
                                          (let ((_%hd200235200265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200234200262%_)))
                                                (_%tl200236200267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200234200262%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200236200267%_))
                                                ((lambda (_%g200226200270%_
                                                          _%g200227200271%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200227200271%_)
                                                       (_%generate-simple200217%_
                                                        _%g200227200271%_
                                                        _%g200226200270%_)
                                                       (_%generate-values200220%_
                                                        _%g200227200271%_
                                                        _%g200226200270%_)))
                                                 _%hd200235200265%_
                                                 _%hd200232200257%_)
                                                (_%g200224200241%_
                                                 _%g200225200244%_))))
                                        (_%g200224200241%_
                                         _%g200225200244%_))))
                                (_%g200224200241%_ _%g200225200244%_))))
                        (_%g200224200241%_ _%g200225200244%_)))))
            (_%g200223200287%_ _%stx200214%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self200967%_ _%stx200968%_)
        (let ((_%compiled-body?200970%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self200967%_
           _%stx200968%_
           _%compiled-body?200970%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g205236_
        (let ((_g205237_ (let () (declare (not safe)) (##length _g205236_))))
          (cond ((let () (declare (not safe)) (##fx= _g205237_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g205236_))
                ((let () (declare (not safe)) (##fx= _g205237_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g205236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g205236_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals200107%_ _%hd200108%_)
        (let _%lp200110%_ ((_%rest200112%_ _%hd200108%_)
                           (_%k200113%_ '0)
                           (_%r200114%_ '()))
          (let* ((_%__stx204401204402%_ _%rest200112%_)
                 (_%g200119200136%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx204401204402%_)))))
            (let ((_%__kont204403204404%_
                   (lambda (_%g200121200199%_)
                     (_%lp200110%_
                      _%g200121200199%_
                      (let () (declare (not safe)) (##fx+ _%k200113%_ '1))
                      _%r200114%_)))
                  (_%__kont204405204406%_
                   (lambda (_%g200126200172%_ _%g200127200173%_)
                     (_%lp200110%_
                      _%g200126200172%_
                      (let () (declare (not safe)) (##fx+ _%k200113%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g200127200173%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals200107%_
                                         _%k200113%_
                                         _%g200126200172%_)
                                        '()))
                            _%r200114%_))))
                  (_%__kont204407204408%_
                   (lambda (_%g200131200148%_)
                     (let ((__tmp205238
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g200131200148%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals200107%_
                                               _%k200113%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp205238 _%r200114%_))))
                  (_%__kont204409204410%_ (lambda () (reverse _%r200114%_))))
              (let ((_%g200117200159%_
                     (lambda ()
                       (let ((_%g200131200148%_ _%__stx204401204402%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g200131200148%_))
                             (_%__kont204407204408%_ _%g200131200148%_)
                             (_%__kont204409204410%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx204401204402%_))
                    (let ((_%e200122200188%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx204401204402%_))))
                      (let ((_%tl200124200193%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200122200188%_)))
                            (_%hd200123200191%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200122200188%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd200123200191%_))
                            (let ((_%e200125200196%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200123200191%_))))
                              (if (equal? _%e200125200196%_ '#f)
                                  (_%__kont204403204404%_ _%tl200124200193%_)
                                  (_%__kont204405204406%_
                                   _%tl200124200193%_
                                   _%hd200123200191%_)))
                            (_%__kont204405204406%_
                             _%tl200124200193%_
                             _%hd200123200191%_))))
                    (let () (declare (not safe)) (_%g200117200159%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self199786%_ _%stx199787%_ _%compiled-body?199788%_)
        (letrec ((_%generate-simple199790%_
                  (lambda (_%hd200092%_ _%body200093%_)
                    (gxc#generate-runtime-simple-let
                     _%self199786%_
                     'letrec
                     _%hd200092%_
                     _%body200093%_
                     _%compiled-body?199788%_)))
                 (_%generate-values199791%_
                  (lambda (_%hd199871%_ _%body199872%_)
                    (let _%lp199874%_ ((_%rest199876%_ _%hd199871%_)
                                       (_%bind199877%_ '())
                                       (_%check199878%_ '())
                                       (_%post199879%_ '()))
                      (let* ((_%__stx204475204476%_ _%rest199876%_)
                             (_%g199882199893%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx204475204476%_)))))
                        (let ((_%__kont204477204478%_
                               (lambda (_%g199884199920%_ _%g199885199921%_)
                                 (let* ((_%__stx204431204432%_
                                         _%g199885199921%_)
                                        (_%g199936199961%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx204431204432%_)))))
                                   (let ((_%__kont204433204434%_
                                          (lambda (_%g199938200068%_
                                                   _%g199939200069%_)
                                            (let ((_%eid200083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g199939200069%_)))
                                                  (_%expr200084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self199786%_
                                                      _%g199938200068%_))))
                                              (_%lp199874%_
                                               _%g199884199920%_
                                               (cons (cons _%eid200083%_
                                                           (cons _%expr200084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind199877%_)
                                               _%check199878%_
                                               _%post199879%_))))
                                         (_%__kont204435204436%_
                                          (lambda (_%g199949199982%_
                                                   _%g199950199983%_)
                                            (let* ((_%vals199996%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values199998%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals199996%_
                                                     _%g199950199983%_
                                                     _%g199949199982%_))
                                                   (_%refs200000%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals199996%_
                                                     _%g199950199983%_))
                                                   (_%expr200002%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self199786%_
                                                       _%g199949199982%_))))
                                              (_%lp199874%_
                                               _%g199884199920%_
                                               (let ((__tmp205240
                                                      (cons (cons _%vals199996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr200002%_ '()))
                    _%bind199877%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp205239
                                                      (map (lambda (_%e200004200006%_)
                                                             (let* ((_%e200004200008200017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e200004200006%_)
                            (_%E200010200021%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e200004200008200017%_
                                        '([eid _])))
                               '#!void))
                            (_%K200011200026%_
                             (lambda (_%eid200024%_)
                               (cons _%eid200024%_ (cons '#!void '())))))
                       (if (pair? _%e200004200008200017%_)
                           (let ((_%hd200012200029%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200004200008200017%_)))
                                 (_%tl200013200031%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200004200008200017%_))))
                             (let ((_%eid200034%_ _%hd200012200029%_))
                               (if (pair? _%tl200013200031%_)
                                   (let ((_%tl200015200036%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl200013200031%_))))
                                     (if (null? _%tl200015200036%_)
                                         (_%K200011200026%_ _%eid200034%_)
                                         (_%E200010200021%_)))
                                   (_%E200010200021%_))))
                           (_%E200010200021%_))))
                   _%refs200000%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp205240
                                                  __tmp205239))
                                               (cons _%check-values199998%_
                                                     _%check199878%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs200000%_
                                                  _%post199879%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx204431204432%_))
                                         (let ((_%e199940200044%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx204431204432%_))))
                                           (let ((_%tl199942200049%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199940200044%_)))
                                                 (_%hd199941200047%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199940200044%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199941200047%_))
                                                 (let ((_%e199943200052%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd199941200047%_))))
                                                   (let ((_%tl199945200057%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199943200052%_)))
                                                         (_%hd199944200055%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199943200052%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199945200057%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199942200049%_))
                     (let ((_%e199946200060%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199942200049%_))))
                       (let ((_%tl199948200065%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199946200060%_)))
                             (_%hd199947200063%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199946200060%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199948200065%_))
                             (_%__kont204433204434%_
                              _%hd199947200063%_
                              _%hd199944200055%_)
                             (let ()
                               (declare (not safe))
                               (_%g199936199961%_)))))
                     (let () (declare (not safe)) (_%g199936199961%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl199942200049%_))
                     (let ((_%e199954199974%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199942200049%_))))
                       (let ((_%tl199956199979%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199954199974%_)))
                             (_%hd199955199977%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199954199974%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199956199979%_))
                             (_%__kont204435204436%_
                              _%hd199955199977%_
                              _%hd199941200047%_)
                             (let ()
                               (declare (not safe))
                               (_%g199936199961%_)))))
                     (let () (declare (not safe)) (_%g199936199961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199942200049%_))
                                                     (let ((_%e199954199974%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199942200049%_))))
                                                       (let ((_%tl199956199979%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199954199974%_)))
                     (_%hd199955199977%_
                      (let () (declare (not safe)) (##car _%e199954199974%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199956199979%_))
                     (_%__kont204435204436%_
                      _%hd199955199977%_
                      _%hd199941200047%_)
                     (let () (declare (not safe)) (_%g199936199961%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g199936199961%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g199936199961%_)))))))
                              (_%__kont204479204480%_
                               (lambda ()
                                 (let* ((_%body199900%_
                                         (if _%compiled-body?199788%_
                                             _%body199872%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self199786%_
                                                _%body199872%_))))
                                        (_%body199902%_
                                         (_%generate-values-post199793%_
                                          _%post199879%_
                                          _%body199900%_))
                                        (_%body199904%_
                                         (_%generate-values-check199792%_
                                          _%check199878%_
                                          _%body199902%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind199877%_)
                                               (cons _%body199904%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204475204476%_))
                              (let ((_%e199886199912%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204475204476%_))))
                                (let ((_%tl199888199917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199886199912%_)))
                                      (_%hd199887199915%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199886199912%_))))
                                  (_%__kont204477204478%_
                                   _%tl199888199917%_
                                   _%hd199887199915%_)))
                              (_%__kont204479204480%_)))))))
                 (_%generate-values-check199792%_
                  (lambda (_%check199868%_ _%body199869%_)
                    (cons 'begin
                          (let ((__tmp205242 (cons _%body199869%_ '()))
                                (__tmp205241 (reverse _%check199868%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp205242 __tmp205241)))))
                 (_%generate-values-post199793%_
                  (lambda (_%post199861%_ _%body199862%_)
                    (cons 'begin
                          (let ((__tmp205246 (cons _%body199862%_ '()))
                                (__tmp205243
                                 (let ((__tmp205245
                                        (lambda (_%g199863199865%_)
                                          (cons 'set! _%g199863199865%_)))
                                       (__tmp205244 (reverse _%post199861%_)))
                                   (declare (not safe))
                                   (##map __tmp205245 __tmp205244))))
                            (declare (not safe))
                            (foldr__0 cons __tmp205246 __tmp205243))))))
          (let* ((_%g199795199812%_
                  (lambda (_%g199796199809%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199796199809%_))))
                 (_%g199794199858%_
                  (lambda (_%g199796199815%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199796199815%_))
                        (let ((_%e199799199817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199796199815%_))))
                          (let ((_%hd199800199820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199799199817%_)))
                                (_%tl199801199822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199799199817%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199801199822%_))
                                (let ((_%e199802199825%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199801199822%_))))
                                  (let ((_%hd199803199828%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199802199825%_)))
                                        (_%tl199804199830%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199802199825%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199804199830%_))
                                        (let ((_%e199805199833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199804199830%_))))
                                          (let ((_%hd199806199836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199805199833%_)))
                                                (_%tl199807199838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199805199833%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199807199838%_))
                                                ((lambda (_%g199797199841%_
                                                          _%g199798199842%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g199798199842%_)
                                                       (_%generate-simple199790%_
                                                        _%g199798199842%_
                                                        _%g199797199841%_)
                                                       (_%generate-values199791%_
                                                        _%g199798199842%_
                                                        _%g199797199841%_)))
                                                 _%hd199806199836%_
                                                 _%hd199803199828%_)
                                                (_%g199795199812%_
                                                 _%g199796199815%_))))
                                        (_%g199795199812%_
                                         _%g199796199815%_))))
                                (_%g199795199812%_ _%g199796199815%_))))
                        (_%g199795199812%_ _%g199796199815%_)))))
            (_%g199794199858%_ _%stx199787%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self200098%_ _%stx200099%_)
        (let ((_%compiled-body?200101%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self200098%_
           _%stx200099%_
           _%compiled-body?200101%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g205247_
        (let ((_g205248_ (let () (declare (not safe)) (##length _g205247_))))
          (cond ((let () (declare (not safe)) (##fx= _g205248_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g205247_))
                ((let () (declare (not safe)) (##fx= _g205248_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g205247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g205247_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self199367%_ _%stx199368%_)
        (letrec ((_%generate-values199370%_
                  (lambda (_%hd199613%_ _%body199614%_)
                    (let _%lp199616%_ ((_%rest199618%_ _%hd199613%_)
                                       (_%bind199619%_ '()))
                      (let* ((_%rest199620199628%_ _%rest199618%_)
                             (_%else199622199639%_
                              (lambda ()
                                (let ((_%bind199636%_ (reverse _%bind199619%_))
                                      (_%body199637%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self199367%_
                                          _%body199614%_))))
                                  (cons 'letrec*
                                        (cons _%bind199636%_
                                              (cons _%body199637%_ '()))))))
                             (_%K199624199773%_
                              (lambda (_%rest199642%_ _%hd-bind199643%_)
                                (let* ((_%__stx204489204490%_
                                        _%hd-bind199643%_)
                                       (_%g199646199671%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx204489204490%_)))))
                                  (let ((_%__kont204491204492%_
                                         (lambda (_%g199648199752%_
                                                  _%g199649199753%_)
                                           (let ((_%eid199767%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g199649199753%_)))
                                                 (_%expr199768%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self199367%_
                                                     _%g199648199752%_))))
                                             (_%lp199616%_
                                              _%rest199642%_
                                              (cons (cons _%eid199767%_
                                                          (cons _%expr199768%_
                                                                '()))
                                                    _%bind199619%_)))))
                                        (_%__kont204493204494%_
                                         (lambda (_%g199659199692%_
                                                  _%g199660199693%_)
                                           (let* ((_%vals199712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp199714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values199716%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp199714%_
                                                    _%g199660199693%_
                                                    _%g199659199692%_))
                                                  (_%refs199718%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals199712%_
                                                    _%g199660199693%_))
                                                  (_%expr199720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self199367%_
                                                      _%g199659199692%_))))
                                             (_%lp199616%_
                                              _%rest199642%_
                                              (let ((__tmp205249
                                                     (cons (cons _%vals199712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp199714%_
                                                       (cons _%expr199720%_
                                                             '()))
                                                 '())
                                           (cons _%check-values199716%_
                                                 (cons _%tmp199714%_ '()))))
                               '()))
                   _%bind199619%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp205249
                                                 _%refs199718%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx204489204490%_))
                                        (let ((_%e199650199728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx204489204490%_))))
                                          (let ((_%tl199652199733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199650199728%_)))
                                                (_%hd199651199731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199650199728%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd199651199731%_))
                                                (let ((_%e199653199736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199651199731%_))))
                                                  (let ((_%tl199655199741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199653199736%_)))
                                                        (_%hd199654199739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199653199736%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199655199741%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199652199733%_))
                                                            (let ((_%e199656199744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199652199733%_))))
                      (let ((_%tl199658199749%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199656199744%_)))
                            (_%hd199657199747%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199656199744%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199658199749%_))
                            (_%__kont204491204492%_
                             _%hd199657199747%_
                             _%hd199654199739%_)
                            (let ()
                              (declare (not safe))
                              (_%g199646199671%_)))))
                    (let () (declare (not safe)) (_%g199646199671%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl199652199733%_))
                    (let ((_%e199664199684%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199652199733%_))))
                      (let ((_%tl199666199689%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199664199684%_)))
                            (_%hd199665199687%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199664199684%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199666199689%_))
                            (_%__kont204493204494%_
                             _%hd199665199687%_
                             _%hd199651199731%_)
                            (let ()
                              (declare (not safe))
                              (_%g199646199671%_)))))
                    (let () (declare (not safe)) (_%g199646199671%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199652199733%_))
                                                    (let ((_%e199664199684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199652199733%_))))
                                                      (let ((_%tl199666199689%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199664199684%_)))
                    (_%hd199665199687%_
                     (let () (declare (not safe)) (##car _%e199664199684%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199666199689%_))
                    (_%__kont204493204494%_
                     _%hd199665199687%_
                     _%hd199651199731%_)
                    (let () (declare (not safe)) (_%g199646199671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199646199671%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199646199671%_))))))))
                        (if (pair? _%rest199620199628%_)
                            (let ((_%hd199625199776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest199620199628%_)))
                                  (_%tl199626199778%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest199620199628%_))))
                              (let* ((_%hd-bind199781%_ _%hd199625199776%_)
                                     (_%rest199783%_ _%tl199626199778%_))
                                (_%K199624199773%_
                                 _%rest199783%_
                                 _%hd-bind199781%_)))
                            (_%else199622199639%_))))))
                 (_%generate-letrec?199371%_
                  (lambda (_%hd199503%_)
                    (let _%lp199505%_ ((_%rest199507%_ _%hd199503%_))
                      (let* ((_%rest199508199516%_ _%rest199507%_)
                             (_%else199510199524%_ (lambda () '#t))
                             (_%K199512199601%_
                              (lambda (_%rest199527%_ _%hd-bind199528%_)
                                (let* ((_%g199530199547%_
                                        (lambda (_%g199531199544%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g199531199544%_))))
                                       (_%g199529199598%_
                                        (lambda (_%g199531199550%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g199531199550%_))
                                              (let ((_%e199534199552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g199531199550%_))))
                                                (let ((_%hd199535199555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199534199552%_)))
                                                      (_%tl199536199557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199534199552%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199535199555%_))
                                                      (let ((_%e199537199560%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199535199555%_))))
                (let ((_%hd199538199563%_
                       (let () (declare (not safe)) (##car _%e199537199560%_)))
                      (_%tl199539199565%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199537199560%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199539199565%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199536199557%_))
                          (let ((_%e199540199568%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199536199557%_))))
                            (let ((_%hd199541199571%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199540199568%_)))
                                  (_%tl199542199573%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199540199568%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199542199573%_))
                                  ((lambda (_%g199532199576%_
                                            _%g199533199577%_)
                                     (if (_%is-lambda-expr?199372%_
                                          _%g199532199576%_)
                                         (_%lp199505%_ _%rest199527%_)
                                         '#f))
                                   _%hd199541199571%_
                                   _%hd199538199563%_)
                                  (_%g199530199547%_ _%g199531199550%_))))
                          (_%g199530199547%_ _%g199531199550%_))
                      (_%g199530199547%_ _%g199531199550%_))))
              (_%g199530199547%_ _%g199531199550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199530199547%_
                                               _%g199531199550%_)))))
                                  (_%g199529199598%_ _%hd-bind199528%_)))))
                        (if (pair? _%rest199508199516%_)
                            (let ((_%hd199513199604%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest199508199516%_)))
                                  (_%tl199514199606%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest199508199516%_))))
                              (let* ((_%hd-bind199609%_ _%hd199513199604%_)
                                     (_%rest199611%_ _%tl199514199606%_))
                                (_%K199512199601%_
                                 _%rest199611%_
                                 _%hd-bind199609%_)))
                            (_%else199510199524%_))))))
                 (_%is-lambda-expr?199372%_
                  (lambda (_%expr199440%_)
                    (let* ((_%__stx204533204534%_ _%expr199440%_)
                           (_%g199443199457%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204533204534%_)))))
                      (let ((_%__kont204535204536%_
                             (lambda (_%g199445199485%_ _%g199446199486%_)
                               '#t))
                            (_%__kont204537204538%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx204533204534%_))
                            (let ((_%e199447199469%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx204533204534%_))))
                              (let ((_%tl199449199474%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199447199469%_)))
                                    (_%hd199448199472%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199447199469%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199448199472%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199448199472%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199449199474%_))
                                            (let ((_%e199450199477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199449199474%_))))
                                              (let ((_%tl199452199482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199450199477%_)))
                                                    (_%hd199451199480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199450199477%_))))
                                                (_%__kont204535204536%_
                                                 _%tl199452199482%_
                                                 _%hd199451199480%_)))
                                            (_%__kont204537204538%_))
                                        (_%__kont204537204538%_))
                                    (_%__kont204537204538%_))))
                            (_%__kont204537204538%_)))))))
          (let* ((_%g199374199391%_
                  (lambda (_%g199375199388%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199375199388%_))))
                 (_%g199373199437%_
                  (lambda (_%g199375199394%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199375199394%_))
                        (let ((_%e199378199396%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199375199394%_))))
                          (let ((_%hd199379199399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199378199396%_)))
                                (_%tl199380199401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199378199396%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199380199401%_))
                                (let ((_%e199381199404%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199380199401%_))))
                                  (let ((_%hd199382199407%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199381199404%_)))
                                        (_%tl199383199409%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199381199404%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199383199409%_))
                                        (let ((_%e199384199412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199383199409%_))))
                                          (let ((_%hd199385199415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199384199412%_)))
                                                (_%tl199386199417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199384199412%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199386199417%_))
                                                ((lambda (_%g199376199420%_
                                                          _%g199377199421%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g199377199421%_)
                                                       (if (_%generate-letrec?199371%_
                                                            _%g199377199421%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self199367%_
                                                            'letrec
                                                            _%g199377199421%_
                                                            _%g199376199420%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self199367%_
                                                            'letrec*
                                                            _%g199377199421%_
                                                            _%g199376199420%_
                                                            '#f))
                                                       (_%generate-values199370%_
                                                        _%g199377199421%_
                                                        _%g199376199420%_)))
                                                 _%hd199385199415%_
                                                 _%hd199382199407%_)
                                                (_%g199374199391%_
                                                 _%g199375199394%_))))
                                        (_%g199374199391%_
                                         _%g199375199394%_))))
                                (_%g199374199391%_ _%g199375199394%_))))
                        (_%g199374199391%_ _%g199375199394%_)))))
            (_%g199373199437%_ _%stx199368%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd199304%_)
        (let _%lp199306%_ ((_%rest199308%_ _%hd199304%_))
          (let* ((_%rest199309199325%_ _%rest199308%_)
                 (_%else199312199333%_ (lambda () '#f)))
            (let ((_%K199315199346%_
                   (lambda (_%rest199344%_) (_%lp199306%_ _%rest199344%_)))
                  (_%K199314199338%_ (lambda () '#t)))
              (let ((_%try-match199311199341%_
                     (lambda ()
                       (if (null? _%rest199309199325%_)
                           (_%K199314199338%_)
                           (_%else199312199333%_)))))
                (if (pair? _%rest199309199325%_)
                    (let ((_%tl199317199351%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199309199325%_)))
                          (_%hd199316199349%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199309199325%_))))
                      (if (pair? _%hd199316199349%_)
                          (let ((_%tl199319199356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd199316199349%_)))
                                (_%hd199318199354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd199316199349%_))))
                            (if (pair? _%hd199318199354%_)
                                (let ((_%tl199323199359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd199318199354%_))))
                                  (if (null? _%tl199323199359%_)
                                      (if (pair? _%tl199319199356%_)
                                          (let ((_%tl199321199362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199319199356%_))))
                                            (if (null? _%tl199321199362%_)
                                                (let ((_%rest199365%_
                                                       _%tl199317199351%_))
                                                  (_%lp199306%_
                                                   _%rest199365%_))
                                                (_%else199312199333%_)))
                                          (_%else199312199333%_))
                                      (_%else199312199333%_)))
                                (_%else199312199333%_)))
                          (_%else199312199333%_)))
                    (_%try-match199311199341%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self199216%_
               _%form199217%_
               _%hd199218%_
               _%body199219%_
               _%compiled-body?199220%_)
        (letrec ((_%generate1199222%_
                  (lambda (_%bind199261%_)
                    (let* ((_%bind199262199273%_ _%bind199261%_)
                           (_%E199264199276%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind199262199273%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K199265199282%_
                            (lambda (_%expr199279%_ _%id199280%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id199280%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199216%_
                                             _%expr199279%_))
                                          '())))))
                      (if (pair? _%bind199262199273%_)
                          (let ((_%hd199266199285%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind199262199273%_)))
                                (_%tl199267199287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind199262199273%_))))
                            (if (pair? _%hd199266199285%_)
                                (let ((_%hd199270199290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd199266199285%_)))
                                      (_%tl199271199292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd199266199285%_))))
                                  (let ((_%id199295%_ _%hd199270199290%_))
                                    (if (null? _%tl199271199292%_)
                                        (if (pair? _%tl199267199287%_)
                                            (let ((_%hd199268199297%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199267199287%_)))
                                                  (_%tl199269199299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199267199287%_))))
                                              (let ((_%expr199302%_
                                                     _%hd199268199297%_))
                                                (if (null? _%tl199269199299%_)
                                                    (_%K199265199282%_
                                                     _%expr199302%_
                                                     _%id199295%_)
                                                    (_%E199264199276%_))))
                                            (_%E199264199276%_))
                                        (_%E199264199276%_))))
                                (_%E199264199276%_)))
                          (_%E199264199276%_))))))
          (let* ((_%bind199224%_ (map _%generate1199222%_ _%hd199218%_))
                 (_%body199226%_
                  (if _%compiled-body?199220%_
                      _%body199219%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self199216%_ _%body199219%_))))
                 (_%body199258%_
                  (let* ((_%body199227199235%_ _%body199226%_)
                         (_%else199229199243%_
                          (lambda () (cons _%body199226%_ '())))
                         (_%K199231199248%_
                          (lambda (_%exprs199246%_) _%exprs199246%_)))
                    (if (pair? _%body199227199235%_)
                        (let ((_%hd199232199251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body199227199235%_)))
                              (_%tl199233199253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body199227199235%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd199232199251%_ 'begin))
                              (let ((_%exprs199256%_ _%tl199233199253%_))
                                (_%K199231199248%_ _%exprs199256%_))
                              (_%else199229199243%_)))
                        (_%else199229199243%_)))))
            (cons _%form199217%_ (cons _%bind199224%_ _%body199258%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self199116%_ _%stx199117%_)
        (letrec ((_%generate1199119%_
                  (lambda (_%datum199171%_)
                    (if (or (null? _%datum199171%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum199171%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum199171%_))
                            (eof-object? _%datum199171%_))
                        _%datum199171%_
                        (if (uninterned-symbol? _%datum199171%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum199171%_
                               '#t))
                            (if (pair? _%datum199171%_)
                                (cons (_%generate1199119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum199171%_)))
                                      (_%generate1199119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum199171%_))))
                                (if (box? _%datum199171%_)
                                    (box (_%generate1199119%_
                                          (unbox _%datum199171%_)))
                                    (if (vector? _%datum199171%_)
                                        (vector-map
                                         _%generate1199119%_
                                         _%datum199171%_)
                                        (if (or (s8vector? _%datum199171%_)
                                                (u8vector? _%datum199171%_)
                                                (s16vector? _%datum199171%_)
                                                (u16vector? _%datum199171%_)
                                                (s32vector? _%datum199171%_)
                                                (u32vector? _%datum199171%_)
                                                (s64vector? _%datum199171%_)
                                                (u64vector? _%datum199171%_)
                                                (f32vector? _%datum199171%_)
                                                (f64vector? _%datum199171%_))
                                            _%datum199171%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx199117%_)))))))))))
          (let* ((_%g199121199134%_
                  (lambda (_%g199122199131%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199122199131%_))))
                 (_%g199120199168%_
                  (lambda (_%g199122199137%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199122199137%_))
                        (let ((_%e199124199139%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199122199137%_))))
                          (let ((_%hd199125199142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199124199139%_)))
                                (_%tl199126199144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199124199139%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199126199144%_))
                                (let ((_%e199127199147%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199126199144%_))))
                                  (let ((_%hd199128199150%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199127199147%_)))
                                        (_%tl199129199152%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199127199147%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199129199152%_))
                                        ((lambda (_%g199123199155%_)
                                           (cons 'quote
                                                 (cons (_%generate1199119%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g199123199155%_)))
                                                       '())))
                                         _%hd199128199150%_)
                                        (_%g199121199134%_
                                         _%g199122199137%_))))
                                (_%g199121199134%_ _%g199122199137%_))))
                        (_%g199121199134%_ _%g199122199137%_)))))
            (_%g199120199168%_ _%stx199117%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self198563%_ _%stx198564%_)
        (letrec ((_%compile-call198566%_
                  (lambda (_%rator198853%_ _%rands198854%_)
                    (let ((_%rator198860%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self198563%_
                              _%rator198853%_)))
                          (_%rands198861%_
                           (map (lambda (_%g198855198857%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self198563%_
                                     _%g198855198857%_)))
                                _%rands198854%_)))
                      (let* ((_%__stx204580204581%_ _%rator198860%_)
                             (_%g198864198916%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx204580204581%_)))))
                        (let ((_%__kont204582204583%_
                               (lambda (_%g198866199036%_
                                        _%g198867199037%_
                                        _%g198868199038%_
                                        _%g198869199039%_)
                                 (if (let ((__tmp205252
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands198861%_)))
                                           (__tmp205250
                                            (length (let ((__tmp205251
                                                           (lambda (_%g199075199078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g199076199080%_)
                     (cons _%g199075199078%_ _%g199076199080%_))))
              (declare (not safe))
              (foldr__0 __tmp205251 '() _%g198868199038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp205252 __tmp205250))
                                     (let* ((_%id199083%_ _%g198869199039%_)
                                            (_%args199092%_
                                             (let ((__tmp205253
                                                    (lambda (_%g199084199087%_
                                                             _%g199085199089%_)
                                                      (cons _%g199084199087%_
                                                            _%g199085199089%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205253
                                                '()
                                                _%g198868199038%_)))
                                            (_%body199101%_
                                             (let ((__tmp205254
                                                    (lambda (_%g199093199096%_
                                                             _%g199094199098%_)
                                                      (cons _%g199093199096%_
                                                            _%g199094199098%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp205254
                                                '()
                                                _%g198867199037%_)))
                                            (_%init199103%_
                                             (map list
                                                  _%args199092%_
                                                  _%rands198861%_)))
                                       (cons 'let
                                             (cons _%id199083%_
                                                   (cons _%init199103%_
                                                         _%body199101%_))))
                                     (let ((__tmp205255
                                            (let ((__tmp205256
                                                   (lambda (_%g199105199108%_
                                                            _%g199106199110%_)
                                                     (cons _%g199105199108%_
                                                           _%g199106199110%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp205256
                                               '()
                                               _%g198868199038%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx198564%_
                                        __tmp205255
                                        _%rands198861%_)))))
                              (_%__kont204588204589%_
                               (lambda ()
                                 (cons _%rator198860%_ _%rands198861%_))))
                          (let ((_%__match204647204648%_
                                 (lambda (_%e198870198928%_
                                          _%hd198871198931%_
                                          _%tl198872198933%_
                                          _%e198873198936%_
                                          _%hd198874198939%_
                                          _%tl198875198941%_
                                          _%e198876198944%_
                                          _%hd198877198947%_
                                          _%tl198878198949%_
                                          _%e198879198952%_
                                          _%hd198880198955%_
                                          _%tl198881198957%_
                                          _%e198882198960%_
                                          _%hd198883198963%_
                                          _%tl198884198965%_
                                          _%e198885198968%_
                                          _%hd198886198971%_
                                          _%tl198887198973%_
                                          _%e198888198976%_
                                          _%hd198889198979%_
                                          _%tl198890198981%_
                                          _%__splice204584204585%_
                                          _%target198891198984%_
                                          _%tl198893198986%_)
                                   (letrec ((_%loop198894198989%_
                                             (lambda (_%hd198892198992%_
                                                      _%arg198898198994%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd198892198992%_))
                                                   (let ((_%e198895198996%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd198892198992%_))))
                                                     (let ((_%lp-tl198897199001%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198895198996%_)))
                                                           (_%lp-hd198896198999%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198895198996%_))))
                                                       (_%loop198894198989%_
                                                        _%lp-tl198897199001%_
                                                        (cons _%lp-hd198896198999%_
                                                              _%arg198898198994%_))))
                                                   (let ((_%arg198899199004%_
                                                          (reverse _%arg198898198994%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl198890198981%_))
                                                         (let ((_%__splice204586204587%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl198890198981%_
                           '0))))
                   (let ((_%tl198902199008%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice204586204587%_ '1)))
                         (_%target198900199006%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice204586204587%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198902199008%_))
                         (letrec ((_%loop198903199011%_
                                   (lambda (_%hd198901199014%_
                                            _%body198907199016%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198901199014%_))
                                         (let ((_%e198904199018%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198901199014%_))))
                                           (let ((_%lp-tl198906199023%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198904199018%_)))
                                                 (_%lp-hd198905199021%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198904199018%_))))
                                             (_%loop198903199011%_
                                              _%lp-tl198906199023%_
                                              (cons _%lp-hd198905199021%_
                                                    _%body198907199016%_))))
                                         (let ((_%body198908199026%_
                                                (reverse _%body198907199016%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl198884198965%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198878198949%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198875198941%_))
                                                       (let ((_%e198909199028%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198875198941%_))))
                 (let ((_%tl198911199033%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198909199028%_)))
                       (_%hd198910199031%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198909199028%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198911199033%_))
                       (let ((_%g198866199036%_ _%hd198910199031%_)
                             (_%g198867199037%_ _%body198908199026%_)
                             (_%g198868199038%_ _%arg198899199004%_)
                             (_%g198869199039%_ _%hd198880198955%_))
                         (if (eq? _%g198869199039%_ _%g198866199036%_)
                             (_%__kont204582204583%_
                              _%g198866199036%_
                              _%g198867199037%_
                              _%g198868199038%_
                              _%g198869199039%_)
                             (_%__kont204588204589%_)))
                       (_%__kont204588204589%_))))
               (_%__kont204588204589%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont204588204589%_))
                                               (_%__kont204588204589%_)))))))
                           (_%loop198903199011%_ _%target198900199006%_ '()))
                         (_%__kont204588204589%_))))
                 (_%__kont204588204589%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop198894198989%_
                                      _%target198891198984%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx204580204581%_))
                                (let ((_%e198870198928%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx204580204581%_))))
                                  (let ((_%tl198872198933%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198870198928%_)))
                                        (_%hd198871198931%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198870198928%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198871198931%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd198871198931%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198872198933%_))
                                                (let ((_%e198873198936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198872198933%_))))
                                                  (let ((_%tl198875198941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198873198936%_)))
                                                        (_%hd198874198939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198873198936%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198874198939%_))
                                                        (let ((_%e198876198944%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd198874198939%_))))
                  (let ((_%tl198878198949%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198876198944%_)))
                        (_%hd198877198947%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198876198944%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198877198947%_))
                        (let ((_%e198879198952%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd198877198947%_))))
                          (let ((_%tl198881198957%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198879198952%_)))
                                (_%hd198880198955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198879198952%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198881198957%_))
                                (let ((_%e198882198960%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198881198957%_))))
                                  (let ((_%tl198884198965%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198882198960%_)))
                                        (_%hd198883198963%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198882198960%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198883198963%_))
                                        (let ((_%e198885198968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198883198963%_))))
                                          (let ((_%tl198887198973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198885198968%_)))
                                                (_%hd198886198971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198885198968%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd198886198971%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd198886198971%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198887198973%_))
                                                        (let ((_%e198888198976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl198887198973%_))))
                  (let ((_%tl198890198981%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198888198976%_)))
                        (_%hd198889198979%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198888198976%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd198889198979%_))
                        (let ((_%__splice204584204585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd198889198979%_
                                  '0))))
                          (let ((_%tl198893198986%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice204584204585%_ '1)))
                                (_%target198891198984%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice204584204585%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198893198986%_))
                                (_%__match204647204648%_
                                 _%e198870198928%_
                                 _%hd198871198931%_
                                 _%tl198872198933%_
                                 _%e198873198936%_
                                 _%hd198874198939%_
                                 _%tl198875198941%_
                                 _%e198876198944%_
                                 _%hd198877198947%_
                                 _%tl198878198949%_
                                 _%e198879198952%_
                                 _%hd198880198955%_
                                 _%tl198881198957%_
                                 _%e198882198960%_
                                 _%hd198883198963%_
                                 _%tl198884198965%_
                                 _%e198885198968%_
                                 _%hd198886198971%_
                                 _%tl198887198973%_
                                 _%e198888198976%_
                                 _%hd198889198979%_
                                 _%tl198890198981%_
                                 _%__splice204584204585%_
                                 _%target198891198984%_
                                 _%tl198893198986%_)
                                (_%__kont204588204589%_))))
                        (_%__kont204588204589%_))))
                (_%__kont204588204589%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont204588204589%_))
                                                (_%__kont204588204589%_))))
                                        (_%__kont204588204589%_))))
                                (_%__kont204588204589%_))))
                        (_%__kont204588204589%_))))
                (_%__kont204588204589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont204588204589%_))
                                            (_%__kont204588204589%_))
                                        (_%__kont204588204589%_))))
                                (_%__kont204588204589%_)))))))))
          (let* ((_%g198568198591%_
                  (lambda (_%g198569198588%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198569198588%_))))
                 (_%g198567198850%_
                  (lambda (_%g198569198594%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198569198594%_))
                        (let ((_%e198572198596%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198569198594%_))))
                          (let ((_%hd198573198599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198572198596%_)))
                                (_%tl198574198601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198572198596%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198574198601%_))
                                (let ((_%e198575198604%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198574198601%_))))
                                  (let ((_%hd198576198607%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198575198604%_)))
                                        (_%tl198577198609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198575198604%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl198577198609%_))
                                        (let ((_g205257_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl198577198609%_
                                                  '0))))
                                          (begin
                                            (let ((_g205258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g205257_)
                                                         (##values-length
                                                          _g205257_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g205258_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g205258_)))
                                            (let ((_%target198578198612%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g205257_
                                                      0)))
                                                  (_%tl198580198614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g205257_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl198580198614%_))
                                                  (letrec ((_%loop198581198617%_
                                                            (lambda (_%hd198579198620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand198585198622%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd198579198620%_))
                          (let ((_%e198582198624%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198579198620%_))))
                            (let ((_%lp-hd198583198627%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198582198624%_)))
                                  (_%lp-tl198584198629%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198582198624%_))))
                              (_%loop198581198617%_
                               _%lp-tl198584198629%_
                               (cons _%lp-hd198583198627%_
                                     _%rand198585198622%_))))
                          (let ((_%rand198586198632%_
                                 (reverse _%rand198585198622%_)))
                            ((lambda (_%g198570198634%_ _%g198571198635%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call198566%_
                                    _%g198571198635%_
                                    (let ((__tmp205259
                                           (lambda (_%g198652198655%_
                                                    _%g198653198657%_)
                                             (cons _%g198652198655%_
                                                   _%g198653198657%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp205259
                                       '()
                                       _%g198570198634%_)))
                                   (let* ((_%__stx204696204697%_
                                           _%g198571198635%_)
                                          (_%g198661198673%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx204696204697%_)))))
                                     (let ((_%__kont204698204699%_
                                            (lambda ()
                                              (let ((_%f198710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self198563%_
                                                        _%g198571198635%_))))
                                                (if (and (let ((__tmp205260
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f198710%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp205260))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f198710%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp198712%_ ((_%rest198715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp205262
                                                (lambda (_%g198832198835%_
                                                         _%g198833198837%_)
                                                  (cons _%g198832198835%_
                                                        _%g198833198837%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp205262
                                            '()
                                            _%g198570198634%_))))
                               (_%bind198717%_ '())
                               (_%args198718%_ '()))
              (let* ((_%rest198719198727%_ _%rest198715%_)
                     (_%else198721198735%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind198717%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f198710%_
                                                      _%args198718%_)
                                                '()))))))
                     (_%K198723198821%_
                      (lambda (_%rest198738%_ _%e198739%_)
                        (let* ((_%__stx204650204651%_ _%e198739%_)
                               (_%g198744198762%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx204650204651%_)))))
                          (let ((_%__kont204652204653%_
                                 (lambda ()
                                   (_%lp198712%_
                                    _%rest198738%_
                                    _%bind198717%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e198739%_))
                                          _%args198718%_))))
                                (_%__kont204654204655%_
                                 (lambda ()
                                   (_%lp198712%_
                                    _%rest198738%_
                                    _%bind198717%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e198739%_))
                                          _%args198718%_))))
                                (_%__kont204656204657%_
                                 (lambda ()
                                   (let ((_%tmp198769%_
                                          (let ((__tmp205261
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp205261))))
                                     (_%lp198712%_
                                      _%rest198738%_
                                      (cons (cons _%tmp198769%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e198739%_))
                                                        '()))
                                            _%bind198717%_)
                                      (cons _%tmp198769%_ _%args198718%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx204650204651%_))
                                (let ((_%e198746198800%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx204650204651%_))))
                                  (let ((_%tl198748198805%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198746198800%_)))
                                        (_%hd198747198803%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198746198800%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198747198803%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd198747198803%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198748198805%_))
                                                (let ((_%e198749198808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198748198805%_))))
                                                  (let ((_%tl198751198813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198749198808%_)))
                                                        (_%hd198750198811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198749198808%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198751198813%_))
                                                        (_%__kont204652204653%_)
                                                        (_%__kont204656204657%_))))
                                                (_%__kont204656204657%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd198747198803%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl198748198805%_))
                                                    (let ((_%e198755198785%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl198748198805%_))))
                                                      (let ((_%tl198757198790%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e198755198785%_)))
                    (_%hd198756198788%_
                     (let () (declare (not safe)) (##car _%e198755198785%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198757198790%_))
                    (_%__kont204654204655%_)
                    (_%__kont204656204657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont204656204657%_))
                                                (_%__kont204656204657%_)))
                                        (_%__kont204656204657%_))))
                                (_%__kont204656204657%_)))))))
                (if (pair? _%rest198719198727%_)
                    (let ((_%hd198724198824%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest198719198727%_)))
                          (_%tl198725198826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest198719198727%_))))
                      (let* ((_%e198829%_ _%hd198724198824%_)
                             (_%rest198831%_ _%tl198725198826%_))
                        (_%K198723198821%_ _%rest198831%_ _%e198829%_)))
                    (_%else198721198735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call198566%_
                                                     _%g198571198635%_
                                                     (let ((__tmp205263
                                                            (lambda (_%g198839198842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g198840198844%_)
                      (cons _%g198839198842%_ _%g198840198844%_))))
               (declare (not safe))
               (foldr__0 __tmp205263 '() _%g198570198634%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont204700204701%_
                                            (lambda ()
                                              (_%compile-call198566%_
                                               _%g198571198635%_
                                               (let ((__tmp205264
                                                      (lambda (_%g198679198682%_
                                                               _%g198680198684%_)
                                                        (cons _%g198679198682%_
                                                              _%g198680198684%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp205264
                                                  '()
                                                  _%g198570198634%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx204696204697%_))
                                           (let ((_%e198663198692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx204696204697%_))))
                                             (let ((_%tl198665198697%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198663198692%_)))
                                                   (_%hd198664198695%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198663198692%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd198664198695%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd198664198695%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198665198697%_))
                                                           (let ((_%e198666198700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198665198697%_))))
                     (let ((_%tl198668198705%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198666198700%_)))
                           (_%hd198667198703%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198666198700%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198668198705%_))
                           (_%__kont204698204699%_)
                           (_%__kont204700204701%_))))
                   (_%__kont204700204701%_))
               (_%__kont204700204701%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont204700204701%_))))
                                           (_%__kont204700204701%_))))))
                             _%rand198586198632%_
                             _%hd198576198607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop198581198617%_
                                                     _%target198578198612%_
                                                     '()))
                                                  (_%g198568198591%_
                                                   _%g198569198594%_)))))
                                        (_%g198568198591%_
                                         _%g198569198594%_))))
                                (_%g198568198591%_ _%g198569198594%_))))
                        (_%g198568198591%_ _%g198569198594%_)))))
            (_%g198567198850%_ _%stx198564%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self198308%_ _%stx198309%_)
        (let* ((_%__stx204768204769%_ _%stx198309%_)
               (_%g198312198341%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204768204769%_)))))
          (let ((_%__kont204770204771%_
                 (lambda (_%g198314198407%_ _%g198315198408%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self198308%_
                        _%stx198309%_)
                       (let ((_%f198430%_
                              (let ((__tmp205265
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g198315198408%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self198308%_
                                 __tmp205265))))
                         (let _%lp198432%_ ((_%rest198435%_
                                             (reverse (let ((__tmp205267
                                                             (lambda (_%g198552198555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198553198557%_)
                       (cons _%g198552198555%_ _%g198553198557%_))))
                (declare (not safe))
                (foldr__0 __tmp205267 '() _%g198314198407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind198437%_ '())
                                            (_%args198438%_ '()))
                           (let* ((_%rest198439198447%_ _%rest198435%_)
                                  (_%else198441198455%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind198437%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f198430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args198438%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K198443198541%_
                                   (lambda (_%rest198458%_ _%e198459%_)
                                     (let* ((_%__stx204722204723%_ _%e198459%_)
                                            (_%g198464198482%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx204722204723%_)))))
                                       (let ((_%__kont204724204725%_
                                              (lambda ()
                                                (_%lp198432%_
                                                 _%rest198458%_
                                                 _%bind198437%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e198459%_))
                                                       _%args198438%_))))
                                             (_%__kont204726204727%_
                                              (lambda ()
                                                (_%lp198432%_
                                                 _%rest198458%_
                                                 _%bind198437%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e198459%_))
                                                       _%args198438%_))))
                                             (_%__kont204728204729%_
                                              (lambda ()
                                                (let ((_%tmp198489%_
                                                       (let ((__tmp205266
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp205266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp198432%_
                                                   _%rest198458%_
                                                   (cons (cons _%tmp198489%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e198459%_))
                             '()))
                 _%bind198437%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp198489%_
                                                         _%args198438%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx204722204723%_))
                                             (let ((_%e198466198520%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx204722204723%_))))
                                               (let ((_%tl198468198525%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198466198520%_)))
                                                     (_%hd198467198523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198466198520%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd198467198523%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd198467198523%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198468198525%_))
                     (let ((_%e198469198528%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198468198525%_))))
                       (let ((_%tl198471198533%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198469198528%_)))
                             (_%hd198470198531%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198469198528%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198471198533%_))
                             (_%__kont204724204725%_)
                             (_%__kont204728204729%_))))
                     (_%__kont204728204729%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd198467198523%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl198468198525%_))
                         (let ((_%e198475198505%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl198468198525%_))))
                           (let ((_%tl198477198510%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198475198505%_)))
                                 (_%hd198476198508%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198475198505%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl198477198510%_))
                                 (_%__kont204726204727%_)
                                 (_%__kont204728204729%_))))
                         (_%__kont204728204729%_))
                     (_%__kont204728204729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont204728204729%_))))
                                             (_%__kont204728204729%_)))))))
                             (if (pair? _%rest198439198447%_)
                                 (let ((_%hd198444198544%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest198439198447%_)))
                                       (_%tl198445198546%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest198439198447%_))))
                                   (let* ((_%e198549%_ _%hd198444198544%_)
                                          (_%rest198551%_ _%tl198445198546%_))
                                     (_%K198443198541%_
                                      _%rest198551%_
                                      _%e198549%_)))
                                 (_%else198441198455%_))))))))
                (_%__kont204774204775%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self198308%_ _%stx198309%_))))
            (let ((_%__match204813204814%_
                   (lambda (_%e198316198353%_
                            _%hd198317198356%_
                            _%tl198318198358%_
                            _%e198319198361%_
                            _%hd198320198364%_
                            _%tl198321198366%_
                            _%e198322198369%_
                            _%hd198323198372%_
                            _%tl198324198374%_
                            _%e198325198377%_
                            _%hd198326198380%_
                            _%tl198327198382%_
                            _%__splice204772204773%_
                            _%target198328198385%_
                            _%tl198330198387%_)
                     (letrec ((_%loop198331198390%_
                               (lambda (_%hd198329198393%_
                                        _%rand198335198395%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198329198393%_))
                                     (let ((_%e198332198397%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd198329198393%_))))
                                       (let ((_%lp-tl198334198402%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198332198397%_)))
                                             (_%lp-hd198333198400%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198332198397%_))))
                                         (_%loop198331198390%_
                                          _%lp-tl198334198402%_
                                          (cons _%lp-hd198333198400%_
                                                _%rand198335198395%_))))
                                     (let ((_%rand198336198405%_
                                            (reverse _%rand198335198395%_)))
                                       (_%__kont204770204771%_
                                        _%rand198336198405%_
                                        _%hd198326198380%_))))))
                       (_%loop198331198390%_ _%target198328198385%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204768204769%_))
                  (let ((_%e198316198353%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204768204769%_))))
                    (let ((_%tl198318198358%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198316198353%_)))
                          (_%hd198317198356%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198316198353%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198318198358%_))
                          (let ((_%e198319198361%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198318198358%_))))
                            (let ((_%tl198321198366%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198319198361%_)))
                                  (_%hd198320198364%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198319198361%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198320198364%_))
                                  (let ((_%e198322198369%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198320198364%_))))
                                    (let ((_%tl198324198374%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198322198369%_)))
                                          (_%hd198323198372%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198322198369%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198323198372%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198323198372%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198324198374%_))
                                                  (let ((_%e198325198377%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198324198374%_))))
                                                    (let ((_%tl198327198382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198325198377%_)))
                                                          (_%hd198326198380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198325198377%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198327198382%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl198321198366%_))
                      (let ((_%__splice204772204773%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl198321198366%_
                                '0))))
                        (let ((_%tl198330198387%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204772204773%_ '1)))
                              (_%target198328198385%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice204772204773%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198330198387%_))
                              (_%__match204813204814%_
                               _%e198316198353%_
                               _%hd198317198356%_
                               _%tl198318198358%_
                               _%e198319198361%_
                               _%hd198320198364%_
                               _%tl198321198366%_
                               _%e198322198369%_
                               _%hd198323198372%_
                               _%tl198324198374%_
                               _%e198325198377%_
                               _%hd198326198380%_
                               _%tl198327198382%_
                               _%__splice204772204773%_
                               _%target198328198385%_
                               _%tl198330198387%_)
                              (_%__kont204774204775%_))))
                      (_%__kont204774204775%_))
                  (_%__kont204774204775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont204774204775%_))
                                              (_%__kont204774204775%_))
                                          (_%__kont204774204775%_))))
                                  (_%__kont204774204775%_))))
                          (_%__kont204774204775%_))))
                  (_%__kont204774204775%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self198120%_ _%stx198121%_)
        (letrec ((_%simplify198123%_
                  (lambda (_%code198208%_)
                    (let* ((_%code198209198227%_ _%code198208%_)
                           (_%else198211198235%_ (lambda () _%code198208%_))
                           (_%K198213198271%_
                            (lambda (_%expr198238%_ _%test198239%_)
                              (let* ((_%expr198240198248%_ _%expr198238%_)
                                     (_%else198242198256%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test198239%_
                                                    (cons _%expr198238%_
                                                          '())))))
                                     (_%K198244198261%_
                                      (lambda (_%exprs198259%_)
                                        (cons 'and
                                              (cons _%test198239%_
                                                    _%exprs198259%_)))))
                                (if (pair? _%expr198240198248%_)
                                    (let ((_%hd198245198264%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr198240198248%_)))
                                          (_%tl198246198266%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr198240198248%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd198245198264%_ 'and))
                                          (let ((_%exprs198269%_
                                                 _%tl198246198266%_))
                                            (_%K198244198261%_
                                             _%exprs198269%_))
                                          (_%else198242198256%_)))
                                    (_%else198242198256%_))))))
                      (if (pair? _%code198209198227%_)
                          (let ((_%hd198214198274%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code198209198227%_)))
                                (_%tl198215198276%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code198209198227%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd198214198274%_ 'if))
                                (if (pair? _%tl198215198276%_)
                                    (let ((_%hd198216198279%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl198215198276%_)))
                                          (_%tl198217198281%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl198215198276%_))))
                                      (let ((_%test198284%_
                                             _%hd198216198279%_))
                                        (if (pair? _%tl198217198281%_)
                                            (let ((_%hd198218198286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl198217198281%_)))
                                                  (_%tl198219198288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl198217198281%_))))
                                              (let ((_%expr198291%_
                                                     _%hd198218198286%_))
                                                (if (pair? _%tl198219198288%_)
                                                    (let ((_%hd198220198293%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl198219198288%_)))
                                                          (_%tl198221198295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl198219198288%_))))
                                                      (if (pair? _%hd198220198293%_)
                                                          (let ((_%hd198222198298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd198220198293%_)))
                        (_%tl198223198300%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd198220198293%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd198222198298%_ 'quote))
                        (if (pair? _%tl198223198300%_)
                            (let ((_%hd198224198303%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl198223198300%_)))
                                  (_%tl198225198305%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl198223198300%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd198224198303%_ '#f))
                                  (if (null? _%tl198225198305%_)
                                      (if (null? _%tl198221198295%_)
                                          (_%K198213198271%_
                                           _%expr198291%_
                                           _%test198284%_)
                                          (_%else198211198235%_))
                                      (_%else198211198235%_))
                                  (_%else198211198235%_)))
                            (_%else198211198235%_))
                        (_%else198211198235%_)))
                  (_%else198211198235%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else198211198235%_))))
                                            (_%else198211198235%_))))
                                    (_%else198211198235%_))
                                (_%else198211198235%_)))
                          (_%else198211198235%_))))))
          (let* ((_%g198125198146%_
                  (lambda (_%g198126198143%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198126198143%_))))
                 (_%g198124198205%_
                  (lambda (_%g198126198149%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198126198149%_))
                        (let ((_%e198130198151%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198126198149%_))))
                          (let ((_%hd198131198154%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198130198151%_)))
                                (_%tl198132198156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198130198151%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198132198156%_))
                                (let ((_%e198133198159%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198132198156%_))))
                                  (let ((_%hd198134198162%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198133198159%_)))
                                        (_%tl198135198164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198133198159%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198135198164%_))
                                        (let ((_%e198136198167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198135198164%_))))
                                          (let ((_%hd198137198170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198136198167%_)))
                                                (_%tl198138198172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198136198167%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198138198172%_))
                                                (let ((_%e198139198175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198138198172%_))))
                                                  (let ((_%hd198140198178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198139198175%_)))
                                                        (_%tl198141198180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198139198175%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198141198180%_))
                                                        ((lambda (_%g198127198183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g198128198184%_
                          _%g198129198185%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify198123%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self198120%_
                                       _%g198129198185%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self198120%_
                                             _%g198128198184%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self198120%_
                                                   _%g198127198183%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp205268
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self198120%_
                                               _%g198129198185%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp205268
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198120%_
                                            _%g198128198184%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198120%_
                                                  _%g198127198183%_))
                                               '()))))))
                 _%hd198140198178%_
                 _%hd198137198170%_
                 _%hd198134198162%_)
                (_%g198125198146%_ _%g198126198149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198125198146%_
                                                 _%g198126198149%_))))
                                        (_%g198125198146%_
                                         _%g198126198149%_))))
                                (_%g198125198146%_ _%g198126198149%_))))
                        (_%g198125198146%_ _%g198126198149%_)))))
            (_%g198124198205%_ _%stx198121%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self198068%_ _%stx198069%_)
        (let* ((_%g198071198084%_
                (lambda (_%g198072198081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198072198081%_))))
               (_%g198070198117%_
                (lambda (_%g198072198087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198072198087%_))
                      (let ((_%e198074198089%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198072198087%_))))
                        (let ((_%hd198075198092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198074198089%_)))
                              (_%tl198076198094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198074198089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198076198094%_))
                              (let ((_%e198077198097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198076198094%_))))
                                (let ((_%hd198078198100%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198077198097%_)))
                                      (_%tl198079198102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198077198097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198079198102%_))
                                      ((lambda (_%g198073198105%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g198073198105%_)))
                                       _%hd198078198100%_)
                                      (_%g198071198084%_ _%g198072198087%_))))
                              (_%g198071198084%_ _%g198072198087%_))))
                      (_%g198071198084%_ _%g198072198087%_)))))
          (_%g198070198117%_ _%stx198069%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self198000%_ _%stx198001%_)
        (let* ((_%g198003198020%_
                (lambda (_%g198004198017%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198004198017%_))))
               (_%g198002198065%_
                (lambda (_%g198004198023%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198004198023%_))
                      (let ((_%e198007198025%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198004198023%_))))
                        (let ((_%hd198008198028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198007198025%_)))
                              (_%tl198009198030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198007198025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198009198030%_))
                              (let ((_%e198010198033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198009198030%_))))
                                (let ((_%hd198011198036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198010198033%_)))
                                      (_%tl198012198038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198010198033%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198012198038%_))
                                      (let ((_%e198013198041%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198012198038%_))))
                                        (let ((_%hd198014198044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198013198041%_)))
                                              (_%tl198015198046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198013198041%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198015198046%_))
                                              ((lambda (_%g198005198049%_
                                                        _%g198006198050%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g198006198050%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self198000%_
                              _%g198005198049%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198014198044%_
                                               _%hd198011198036%_)
                                              (_%g198003198020%_
                                               _%g198004198023%_))))
                                      (_%g198003198020%_ _%g198004198023%_))))
                              (_%g198003198020%_ _%g198004198023%_))))
                      (_%g198003198020%_ _%g198004198023%_)))))
          (_%g198002198065%_ _%stx198001%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self197811%_ _%stx197812%_)
        (let* ((_%g197814197831%_
                (lambda (_%g197815197828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197815197828%_))))
               (_%g197813197997%_
                (lambda (_%g197815197834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197815197834%_))
                      (let ((_%e197818197836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197815197834%_))))
                        (let ((_%hd197819197839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197818197836%_)))
                              (_%tl197820197841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197818197836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197820197841%_))
                              (let ((_%e197821197844%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197820197841%_))))
                                (let ((_%hd197822197847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197821197844%_)))
                                      (_%tl197823197849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197821197844%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197823197849%_))
                                      (let ((_%e197824197852%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197823197849%_))))
                                        (let ((_%hd197825197855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197824197852%_)))
                                              (_%tl197826197857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197824197852%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197826197857%_))
                                              ((lambda (_%g197816197860%_
                                                        _%g197817197861%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self197811%_ _%g197816197860%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self197811%_
                                  _%g197817197861%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp197876%_ ((_%rest197879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g197817197861%_
                                       (cons _%g197816197860%_ '())))
                                (_%bind197881%_ '())
                                (_%args197882%_ '()))
               (let* ((_%rest197883197891%_ _%rest197879%_)
                      (_%else197885197899%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind197881%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args197882%_)
                                                 '()))))))
                      (_%K197887197985%_
                       (lambda (_%rest197902%_ _%e197903%_)
                         (let* ((_%__stx204816204817%_ _%e197903%_)
                                (_%g197908197926%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx204816204817%_)))))
                           (let ((_%__kont204818204819%_
                                  (lambda ()
                                    (_%lp197876%_
                                     _%rest197902%_
                                     _%bind197881%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e197903%_))
                                           _%args197882%_))))
                                 (_%__kont204820204821%_
                                  (lambda ()
                                    (_%lp197876%_
                                     _%rest197902%_
                                     _%bind197881%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e197903%_))
                                           _%args197882%_))))
                                 (_%__kont204822204823%_
                                  (lambda ()
                                    (let ((_%tmp197933%_
                                           (let ((__tmp205269
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp205269))))
                                      (_%lp197876%_
                                       _%rest197902%_
                                       (cons (cons _%tmp197933%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e197903%_))
                                                         '()))
                                             _%bind197881%_)
                                       (cons _%tmp197933%_ _%args197882%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx204816204817%_))
                                 (let ((_%e197910197964%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx204816204817%_))))
                                   (let ((_%tl197912197969%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e197910197964%_)))
                                         (_%hd197911197967%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e197910197964%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd197911197967%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd197911197967%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl197912197969%_))
                                                 (let ((_%e197913197972%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl197912197969%_))))
                                                   (let ((_%tl197915197977%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197913197972%_)))
                                                         (_%hd197914197975%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197913197972%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl197915197977%_))
                                                         (_%__kont204818204819%_)
                                                         (_%__kont204822204823%_))))
                                                 (_%__kont204822204823%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd197911197967%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl197912197969%_))
                                                     (let ((_%e197919197949%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl197912197969%_))))
                                                       (let ((_%tl197921197954%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197919197949%_)))
                     (_%hd197920197952%_
                      (let () (declare (not safe)) (##car _%e197919197949%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197921197954%_))
                     (_%__kont204820204821%_)
                     (_%__kont204822204823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont204822204823%_))
                                                 (_%__kont204822204823%_)))
                                         (_%__kont204822204823%_))))
                                 (_%__kont204822204823%_)))))))
                 (if (pair? _%rest197883197891%_)
                     (let ((_%hd197888197988%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest197883197891%_)))
                           (_%tl197889197990%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest197883197891%_))))
                       (let* ((_%e197993%_ _%hd197888197988%_)
                              (_%rest197995%_ _%tl197889197990%_))
                         (_%K197887197985%_ _%rest197995%_ _%e197993%_)))
                     (_%else197885197899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197825197855%_
                                               _%hd197822197847%_)
                                              (_%g197814197831%_
                                               _%g197815197834%_))))
                                      (_%g197814197831%_ _%g197815197834%_))))
                              (_%g197814197831%_ _%g197815197834%_))))
                      (_%g197814197831%_ _%g197815197834%_)))))
          (_%g197813197997%_ _%stx197812%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self197622%_ _%stx197623%_)
        (let* ((_%g197625197642%_
                (lambda (_%g197626197639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197626197639%_))))
               (_%g197624197808%_
                (lambda (_%g197626197645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197626197645%_))
                      (let ((_%e197629197647%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197626197645%_))))
                        (let ((_%hd197630197650%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197629197647%_)))
                              (_%tl197631197652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197629197647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197631197652%_))
                              (let ((_%e197632197655%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197631197652%_))))
                                (let ((_%hd197633197658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197632197655%_)))
                                      (_%tl197634197660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197632197655%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197634197660%_))
                                      (let ((_%e197635197663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197634197660%_))))
                                        (let ((_%hd197636197666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197635197663%_)))
                                              (_%tl197637197668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197635197663%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197637197668%_))
                                              ((lambda (_%g197627197671%_
                                                        _%g197628197672%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self197622%_ _%g197627197671%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self197622%_
                                  _%g197628197672%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp197687%_ ((_%rest197690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g197628197672%_
                                       (cons _%g197627197671%_ '())))
                                (_%bind197692%_ '())
                                (_%args197693%_ '()))
               (let* ((_%rest197694197702%_ _%rest197690%_)
                      (_%else197696197710%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind197692%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args197693%_)
                                                 '()))))))
                      (_%K197698197796%_
                       (lambda (_%rest197713%_ _%e197714%_)
                         (let* ((_%__stx204862204863%_ _%e197714%_)
                                (_%g197719197737%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx204862204863%_)))))
                           (let ((_%__kont204864204865%_
                                  (lambda ()
                                    (_%lp197687%_
                                     _%rest197713%_
                                     _%bind197692%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e197714%_))
                                           _%args197693%_))))
                                 (_%__kont204866204867%_
                                  (lambda ()
                                    (_%lp197687%_
                                     _%rest197713%_
                                     _%bind197692%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e197714%_))
                                           _%args197693%_))))
                                 (_%__kont204868204869%_
                                  (lambda ()
                                    (let ((_%tmp197744%_
                                           (let ((__tmp205270
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp205270))))
                                      (_%lp197687%_
                                       _%rest197713%_
                                       (cons (cons _%tmp197744%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e197714%_))
                                                         '()))
                                             _%bind197692%_)
                                       (cons _%tmp197744%_ _%args197693%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx204862204863%_))
                                 (let ((_%e197721197775%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx204862204863%_))))
                                   (let ((_%tl197723197780%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e197721197775%_)))
                                         (_%hd197722197778%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e197721197775%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd197722197778%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd197722197778%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl197723197780%_))
                                                 (let ((_%e197724197783%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl197723197780%_))))
                                                   (let ((_%tl197726197788%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e197724197783%_)))
                                                         (_%hd197725197786%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e197724197783%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl197726197788%_))
                                                         (_%__kont204864204865%_)
                                                         (_%__kont204868204869%_))))
                                                 (_%__kont204868204869%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd197722197778%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl197723197780%_))
                                                     (let ((_%e197730197760%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl197723197780%_))))
                                                       (let ((_%tl197732197765%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197730197760%_)))
                     (_%hd197731197763%_
                      (let () (declare (not safe)) (##car _%e197730197760%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl197732197765%_))
                     (_%__kont204866204867%_)
                     (_%__kont204868204869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont204868204869%_))
                                                 (_%__kont204868204869%_)))
                                         (_%__kont204868204869%_))))
                                 (_%__kont204868204869%_)))))))
                 (if (pair? _%rest197694197702%_)
                     (let ((_%hd197699197799%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest197694197702%_)))
                           (_%tl197700197801%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest197694197702%_))))
                       (let* ((_%e197804%_ _%hd197699197799%_)
                              (_%rest197806%_ _%tl197700197801%_))
                         (_%K197698197796%_ _%rest197806%_ _%e197804%_)))
                     (_%else197696197710%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197636197666%_
                                               _%hd197633197658%_)
                                              (_%g197625197642%_
                                               _%g197626197645%_))))
                                      (_%g197625197642%_ _%g197626197645%_))))
                              (_%g197625197642%_ _%g197626197645%_))))
                      (_%g197625197642%_ _%g197626197645%_)))))
          (_%g197624197808%_ _%stx197623%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self197538%_ _%stx197539%_)
        (let* ((_%g197541197562%_
                (lambda (_%g197542197559%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197542197559%_))))
               (_%g197540197619%_
                (lambda (_%g197542197565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197542197565%_))
                      (let ((_%e197546197567%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197542197565%_))))
                        (let ((_%hd197547197570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197546197567%_)))
                              (_%tl197548197572%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197546197567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197548197572%_))
                              (let ((_%e197549197575%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197548197572%_))))
                                (let ((_%hd197550197578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197549197575%_)))
                                      (_%tl197551197580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197549197575%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197551197580%_))
                                      (let ((_%e197552197583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197551197580%_))))
                                        (let ((_%hd197553197586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197552197583%_)))
                                              (_%tl197554197588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197552197583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197554197588%_))
                                              (let ((_%e197555197591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197554197588%_))))
                                                (let ((_%hd197556197594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197555197591%_)))
                                                      (_%tl197557197596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197555197591%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197557197596%_))
                                                      ((lambda (_%g197543197599%_
                                                                _%g197544197600%_
                                                                _%g197545197601%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self197538%_
                                _%g197543197599%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self197538%_
                                      _%g197544197600%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197538%_
                                            _%g197545197601%_))
                                         (cons ''#f '()))))))
               _%hd197556197594%_
               _%hd197553197586%_
               _%hd197550197578%_)
              (_%g197541197562%_ _%g197542197565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197541197562%_
                                               _%g197542197565%_))))
                                      (_%g197541197562%_ _%g197542197565%_))))
                              (_%g197541197562%_ _%g197542197565%_))))
                      (_%g197541197562%_ _%g197542197565%_)))))
          (_%g197540197619%_ _%stx197539%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self197438%_ _%stx197439%_)
        (let* ((_%g197441197466%_
                (lambda (_%g197442197463%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197442197463%_))))
               (_%g197440197535%_
                (lambda (_%g197442197469%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197442197469%_))
                      (let ((_%e197447197471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197442197469%_))))
                        (let ((_%hd197448197474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197447197471%_)))
                              (_%tl197449197476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197447197471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197449197476%_))
                              (let ((_%e197450197479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197449197476%_))))
                                (let ((_%hd197451197482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197450197479%_)))
                                      (_%tl197452197484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197450197479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197452197484%_))
                                      (let ((_%e197453197487%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197452197484%_))))
                                        (let ((_%hd197454197490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197453197487%_)))
                                              (_%tl197455197492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197453197487%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197455197492%_))
                                              (let ((_%e197456197495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197455197492%_))))
                                                (let ((_%hd197457197498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197456197495%_)))
                                                      (_%tl197458197500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197456197495%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197458197500%_))
                                                      (let ((_%e197459197503%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197458197500%_))))
                (let ((_%hd197460197506%_
                       (let () (declare (not safe)) (##car _%e197459197503%_)))
                      (_%tl197461197508%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197459197503%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197461197508%_))
                      ((lambda (_%g197443197511%_
                                _%g197444197512%_
                                _%g197445197513%_
                                _%g197446197514%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self197438%_
                                        _%g197444197512%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self197438%_
                                              _%g197443197511%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self197438%_
                                                    _%g197445197513%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self197438%_
                                                          _%g197446197514%_))
                                                       (cons ''#f '())))))))
                       _%hd197460197506%_
                       _%hd197457197498%_
                       _%hd197454197490%_
                       _%hd197451197482%_)
                      (_%g197441197466%_ _%g197442197469%_))))
              (_%g197441197466%_ _%g197442197469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197441197466%_
                                               _%g197442197469%_))))
                                      (_%g197441197466%_ _%g197442197469%_))))
                              (_%g197441197466%_ _%g197442197469%_))))
                      (_%g197441197466%_ _%g197442197469%_)))))
          (_%g197440197535%_ _%stx197439%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self197354%_ _%stx197355%_)
        (let* ((_%g197357197378%_
                (lambda (_%g197358197375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197358197375%_))))
               (_%g197356197435%_
                (lambda (_%g197358197381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197358197381%_))
                      (let ((_%e197362197383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197358197381%_))))
                        (let ((_%hd197363197386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197362197383%_)))
                              (_%tl197364197388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197362197383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197364197388%_))
                              (let ((_%e197365197391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197364197388%_))))
                                (let ((_%hd197366197394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197365197391%_)))
                                      (_%tl197367197396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197365197391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197367197396%_))
                                      (let ((_%e197368197399%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197367197396%_))))
                                        (let ((_%hd197369197402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197368197399%_)))
                                              (_%tl197370197404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197368197399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197370197404%_))
                                              (let ((_%e197371197407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197370197404%_))))
                                                (let ((_%hd197372197410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197371197407%_)))
                                                      (_%tl197373197412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197371197407%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197373197412%_))
                                                      ((lambda (_%g197359197415%_
                                                                _%g197360197416%_
                                                                _%g197361197417%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self197354%_
                                _%g197359197415%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self197354%_
                                      _%g197360197416%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197354%_
                                            _%g197361197417%_))
                                         (cons ''#f '()))))))
               _%hd197372197410%_
               _%hd197369197402%_
               _%hd197366197394%_)
              (_%g197357197378%_ _%g197358197381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197357197378%_
                                               _%g197358197381%_))))
                                      (_%g197357197378%_ _%g197358197381%_))))
                              (_%g197357197378%_ _%g197358197381%_))))
                      (_%g197357197378%_ _%g197358197381%_)))))
          (_%g197356197435%_ _%stx197355%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self197254%_ _%stx197255%_)
        (let* ((_%g197257197282%_
                (lambda (_%g197258197279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197258197279%_))))
               (_%g197256197351%_
                (lambda (_%g197258197285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197258197285%_))
                      (let ((_%e197263197287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197258197285%_))))
                        (let ((_%hd197264197290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197263197287%_)))
                              (_%tl197265197292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197263197287%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197265197292%_))
                              (let ((_%e197266197295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197265197292%_))))
                                (let ((_%hd197267197298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197266197295%_)))
                                      (_%tl197268197300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197266197295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197268197300%_))
                                      (let ((_%e197269197303%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197268197300%_))))
                                        (let ((_%hd197270197306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197269197303%_)))
                                              (_%tl197271197308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197269197303%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197271197308%_))
                                              (let ((_%e197272197311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197271197308%_))))
                                                (let ((_%hd197273197314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197272197311%_)))
                                                      (_%tl197274197316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197272197311%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197274197316%_))
                                                      (let ((_%e197275197319%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197274197316%_))))
                (let ((_%hd197276197322%_
                       (let () (declare (not safe)) (##car _%e197275197319%_)))
                      (_%tl197277197324%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197275197319%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197277197324%_))
                      ((lambda (_%g197259197327%_
                                _%g197260197328%_
                                _%g197261197329%_
                                _%g197262197330%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self197254%_
                                        _%g197260197328%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self197254%_
                                              _%g197259197327%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self197254%_
                                                    _%g197261197329%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self197254%_
                                                          _%g197262197330%_))
                                                       (cons ''#f '())))))))
                       _%hd197276197322%_
                       _%hd197273197314%_
                       _%hd197270197306%_
                       _%hd197267197298%_)
                      (_%g197257197282%_ _%g197258197285%_))))
              (_%g197257197282%_ _%g197258197285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197257197282%_
                                               _%g197258197285%_))))
                                      (_%g197257197282%_ _%g197258197285%_))))
                              (_%g197257197282%_ _%g197258197285%_))))
                      (_%g197257197282%_ _%g197258197285%_)))))
          (_%g197256197351%_ _%stx197255%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self197049%_ _%stx197050%_)
        (let* ((_%g197052197073%_
                (lambda (_%g197053197070%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197053197070%_))))
               (_%g197051197251%_
                (lambda (_%g197053197076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197053197076%_))
                      (let ((_%e197057197078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197053197076%_))))
                        (let ((_%hd197058197081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197057197078%_)))
                              (_%tl197059197083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197057197078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197059197083%_))
                              (let ((_%e197060197086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197059197083%_))))
                                (let ((_%hd197061197089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197060197086%_)))
                                      (_%tl197062197091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197060197086%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197062197091%_))
                                      (let ((_%e197063197094%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197062197091%_))))
                                        (let ((_%hd197064197097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197063197094%_)))
                                              (_%tl197065197099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197063197094%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197065197099%_))
                                              (let ((_%e197066197102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197065197099%_))))
                                                (let ((_%hd197067197105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197066197102%_)))
                                                      (_%tl197068197107%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197066197102%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197068197107%_))
                                                      ((lambda (_%g197054197110%_
                                                                _%g197055197111%_
                                                                _%g197056197112%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self197049%_
                                    _%g197054197110%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self197049%_
                                          _%g197055197111%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp197130%_ ((_%rest197133%_
                                         (cons _%g197055197111%_
                                               (cons _%g197054197110%_ '())))
                                        (_%bind197135%_ '())
                                        (_%args197136%_ '()))
                       (let* ((_%rest197137197145%_ _%rest197133%_)
                              (_%else197139197153%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind197135%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp205271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp205271 _%args197136%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K197141197239%_
                               (lambda (_%rest197156%_ _%e197157%_)
                                 (let* ((_%__stx204908204909%_ _%e197157%_)
                                        (_%g197162197180%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx204908204909%_)))))
                                   (let ((_%__kont204910204911%_
                                          (lambda ()
                                            (_%lp197130%_
                                             _%rest197156%_
                                             _%bind197135%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e197157%_))
                                                   _%args197136%_))))
                                         (_%__kont204912204913%_
                                          (lambda ()
                                            (_%lp197130%_
                                             _%rest197156%_
                                             _%bind197135%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e197157%_))
                                                   _%args197136%_))))
                                         (_%__kont204914204915%_
                                          (lambda ()
                                            (let ((_%tmp197187%_
                                                   (let ((__tmp205272
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp205272))))
                                              (_%lp197130%_
                                               _%rest197156%_
                                               (cons (cons _%tmp197187%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e197157%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind197135%_)
                                               (cons _%tmp197187%_
                                                     _%args197136%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx204908204909%_))
                                         (let ((_%e197164197218%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx204908204909%_))))
                                           (let ((_%tl197166197223%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e197164197218%_)))
                                                 (_%hd197165197221%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e197164197218%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd197165197221%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd197165197221%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl197166197223%_))
                                                         (let ((_%e197167197226%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl197166197223%_))))
                   (let ((_%tl197169197231%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e197167197226%_)))
                         (_%hd197168197229%_
                          (let ()
                            (declare (not safe))
                            (##car _%e197167197226%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl197169197231%_))
                         (_%__kont204910204911%_)
                         (_%__kont204914204915%_))))
                 (_%__kont204914204915%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd197165197221%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl197166197223%_))
                     (let ((_%e197173197203%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl197166197223%_))))
                       (let ((_%tl197175197208%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e197173197203%_)))
                             (_%hd197174197206%_
                              (let ()
                                (declare (not safe))
                                (##car _%e197173197203%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl197175197208%_))
                             (_%__kont204912204913%_)
                             (_%__kont204914204915%_))))
                     (_%__kont204914204915%_))
                 (_%__kont204914204915%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont204914204915%_))))
                                         (_%__kont204914204915%_)))))))
                         (if (pair? _%rest197137197145%_)
                             (let ((_%hd197142197242%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest197137197145%_)))
                                   (_%tl197143197244%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest197137197145%_))))
                               (let* ((_%e197247%_ _%hd197142197242%_)
                                      (_%rest197249%_ _%tl197143197244%_))
                                 (_%K197141197239%_
                                  _%rest197249%_
                                  _%e197247%_)))
                             (_%else197139197153%_))))))
               _%hd197067197105%_
               _%hd197064197097%_
               _%hd197061197089%_)
              (_%g197052197073%_ _%g197053197076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197052197073%_
                                               _%g197053197076%_))))
                                      (_%g197052197073%_ _%g197053197076%_))))
                              (_%g197052197073%_ _%g197053197076%_))))
                      (_%g197052197073%_ _%g197053197076%_)))))
          (_%g197051197251%_ _%stx197050%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self196828%_ _%stx196829%_)
        (let* ((_%g196831196856%_
                (lambda (_%g196832196853%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196832196853%_))))
               (_%g196830197046%_
                (lambda (_%g196832196859%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196832196859%_))
                      (let ((_%e196837196861%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196832196859%_))))
                        (let ((_%hd196838196864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196837196861%_)))
                              (_%tl196839196866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196837196861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196839196866%_))
                              (let ((_%e196840196869%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196839196866%_))))
                                (let ((_%hd196841196872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196840196869%_)))
                                      (_%tl196842196874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196840196869%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196842196874%_))
                                      (let ((_%e196843196877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196842196874%_))))
                                        (let ((_%hd196844196880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196843196877%_)))
                                              (_%tl196845196882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196843196877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196845196882%_))
                                              (let ((_%e196846196885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196845196882%_))))
                                                (let ((_%hd196847196888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196846196885%_)))
                                                      (_%tl196848196890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196846196885%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196848196890%_))
                                                      (let ((_%e196849196893%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl196848196890%_))))
                (let ((_%hd196850196896%_
                       (let () (declare (not safe)) (##car _%e196849196893%_)))
                      (_%tl196851196898%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196849196893%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196851196898%_))
                      ((lambda (_%g196833196901%_
                                _%g196834196902%_
                                _%g196835196903%_
                                _%g196836196904%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self196828%_
                                            _%g196834196902%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self196828%_
                                                  _%g196833196901%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self196828%_
                                                        _%g196835196903%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp196925%_ ((_%rest196928%_
                                                 (cons _%g196835196903%_
                                                       (cons _%g196833196901%_
                                                             (cons _%g196834196902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind196930%_ '())
                                                (_%args196931%_ '()))
                               (let* ((_%rest196932196940%_ _%rest196928%_)
                                      (_%else196934196948%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind196930%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp205273 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp205273 _%args196931%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K196936197034%_
                                       (lambda (_%rest196951%_ _%e196952%_)
                                         (let* ((_%__stx204954204955%_
                                                 _%e196952%_)
                                                (_%g196957196975%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx204954204955%_)))))
                                           (let ((_%__kont204956204957%_
                                                  (lambda ()
                                                    (_%lp196925%_
                                                     _%rest196951%_
                                                     _%bind196930%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e196952%_))
                                                           _%args196931%_))))
                                                 (_%__kont204958204959%_
                                                  (lambda ()
                                                    (_%lp196925%_
                                                     _%rest196951%_
                                                     _%bind196930%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e196952%_))
                                                           _%args196931%_))))
                                                 (_%__kont204960204961%_
                                                  (lambda ()
                                                    (let ((_%tmp196982%_
                                                           (let ((__tmp205274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp205274))))
              (_%lp196925%_
               _%rest196951%_
               (cons (cons _%tmp196982%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e196952%_))
                                 '()))
                     _%bind196930%_)
               (cons _%tmp196982%_ _%args196931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx204954204955%_))
                                                 (let ((_%e196959197013%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx204954204955%_))))
                                                   (let ((_%tl196961197018%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e196959197013%_)))
                                                         (_%hd196960197016%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e196959197013%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd196960197016%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd196960197016%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl196961197018%_))
                         (let ((_%e196962197021%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl196961197018%_))))
                           (let ((_%tl196964197026%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196962197021%_)))
                                 (_%hd196963197024%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196962197021%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl196964197026%_))
                                 (_%__kont204956204957%_)
                                 (_%__kont204960204961%_))))
                         (_%__kont204960204961%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd196960197016%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl196961197018%_))
                             (let ((_%e196968196998%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl196961197018%_))))
                               (let ((_%tl196970197003%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e196968196998%_)))
                                     (_%hd196969197001%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e196968196998%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl196970197003%_))
                                     (_%__kont204958204959%_)
                                     (_%__kont204960204961%_))))
                             (_%__kont204960204961%_))
                         (_%__kont204960204961%_)))
                 (_%__kont204960204961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont204960204961%_)))))))
                                 (if (pair? _%rest196932196940%_)
                                     (let ((_%hd196937197037%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest196932196940%_)))
                                           (_%tl196938197039%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest196932196940%_))))
                                       (let* ((_%e197042%_ _%hd196937197037%_)
                                              (_%rest197044%_
                                               _%tl196938197039%_))
                                         (_%K196936197034%_
                                          _%rest197044%_
                                          _%e197042%_)))
                                     (_%else196934196948%_))))))
                       _%hd196850196896%_
                       _%hd196847196888%_
                       _%hd196844196880%_
                       _%hd196841196872%_)
                      (_%g196831196856%_ _%g196832196859%_))))
              (_%g196831196856%_ _%g196832196859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196831196856%_
                                               _%g196832196859%_))))
                                      (_%g196831196856%_ _%g196832196859%_))))
                              (_%g196831196856%_ _%g196832196859%_))))
                      (_%g196831196856%_ _%g196832196859%_)))))
          (_%g196830197046%_ _%stx196829%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self196667%_ _%stx196668%_)
        (letrec ((_%import-set-template196670%_
                  (lambda (_%in196773%_ _%phi196774%_)
                    (let ((_%iphi196776%_
                           (fx+ _%phi196774%_
                                (##direct-structure-ref
                                 _%in196773%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports196777%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in196773%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp196779%_ ((_%rest196781%_ _%imports196777%_)
                                         (_%r196782%_ '()))
                        (let* ((_%rest196783196791%_ _%rest196781%_)
                               (_%else196785196799%_ (lambda () _%r196782%_))
                               (_%K196787196816%_
                                (lambda (_%rest196802%_ _%in196803%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in196803%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi196776%_))
                                          (_%lp196779%_
                                           _%rest196802%_
                                           (cons _%in196803%_ _%r196782%_))
                                          (_%lp196779%_
                                           _%rest196802%_
                                           _%r196782%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in196803%_
                                             'gx#module-import::t))
                                          (let ((_%iphi196807%_
                                                 (fx+ _%phi196774%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in196803%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi196807%_))
                                                (_%lp196779%_
                                                 _%rest196802%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in196803%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r196782%_))
                                                (_%lp196779%_
                                                 _%rest196802%_
                                                 _%r196782%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in196803%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi196810%_
                                                     (fx+ _%iphi196776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in196803%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi196810%_))
                                                    (_%lp196779%_
                                                     _%rest196802%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in196803%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r196782%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi196810%_))
                                                        (_%lp196779%_
                                                         _%rest196802%_
                                                         (let ((__tmp205275
                                                                (_%import-set-template196670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in196803%_
                         _%iphi196776%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r196782%_ __tmp205275)))
                (_%lp196779%_ _%rest196802%_ _%r196782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp196779%_
                                               _%rest196802%_
                                               _%r196782%_)))))))
                          (if (pair? _%rest196783196791%_)
                              (let ((_%hd196788196819%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest196783196791%_)))
                                    (_%tl196789196821%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest196783196791%_))))
                                (let* ((_%in196824%_ _%hd196788196819%_)
                                       (_%rest196826%_ _%tl196789196821%_))
                                  (_%K196787196816%_
                                   _%rest196826%_
                                   _%in196824%_)))
                              (_%else196785196799%_))))))))
          (let* ((_%g196672196682%_
                  (lambda (_%g196673196679%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196673196679%_))))
                 (_%g196671196770%_
                  (lambda (_%g196673196685%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196673196685%_))
                        (let ((_%e196675196687%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196673196685%_))))
                          (let ((_%hd196676196690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196675196687%_)))
                                (_%tl196677196692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196675196687%_))))
                            ((lambda (_%g196674196695%_)
                               (let ((_%ht196706%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp196708%_ ((_%rest196710%_
                                                     _%g196674196695%_)
                                                    (_%loads196711%_ '()))
                                   (letrec ((_%K196713%_
                                             (lambda (_%ctx196763%_
                                                      _%rest196764%_)
                                               (let ((_%id196766%_
                                                      (##structure-ref
                                                       _%ctx196763%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht196706%_
                                                        _%id196766%_))
                                                     (_%lp196708%_
                                                      _%rest196764%_
                                                      _%loads196711%_)
                                                     (let ((_%rt196768%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id196766%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht196706%_
                                                          _%id196766%_
                                                          _%rt196768%_))
                                                       (_%lp196708%_
                                                        _%rest196764%_
                                                        (cons _%rt196768%_
                                                              _%loads196711%_))))))))
                                     (let* ((_%rest196714196722%_
                                             _%rest196710%_)
                                            (_%else196716196734%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp205277
                                                            (lambda (_%g196729196731%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g196729196731%_)))
                   (__tmp205276 (reverse _%loads196711%_)))
               (declare (not safe))
               (##map __tmp205277 __tmp205276)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K196718196751%_
                                             (lambda (_%rest196737%_
                                                      _%in196738%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in196738%_
                                                      'gx#module-context::t))
                                                   (_%K196713%_
                                                    _%in196738%_
                                                    _%rest196737%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in196738%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in196738%_
                               '3
                               '#f
                               '#f)))
                   (_%K196713%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in196738%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest196737%_)
                   (_%lp196708%_ _%rest196737%_ _%loads196711%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in196738%_
                      'gx#import-set::t))
                   (let ((_%phi196743%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in196738%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi196743%_)
                         (_%K196713%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in196738%_
                             '1
                             '#f
                             '#f))
                          _%rest196737%_)
                         (if (fxpositive? _%phi196743%_)
                             (let ((_%deps196747%_
                                    (_%import-set-template196670%_
                                     _%in196738%_
                                     '0)))
                               (_%lp196708%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest196737%_
                                   _%deps196747%_))
                                _%loads196711%_))
                             (_%lp196708%_ _%rest196737%_ _%loads196711%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx196668%_
                      _%in196738%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest196714196722%_)
                                           (let ((_%hd196719196754%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest196714196722%_)))
                                                 (_%tl196720196756%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest196714196722%_))))
                                             (let* ((_%in196759%_
                                                     _%hd196719196754%_)
                                                    (_%rest196761%_
                                                     _%tl196720196756%_))
                                               (_%K196718196751%_
                                                _%rest196761%_
                                                _%in196759%_)))
                                           (_%else196716196734%_)))))))
                             _%tl196677196692%_)))
                        (_%g196672196682%_ _%g196673196685%_)))))
            (_%g196671196770%_ _%stx196668%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self196481%_ _%stx196482%_)
        (letrec ((_%add-lift!196484%_
                  (lambda (_%expr196665%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr196665%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote196485%_
                  (lambda (_%id196662%_ _%marks196663%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id196662%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks196663%_
                                                        '()))))))))
                 (_%generate-simple196486%_
                  (lambda (_%stxq196657%_)
                    (let ((_%gid196659%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid196660%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq196657%_))))
                      (_%add-lift!196484%_
                       (cons 'define
                             (cons _%gid196659%_
                                   (cons (_%generate-syntax-quote196485%_
                                          _%qid196660%_
                                          ''())
                                         '()))))
                      (let ((__tmp205278
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp205278 _%stxq196657%_ _%gid196659%_))
                      _%gid196659%_)))
                 (_%generate-serialized196487%_
                  (lambda (_%stxq196647%_ _%marks196648%_)
                    (let* ((_%mark-refs196650%_
                            (map _%generate-mark196488%_ _%marks196648%_))
                           (_%gid196652%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid196654%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq196647%_))))
                      (_%add-lift!196484%_
                       (cons 'define
                             (cons _%gid196652%_
                                   (cons (_%generate-syntax-quote196485%_
                                          _%qid196654%_
                                          (cons 'list _%mark-refs196650%_))
                                         '()))))
                      (let ((__tmp205279
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp205279 _%stxq196647%_ _%gid196652%_))
                      _%gid196652%_)))
                 (_%generate-mark196488%_
                  (lambda (_%mark196632%_)
                    (let ((_%$e196634%_
                           (let ((__tmp205280
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp205280 _%mark196632%_))))
                      (if _%$e196634%_
                          _%$e196634%_
                          (let* ((_%gid196638%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr196640%_
                                  (_%serialize-mark196489%_ _%mark196632%_))
                                 (_%ctx196642%_
                                  (let ((__tmp205281
                                         (##structure-ref
                                          _%mark196632%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp205281)))
                                 (_%ctx-ref196644%_
                                  (if (eq? _%ctx196642%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref196490%_
                                                               _%ctx196642%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp205282
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp205282
                               _%mark196632%_
                               _%gid196638%_))
                            (_%add-lift!196484%_
                             (cons 'define
                                   (cons _%gid196638%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr196640%_ '()))
                   (cons _%ctx-ref196644%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid196638%_)))))
                 (_%serialize-mark196489%_
                  (lambda (_%mark196580%_)
                    (letrec ((_%quote-e196582%_
                              (lambda (_%sym196630%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym196630%_))
                                    _%sym196630%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym196630%_))))))
                      (let* ((_%mark196583196592%_ _%mark196580%_)
                             (_%E196585196595%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark196583196592%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K196586196607%_
                              (lambda (_%trace196598%_
                                       _%phi196599%_
                                       _%ctx196600%_
                                       _%subst196601%_)
                                (let ((_%subs196603%_
                                       (if _%subst196601%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst196601%_))
                                           '())))
                                  (cons _%phi196599%_
                                        (let ((__tmp205283
                                               (lambda (_%pair196605%_)
                                                 (cons (_%quote-e196582%_
                                                        (car _%pair196605%_))
                                                       (_%quote-e196582%_
                                                        (cdr _%pair196605%_))))))
                                          (declare (not safe))
                                          (##map __tmp205283
                                                 _%subs196603%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark196583196592%_
                               'gx#expander-mark::t))
                            (let* ((_%e196587196610%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark196583196592%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst196613%_ _%e196587196610%_)
                                   (_%e196588196615%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark196583196592%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx196618%_ _%e196588196615%_)
                                   (_%e196589196620%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark196583196592%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi196623%_ _%e196589196620%_)
                                   (_%e196590196625%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark196583196592%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace196628%_ _%e196590196625%_))
                              (_%K196586196607%_
                               _%trace196628%_
                               _%phi196623%_
                               _%ctx196618%_
                               _%subst196613%_))
                            (_%E196585196595%_))))))
                 (_%context-ref196490%_
                  (lambda (_%ctx196567%_)
                    (if (let ((__tmp205284
                               (##structure-ref
                                _%ctx196567%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp205284
                           'gx#module-context::t))
                        (let ((_%ctx-ref196569%_
                               (_%context-ref-nested196492%_ _%ctx196567%_))
                              (_%ctx-origin196570%_
                               (_%context-ref-origin196491%_ _%ctx196567%_))
                              (_%origin196571%_
                               (_%context-ref-origin196491%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin196571%_ _%ctx-origin196570%_)
                              (let ((_%ref196573%_
                                     (_%context-ref-nested196492%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp196575%_ ((_%ref196577%_
                                                    (cdr _%ref196573%_))
                                                   (_%ctx-ref196578%_
                                                    (cdr _%ctx-ref196569%_)))
                                  (if (and (pair? _%ref196577%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref196577%_))
                                                (car _%ctx-ref196578%_)))
                                      (_%lp196575%_
                                       (cdr _%ref196577%_)
                                       (cdr _%ctx-ref196578%_))
                                      (cons '#f _%ctx-ref196578%_))))
                              _%ctx-ref196569%_))
                        (let ((__tmp205285
                               (##structure-ref
                                _%ctx196567%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp205285)))))
                 (_%context-ref-origin196491%_
                  (lambda (_%ctx196559%_)
                    (let _%lp196561%_ ((_%ctx196563%_ _%ctx196559%_))
                      (let ((_%super196565%_
                             (##structure-ref
                              _%ctx196563%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super196565%_
                               'gx#module-context::t))
                            (_%lp196561%_ _%super196565%_)
                            _%ctx196563%_)))))
                 (_%context-ref-nested196492%_
                  (lambda (_%ctx196550%_)
                    (let _%lp196552%_ ((_%ctx196554%_ _%ctx196550%_)
                                       (_%r196555%_ '()))
                      (let ((_%super196557%_
                             (##structure-ref
                              _%ctx196554%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super196557%_
                               'gx#module-context::t))
                            (_%lp196552%_
                             _%super196557%_
                             (cons (car (##structure-ref
                                         _%ctx196554%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r196555%_))
                            (cons (let ((__tmp205286
                                         (##structure-ref
                                          _%ctx196554%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp205286))
                                  _%r196555%_)))))))
          (let* ((_%g196494196507%_
                  (lambda (_%g196495196504%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196495196504%_))))
                 (_%g196493196547%_
                  (lambda (_%g196495196510%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196495196510%_))
                        (let ((_%e196497196512%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196495196510%_))))
                          (let ((_%hd196498196515%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196497196512%_)))
                                (_%tl196499196517%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196497196512%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196499196517%_))
                                (let ((_%e196500196520%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196499196517%_))))
                                  (let ((_%hd196501196523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196500196520%_)))
                                        (_%tl196502196525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196500196520%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196502196525%_))
                                        ((lambda (_%g196496196528%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g196496196528%_))
                                               (let ((_%$e196541%_
                                                      (let ((__tmp205287
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp205287 _%g196496196528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e196541%_
                                                     _%$e196541%_
                                                     (let ((_%marks196545%_
                                                            (##direct-structure-ref
                                                             _%g196496196528%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks196545%_)
                                                           (_%generate-simple196486%_
                                                            _%g196496196528%_)
                                                           (_%generate-serialized196487%_
                                                            _%g196496196528%_
                                                            _%marks196545%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g196496196528%_))))
                                         _%hd196501196523%_)
                                        (_%g196494196507%_
                                         _%g196495196510%_))))
                                (_%g196494196507%_ _%g196495196510%_))))
                        (_%g196494196507%_ _%g196495196510%_)))))
            (_%g196493196547%_ _%stx196482%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self196413%_ _%stx196414%_)
        (let* ((_%g196416196433%_
                (lambda (_%g196417196430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196417196430%_))))
               (_%g196415196478%_
                (lambda (_%g196417196436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196417196436%_))
                      (let ((_%e196420196438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196417196436%_))))
                        (let ((_%hd196421196441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196420196438%_)))
                              (_%tl196422196443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196420196438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196422196443%_))
                              (let ((_%e196423196446%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196422196443%_))))
                                (let ((_%hd196424196449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196423196446%_)))
                                      (_%tl196425196451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196423196446%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196425196451%_))
                                      (let ((_%e196426196454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196425196451%_))))
                                        (let ((_%hd196427196457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196426196454%_)))
                                              (_%tl196428196459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196426196454%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196428196459%_))
                                              ((lambda (_%g196418196462%_
                                                        _%g196419196463%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g196419196463%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self196413%_
                              _%g196418196462%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196427196457%_
                                               _%hd196424196449%_)
                                              (_%g196416196433%_
                                               _%g196417196436%_))))
                                      (_%g196416196433%_ _%g196417196436%_))))
                              (_%g196416196433%_ _%g196417196436%_))))
                      (_%g196416196433%_ _%g196417196436%_)))))
          (_%g196415196478%_ _%stx196414%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self196362%_ _%stx196363%_)
        (let* ((_%g196365196375%_
                (lambda (_%g196366196372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196366196372%_))))
               (_%g196364196410%_
                (lambda (_%g196366196378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196366196378%_))
                      (let ((_%e196368196380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196366196378%_))))
                        (let ((_%hd196369196383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196368196380%_)))
                              (_%tl196370196385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196368196380%_))))
                          ((lambda (_%g196367196388%_)
                             (let* ((_%c-body196402%_
                                     (map (lambda (_%g196397196399%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self196362%_
                                               _%g196397196399%_)))
                                          _%g196367196388%_))
                                    (_%c-body196407%_
                                     (let ((__tmp205288
                                            (lambda (_%$obj196404%_)
                                              (not (eq? _%$obj196404%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp205288
                                        _%c-body196402%_))))
                               (cons '%#begin _%c-body196407%_)))
                           _%tl196370196385%_)))
                      (_%g196365196375%_ _%g196366196378%_)))))
          (_%g196364196410%_ _%stx196363%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self196267%_ _%stx196268%_)
        (let* ((_%g196270196280%_
                (lambda (_%g196271196277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196271196277%_))))
               (_%g196269196359%_
                (lambda (_%g196271196283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196271196283%_))
                      (let ((_%e196273196285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196271196283%_))))
                        (let ((_%hd196274196288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196273196285%_)))
                              (_%tl196275196290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196273196285%_))))
                          ((lambda (_%g196272196293%_)
                             (let* ((_%phi196303%_
                                     (let ((__tmp205289
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp205289 '1)))
                                    (_%block196305%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self196267%_ 'state))
                                      _%phi196303%_))
                                    (_%compiled196308%_
                                     (let ((__tmp205290
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self196267%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g196272196293%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp205290
                                        gx#current-expander-phi
                                        _%phi196303%_)))
                                    (_%g196311196321%_
                                     (lambda (_%g196312196318%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g196312196318%_))))
                                    (_%g196310196356%_
                                     (lambda (_%g196312196324%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g196312196324%_))
                                           (let ((_%e196314196326%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g196312196324%_))))
                                             (let ((_%hd196315196329%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e196314196326%_)))
                                                   (_%tl196316196331%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e196314196326%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd196315196329%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd196315196329%_))
                                                       ((lambda (_%g196313196334%_)
                                                          (let ((_%c-body196351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj196348%_)
                                   (not (eq? _%$obj196348%_ '#!void)))
                                 _%g196313196334%_)))
                    (if _%block196305%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block196305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body196351%_))
                        (if (null? _%c-body196351%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body196351%_)))))
                _%tl196316196331%_)
               (_%g196311196321%_ _%g196312196324%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g196311196321%_
                                                    _%g196312196324%_))))
                                           (_%g196311196321%_
                                            _%g196312196324%_)))))
                               (_%g196310196356%_ _%compiled196308%_)))
                           _%tl196275196290%_)))
                      (_%g196270196280%_ _%g196271196283%_)))))
          (_%g196269196359%_ _%stx196268%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self196198%_ _%stx196199%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196198%_ 'state)))
        (let* ((_%g196201196215%_
                (lambda (_%g196202196212%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196202196212%_))))
               (_%g196200196264%_
                (lambda (_%g196202196218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196202196218%_))
                      (let ((_%e196205196220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196202196218%_))))
                        (let ((_%hd196206196223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196205196220%_)))
                              (_%tl196207196225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196205196220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196207196225%_))
                              (let ((_%e196208196228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196207196225%_))))
                                (let ((_%hd196209196231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196208196228%_)))
                                      (_%tl196210196233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196208196228%_))))
                                  ((lambda (_%g196203196236%_
                                            _%g196204196237%_)
                                     (let ((_%key196250%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g196204196237%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key196250%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx196199%_
                                              _%g196204196237%_
                                              _%key196250%_)))
                                       (let* ((_%ctx196252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g196204196237%_)))
                                              (_%code196255%_
                                               (let ((__tmp205291
                                                      (lambda ()
                                                        (let ((__tmp205292
                                                               (##structure-ref
                                                                _%ctx196252%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self196198%_
                                                           __tmp205292)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp205291
                                                  gx#current-expander-context
                                                  _%ctx196252%_)))
                                              (_%rt196257%_
                                               (let ((__tmp205293
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp205293
                                                  _%ctx196252%_)))
                                              (_%loader196259%_
                                               (if _%rt196257%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt196257%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid196261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g196204196237%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self196198%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid196261%_
                                                     (cons _%code196255%_
                                                           _%loader196259%_))))))
                                   _%tl196210196233%_
                                   _%hd196209196231%_)))
                              (_%g196201196215%_ _%g196202196218%_))))
                      (_%g196201196215%_ _%g196202196218%_)))))
          (_%g196200196264%_ _%stx196199%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx196185%_ _%context-chain196186%_)
        (let _%lp196188%_ ((_%ctx196190%_ _%ctx196185%_) (_%path196191%_ '()))
          (let ((_%super196193%_
                 (##structure-ref _%ctx196190%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super196193%_ _%context-chain196186%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx196190%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path196191%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super196193%_
                       'gx#module-context::t))
                    (_%lp196188%_
                     _%super196193%_
                     (cons (car (##structure-ref
                                 _%ctx196190%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path196191%_))
                    (cons (let ((__tmp205294
                                 (##structure-ref
                                  _%ctx196190%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp205294))
                          _%path196191%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp196178%_ ((_%ctx196180%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r196181%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx196180%_ 'gx#module-context::t))
              (_%lp196178%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx196180%_ '3 '#f '#f))
               (cons _%ctx196180%_ _%r196181%_))
              _%r196181%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self195943%_ _%stx195944%_)
        (letrec* ((_%context-chain195946%_ (gxc#current-context-chain))
                  (_%make-import-spec195947%_
                   (lambda (_%in196115%_)
                     (let* ((_%in196116196128%_ _%in196115%_)
                            (_%E196118196131%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in196116196128%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K196119196141%_
                             (lambda (_%phi196134%_
                                      _%name196135%_
                                      _%src-name196136%_
                                      _%src-phi196137%_
                                      _%src-key196138%_
                                      _%src-ctx196139%_)
                               (cons _%phi196134%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name196135%_))
                                           (cons _%src-phi196137%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name196136%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in196116196128%_
                              'gx#module-import::t))
                           (let ((_%e196120196144%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in196116196128%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e196120196144%_
                                    'gx#module-export::t))
                                 (let* ((_%e196123196147%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196120196144%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx196150%_ _%e196123196147%_)
                                        (_%e196124196152%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196120196144%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key196155%_ _%e196124196152%_)
                                        (_%e196125196157%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196120196144%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi196160%_ _%e196125196157%_)
                                        (_%e196126196162%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e196120196144%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name196165%_ _%e196126196162%_)
                                        (_%e196121196167%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in196116196128%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name196170%_ _%e196121196167%_)
                                        (_%e196122196172%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in196116196128%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi196175%_ _%e196122196172%_))
                                   (_%K196119196141%_
                                    _%phi196175%_
                                    _%name196170%_
                                    _%src-name196165%_
                                    _%src-phi196160%_
                                    _%src-key196155%_
                                    _%src-ctx196150%_))
                                 (_%E196118196131%_)))
                           (_%E196118196131%_)))))
                  (_%make-import-path195948%_
                   (lambda (_%ctx196113%_)
                     (gxc#generate-meta-import-path
                      _%ctx196113%_
                      _%context-chain195946%_)))
                  (_%make-import-spec-in195949%_
                   (lambda (_%ctx196110%_ _%in196111%_)
                     (cons 'spec:
                           (cons (_%make-import-path195948%_ _%ctx196110%_)
                                 (reverse _%in196111%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self195943%_ 'state)))
          (let* ((_%g195951195961%_
                  (lambda (_%g195952195958%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195952195958%_))))
                 (_%g195950196107%_
                  (lambda (_%g195952195964%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195952195964%_))
                        (let ((_%e195954195966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195952195964%_))))
                          (let ((_%hd195955195969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195954195966%_)))
                                (_%tl195956195971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195954195966%_))))
                            ((lambda (_%g195953195974%_)
                               (let _%lp195985%_ ((_%rest195987%_
                                                   _%g195953195974%_)
                                                  (_%current-src195988%_ '#f)
                                                  (_%current-in195989%_ '())
                                                  (_%r195990%_ '()))
                                 (let* ((_%rest195991195999%_ _%rest195987%_)
                                        (_%else195993196009%_
                                         (lambda ()
                                           (let ((_%r196007%_
                                                  (if _%current-src195988%_
                                                      (cons (_%make-import-spec-in195949%_
                                                             _%current-src195988%_
                                                             _%current-in195989%_)
                                                            _%r195990%_)
                                                      _%r195990%_)))
                                             (cons '%#import
                                                   (reverse _%r196007%_)))))
                                        (_%K195995196095%_
                                         (lambda (_%rest196012%_ _%in196013%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in196013%_
                                                  'gx#module-import::t))
                                               (let* ((_%in196015196022%_
                                                       _%in196013%_)
                                                      (_%E196017196025%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in196015196022%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K196018196033%_
               (lambda (_%src-ctx196028%_)
                 (if (eq? _%current-src195988%_ _%src-ctx196028%_)
                     (_%lp195985%_
                      _%rest196012%_
                      _%current-src195988%_
                      (cons (_%make-import-spec195947%_ _%in196013%_)
                            _%current-in195989%_)
                      _%r195990%_)
                     (if _%current-src195988%_
                         (_%lp195985%_
                          _%rest196012%_
                          _%src-ctx196028%_
                          (cons (_%make-import-spec195947%_ _%in196013%_) '())
                          (cons (_%make-import-spec-in195949%_
                                 _%current-src195988%_
                                 _%current-in195989%_)
                                _%r195990%_))
                         (_%lp195985%_
                          _%rest196012%_
                          _%src-ctx196028%_
                          (cons (_%make-import-spec195947%_ _%in196013%_) '())
                          _%r195990%_)))))
              (_%e196019196036%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in196015196022%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e196019196036%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196020196039%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e196019196036%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx196042%_ _%e196020196039%_))
               (_%K196018196033%_ _%src-ctx196042%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E196017196025%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in196013%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi196045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in196013%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src196047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in196013%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in196087%_
                                                           (let* ((_%g196048196057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path195948%_ _%src196047%_))
                          (_%E196051196061%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g196048196057%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K196053196077%_
                            (lambda (_%path196075%_) _%path196075%_))
                           (_%K196052196067%_
                            (lambda (_%path196065%_)
                              (cons 'in: _%path196065%_))))
                       (if (pair? _%g196048196057%_)
                           (let ((_%tl196055196082%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g196048196057%_)))
                                 (_%hd196054196080%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g196048196057%_))))
                             (if (null? _%tl196055196082%_)
                                 (let ((_%path196085%_ _%hd196054196080%_))
                                   (_%K196053196077%_ _%path196085%_))
                                 (let ((_%path196070%_ _%g196048196057%_))
                                   (_%K196052196067%_ _%path196070%_))))
                           (let ((_%path196070%_ _%g196048196057%_))
                             (_%K196052196067%_ _%path196070%_))))))
                  (_%r196089%_
                   (if _%current-src195988%_
                       (cons (_%make-import-spec-in195949%_
                              _%current-src195988%_
                              _%current-in195989%_)
                             _%r195990%_)
                       _%r195990%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp195985%_
                                                      _%rest196012%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi196045%_)
                                                                _%src-in196087%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi196045%_
                                    (cons _%src-in196087%_ '()))))
                    _%r196089%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in196013%_
                                                          'gx#module-context::t))
                                                       (let ((_%r196093%_
                                                              (if _%current-src195988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in195949%_
                                 _%current-src195988%_
                                 _%current-in195989%_)
                                _%r195990%_)
                          _%r195990%_)))
                 (_%lp195985%_
                  _%rest196012%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path195948%_ _%in196013%_))
                        _%r196093%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest195991195999%_)
                                       (let ((_%hd195996196098%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest195991195999%_)))
                                             (_%tl195997196100%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest195991195999%_))))
                                         (let* ((_%in196103%_
                                                 _%hd195996196098%_)
                                                (_%rest196105%_
                                                 _%tl195997196100%_))
                                           (_%K195995196095%_
                                            _%rest196105%_
                                            _%in196103%_)))
                                       (_%else195993196009%_)))))
                             _%tl195956195971%_)))
                        (_%g195951195961%_ _%g195952195964%_)))))
            (_%g195950196107%_ _%stx195944%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self195753%_ _%stx195754%_)
        (letrec* ((_%context-chain195756%_ (gxc#current-context-chain))
                  (_%make-import-path195757%_
                   (lambda (_%ctx195941%_)
                     (gxc#generate-meta-import-path
                      _%ctx195941%_
                      _%context-chain195756%_))))
          (let* ((_%g195759195769%_
                  (lambda (_%g195760195766%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195760195766%_))))
                 (_%g195758195938%_
                  (lambda (_%g195760195772%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195760195772%_))
                        (let ((_%e195762195774%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195760195772%_))))
                          (let ((_%hd195763195777%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195762195774%_)))
                                (_%tl195764195779%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195762195774%_))))
                            ((lambda (_%g195761195782%_)
                               (let _%lp195793%_ ((_%rest195795%_
                                                   _%g195761195782%_)
                                                  (_%r195796%_ '()))
                                 (let* ((_%rest195797195805%_ _%rest195795%_)
                                        (_%else195799195813%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r195796%_))))
                                        (_%K195801195926%_
                                         (lambda (_%rest195816%_ _%out195817%_)
                                           (let* ((_%out195818195831%_
                                                   _%out195817%_)
                                                  (_%E195821195835%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out195818195831%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K195825195905%_
                                                    (lambda (_%name195901%_
                                                             _%phi195902%_
                                                             _%key195903%_)
                                                      (_%lp195793%_
                                                       _%rest195816%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi195902%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key195903%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name195901%_))
                                             '()))))
                     _%r195796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K195822195885%_
                                                    (lambda (_%phi195839%_
                                                             _%src195840%_)
                                                      (let* ((_%out195880%_
                                                              (if _%src195840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g195841195850%_
                                              (_%make-import-path195757%_
                                               _%src195840%_))
                                             (_%E195844195854%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g195841195850%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K195846195870%_
                                               (lambda (_%path195868%_)
                                                 _%path195868%_))
                                              (_%K195845195860%_
                                               (lambda (_%path195858%_)
                                                 (cons 'in: _%path195858%_))))
                                          (if (pair? _%g195841195850%_)
                                              (let ((_%tl195848195875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g195841195850%_)))
                                                    (_%hd195847195873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g195841195850%_))))
                                                (if (null? _%tl195848195875%_)
                                                    (let ((_%path195878%_
                                                           _%hd195847195873%_))
                                                      (_%K195846195870%_
                                                       _%path195878%_))
                                                    (let ((_%path195863%_
                                                           _%g195841195850%_))
                                                      (_%K195845195860%_
                                                       _%path195863%_))))
                                              (let ((_%path195863%_
                                                     _%g195841195850%_))
                                                (_%K195845195860%_
                                                 _%path195863%_)))))
                                      '()))
                          '#t))
                     (_%out195882%_
                      (if (fxzero? _%phi195839%_)
                          _%out195880%_
                          (cons 'phi:
                                (cons _%phi195839%_
                                      (cons _%out195880%_ '()))))))
                (_%lp195793%_
                 _%rest195816%_
                 (cons _%out195882%_ _%r195796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match195820195898%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out195818195831%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e195823195888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out195818195831%_
                               '1
                               '#f
                               '#f)))
                           (_%e195824195893%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out195818195831%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src195891%_ _%e195823195888%_)
                            (_%phi195896%_ _%e195824195893%_))
                        (_%K195822195885%_ _%phi195896%_ _%src195891%_)))
                    (_%E195821195835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out195818195831%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e195826195908%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out195818195831%_
                        '1
                        '#f
                        '#f)))
                    (_%e195827195911%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out195818195831%_
                        '2
                        '#f
                        '#f)))
                    (_%e195828195916%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out195818195831%_
                        '3
                        '#f
                        '#f)))
                    (_%e195829195921%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out195818195831%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key195914%_ _%e195827195911%_)
                     (_%phi195919%_ _%e195828195916%_)
                     (_%name195924%_ _%e195829195921%_))
                 (_%K195825195905%_
                  _%name195924%_
                  _%phi195919%_
                  _%key195914%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match195820195898%_))))))))
                                   (if (pair? _%rest195797195805%_)
                                       (let ((_%hd195802195929%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest195797195805%_)))
                                             (_%tl195803195931%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest195797195805%_))))
                                         (let* ((_%out195934%_
                                                 _%hd195802195929%_)
                                                (_%rest195936%_
                                                 _%tl195803195931%_))
                                           (_%K195801195926%_
                                            _%rest195936%_
                                            _%out195934%_)))
                                       (_%else195799195813%_)))))
                             _%tl195764195779%_)))
                        (_%g195759195769%_ _%g195760195772%_)))))
            (_%g195758195938%_ _%stx195754%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self195714%_ _%stx195715%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self195714%_ 'state)))
        (let* ((_%g195717195727%_
                (lambda (_%g195718195724%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195718195724%_))))
               (_%g195716195750%_
                (lambda (_%g195718195730%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195718195730%_))
                      (let ((_%e195720195732%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195718195730%_))))
                        (let ((_%hd195721195735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195720195732%_)))
                              (_%tl195722195737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195720195732%_))))
                          ((lambda (_%g195719195740%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g195719195740%_)))
                           _%tl195722195737%_)))
                      (_%g195717195727%_ _%g195718195730%_)))))
          (_%g195716195750%_ _%stx195715%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self195589%_ _%stx195590%_)
        (letrec ((_%generate1195592%_
                  (lambda (_%id195709%_ _%eid195710%_)
                    (let ((_%eid195712%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid195710%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid195712%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx195590%_
                             _%eid195712%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id195709%_))
                            (cons _%eid195712%_ '()))))))
          (let* ((_%g195594195622%_
                  (lambda (_%g195595195619%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195595195619%_))))
                 (_%g195593195706%_
                  (lambda (_%g195595195625%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195595195625%_))
                        (let ((_%e195598195627%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195595195625%_))))
                          (let ((_%hd195599195630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195598195627%_)))
                                (_%tl195600195632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195598195627%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl195600195632%_))
                                (let ((_g205295_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl195600195632%_
                                          '0))))
                                  (begin
                                    (let ((_g205296_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g205295_)
                                                 (##values-length _g205295_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g205296_ 2)))
                                          (error "Context expects 2 values"
                                                 _g205296_)))
                                    (let ((_%target195601195635%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205295_ 0)))
                                          (_%tl195603195637%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g205295_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195603195637%_))
                                          (letrec ((_%loop195604195640%_
                                                    (lambda (_%hd195602195643%_
                                                             _%eid195608195645%_
                                                             _%id195609195646%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd195602195643%_))
                                                          (let ((_%e195605195648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd195602195643%_))))
                    (let ((_%lp-hd195606195651%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195605195648%_)))
                          (_%lp-tl195607195653%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195605195648%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd195606195651%_))
                          (let ((_%e195612195656%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd195606195651%_))))
                            (let ((_%hd195613195659%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195612195656%_)))
                                  (_%tl195614195661%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195612195656%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195614195661%_))
                                  (let ((_%e195615195664%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl195614195661%_))))
                                    (let ((_%hd195616195667%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195615195664%_)))
                                          (_%tl195617195669%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195615195664%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl195617195669%_))
                                          (_%loop195604195640%_
                                           _%lp-tl195607195653%_
                                           (cons _%hd195616195667%_
                                                 _%eid195608195645%_)
                                           (cons _%hd195613195659%_
                                                 _%id195609195646%_))
                                          (_%g195594195622%_
                                           _%g195595195625%_))))
                                  (_%g195594195622%_ _%g195595195625%_))))
                          (_%g195594195622%_ _%g195595195625%_))))
                  (let ((_%eid195610195672%_ (reverse _%eid195608195645%_))
                        (_%id195611195673%_ (reverse _%id195609195646%_)))
                    ((lambda (_%g195596195675%_ _%g195597195676%_)
                       (cons '%#extern
                             (map _%generate1195592%_
                                  (let ((__tmp205297
                                         (lambda (_%g195691195694%_
                                                  _%g195692195696%_)
                                           (cons _%g195691195694%_
                                                 _%g195692195696%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp205297
                                     '()
                                     _%g195597195676%_))
                                  (let ((__tmp205298
                                         (lambda (_%g195698195701%_
                                                  _%g195699195703%_)
                                           (cons _%g195698195701%_
                                                 _%g195699195703%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp205298
                                     '()
                                     _%g195596195675%_)))))
                     _%eid195610195672%_
                     _%id195611195673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop195604195640%_
                                             _%target195601195635%_
                                             '()
                                             '()))
                                          (_%g195594195622%_
                                           _%g195595195625%_)))))
                                (_%g195594195622%_ _%g195595195625%_))))
                        (_%g195594195622%_ _%g195595195625%_)))))
            (_%g195593195706%_ _%stx195590%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self195378%_ _%stx195379%_)
        (letrec ((_%generate1195381%_
                  (lambda (_%id195583%_)
                    (let ((_%eid195585%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id195583%_)))
                          (_%ident195586%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id195583%_)))
                          (_%props195587%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id195583%_))))
                      (cons '%#define-runtime
                            (cons _%ident195586%_
                                  (cons _%eid195585%_ _%props195587%_))))))
                 (_%generate*195382%_
                  (lambda (_%all195551%_)
                    (let* ((_%all195552195560%_ _%all195551%_)
                           (_%else195554195568%_
                            (lambda () (cons '%#begin _%all195551%_)))
                           (_%K195556195573%_
                            (lambda (_%one195571%_) _%one195571%_)))
                      (if (pair? _%all195552195560%_)
                          (let ((_%hd195557195576%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all195552195560%_)))
                                (_%tl195558195578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all195552195560%_))))
                            (let ((_%one195581%_ _%hd195557195576%_))
                              (if (null? _%tl195558195578%_)
                                  (_%K195556195573%_ _%one195581%_)
                                  (_%else195554195568%_))))
                          (_%else195554195568%_))))))
          (let* ((_%g195384195401%_
                  (lambda (_%g195385195398%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g195385195398%_))))
                 (_%g195383195548%_
                  (lambda (_%g195385195404%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g195385195404%_))
                        (let ((_%e195388195406%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g195385195404%_))))
                          (let ((_%hd195389195409%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195388195406%_)))
                                (_%tl195390195411%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195388195406%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195390195411%_))
                                (let ((_%e195391195414%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195390195411%_))))
                                  (let ((_%hd195392195417%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195391195414%_)))
                                        (_%tl195393195419%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195391195414%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195393195419%_))
                                        (let ((_%e195394195422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl195393195419%_))))
                                          (let ((_%hd195395195425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195394195422%_)))
                                                (_%tl195396195427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195394195422%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195396195427%_))
                                                ((lambda (_%g195386195430%_
                                                          _%g195387195431%_)
                                                   (let _%lp195447%_ ((_%rest195449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g195387195431%_)
                              (_%r195450%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx205033205034%_
                                                             _%rest195449%_)
                                                            (_%g195455195472%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx205033205034%_)))))
               (let ((_%__kont205035205036%_
                      (lambda (_%g195457195535%_)
                        (_%lp195447%_ _%g195457195535%_ _%r195450%_)))
                     (_%__kont205037205038%_
                      (lambda (_%g195462195508%_ _%g195463195509%_)
                        (_%lp195447%_
                         _%g195462195508%_
                         (cons (_%generate1195381%_ _%g195463195509%_)
                               _%r195450%_))))
                     (_%__kont205039205040%_
                      (lambda (_%g195467195484%_)
                        (_%generate*195382%_
                         (let ((__tmp205299
                                (cons (_%generate1195381%_ _%g195467195484%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp205299 _%r195450%_)))))
                     (_%__kont205041205042%_
                      (lambda ()
                        (_%generate*195382%_ (reverse! _%r195450%_)))))
                 (let ((_%g195453195495%_
                        (lambda ()
                          (let ((_%g195467195484%_ _%__stx205033205034%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g195467195484%_))
                                (_%__kont205039205040%_ _%g195467195484%_)
                                (_%__kont205041205042%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx205033205034%_))
                       (let ((_%e195458195524%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx205033205034%_))))
                         (let ((_%tl195460195529%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e195458195524%_)))
                               (_%hd195459195527%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e195458195524%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd195459195527%_))
                               (let ((_%e195461195532%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd195459195527%_))))
                                 (if (equal? _%e195461195532%_ '#f)
                                     (_%__kont205035205036%_
                                      _%tl195460195529%_)
                                     (_%__kont205037205038%_
                                      _%tl195460195529%_
                                      _%hd195459195527%_)))
                               (_%__kont205037205038%_
                                _%tl195460195529%_
                                _%hd195459195527%_))))
                       (let () (declare (not safe)) (_%g195453195495%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd195395195425%_
                                                 _%hd195392195417%_)
                                                (_%g195384195401%_
                                                 _%g195385195404%_))))
                                        (_%g195384195401%_
                                         _%g195385195404%_))))
                                (_%g195384195401%_ _%g195385195404%_))))
                        (_%g195384195401%_ _%g195385195404%_)))))
            (_%g195383195548%_ _%stx195379%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self195275%_ _%stx195276%_)
        (let* ((_%g195278195295%_
                (lambda (_%g195279195292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195279195292%_))))
               (_%g195277195375%_
                (lambda (_%g195279195298%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195279195298%_))
                      (let ((_%e195282195300%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195279195298%_))))
                        (let ((_%hd195283195303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195282195300%_)))
                              (_%tl195284195305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195282195300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195284195305%_))
                              (let ((_%e195285195308%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195284195305%_))))
                                (let ((_%hd195286195311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195285195308%_)))
                                      (_%tl195287195313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195285195308%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195287195313%_))
                                      (let ((_%e195288195316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195287195313%_))))
                                        (let ((_%hd195289195319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195288195316%_)))
                                              (_%tl195290195321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195288195316%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195290195321%_))
                                              ((lambda (_%g195280195324%_
                                                        _%g195281195325%_)
                                                 (let* ((_%eid195340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g195281195325%_)))
                                                        (_%phi195342%_
                                                         (let ((__tmp205300
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp205300 '1)))
                (_%block195344%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self195275%_ 'state))
                  _%phi195342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g195347195354%_
                                                           (lambda (_%g195348195351%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g195348195351%_))))
                  (_%g195346195372%_
                   (lambda (_%g195348195357%_)
                     ((lambda (_%g195349195359%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self195275%_ 'state))
                         _%phi195342%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g195349195359%_
                                     (cons _%g195280195324%_ '())))))
                      _%g195348195357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195346195372%_
                                                      _%eid195340%_))
                                                   (if _%block195344%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block195344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g195281195325%_))
                                             (cons _%eid195340%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g195281195325%_))
                           (cons _%eid195340%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195289195319%_
                                               _%hd195286195311%_)
                                              (_%g195278195295%_
                                               _%g195279195298%_))))
                                      (_%g195278195295%_ _%g195279195298%_))))
                              (_%g195278195295%_ _%g195279195298%_))))
                      (_%g195278195295%_ _%g195279195298%_)))))
          (_%g195277195375%_ _%stx195276%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self195207%_ _%stx195208%_)
        (let* ((_%g195210195227%_
                (lambda (_%g195211195224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195211195224%_))))
               (_%g195209195272%_
                (lambda (_%g195211195230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195211195230%_))
                      (let ((_%e195214195232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195211195230%_))))
                        (let ((_%hd195215195235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195214195232%_)))
                              (_%tl195216195237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195214195232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195216195237%_))
                              (let ((_%e195217195240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195216195237%_))))
                                (let ((_%hd195218195243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195217195240%_)))
                                      (_%tl195219195245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195217195240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195219195245%_))
                                      (let ((_%e195220195248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195219195245%_))))
                                        (let ((_%hd195221195251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195220195248%_)))
                                              (_%tl195222195253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195220195248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195222195253%_))
                                              ((lambda (_%g195212195256%_
                                                        _%g195213195257%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g195213195257%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g195212195256%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd195221195251%_
                                               _%hd195218195243%_)
                                              (_%g195210195227%_
                                               _%g195211195230%_))))
                                      (_%g195210195227%_ _%g195211195230%_))))
                              (_%g195210195227%_ _%g195211195230%_))))
                      (_%g195210195227%_ _%g195211195230%_)))))
          (_%g195209195272%_ _%stx195208%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self195204%_ _%stx195205%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self195204%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx195205%_)
        (gxc#generate-meta-define-values% _%self195204%_ _%stx195205%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self195201%_ _%stx195202%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self195201%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx195202%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp205302 (list)) (__tmp205301 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp205302
         '(src n open blocks)
         __tmp205301
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args195198%_
        (apply make-instance gxc#meta-state::t _%$args195198%_)))
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
      (lambda (_%self195184%_ _%ctx195185%_)
        (let ((_%self195188%_ _%self195184%_))
          (if (let ((__tmp205303
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195188%_))))
                (declare (not safe))
                (##fx< '4 __tmp205303))
              (begin
                (let ((__tmp205304
                       (let ((__tmp205305
                              (##structure-ref
                               _%ctx195185%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp205305))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195188%_
                   __tmp205304
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self195188%_ '1 '2 '#f '#f))
                (let ((__tmp205306
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195188%_
                   __tmp205306
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self195188%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp205307
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195188%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self195188%_
                       '4
                       __tmp205307))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp205309 (list)) (__tmp205308 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp205309
         '(ctx phi n code)
         __tmp205308
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args195059%_
        (apply make-instance gxc#meta-state-block::t _%$args195059%_)))
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
      (lambda (_%state195019%_ _%phi195020%_)
        (let* ((_%state195021195029%_ _%state195019%_)
               (_%E195023195032%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state195021195029%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K195024195041%_
                (lambda (_%open195035%_ _%n195036%_ _%src195037%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open195035%_ _%phi195020%_))
                      '#f
                      (let ((_%block-ref195039%_
                             (let ((__tmp205310 (number->string _%n195036%_)))
                               (declare (not safe))
                               (##string-append
                                _%src195037%_
                                '"~"
                                __tmp205310))))
                        (##structure-set!
                         _%state195019%_
                         (let () (declare (not safe)) (##fx+ _%n195036%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp205311
                               (let ((__tmp205312
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp205312
                                  _%phi195020%_
                                  _%n195036%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open195035%_ _%phi195020%_ __tmp205311))
                        _%block-ref195039%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state195021195029%_
                 'gxc#meta-state::t))
              (let* ((_%e195025195044%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195021195029%_
                         '1
                         '#f
                         '#f)))
                     (_%src195047%_ _%e195025195044%_)
                     (_%e195026195049%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195021195029%_
                         '2
                         '#f
                         '#f)))
                     (_%n195052%_ _%e195026195049%_)
                     (_%e195027195054%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state195021195029%_
                         '3
                         '#f
                         '#f)))
                     (_%open195057%_ _%e195027195054%_))
                (_%K195024195041%_ _%open195057%_ _%n195052%_ _%src195047%_))
              (_%E195023195032%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state195013%_ _%phi195014%_ _%stx195015%_)
        (let ((_%block195017%_
               (let ((__tmp205313
                      (##structure-ref
                       _%state195013%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp205313 _%phi195014%_))))
          (##structure-set!
           _%block195017%_
           (cons _%stx195015%_
                 (##structure-ref
                  _%block195017%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state195007%_)
        (##structure-set!
         _%state195007%_
         (let ((__tmp205316
                (lambda (_%_195009%_ _%block195010%_ _%r195011%_)
                  (cons _%block195010%_ _%r195011%_)))
               (__tmp205315
                (##structure-ref _%state195007%_ '4 gxc#meta-state::t '#f))
               (__tmp205314
                (##structure-ref _%state195007%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp205316 __tmp205315 __tmp205314))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state195007%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state194960%_)
        (gxc#meta-state-end-phi! _%state194960%_)
        (let ((__tmp205318
               (lambda (_%block194962%_ _%r194963%_)
                 (let* ((_%block194964194973%_ _%block194962%_)
                        (_%E194966194976%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block194964194973%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K194967194984%_
                         (lambda (_%code194979%_
                                  _%n194980%_
                                  _%phi194981%_
                                  _%ctx194982%_)
                           (if (null? _%code194979%_)
                               _%r194963%_
                               (cons (cons _%ctx194982%_
                                           (cons _%phi194981%_
                                                 (cons _%n194980%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code194979%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r194963%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block194964194973%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e194968194987%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block194964194973%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx194990%_ _%e194968194987%_)
                              (_%e194969194992%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block194964194973%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi194995%_ _%e194969194992%_)
                              (_%e194970194997%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block194964194973%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n195000%_ _%e194970194997%_)
                              (_%e194971195002%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block194964194973%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code195005%_ _%e194971195002%_))
                         (_%K194967194984%_
                          _%code195005%_
                          _%n195000%_
                          _%phi194995%_
                          _%ctx194990%_))
                       (_%E194966194976%_)))))
              (__tmp205317
               (##structure-ref _%state194960%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp205318 '() __tmp205317))))
    (define gxc#collect-expression-refs
      (lambda (_%stx194956%_)
        (let ((_%ht194958%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht194958%_ _%stx194956%_)
          _%ht194958%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self194899%_ _%stx194900%_)
        (let* ((_%g194902194915%_
                (lambda (_%g194903194912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194903194912%_))))
               (_%g194901194953%_
                (lambda (_%g194903194918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194903194918%_))
                      (let ((_%e194905194920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194903194918%_))))
                        (let ((_%hd194906194923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194905194920%_)))
                              (_%tl194907194925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194905194920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194907194925%_))
                              (let ((_%e194908194928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194907194925%_))))
                                (let ((_%hd194909194931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194908194928%_)))
                                      (_%tl194910194933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194908194928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194910194933%_))
                                      ((lambda (_%g194904194936%_)
                                         (let* ((_%bind194948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g194904194936%_)))
                                                (_%eid194950%_
                                                 (if _%bind194948%_
                                                     (##structure-ref
                                                      _%bind194948%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g194904194936%_))))
                                                (__tmp205319
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self194899%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp205319
                                            _%eid194950%_
                                            _%eid194950%_)))
                                       _%hd194909194931%_)
                                      (_%g194902194915%_ _%g194903194918%_))))
                              (_%g194902194915%_ _%g194903194918%_))))
                      (_%g194902194915%_ _%g194903194918%_)))))
          (_%g194901194953%_ _%stx194900%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self194826%_ _%stx194827%_)
        (let* ((_%g194829194846%_
                (lambda (_%g194830194843%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194830194843%_))))
               (_%g194828194896%_
                (lambda (_%g194830194849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194830194849%_))
                      (let ((_%e194833194851%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194830194849%_))))
                        (let ((_%hd194834194854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194833194851%_)))
                              (_%tl194835194856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194833194851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194835194856%_))
                              (let ((_%e194836194859%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194835194856%_))))
                                (let ((_%hd194837194862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194836194859%_)))
                                      (_%tl194838194864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194836194859%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194838194864%_))
                                      (let ((_%e194839194867%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194838194864%_))))
                                        (let ((_%hd194840194870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194839194867%_)))
                                              (_%tl194841194872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194839194867%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194841194872%_))
                                              ((lambda (_%g194831194875%_
                                                        _%g194832194876%_)
                                                 (let* ((_%bind194891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g194832194876%_)))
                                                        (_%eid194893%_
                                                         (if _%bind194891%_
                                                             (##structure-ref
                                                              _%bind194891%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g194832194876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp205320
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self194826%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp205320
                                                      _%eid194893%_
                                                      _%eid194893%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self194826%_
                                                      _%g194831194875%_))))
                                               _%hd194840194870%_
                                               _%hd194837194862%_)
                                              (_%g194829194846%_
                                               _%g194830194849%_))))
                                      (_%g194829194846%_ _%g194830194849%_))))
                              (_%g194829194846%_ _%g194830194849%_))))
                      (_%g194829194846%_ _%g194830194849%_)))))
          (_%g194828194896%_ _%stx194827%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self194783%_ _%stx194784%_)
        (let* ((_%g194786194796%_
                (lambda (_%g194787194793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194787194793%_))))
               (_%g194785194823%_
                (lambda (_%g194787194799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194787194799%_))
                      (let ((_%e194789194801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194787194799%_))))
                        (let ((_%hd194790194804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194789194801%_)))
                              (_%tl194791194806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194789194801%_))))
                          ((lambda (_%g194788194809%_)
                             (let ((__tmp205321
                                    (lambda (_%g194818194820%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self194783%_
                                         _%g194818194820%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp205321 _%g194788194809%_)))
                           _%tl194791194806%_)))
                      (_%g194786194796%_ _%g194787194799%_)))))
          (_%g194785194823%_ _%stx194784%_))))
    (define gxc#count-values-single%
      (lambda (_%self194780%_ _%stx194781%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self194648%_ _%stx194649%_)
        (let* ((_%__stx205063205064%_ _%stx194649%_)
               (_%g194652194681%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205063205064%_)))))
          (let ((_%__kont205065205066%_
                 (lambda (_%g194654194747%_ _%g194655194748%_)
                   (length (let ((__tmp205322
                                  (lambda (_%g194769194772%_ _%g194770194774%_)
                                    (cons _%g194769194772%_
                                          _%g194770194774%_))))
                             (declare (not safe))
                             (foldr__0 __tmp205322 '() _%g194654194747%_)))))
                (_%__kont205069205070%_ (lambda () '#f)))
            (let ((_%__match205108205109%_
                   (lambda (_%e194656194693%_
                            _%hd194657194696%_
                            _%tl194658194698%_
                            _%e194659194701%_
                            _%hd194660194704%_
                            _%tl194661194706%_
                            _%e194662194709%_
                            _%hd194663194712%_
                            _%tl194664194714%_
                            _%e194665194717%_
                            _%hd194666194720%_
                            _%tl194667194722%_
                            _%__splice205067205068%_
                            _%target194668194725%_
                            _%tl194670194727%_)
                     (letrec ((_%loop194671194730%_
                               (lambda (_%hd194669194733%_
                                        _%rand194675194735%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd194669194733%_))
                                     (let ((_%e194672194737%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd194669194733%_))))
                                       (let ((_%lp-tl194674194742%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e194672194737%_)))
                                             (_%lp-hd194673194740%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e194672194737%_))))
                                         (_%loop194671194730%_
                                          _%lp-tl194674194742%_
                                          (cons _%lp-hd194673194740%_
                                                _%rand194675194735%_))))
                                     (let ((_%rand194676194745%_
                                            (reverse _%rand194675194735%_)))
                                       (let ((_%g194654194747%_
                                              _%rand194676194745%_)
                                             (_%g194655194748%_
                                              _%hd194666194720%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g194655194748%_
                                                'values))
                                             (_%__kont205065205066%_
                                              _%g194654194747%_
                                              _%g194655194748%_)
                                             (_%__kont205069205070%_))))))))
                       (_%loop194671194730%_ _%target194668194725%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205063205064%_))
                  (let ((_%e194656194693%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205063205064%_))))
                    (let ((_%tl194658194698%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194656194693%_)))
                          (_%hd194657194696%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194656194693%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194658194698%_))
                          (let ((_%e194659194701%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194658194698%_))))
                            (let ((_%tl194661194706%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194659194701%_)))
                                  (_%hd194660194704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194659194701%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194660194704%_))
                                  (let ((_%e194662194709%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194660194704%_))))
                                    (let ((_%tl194664194714%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194662194709%_)))
                                          (_%hd194663194712%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194662194709%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194663194712%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194663194712%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194664194714%_))
                                                  (let ((_%e194665194717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194664194714%_))))
                                                    (let ((_%tl194667194722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194665194717%_)))
                                                          (_%hd194666194720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194665194717%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194667194722%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl194661194706%_))
                      (let ((_%__splice205067205068%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl194661194706%_
                                '0))))
                        (let ((_%tl194670194727%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205067205068%_ '1)))
                              (_%target194668194725%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205067205068%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl194670194727%_))
                              (_%__match205108205109%_
                               _%e194656194693%_
                               _%hd194657194696%_
                               _%tl194658194698%_
                               _%e194659194701%_
                               _%hd194660194704%_
                               _%tl194661194706%_
                               _%e194662194709%_
                               _%hd194663194712%_
                               _%tl194664194714%_
                               _%e194665194717%_
                               _%hd194666194720%_
                               _%tl194667194722%_
                               _%__splice205067205068%_
                               _%target194668194725%_
                               _%tl194670194727%_)
                              (_%__kont205069205070%_))))
                      (_%__kont205069205070%_))
                  (_%__kont205069205070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205069205070%_))
                                              (_%__kont205069205070%_))
                                          (_%__kont205069205070%_))))
                                  (_%__kont205069205070%_))))
                          (_%__kont205069205070%_))))
                  (_%__kont205069205070%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self194553%_ _%stx194554%_)
        (let* ((_%g194556194577%_
                (lambda (_%g194557194574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194557194574%_))))
               (_%g194555194645%_
                (lambda (_%g194557194580%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194557194580%_))
                      (let ((_%e194561194582%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194557194580%_))))
                        (let ((_%hd194562194585%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194561194582%_)))
                              (_%tl194563194587%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194561194582%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194563194587%_))
                              (let ((_%e194564194590%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194563194587%_))))
                                (let ((_%hd194565194593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194564194590%_)))
                                      (_%tl194566194595%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194564194590%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194566194595%_))
                                      (let ((_%e194567194598%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194566194595%_))))
                                        (let ((_%hd194568194601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194567194598%_)))
                                              (_%tl194569194603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194567194598%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194569194603%_))
                                              (let ((_%e194570194606%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194569194603%_))))
                                                (let ((_%hd194571194609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194570194606%_)))
                                                      (_%tl194572194611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194570194606%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194572194611%_))
                                                      ((lambda (_%g194558194614%_
                                                                _%g194559194615%_
                                                                _%g194560194616%_)
                                                         (let ((_%c1194633194635%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self194553%_
                           _%g194559194615%_))))
                   (if _%c1194633194635%_
                       (let* ((_%c1194637%_ _%c1194633194635%_)
                              (_%c2194638194640%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self194553%_
                                  _%g194558194614%_))))
                         (if _%c2194638194640%_
                             (let ((_%c2194642%_ _%c2194638194640%_))
                               (if (fx= _%c1194637%_ _%c2194642%_)
                                   _%c1194637%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd194571194609%_
               _%hd194568194601%_
               _%hd194565194593%_)
              (_%g194556194577%_ _%g194557194580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g194556194577%_
                                               _%g194557194580%_))))
                                      (_%g194556194577%_ _%g194557194580%_))))
                              (_%g194556194577%_ _%g194557194580%_))))
                      (_%g194556194577%_ _%g194557194580%_)))))
          (_%g194555194645%_ _%stx194554%_))))))
