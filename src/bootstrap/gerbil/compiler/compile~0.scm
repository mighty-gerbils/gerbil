(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1781119051)
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
      (make-class-type
       'gxc#::collect-bindings::t
       '::collect-bindings
       (list gxc#::void::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::collect-bindings?
      (make-class-predicate gxc#::collect-bindings::t))
    (define gxc#make-::collect-bindings
      (lambda _%$args183591%_
        (apply make-instance gxc#::collect-bindings::t _%$args183591%_)))
    (define gxc#::collect-bindings-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method! gxc#::collect-bindings::t '%#begin gxc#apply-begin%)
         (bind-method!
          gxc#::collect-bindings::t
          '%#begin-syntax
          gxc#apply-begin-syntax%)
         (bind-method! gxc#::collect-bindings::t '%#module gxc#apply-module%)
         (bind-method!
          gxc#::collect-bindings::t
          '%#define-values
          gxc#collect-bindings-define-values%)
         (bind-method!
          gxc#::collect-bindings::t
          '%#define-syntax
          gxc#collect-bindings-define-syntax%)
         (seal-class! gxc#::collect-bindings::t))))
    (define gxc#apply-collect-bindings
      (lambda (_%stx183583%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let ((_%self183586%_ (gxc#make-::collect-bindings)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self183586%_ _%stx183583%_))
           gxc#current-compile-method
           _%self183586%_))))
    (define gxc#::lift-modules::t
      (make-class-type
       'gxc#::lift-modules::t
       '::lift-modules
       (list gxc#::void::t)
       '(modules)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::lift-modules? (make-class-predicate gxc#::lift-modules::t))
    (define gxc#make-::lift-modules
      (lambda _%$args183580%_
        (apply make-instance gxc#::lift-modules::t _%$args183580%_)))
    (define gxc#::lift-modules-modules
      (make-class-slot-accessor gxc#::lift-modules::t 'modules))
    (define gxc#::lift-modules-modules-set!
      (make-class-slot-mutator gxc#::lift-modules::t 'modules))
    (define gxc#&::lift-modules-modules
      (make-class-slot-unchecked-accessor gxc#::lift-modules::t 'modules))
    (define gxc#&::lift-modules-modules-set!
      (make-class-slot-unchecked-mutator gxc#::lift-modules::t 'modules))
    (define gxc#::lift-modules-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (bind-method! gxc#::lift-modules::t '%#begin gxc#apply-begin%)
         (bind-method!
          gxc#::lift-modules::t
          '%#module
          gxc#lift-modules-module%)
         (seal-class! gxc#::lift-modules::t))))
    (define gxc#apply-lift-modules
      (let ((_%$%kw-lambda183550183573%_
             (let ((_%$%kw-lambda-main183551183566%_
                    (lambda (_%@@keywords183555%_
                             _%$%modules183552183556%_
                             _%stx183557%_)
                      (let ((_%modules183560%_
                             (if (eq? _%$%modules183552183556%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'modules:)
                                 _%$%modules183552183556%_)))
                        (force gxc#::lift-modules-bind-methods!)
                        (let ((_%self183562%_
                               (gxc#make-::lift-modules
                                'modules:
                                _%modules183560%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self183562%_ _%stx183557%_))
                           gxc#current-compile-method
                           _%self183562%_))))))
               (lambda (_%@@keywords183569%_ . _%args183570%_)
                 (apply _%$%kw-lambda-main183551183566%_
                        _%@@keywords183569%_
                        (symbolic-table-ref
                         _%@@keywords183569%_
                         'modules:
                         absent-value)
                        _%args183570%_)))))
        (lambda _%$%args183553183576%_
          (apply keyword-dispatch
                 '#(modules:)
                 _%$%kw-lambda183550183573%_
                 _%$%args183553183576%_))))
    (define gxc#::find-runtime-code::t
      (make-class-type
       'gxc#::find-runtime-code::t
       '::find-runtime-code
       (list)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::find-runtime-code?
      (make-class-predicate gxc#::find-runtime-code::t))
    (define gxc#make-::find-runtime-code
      (lambda _%$args183548%_
        (apply make-instance gxc#::find-runtime-code::t _%$args183548%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::find-runtime-code::t
          '%#begin
          gxc#find-runtime-begin%)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#begin-syntax
          gxc#false-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#begin-foreign
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#begin-annotation
          gxc#true-method)
         (bind-method! gxc#::find-runtime-code::t '%#module gxc#false-method)
         (bind-method! gxc#::find-runtime-code::t '%#import gxc#false-method)
         (bind-method! gxc#::find-runtime-code::t '%#export gxc#false-method)
         (bind-method! gxc#::find-runtime-code::t '%#provide gxc#false-method)
         (bind-method! gxc#::find-runtime-code::t '%#extern gxc#false-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#define-values
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#define-syntax
          gxc#false-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#define-alias
          gxc#false-method)
         (bind-method! gxc#::find-runtime-code::t '%#declare gxc#false-method)
         (bind-method! gxc#::find-runtime-code::t '%#lambda gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#case-lambda
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#let-values
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#letrec-values
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#letrec*-values
          gxc#true-method)
         (bind-method! gxc#::find-runtime-code::t '%#quote gxc#true-method)
         (bind-method! gxc#::find-runtime-code::t '%#call gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#call-unchecked
          gxc#true-method)
         (bind-method! gxc#::find-runtime-code::t '%#if gxc#true-method)
         (bind-method! gxc#::find-runtime-code::t '%#ref gxc#true-method)
         (bind-method! gxc#::find-runtime-code::t '%#set! gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-instance?
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-direct-instance?
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-ref
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-set!
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-direct-ref
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-direct-set!
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-unchecked-ref
          gxc#true-method)
         (bind-method!
          gxc#::find-runtime-code::t
          '%#struct-unchecked-set!
          gxc#true-method)
         (seal-class! gxc#::find-runtime-code::t))))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx183540%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let ((_%self183543%_ (gxc#make-::find-runtime-code)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self183543%_ _%stx183540%_))
           gxc#current-compile-method
           _%self183543%_))))
    (define gxc#::find-lambda-expression::t
      (make-class-type
       'gxc#::find-lambda-expression::t
       '::find-lambda-expression
       (list gxc#::false::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::find-lambda-expression?
      (make-class-predicate gxc#::find-lambda-expression::t))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args183537%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args183537%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (bind-method!
          gxc#::find-lambda-expression::t
          '%#begin
          gxc#apply-last-begin%)
         (bind-method!
          gxc#::find-lambda-expression::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method!
          gxc#::find-lambda-expression::t
          '%#lambda
          gxc#identity-method)
         (bind-method!
          gxc#::find-lambda-expression::t
          '%#case-lambda
          gxc#identity-method)
         (bind-method!
          gxc#::find-lambda-expression::t
          '%#let-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::find-lambda-expression::t
          '%#letrec-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::find-lambda-expression::t
          '%#letrec*-values
          gxc#apply-body-last-let-values%)
         (seal-class! gxc#::find-lambda-expression::t))))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx183529%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let ((_%self183532%_ (gxc#make-::find-lambda-expression)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self183532%_ _%stx183529%_))
           gxc#current-compile-method
           _%self183532%_))))
    (define gxc#::count-values::t
      (make-class-type
       'gxc#::count-values::t
       '::count-values
       (list gxc#::false-expression::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::count-values? (make-class-predicate gxc#::count-values::t))
    (define gxc#make-::count-values
      (lambda _%$args183526%_
        (apply make-instance gxc#::count-values::t _%$args183526%_)))
    (define gxc#::count-values-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::false-expression-bind-methods!)
         (bind-method! gxc#::count-values::t '%#begin gxc#apply-last-begin%)
         (bind-method!
          gxc#::count-values::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method!
          gxc#::count-values::t
          '%#lambda
          gxc#count-values-single%)
         (bind-method!
          gxc#::count-values::t
          '%#case-lambda
          gxc#count-values-single%)
         (bind-method!
          gxc#::count-values::t
          '%#let-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::count-values::t
          '%#letrec-values
          gxc#apply-body-last-let-values%)
         (bind-method!
          gxc#::count-values::t
          '%#letrec*-values
          gxc#apply-body-last-let-values%)
         (bind-method! gxc#::count-values::t '%#quote gxc#count-values-single%)
         (bind-method! gxc#::count-values::t '%#call gxc#count-values-call%)
         (bind-method!
          gxc#::count-values::t
          '%#call-unchecked
          gxc#count-values-call%)
         (bind-method! gxc#::count-values::t '%#if gxc#count-values-if%)
         (seal-class! gxc#::count-values::t))))
    (define gxc#apply-count-values
      (lambda (_%stx183518%_)
        (force gxc#::count-values-bind-methods!)
        (let ((_%self183521%_ (gxc#make-::count-values)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self183521%_ _%stx183518%_))
           gxc#current-compile-method
           _%self183521%_))))
    (define gxc#::generate-runtime-empty::t
      (make-class-type
       'gxc#::generate-runtime-empty::t
       '::generate-runtime-empty
       (list)
       '()
       '()
       '#f))
    (define gxc#::generate-runtime-empty?
      (make-class-predicate gxc#::generate-runtime-empty::t))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args183515%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args183515%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#begin
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#begin-syntax
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#begin-foreign
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#begin-annotation
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#module
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#import
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#export
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#provide
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#extern
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#define-values
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#define-syntax
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#define-alias
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#define-runtime
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#declare
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#lambda
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#case-lambda
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#let-values
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#letrec-values
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#letrec*-values
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#quote
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#call
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#call-unchecked
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#if
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#ref
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#set!
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-instance?
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-direct-instance?
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-ref
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-set!
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-direct-ref
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-direct-set!
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-unchecked-ref
          gxc#generate-runtime-empty)
         (bind-method!
          gxc#::generate-runtime-empty::t
          '%#struct-unchecked-set!
          gxc#generate-runtime-empty))))
    (define gxc#::generate-loader::t
      (make-class-type
       'gxc#::generate-loader::t
       '::generate-loader
       (list gxc#::generate-runtime-empty::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::generate-loader?
      (make-class-predicate gxc#::generate-loader::t))
    (define gxc#make-::generate-loader
      (lambda _%$args183511%_
        (apply make-instance gxc#::generate-loader::t _%$args183511%_)))
    (define gxc#::generate-loader-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::generate-runtime-empty-bind-methods!)
         (bind-method!
          gxc#::generate-loader::t
          '%#begin
          gxc#generate-runtime-begin%)
         (bind-method!
          gxc#::generate-loader::t
          '%#import
          gxc#generate-runtime-loader-import%)
         (seal-class! gxc#::generate-loader::t))))
    (define gxc#apply-generate-loader
      (lambda (_%stx183503%_)
        (force gxc#::generate-loader-bind-methods!)
        (let ((_%self183506%_ (gxc#make-::generate-loader)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self183506%_ _%stx183503%_))
           gxc#current-compile-method
           _%self183506%_))))
    (define gxc#::generate-runtime::t
      (make-class-type
       'gxc#::generate-runtime::t
       '::generate-runtime
       (list gxc#::generate-runtime-empty::t)
       '()
       '()
       '#f))
    (define gxc#::generate-runtime?
      (make-class-predicate gxc#::generate-runtime::t))
    (define gxc#make-::generate-runtime
      (lambda _%$args183500%_
        (apply make-instance gxc#::generate-runtime::t _%$args183500%_)))
    (define gxc#::generate-runtime-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::generate-runtime-empty-bind-methods!)
         (bind-method!
          gxc#::generate-runtime::t
          '%#begin
          gxc#generate-runtime-begin%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#begin-foreign
          gxc#generate-runtime-begin-foreign%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#begin-annotation
          gxc#generate-runtime-begin-annotation%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#define-values
          gxc#generate-runtime-define-values%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#declare
          gxc#generate-runtime-declare%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#lambda
          gxc#generate-runtime-lambda%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#case-lambda
          gxc#generate-runtime-case-lambda%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#let-values
          gxc#generate-runtime-let-values%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#letrec-values
          gxc#generate-runtime-letrec-values%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#letrec*-values
          gxc#generate-runtime-letrec*-values%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#quote
          gxc#generate-runtime-quote%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#quote-syntax
          gxc#generate-runtime-quote-syntax%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#call
          gxc#generate-runtime-call%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#call-unchecked
          gxc#generate-runtime-call-unchecked%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#if
          gxc#generate-runtime-if%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#ref
          gxc#generate-runtime-ref%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#set!
          gxc#generate-runtime-setq%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-instance?
          gxc#generate-runtime-struct-instancep%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-direct-instance?
          gxc#generate-runtime-struct-direct-instancep%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-ref
          gxc#generate-runtime-struct-ref%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-set!
          gxc#generate-runtime-struct-setq%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-direct-ref
          gxc#generate-runtime-struct-direct-ref%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-direct-set!
          gxc#generate-runtime-struct-direct-setq%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-unchecked-ref
          gxc#generate-runtime-struct-unchecked-ref%)
         (bind-method!
          gxc#::generate-runtime::t
          '%#struct-unchecked-set!
          gxc#generate-runtime-struct-unchecked-setq%))))
    (define gxc#apply-generate-runtime
      (lambda (_%stx183492%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let ((_%self183495%_ (gxc#make-::generate-runtime)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self183495%_ _%stx183492%_))
           gxc#current-compile-method
           _%self183495%_))))
    (define gxc#::generate-runtime-phi::t
      (make-class-type
       'gxc#::generate-runtime-phi::t
       '::generate-runtime-phi
       (list gxc#::generate-runtime::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::generate-runtime-phi?
      (make-class-predicate gxc#::generate-runtime-phi::t))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args183489%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args183489%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::generate-runtime-bind-methods!)
         (bind-method!
          gxc#::generate-runtime-phi::t
          '%#define-runtime
          gxc#generate-runtime-phi-define-runtime%)
         (seal-class! gxc#::generate-runtime-phi::t))))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx183481%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let ((_%self183484%_ (gxc#make-::generate-runtime-phi)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self183484%_ _%stx183481%_))
           gxc#current-compile-method
           _%self183484%_))))
    (define gxc#::collect-expression-refs::t
      (make-class-type
       'gxc#::collect-expression-refs::t
       '::collect-expression-refs
       (list)
       '(table)
       '()
       '#f))
    (define gxc#::collect-expression-refs?
      (make-class-predicate gxc#::collect-expression-refs::t))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args183478%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args183478%_)))
    (define gxc#::collect-expression-refs-table
      (make-class-slot-accessor gxc#::collect-expression-refs::t 'table))
    (define gxc#::collect-expression-refs-table-set!
      (make-class-slot-mutator gxc#::collect-expression-refs::t 'table))
    (define gxc#&::collect-expression-refs-table
      (make-class-slot-unchecked-accessor
       gxc#::collect-expression-refs::t
       'table))
    (define gxc#&::collect-expression-refs-table-set!
      (make-class-slot-unchecked-mutator
       gxc#::collect-expression-refs::t
       'table))
    (define gxc#::collect-expression-refs-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#begin
          gxc#apply-begin%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#begin-annotation
          gxc#apply-begin-annotation%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#lambda
          gxc#apply-body-lambda%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#case-lambda
          gxc#apply-body-case-lambda%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#let-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#letrec-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#letrec*-values
          gxc#apply-body-let-values%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#quote
          gxc#void-method)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#quote-syntax
          gxc#void-method)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#call
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#call-unchecked
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#if
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#ref
          gxc#collect-refs-ref%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#set!
          gxc#collect-refs-setq%)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-instance?
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-direct-instance?
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-set!
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-direct-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-direct-set!
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-unchecked-ref
          gxc#apply-operands)
         (bind-method!
          gxc#::collect-expression-refs::t
          '%#struct-unchecked-set!
          gxc#apply-operands))))
    (define gxc#apply-collect-expression-refs
      (let ((_%$%kw-lambda183448183471%_
             (let ((_%$%kw-lambda-main183449183464%_
                    (lambda (_%@@keywords183453%_
                             _%$%table183450183454%_
                             _%stx183455%_)
                      (let ((_%table183458%_
                             (if (eq? _%$%table183450183454%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'table:)
                                 _%$%table183450183454%_)))
                        (force gxc#::collect-expression-refs-bind-methods!)
                        (let ((_%self183460%_
                               (gxc#make-::collect-expression-refs
                                'table:
                                _%table183458%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self183460%_ _%stx183455%_))
                           gxc#current-compile-method
                           _%self183460%_))))))
               (lambda (_%@@keywords183467%_ . _%args183468%_)
                 (apply _%$%kw-lambda-main183449183464%_
                        _%@@keywords183467%_
                        (symbolic-table-ref
                         _%@@keywords183467%_
                         'table:
                         absent-value)
                        _%args183468%_)))))
        (lambda _%$%args183451183474%_
          (apply keyword-dispatch
                 '#(table:)
                 _%$%kw-lambda183448183471%_
                 _%$%args183451183474%_))))
    (define gxc#::generate-meta::t
      (make-class-type
       'gxc#::generate-meta::t
       '::generate-meta
       (list gxc#::void-expression::t)
       '(state)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::generate-meta? (make-class-predicate gxc#::generate-meta::t))
    (define gxc#make-::generate-meta
      (lambda _%$args183446%_
        (apply make-instance gxc#::generate-meta::t _%$args183446%_)))
    (define gxc#::generate-meta-state
      (make-class-slot-accessor gxc#::generate-meta::t 'state))
    (define gxc#::generate-meta-state-set!
      (make-class-slot-mutator gxc#::generate-meta::t 'state))
    (define gxc#&::generate-meta-state
      (make-class-slot-unchecked-accessor gxc#::generate-meta::t 'state))
    (define gxc#&::generate-meta-state-set!
      (make-class-slot-unchecked-mutator gxc#::generate-meta::t 'state))
    (define gxc#::generate-meta-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::void-expression-bind-methods!)
         (bind-method!
          gxc#::generate-meta::t
          '%#begin
          gxc#generate-meta-begin%)
         (bind-method!
          gxc#::generate-meta::t
          '%#begin-syntax
          gxc#generate-meta-begin-syntax%)
         (bind-method!
          gxc#::generate-meta::t
          '%#module
          gxc#generate-meta-module%)
         (bind-method!
          gxc#::generate-meta::t
          '%#import
          gxc#generate-meta-import%)
         (bind-method!
          gxc#::generate-meta::t
          '%#export
          gxc#generate-meta-export%)
         (bind-method!
          gxc#::generate-meta::t
          '%#provide
          gxc#generate-meta-provide%)
         (bind-method!
          gxc#::generate-meta::t
          '%#extern
          gxc#generate-meta-extern%)
         (bind-method!
          gxc#::generate-meta::t
          '%#define-values
          gxc#generate-meta-define-values%)
         (bind-method!
          gxc#::generate-meta::t
          '%#define-syntax
          gxc#generate-meta-define-syntax%)
         (bind-method!
          gxc#::generate-meta::t
          '%#define-alias
          gxc#generate-meta-define-alias%)
         (bind-method!
          gxc#::generate-meta::t
          '%#define-runtime
          gxc#generate-meta-define-runtime%)
         (bind-method! gxc#::generate-meta::t '%#begin-foreign gxc#void-method)
         (bind-method! gxc#::generate-meta::t '%#declare gxc#void-method)
         (seal-class! gxc#::generate-meta::t))))
    (define gxc#apply-generate-meta
      (let ((_%$%kw-lambda183416183439%_
             (let ((_%$%kw-lambda-main183417183432%_
                    (lambda (_%@@keywords183421%_
                             _%$%state183418183422%_
                             _%stx183423%_)
                      (let ((_%state183426%_
                             (if (eq? _%$%state183418183422%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'state:)
                                 _%$%state183418183422%_)))
                        (force gxc#::generate-meta-bind-methods!)
                        (let ((_%self183428%_
                               (gxc#make-::generate-meta
                                'state:
                                _%state183426%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self183428%_ _%stx183423%_))
                           gxc#current-compile-method
                           _%self183428%_))))))
               (lambda (_%@@keywords183435%_ . _%args183436%_)
                 (apply _%$%kw-lambda-main183417183432%_
                        _%@@keywords183435%_
                        (symbolic-table-ref
                         _%@@keywords183435%_
                         'state:
                         absent-value)
                        _%args183436%_)))))
        (lambda _%$%args183419183442%_
          (apply keyword-dispatch
                 '#(state:)
                 _%$%kw-lambda183416183439%_
                 _%$%args183419183442%_))))
    (define gxc#::generate-meta-phi::t
      (make-class-type
       'gxc#::generate-meta-phi::t
       '::generate-meta-phi
       (list)
       '(state)
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::generate-meta-phi?
      (make-class-predicate gxc#::generate-meta-phi::t))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args183414%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args183414%_)))
    (define gxc#::generate-meta-phi-state
      (make-class-slot-accessor gxc#::generate-meta-phi::t 'state))
    (define gxc#::generate-meta-phi-state-set!
      (make-class-slot-mutator gxc#::generate-meta-phi::t 'state))
    (define gxc#&::generate-meta-phi-state
      (make-class-slot-unchecked-accessor gxc#::generate-meta-phi::t 'state))
    (define gxc#&::generate-meta-phi-state-set!
      (make-class-slot-unchecked-mutator gxc#::generate-meta-phi::t 'state))
    (define gxc#::generate-meta-phi-bind-methods!
      (make-atomic-promise
       (lambda ()
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#begin
          gxc#generate-meta-begin%)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#begin-syntax
          gxc#generate-meta-begin-syntax%)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#define-syntax
          gxc#generate-meta-define-syntax%)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#define-alias
          gxc#generate-meta-define-alias%)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#define-values
          gxc#generate-meta-phi-define-values%)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#begin-annotation
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#lambda
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#case-lambda
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#let-values
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#letrec-values
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#letrec*-values
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#quote
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#quote-syntax
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#call
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#call-unchecked
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#if
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#ref
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#set!
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-instance?
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-direct-instance?
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-ref
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-set!
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-direct-ref
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-direct-set!
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-unchecked-ref
          gxc#generate-meta-phi-expr)
         (bind-method!
          gxc#::generate-meta-phi::t
          '%#struct-unchecked-set!
          gxc#generate-meta-phi-expr)
         (bind-method! gxc#::generate-meta-phi::t '%#declare gxc#void-method)
         (seal-class! gxc#::generate-meta-phi::t))))
    (define gxc#apply-generate-meta-phi
      (let ((_%$%kw-lambda183384183407%_
             (let ((_%$%kw-lambda-main183385183400%_
                    (lambda (_%@@keywords183389%_
                             _%$%state183386183390%_
                             _%stx183391%_)
                      (let ((_%state183394%_
                             (if (eq? _%$%state183386183390%_ absent-value)
                                 (error '"Missing required keyword argument"
                                        'state:)
                                 _%$%state183386183390%_)))
                        (force gxc#::generate-meta-phi-bind-methods!)
                        (let ((_%self183396%_
                               (gxc#make-::generate-meta-phi
                                'state:
                                _%state183394%_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-e _%self183396%_ _%stx183391%_))
                           gxc#current-compile-method
                           _%self183396%_))))))
               (lambda (_%@@keywords183403%_ . _%args183404%_)
                 (apply _%$%kw-lambda-main183385183400%_
                        _%@@keywords183403%_
                        (symbolic-table-ref
                         _%@@keywords183403%_
                         'state:
                         absent-value)
                        _%args183404%_)))))
        (lambda _%$%args183387183410%_
          (apply keyword-dispatch
                 '#(state:)
                 _%$%kw-lambda183384183407%_
                 _%$%args183387183410%_))))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self183315%_ _%stx183316%_)
        (let* ((_%$%g183318183335%_
                (lambda (_%$%g183319183332%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g183319183332%_)))
               (_%$%g183317183382%_
                (lambda (_%$%g183319183338%_)
                  (if (gx#stx-pair? _%$%g183319183338%_)
                      (let ((_%$%e183322183340%_
                             (gx#stx-e _%$%g183319183338%_)))
                        (let ((_%$%hd183323183343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e183322183340%_)))
                              (_%$%tl183324183345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e183322183340%_))))
                          (if (gx#stx-pair? _%$%tl183324183345%_)
                              (let ((_%$%e183325183348%_
                                     (gx#stx-e _%$%tl183324183345%_)))
                                (let ((_%$%hd183326183351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e183325183348%_)))
                                      (_%$%tl183327183353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e183325183348%_))))
                                  (if (gx#stx-pair? _%$%tl183327183353%_)
                                      (let ((_%$%e183328183356%_
                                             (gx#stx-e _%$%tl183327183353%_)))
                                        (let ((_%$%hd183329183359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e183328183356%_)))
                                              (_%$%tl183330183361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e183328183356%_))))
                                          (if (gx#stx-null?
                                               _%$%tl183330183361%_)
                                              ((lambda (_%$%g183320183364%_
                                                        _%$%g183321183365%_)
                                                 (gx#stx-for-each
                                                  (lambda (_%bind183380%_)
                                                    (if (gx#identifier?
                                                         _%bind183380%_)
                                                        (gxc#add-module-binding!
                                                         _%bind183380%_
                                                         '#f)
                                                        '#!void))
                                                  _%$%g183321183365%_))
                                               _%$%hd183329183359%_
                                               _%$%hd183326183351%_)
                                              (_%$%g183318183335%_
                                               _%$%g183319183338%_))))
                                      (_%$%g183318183335%_
                                       _%$%g183319183338%_))))
                              (_%$%g183318183335%_ _%$%g183319183338%_))))
                      (_%$%g183318183335%_ _%$%g183319183338%_)))))
          (_%$%g183317183382%_ _%stx183316%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self183247%_ _%stx183248%_)
        (let* ((_%$%g183250183267%_
                (lambda (_%$%g183251183264%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g183251183264%_)))
               (_%$%g183249183312%_
                (lambda (_%$%g183251183270%_)
                  (if (gx#stx-pair? _%$%g183251183270%_)
                      (let ((_%$%e183254183272%_
                             (gx#stx-e _%$%g183251183270%_)))
                        (let ((_%$%hd183255183275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e183254183272%_)))
                              (_%$%tl183256183277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e183254183272%_))))
                          (if (gx#stx-pair? _%$%tl183256183277%_)
                              (let ((_%$%e183257183280%_
                                     (gx#stx-e _%$%tl183256183277%_)))
                                (let ((_%$%hd183258183283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e183257183280%_)))
                                      (_%$%tl183259183285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e183257183280%_))))
                                  (if (gx#stx-pair? _%$%tl183259183285%_)
                                      (let ((_%$%e183260183288%_
                                             (gx#stx-e _%$%tl183259183285%_)))
                                        (let ((_%$%hd183261183291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e183260183288%_)))
                                              (_%$%tl183262183293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e183260183288%_))))
                                          (if (gx#stx-null?
                                               _%$%tl183262183293%_)
                                              ((lambda (_%$%g183252183296%_
                                                        _%$%g183253183297%_)
                                                 (gxc#add-module-binding!
                                                  _%$%g183253183297%_
                                                  '#t))
                                               _%$%hd183261183291%_
                                               _%$%hd183258183283%_)
                                              (_%$%g183250183267%_
                                               _%$%g183251183270%_))))
                                      (_%$%g183250183267%_
                                       _%$%g183251183270%_))))
                              (_%$%g183250183267%_ _%$%g183251183270%_))))
                      (_%$%g183250183267%_ _%$%g183251183270%_)))))
          (_%$%g183249183312%_ _%stx183248%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self183189%_ _%stx183190%_)
        (let* ((_%$%g183192183206%_
                (lambda (_%$%g183193183203%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g183193183203%_)))
               (_%$%g183191183244%_
                (lambda (_%$%g183193183209%_)
                  (if (gx#stx-pair? _%$%g183193183209%_)
                      (let ((_%$%e183196183211%_
                             (gx#stx-e _%$%g183193183209%_)))
                        (let ((_%$%hd183197183214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e183196183211%_)))
                              (_%$%tl183198183216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e183196183211%_))))
                          (if (gx#stx-pair? _%$%tl183198183216%_)
                              (let ((_%$%e183199183219%_
                                     (gx#stx-e _%$%tl183198183216%_)))
                                (let ((_%$%hd183200183222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e183199183219%_)))
                                      (_%$%tl183201183224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e183199183219%_))))
                                  ((lambda (_%$%g183194183227%_
                                            _%$%g183195183228%_)
                                     (let ((_%ctx183241%_
                                            (gx#syntax-local-e
                                             _%$%g183195183228%_)))
                                       (set-box!
                                        (slot-ref _%self183189%_ 'modules)
                                        (cons _%ctx183241%_
                                              (unbox (slot-ref
                                                      _%self183189%_
                                                      'modules))))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           _%self183189%_
                                           (gx#module-context-code
                                            _%ctx183241%_)))
                                        gx#current-expander-context
                                        _%ctx183241%_)))
                                   _%$%tl183201183224%_
                                   _%$%hd183200183222%_)))
                              (_%$%g183192183206%_ _%$%g183193183209%_))))
                      (_%$%g183192183206%_ _%$%g183193183209%_)))))
          (_%$%g183191183244%_ _%stx183190%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%$%decls183143183145%_ (gxc#current-compile-decls)))
          (if _%$%decls183143183145%_
              (let ((_%decls183147%_ _%$%decls183143183145%_))
                (let _%lp183149%_ ((_%rest183151%_ _%decls183147%_))
                  (let* ((_%$%rest183152183160%_ _%rest183151%_)
                         (_%$%E183155183164%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%$%rest183152183160%_
                                   '([decl . decls])
                                   'else)
                            (void)))
                         (_%$%else183154183168%_ (lambda () '#f))
                         (_%$%K183156183177%_
                          (lambda (_%decls183171%_ _%decl183172%_)
                            (if (equal? _%decl183172%_ '(not safe))
                                '#t
                                (if (equal? _%decl183172%_ '(safe))
                                    '#f
                                    (_%lp183149%_ _%decls183171%_))))))
                    (if (pair? _%$%rest183152183160%_)
                        (let ((_%$%hd183157183180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest183152183160%_)))
                              (_%$%tl183158183182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest183152183160%_))))
                          (let* ((_%decl183185%_ _%$%hd183157183180%_)
                                 (_%decls183187%_ _%$%tl183158183182%_))
                            (_%$%K183156183177%_
                             _%decls183187%_
                             _%decl183185%_)))
                        (_%$%else183154183168%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id183137%_ _%syntax?183138%_)
        (let ((_%eid183140%_
               (gx#binding-id (gx#resolve-identifier _%id183137%_)))
              (_%ht183141%_
               (gxc#symbol-table-bindings (gxc#current-compile-symbol-table))))
          (if (interned-symbol? _%eid183140%_)
              '#!void
              (hash-put!
               _%ht183141%_
               _%eid183140%_
               (gx#make-binding-id
                (gxc#generate-runtime-gensym-reference _%eid183140%_)
                _%syntax?183138%_))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self183134%_ _%stx183135%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self182981%_ _%stx182982%_)
        (letrec ((_%simplify182984%_
                  (lambda (_%body183032%_)
                    (let _%lp183034%_ ((_%rest183036%_ _%body183032%_)
                                       (_%r183037%_ '()))
                      (let* ((_%$%rest183038183046%_ _%rest183036%_)
                             (_%$%E183041183050%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest183038183046%_
                                       '([hd . rest])
                                       'else)
                                (void)))
                             (_%$%else183040183054%_
                              (lambda () (reverse _%r183037%_)))
                             (_%$%K183042183122%_
                              (lambda (_%rest183057%_ _%hd183058%_)
                                (let* ((_%$%hd183059183075%_ _%hd183058%_)
                                       (_%$%E183064183079%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%$%hd183059183075%_
                                                 '(['begin . exprs])
                                                 '(['quote _])
                                                 '((? symbol?))
                                                 'else)
                                          (void)))
                                       (_%$%else183063183083%_
                                        (lambda ()
                                          (_%lp183034%_
                                           _%rest183057%_
                                           (cons _%hd183058%_ _%r183037%_))))
                                       (_%$%try-match183062183091%_
                                        (lambda ()
                                          (let ((_%$%K183065183088%_
                                                 (lambda ()
                                                   (if (null? _%rest183057%_)
                                                       (_%lp183034%_
                                                        _%rest183057%_
                                                        (cons _%hd183058%_
                                                              _%r183037%_))
                                                       (_%lp183034%_
                                                        _%rest183057%_
                                                        _%r183037%_)))))
                                            (if (symbol? _%$%hd183059183075%_)
                                                (_%$%K183065183088%_)
                                                (_%$%else183063183083%_)))))
                                       (_%$%try-match183061183107%_
                                        (lambda ()
                                          (let ((_%$%K183066183096%_
                                                 (lambda ()
                                                   (if (null? _%rest183057%_)
                                                       (_%lp183034%_
                                                        _%rest183057%_
                                                        (cons _%hd183058%_
                                                              _%r183037%_))
                                                       (_%lp183034%_
                                                        _%rest183057%_
                                                        _%r183037%_)))))
                                            (if (pair? _%$%hd183059183075%_)
                                                (let ((_%$%hd183067183099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd183059183075%_)))
                                                      (_%$%tl183068183101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd183059183075%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##eq? _%$%hd183067183099%_
                                                               'quote))
                                                      (if (pair? _%$%tl183068183101%_)
                                                          (let ((_%$%tl183070183104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%tl183068183101%_))))
                    (if (null? _%$%tl183070183104%_)
                        (_%$%K183066183096%_)
                        (_%$%try-match183062183091%_)))
                  (_%$%try-match183062183091%_))
              (_%$%try-match183062183091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%try-match183062183091%_)))))
                                       (_%$%K183071183112%_
                                        (lambda (_%exprs183110%_)
                                          (_%lp183034%_
                                           (foldr cons
                                                  _%rest183057%_
                                                  _%exprs183110%_)
                                           _%r183037%_))))
                                  (if (pair? _%$%hd183059183075%_)
                                      (let ((_%$%hd183072183115%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%hd183059183075%_)))
                                            (_%$%tl183073183117%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%hd183059183075%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##eq? _%$%hd183072183115%_
                                                     'begin))
                                            (let ((_%exprs183120%_
                                                   _%$%tl183073183117%_))
                                              (_%$%K183071183112%_
                                               _%exprs183120%_))
                                            (_%$%try-match183061183107%_)))
                                      (_%$%try-match183061183107%_))))))
                        (if (pair? _%$%rest183038183046%_)
                            (let ((_%$%hd183043183125%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest183038183046%_)))
                                  (_%$%tl183044183127%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest183038183046%_))))
                              (let* ((_%hd183130%_ _%$%hd183043183125%_)
                                     (_%rest183132%_ _%$%tl183044183127%_))
                                (_%$%K183042183122%_
                                 _%rest183132%_
                                 _%hd183130%_)))
                            (_%$%else183040183054%_)))))))
          (let* ((_%$%g182986182996%_
                  (lambda (_%$%g182987182993%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g182987182993%_)))
                 (_%$%g182985183029%_
                  (lambda (_%$%g182987182999%_)
                    (if (gx#stx-pair? _%$%g182987182999%_)
                        (let ((_%$%e182989183001%_
                               (gx#stx-e _%$%g182987182999%_)))
                          (let ((_%$%hd182990183004%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e182989183001%_)))
                                (_%$%tl182991183006%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e182989183001%_))))
                            ((lambda (_%$%g182988183009%_)
                               (let* ((_%body183024%_
                                       (map (lambda (_%$%g183019183021%_)
                                              (gxc#compile-e
                                               _%self182981%_
                                               _%$%g183019183021%_))
                                            _%$%g182988183009%_))
                                      (_%body183026%_
                                       (_%simplify182984%_ _%body183024%_)))
                                 (if (fx= (length _%body183026%_) '1)
                                     (car _%body183026%_)
                                     (cons 'begin _%body183026%_))))
                             _%$%tl182991183006%_)))
                        (_%$%g182986182996%_ _%$%g182987182999%_)))))
            (_%$%g182985183029%_ _%stx182982%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self182942%_ _%stx182943%_)
        (let* ((_%$%g182945182955%_
                (lambda (_%$%g182946182952%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g182946182952%_)))
               (_%$%g182944182978%_
                (lambda (_%$%g182946182958%_)
                  (if (gx#stx-pair? _%$%g182946182958%_)
                      (let ((_%$%e182948182960%_
                             (gx#stx-e _%$%g182946182958%_)))
                        (let ((_%$%hd182949182963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182948182960%_)))
                              (_%$%tl182950182965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182948182960%_))))
                          ((lambda (_%$%g182947182968%_)
                             (cons 'begin
                                   (gx#syntax->datum _%$%g182947182968%_)))
                           _%$%tl182950182965%_)))
                      (_%$%g182945182955%_ _%$%g182946182958%_)))))
          (_%$%g182944182978%_ _%stx182943%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self182708%_ _%stx182709%_)
        (let* ((_%$%g182713182765%_
                (lambda (_%$%g182714182762%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g182714182762%_)))
               (_%$%g182712182813%_
                (lambda (_%$%g182714182768%_)
                  (if (gx#stx-pair? _%$%g182714182768%_)
                      (let ((_%$%e182752182770%_
                             (gx#stx-e _%$%g182714182768%_)))
                        (let ((_%$%hd182753182773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182752182770%_)))
                              (_%$%tl182754182775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182752182770%_))))
                          (if (gx#stx-pair? _%$%tl182754182775%_)
                              (let ((_%$%e182755182778%_
                                     (gx#stx-e _%$%tl182754182775%_)))
                                (let ((_%$%hd182756182781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e182755182778%_)))
                                      (_%$%tl182757182783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e182755182778%_))))
                                  (if (gx#stx-pair? _%$%tl182757182783%_)
                                      (let ((_%$%e182758182786%_
                                             (gx#stx-e _%$%tl182757182783%_)))
                                        (let ((_%$%hd182759182789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e182758182786%_)))
                                              (_%$%tl182760182791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e182758182786%_))))
                                          (if (gx#stx-null?
                                               _%$%tl182760182791%_)
                                              ((lambda (_%$%g182750182794%_
                                                        _%$%g182751182795%_)
                                                 (let ((_%decls182810%_
                                                        (map gx#syntax->datum
                                                             _%$%g182751182795%_)))
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (cons 'begin
                                                            (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%decls182810%_)
                          (cons (gxc#compile-e
                                 _%self182708%_
                                 _%$%g182750182794%_)
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    gxc#current-compile-decls
                                                    (foldr cons
                                                           (gxc#current-compile-decls)
                                                           _%decls182810%_))))
                                               _%$%hd182759182789%_
                                               _%$%hd182756182781%_)
                                              (_%$%g182713182765%_
                                               _%$%g182714182768%_))))
                                      (_%$%g182713182765%_
                                       _%$%g182714182768%_))))
                              (_%$%g182713182765%_ _%$%g182714182768%_))))
                      (_%$%g182713182765%_ _%$%g182714182768%_))))
               (_%$%g182711182895%_
                (lambda (_%$%g182714182816%_)
                  (if (gx#stx-pair? _%$%g182714182816%_)
                      (let ((_%$%e182729182818%_
                             (gx#stx-e _%$%g182714182816%_)))
                        (let ((_%$%hd182730182821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182729182818%_)))
                              (_%$%tl182731182823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182729182818%_))))
                          (if (gx#stx-pair? _%$%tl182731182823%_)
                              (let ((_%$%e182732182826%_
                                     (gx#stx-e _%$%tl182731182823%_)))
                                (let ((_%$%hd182733182829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e182732182826%_)))
                                      (_%$%tl182734182831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e182732182826%_))))
                                  (if (gx#stx-pair? _%$%hd182733182829%_)
                                      (let ((_%$%e182735182834%_
                                             (gx#stx-e _%$%hd182733182829%_)))
                                        (let ((_%$%hd182736182837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e182735182834%_)))
                                              (_%$%tl182737182839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e182735182834%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl182737182839%_)
                                              (let ((_g183593_
                                                     (gx#syntax-split-splice
                                                      _%$%tl182737182839%_
                                                      '0)))
                                                (begin
                                                  (let ((_g183594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g183593_)
                                                               (##values-length
                                                                _g183593_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g183594_ 2)))
                (error "Context expects 2 values" _g183594_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target182738182842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g183593_
                                                            0)))
                                                        (_%$%tl182740182844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g183593_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl182740182844%_)
                                                        (letrec ((_%$%loop182741182847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd182739182850%_
                                   _%$%param182745182852%_)
                            (if (gx#stx-pair? _%$%hd182739182850%_)
                                (let ((_%$%e182742182854%_
                                       (gx#stx-e _%$%hd182739182850%_)))
                                  (let ((_%$%lp-hd182743182857%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e182742182854%_)))
                                        (_%$%lp-tl182744182859%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e182742182854%_))))
                                    (_%$%loop182741182847%_
                                     _%$%lp-tl182744182859%_
                                     (cons _%$%lp-hd182743182857%_
                                           _%$%param182745182852%_))))
                                (let ((_%$%param182746182862%_
                                       (reverse _%$%param182745182852%_)))
                                  (if (gx#stx-pair? _%$%tl182734182831%_)
                                      (let ((_%$%e182747182864%_
                                             (gx#stx-e _%$%tl182734182831%_)))
                                        (let ((_%$%hd182748182867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e182747182864%_)))
                                              (_%$%tl182749182869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e182747182864%_))))
                                          (if (gx#stx-null?
                                               _%$%tl182749182869%_)
                                              ((lambda (_%$%g182726182872%_
                                                        _%$%g182727182873%_
                                                        _%$%g182728182874%_)
                                                 (if (and (gx#identifier?
                                                           _%$%g182728182874%_)
                                                          (not (memq (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g182728182874%_)
                             gxc#gambit-annotations)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (memq (gx#stx-e
                                                                _%$%g182728182874%_)
                                                               '(@inline))
                                                         '(begin)
                                                         (gxc#compile-e
                                                          _%self182708%_
                                                          _%$%g182726182872%_))
                                                     (_%$%g182712182813%_
                                                      _%$%g182714182816%_)))
                                               _%$%hd182748182867%_
                                               _%$%param182746182862%_
                                               _%$%hd182736182837%_)
                                              (_%$%g182712182813%_
                                               _%$%g182714182816%_))))
                                      (_%$%g182712182813%_
                                       _%$%g182714182816%_)))))))
                  (_%$%loop182741182847%_ _%$%target182738182842%_ '()))
                (_%$%g182712182813%_ _%$%g182714182816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g182712182813%_
                                               _%$%g182714182816%_))))
                                      (_%$%g182712182813%_
                                       _%$%g182714182816%_))))
                              (_%$%g182712182813%_ _%$%g182714182816%_))))
                      (_%$%g182712182813%_ _%$%g182714182816%_))))
               (_%$%g182710182939%_
                (lambda (_%$%g182714182898%_)
                  (if (gx#stx-pair? _%$%g182714182898%_)
                      (let ((_%$%e182717182900%_
                             (gx#stx-e _%$%g182714182898%_)))
                        (let ((_%$%hd182718182903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182717182900%_)))
                              (_%$%tl182719182905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182717182900%_))))
                          (if (gx#stx-pair? _%$%tl182719182905%_)
                              (let ((_%$%e182720182908%_
                                     (gx#stx-e _%$%tl182719182905%_)))
                                (let ((_%$%hd182721182911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e182720182908%_)))
                                      (_%$%tl182722182913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e182720182908%_))))
                                  (if (gx#stx-pair? _%$%tl182722182913%_)
                                      (let ((_%$%e182723182916%_
                                             (gx#stx-e _%$%tl182722182913%_)))
                                        (let ((_%$%hd182724182919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e182723182916%_)))
                                              (_%$%tl182725182921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e182723182916%_))))
                                          (if (gx#stx-null?
                                               _%$%tl182725182921%_)
                                              ((lambda (_%$%g182715182924%_
                                                        _%$%g182716182925%_)
                                                 (if (gx#identifier?
                                                      _%$%g182716182925%_)
                                                     (gxc#compile-e
                                                      _%self182708%_
                                                      _%$%g182715182924%_)
                                                     (_%$%g182711182895%_
                                                      _%$%g182714182898%_)))
                                               _%$%hd182724182919%_
                                               _%$%hd182721182911%_)
                                              (_%$%g182711182895%_
                                               _%$%g182714182898%_))))
                                      (_%$%g182711182895%_
                                       _%$%g182714182898%_))))
                              (_%$%g182711182895%_ _%$%g182714182898%_))))
                      (_%$%g182711182895%_ _%$%g182714182898%_)))))
          (_%$%g182710182939%_ _%stx182709%_))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self182667%_ _%stx182668%_)
        (let* ((_%$%g182670182680%_
                (lambda (_%$%g182671182677%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g182671182677%_)))
               (_%$%g182669182705%_
                (lambda (_%$%g182671182683%_)
                  (if (gx#stx-pair? _%$%g182671182683%_)
                      (let ((_%$%e182673182685%_
                             (gx#stx-e _%$%g182671182683%_)))
                        (let ((_%$%hd182674182688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182673182685%_)))
                              (_%$%tl182675182690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182673182685%_))))
                          ((lambda (_%$%g182672182693%_)
                             (let ((_%decls182703%_
                                    (map gx#syntax->datum
                                         _%$%g182672182693%_)))
                               (gxc#current-compile-decls
                                (foldr cons
                                       (gxc#current-compile-decls)
                                       _%decls182703%_))
                               (cons 'declare _%decls182703%_)))
                           _%$%tl182675182690%_)))
                      (_%$%g182670182680%_ _%$%g182671182683%_)))))
          (_%$%g182669182705%_ _%stx182668%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self182414%_ _%stx182415%_)
        (let* ((_%$%g182417182434%_
                (lambda (_%$%g182418182431%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g182418182431%_)))
               (_%$%g182416182664%_
                (lambda (_%$%g182418182437%_)
                  (if (gx#stx-pair? _%$%g182418182437%_)
                      (let ((_%$%e182421182439%_
                             (gx#stx-e _%$%g182418182437%_)))
                        (let ((_%$%hd182422182442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182421182439%_)))
                              (_%$%tl182423182444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182421182439%_))))
                          (if (gx#stx-pair? _%$%tl182423182444%_)
                              (let ((_%$%e182424182447%_
                                     (gx#stx-e _%$%tl182423182444%_)))
                                (let ((_%$%hd182425182450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e182424182447%_)))
                                      (_%$%tl182426182452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e182424182447%_))))
                                  (if (gx#stx-pair? _%$%tl182426182452%_)
                                      (let ((_%$%e182427182455%_
                                             (gx#stx-e _%$%tl182426182452%_)))
                                        (let ((_%$%hd182428182458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e182427182455%_)))
                                              (_%$%tl182429182460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e182427182455%_))))
                                          (if (gx#stx-null?
                                               _%$%tl182429182460%_)
                                              ((lambda (_%$%g182419182463%_
                                                        _%$%g182420182464%_)
                                                 (let* ((_%$%g182481182495%_
                                                         (lambda (_%$%g182482182492%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g182482182492%_)))
                                                        (_%$%g182480182614%_
                                                         (lambda (_%$%g182482182498%_)
                                                           ((lambda ()
                                                              (let* ((_%tmp182502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gxc#generate-runtime-temporary '#t))
                             (_%body182611%_
                              (let _%lp182504%_ ((_%rest182506%_
                                                  _%$%g182420182464%_)
                                                 (_%k182507%_ '0)
                                                 (_%r182508%_ '()))
                                (let* ((_%$%g182513182530%_
                                        (lambda (_%$%g182514182527%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g182514182527%_)))
                                       (_%$%g182512182537%_
                                        (lambda (_%$%g182514182533%_)
                                          ((lambda () (reverse _%r182508%_)))))
                                       (_%$%g182511182558%_
                                        (lambda (_%$%g182514182540%_)
                                          ((lambda (_%$%g182525182542%_)
                                             (if (gx#identifier?
                                                  _%$%g182525182542%_)
                                                 (foldl cons
                                                        (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gxc#generate-runtime-binding-id
                                   _%$%g182525182542%_)
                                  (cons (gxc#generate-runtime-values->list
                                         _%tmp182502%_
                                         _%k182507%_)
                                        '())))
                      '())
                _%r182508%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g182512182537%_
                                                  _%$%g182514182540%_)))
                                           _%$%g182514182540%_)))
                                       (_%$%g182510182582%_
                                        (lambda (_%$%g182514182561%_)
                                          (if (gx#stx-pair?
                                               _%$%g182514182561%_)
                                              (let ((_%$%e182522182563%_
                                                     (gx#stx-e
                                                      _%$%g182514182561%_)))
                                                (let ((_%$%hd182523182566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e182522182563%_)))
                                                      (_%$%tl182524182568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e182522182563%_))))
                                                  ((lambda (_%$%g182520182571%_
                                                            _%$%g182521182572%_)
                                                     (_%lp182504%_
                                                      _%$%g182520182571%_
                                                      (fx1+ _%k182507%_)
                                                      (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gxc#generate-runtime-binding-id
                                 _%$%g182521182572%_)
                                (cons (gxc#generate-runtime-values-ref
                                       _%tmp182502%_
                                       _%k182507%_
                                       _%$%g182520182571%_)
                                      '())))
                    _%r182508%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%tl182524182568%_
                                                   _%$%hd182523182566%_)))
                                              (_%$%g182511182558%_
                                               _%$%g182514182561%_))))
                                       (_%$%g182509182608%_
                                        (lambda (_%$%g182514182585%_)
                                          (if (gx#stx-pair?
                                               _%$%g182514182585%_)
                                              (let ((_%$%e182516182587%_
                                                     (gx#stx-e
                                                      _%$%g182514182585%_)))
                                                (let ((_%$%hd182517182590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e182516182587%_)))
                                                      (_%$%tl182518182592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e182516182587%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd182517182590%_)
                                                      (let ((_%$%e182519182595%_
                                                             (gx#stx-e
                                                              _%$%hd182517182590%_)))
                                                        (if (equal? _%$%e182519182595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f)
                    ((lambda (_%$%g182515182598%_)
                       (_%lp182504%_
                        _%$%g182515182598%_
                        (fx1+ _%k182507%_)
                        _%r182508%_))
                     _%$%tl182518182592%_)
                    (_%$%g182510182582%_ _%$%g182514182585%_)))
              (_%$%g182510182582%_ _%$%g182514182585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g182510182582%_
                                               _%$%g182514182585%_)))))
                                  (_%$%g182509182608%_ _%rest182506%_)))))
                        (cons 'begin
                              (cons (cons 'define
                                          (cons _%tmp182502%_
                                                (cons (gxc#compile-e
                                                       _%self182414%_
                                                       _%$%g182419182463%_)
                                                      '())))
                                    (cons (gxc#generate-runtime-check-values
                                           _%tmp182502%_
                                           _%$%g182420182464%_
                                           _%$%g182419182463%_)
                                          _%body182611%_))))))))
                (_%$%g182479182643%_
                 (lambda (_%$%g182482182617%_)
                   (if (gx#stx-pair? _%$%g182482182617%_)
                       (let ((_%$%e182488182619%_
                              (gx#stx-e _%$%g182482182617%_)))
                         (let ((_%$%hd182489182622%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e182488182619%_)))
                               (_%$%tl182490182624%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e182488182619%_))))
                           (if (gx#stx-null? _%$%tl182490182624%_)
                               ((lambda (_%$%g182487182627%_)
                                  (let ((_%eid182636%_
                                         (gxc#generate-runtime-binding-id
                                          _%$%g182487182627%_)))
                                    (let ((_%$%lambda-expr182637182639%_
                                           (gxc#apply-find-lambda-expression
                                            _%$%g182419182463%_)))
                                      (if _%$%lambda-expr182637182639%_
                                          (let ((_%lambda-expr182641%_
                                                 _%$%lambda-expr182637182639%_))
                                            (hash-put!
                                             (gxc#current-compile-runtime-names)
                                             _%lambda-expr182641%_
                                             _%eid182636%_))
                                          '#f))
                                    (cons 'define
                                          (cons _%eid182636%_
                                                (cons (gxc#compile-e
                                                       _%self182414%_
                                                       _%$%g182419182463%_)
                                                      '())))))
                                _%$%hd182489182622%_)
                               (_%$%g182480182614%_ _%$%g182482182617%_))))
                       (_%$%g182480182614%_ _%$%g182482182617%_))))
                (_%$%g182478182661%_
                 (lambda (_%$%g182482182646%_)
                   (if (gx#stx-pair? _%$%g182482182646%_)
                       (let ((_%$%e182483182648%_
                              (gx#stx-e _%$%g182482182646%_)))
                         (let ((_%$%hd182484182651%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e182483182648%_)))
                               (_%$%tl182485182653%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e182483182648%_))))
                           (if (gx#stx-datum? _%$%hd182484182651%_)
                               (let ((_%$%e182486182656%_
                                      (gx#stx-e _%$%hd182484182651%_)))
                                 (if (equal? _%$%e182486182656%_ '#f)
                                     (if (gx#stx-null? _%$%tl182485182653%_)
                                         ((lambda ()
                                            (gxc#compile-e
                                             _%self182414%_
                                             _%$%g182419182463%_)))
                                         (_%$%g182479182643%_
                                          _%$%g182482182646%_))
                                     (_%$%g182479182643%_
                                      _%$%g182482182646%_)))
                               (_%$%g182479182643%_ _%$%g182482182646%_))))
                       (_%$%g182479182643%_ _%$%g182482182646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g182478182661%_
                                                    _%$%g182420182464%_)))
                                               _%$%hd182428182458%_
                                               _%$%hd182425182450%_)
                                              (_%$%g182417182434%_
                                               _%$%g182418182437%_))))
                                      (_%$%g182417182434%_
                                       _%$%g182418182437%_))))
                              (_%$%g182417182434%_ _%$%g182418182437%_))))
                      (_%$%g182417182434%_ _%$%g182418182437%_)))))
          (_%$%g182416182664%_ _%stx182415%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals182389%_ _%hd182390%_ _%expr182391%_)
        (let ((_%$e182393%_ (gxc#apply-count-values _%expr182391%_)))
          (if _%$e182393%_
              ((lambda (_%count182396%_)
                 (let ((_%len182398%_ (gx#stx-length _%hd182390%_))
                       (_%cmp182399%_
                        (if (gx#stx-list? _%hd182390%_) fx= fx>=)))
                   (if (or (fx= _%len182398%_ '0)
                           (_%cmp182399%_ _%count182396%_ _%len182398%_))
                       '#!void
                       (gxc#raise-compile-error
                        '"Value count mismatch"
                        _%expr182391%_
                        _%hd182390%_))))
               _%$e182393%_)
              (let* ((_%len182405%_ (gx#stx-length _%hd182390%_))
                     (_%cmp182407%_
                      (if (gx#stx-list? _%hd182390%_) '##fx= '##fx>=))
                     (_%errmsg182409%_
                      (string-append
                       (if (gx#stx-list? _%hd182390%_)
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _%len182405%_)
                       '" values"))
                     (_%count182411%_ (gxc#generate-runtime-temporary)))
                (if (and (not (gx#stx-list? _%hd182390%_))
                         (fx= _%len182405%_ '0))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count182411%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals182389%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp182407%_
                                (cons _%count182411%_
                                      (cons _%len182405%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp182407%_
                                                        (cons _%count182411%_
                                                              (cons _%len182405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg182409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count182411%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var182384%_)
        (letrec ((_%generate-inline182386%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var182384%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var182384%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline182386%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline182386%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var182377%_ _%i182378%_ _%rest182379%_)
        (letrec ((_%generate-inline182381%_
                  (lambda ()
                    (if (and (fx= _%i182378%_ '0)
                             (not (gx#stx-pair? _%rest182379%_)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var182377%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var182377%_
                                                      (cons '0 '())))
                                          (cons _%var182377%_ '()))))
                        (cons '##values-ref
                              (cons _%var182377%_ (cons _%i182378%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline182381%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline182381%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var182371%_ _%i182372%_)
        (if (fx= _%i182372%_ '0)
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var182371%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var182371%_ '()))
                                  (cons (cons 'list (cons _%var182371%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var182371%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var182371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var182371%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (fx= _%i182372%_ '1)
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var182371%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var182371%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var182371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var182371%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var182371%_ '()))
                                (cons _%i182372%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var182371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i182372%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self182303%_ _%stx182304%_)
        (let* ((_%$%g182306182323%_
                (lambda (_%$%g182307182320%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g182307182320%_)))
               (_%$%g182305182368%_
                (lambda (_%$%g182307182326%_)
                  (if (gx#stx-pair? _%$%g182307182326%_)
                      (let ((_%$%e182310182328%_
                             (gx#stx-e _%$%g182307182326%_)))
                        (let ((_%$%hd182311182331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182310182328%_)))
                              (_%$%tl182312182333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182310182328%_))))
                          (if (gx#stx-pair? _%$%tl182312182333%_)
                              (let ((_%$%e182313182336%_
                                     (gx#stx-e _%$%tl182312182333%_)))
                                (let ((_%$%hd182314182339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e182313182336%_)))
                                      (_%$%tl182315182341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e182313182336%_))))
                                  (if (gx#stx-pair? _%$%tl182315182341%_)
                                      (let ((_%$%e182316182344%_
                                             (gx#stx-e _%$%tl182315182341%_)))
                                        (let ((_%$%hd182317182347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e182316182344%_)))
                                              (_%$%tl182318182349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e182316182344%_))))
                                          (if (gx#stx-null?
                                               _%$%tl182318182349%_)
                                              ((lambda (_%$%g182308182352%_
                                                        _%$%g182309182353%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self182303%_
                                                  _%$%g182309182353%_
                                                  _%$%g182308182352%_))
                                               _%$%hd182317182347%_
                                               _%$%hd182314182339%_)
                                              (_%$%g182306182323%_
                                               _%$%g182307182326%_))))
                                      (_%$%g182306182323%_
                                       _%$%g182307182326%_))))
                              (_%$%g182306182323%_ _%$%g182307182326%_))))
                      (_%$%g182306182323%_ _%$%g182307182326%_)))))
          (_%$%g182305182368%_ _%stx182304%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self182262%_ _%hd182263%_ _%body182264%_)
        (let* ((_%hd182266%_ (gxc#generate-runtime-lambda-head _%hd182263%_))
               (_%body182268%_ (gxc#compile-e _%self182262%_ _%body182264%_))
               (_%body182300%_
                (let* ((_%$%body182269182277%_ _%body182268%_)
                       (_%$%E182272182281%_
                        (lambda ()
                          (error '"No clause matching"
                                 _%$%body182269182277%_
                                 '(['begin . exprs])
                                 'else)
                          (void)))
                       (_%$%else182271182285%_
                        (lambda () (cons _%body182268%_ '())))
                       (_%$%K182273182290%_
                        (lambda (_%exprs182288%_) _%exprs182288%_)))
                  (if (pair? _%$%body182269182277%_)
                      (let ((_%$%hd182274182293%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%body182269182277%_)))
                            (_%$%tl182275182295%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%body182269182277%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%$%hd182274182293%_ 'begin))
                            (let ((_%exprs182298%_ _%$%tl182275182295%_))
                              (_%$%K182273182290%_ _%exprs182298%_))
                            (_%$%else182271182285%_)))
                      (_%$%else182271182285%_)))))
          (cons 'lambda (cons _%hd182266%_ _%body182300%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd182260%_)
        (gx#stx-map gxc#generate-runtime-binding-id* _%hd182260%_)))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self180817%_ _%stx180818%_)
        (letrec ((_%dispatch-case?180820%_
                  (lambda (_%hd181498%_ _%body181499%_)
                    (let* ((_%form181501%_
                            (cons _%hd181498%_ (cons _%body181499%_ '())))
                           (_%$%g181506181663%_
                            (lambda (_%$%g181507181660%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g181507181660%_)))
                           (_%$%g181505181670%_
                            (lambda (_%$%g181507181666%_) ((lambda () '#f))))
                           (_%$%g181504181811%_
                            (lambda (_%$%g181507181673%_)
                              (if (gx#stx-pair? _%$%g181507181673%_)
                                  (let ((_%$%e181623181675%_
                                         (gx#stx-e _%$%g181507181673%_)))
                                    (let ((_%$%hd181624181678%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181623181675%_)))
                                          (_%$%tl181625181680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181623181675%_))))
                                      (if (gx#stx-pair? _%$%tl181625181680%_)
                                          (let ((_%$%e181626181683%_
                                                 (gx#stx-e
                                                  _%$%tl181625181680%_)))
                                            (let ((_%$%hd181627181686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e181626181683%_)))
                                                  (_%$%tl181628181688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e181626181683%_))))
                                              (if (gx#stx-pair?
                                                   _%$%hd181627181686%_)
                                                  (let ((_%$%e181629181691%_
                                                         (gx#stx-e
                                                          _%$%hd181627181686%_)))
                                                    (let ((_%$%hd181630181694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e181629181691%_)))
                                                          (_%$%tl181631181696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e181629181691%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd181630181694%_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _%$%hd181630181694%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl181631181696%_)
                          (let ((_%$%e181632181699%_
                                 (gx#stx-e _%$%tl181631181696%_)))
                            (let ((_%$%hd181633181702%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e181632181699%_)))
                                  (_%$%tl181634181704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e181632181699%_))))
                              (if (gx#stx-pair? _%$%hd181633181702%_)
                                  (let ((_%$%e181635181707%_
                                         (gx#stx-e _%$%hd181633181702%_)))
                                    (let ((_%$%hd181636181710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181635181707%_)))
                                          (_%$%tl181637181712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181635181707%_))))
                                      (if (gx#identifier? _%$%hd181636181710%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd181636181710%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl181637181712%_)
                                                  (let ((_%$%e181638181715%_
                                                         (gx#stx-e
                                                          _%$%tl181637181712%_)))
                                                    (let ((_%$%hd181639181718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e181638181715%_)))
                                                          (_%$%tl181640181720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e181638181715%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl181640181720%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl181634181704%_)
                                                              (let ((_%$%e181641181723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl181634181704%_)))
                        (let ((_%$%hd181642181726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e181641181723%_)))
                              (_%$%tl181643181728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e181641181723%_))))
                          (if (gx#stx-pair? _%$%hd181642181726%_)
                              (let ((_%$%e181644181731%_
                                     (gx#stx-e _%$%hd181642181726%_)))
                                (let ((_%$%hd181645181734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e181644181731%_)))
                                      (_%$%tl181646181736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e181644181731%_))))
                                  (if (gx#identifier? _%$%hd181645181734%_)
                                      (if (gx#stx-eq?
                                           '%#ref
                                           _%$%hd181645181734%_)
                                          (if (gx#stx-pair?
                                               _%$%tl181646181736%_)
                                              (let ((_%$%e181647181739%_
                                                     (gx#stx-e
                                                      _%$%tl181646181736%_)))
                                                (let ((_%$%hd181648181742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e181647181739%_)))
                                                      (_%$%tl181649181744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e181647181739%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl181649181744%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl181643181728%_)
                                                          (let ((_%$%e181650181747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl181643181728%_)))
                    (let ((_%$%hd181651181750%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181650181747%_)))
                          (_%$%tl181652181752%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181650181747%_))))
                      (if (gx#stx-pair? _%$%hd181651181750%_)
                          (let ((_%$%e181653181755%_
                                 (gx#stx-e _%$%hd181651181750%_)))
                            (let ((_%$%hd181654181758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e181653181755%_)))
                                  (_%$%tl181655181760%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e181653181755%_))))
                              (if (gx#identifier? _%$%hd181654181758%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd181654181758%_)
                                      (if (gx#stx-pair? _%$%tl181655181760%_)
                                          (let ((_%$%e181656181763%_
                                                 (gx#stx-e
                                                  _%$%tl181655181760%_)))
                                            (let ((_%$%hd181657181766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e181656181763%_)))
                                                  (_%$%tl181658181768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e181656181763%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl181658181768%_)
                                                  (if (gx#stx-null?
                                                       _%$%tl181652181752%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl181628181688%_)
                                                          ((lambda (_%$%g181619181771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g181620181772%_
                            _%$%g181621181773%_
                            _%$%g181622181774%_)
                     (if (and (gx#identifier? _%$%g181622181774%_)
                              (gxc#runtime-identifier=?
                               _%$%g181621181773%_
                               'apply)
                              (gx#free-identifier=?
                               _%$%g181622181774%_
                               _%$%g181619181771%_)
                              (not (gx#free-identifier=?
                                    _%$%g181620181772%_
                                    _%$%g181622181774%_)))
                         '#t
                         (_%$%g181505181670%_ _%$%g181507181673%_)))
                   _%$%hd181657181766%_
                   _%$%hd181648181742%_
                   _%$%hd181639181718%_
                   _%$%hd181624181678%_)
                  (_%$%g181505181670%_ _%$%g181507181673%_))
              (_%$%g181505181670%_ _%$%g181507181673%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181505181670%_
                                                   _%$%g181507181673%_))))
                                          (_%$%g181505181670%_
                                           _%$%g181507181673%_))
                                      (_%$%g181505181670%_
                                       _%$%g181507181673%_))
                                  (_%$%g181505181670%_ _%$%g181507181673%_))))
                          (_%$%g181505181670%_ _%$%g181507181673%_))))
                  (_%$%g181505181670%_ _%$%g181507181673%_))
              (_%$%g181505181670%_ _%$%g181507181673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g181505181670%_
                                               _%$%g181507181673%_))
                                          (_%$%g181505181670%_
                                           _%$%g181507181673%_))
                                      (_%$%g181505181670%_
                                       _%$%g181507181673%_))))
                              (_%$%g181505181670%_ _%$%g181507181673%_))))
                      (_%$%g181505181670%_ _%$%g181507181673%_))
                  (_%$%g181505181670%_ _%$%g181507181673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181505181670%_
                                                   _%$%g181507181673%_))
                                              (_%$%g181505181670%_
                                               _%$%g181507181673%_))
                                          (_%$%g181505181670%_
                                           _%$%g181507181673%_))))
                                  (_%$%g181505181670%_ _%$%g181507181673%_))))
                          (_%$%g181505181670%_ _%$%g181507181673%_))
                      (_%$%g181505181670%_ _%$%g181507181673%_))
                  (_%$%g181505181670%_ _%$%g181507181673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181505181670%_
                                                   _%$%g181507181673%_))))
                                          (_%$%g181505181670%_
                                           _%$%g181507181673%_))))
                                  (_%$%g181505181670%_ _%$%g181507181673%_))))
                           (_%$%g181503182067%_
                            (lambda (_%$%g181507181814%_)
                              (if (gx#stx-pair? _%$%g181507181814%_)
                                  (let ((_%$%e181559181816%_
                                         (gx#stx-e _%$%g181507181814%_)))
                                    (let ((_%$%hd181560181819%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181559181816%_)))
                                          (_%$%tl181561181821%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181559181816%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd181560181819%_)
                                          (let ((_g183595_
                                                 (gx#syntax-split-splice
                                                  _%$%hd181560181819%_
                                                  '0)))
                                            (begin
                                              (let ((_g183596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183595_)
                                                           (##values-length
                                                            _g183595_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183596_)))
                                              (let ((_%$%target181562181824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183595_
                                                        0)))
                                                    (_%$%tl181564181826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183595_
                                                        1))))
                                                (letrec ((_%$%loop181565181829%_
                                                          (lambda (_%$%hd181563181832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg181569181834%_)
                    (if (gx#stx-pair? _%$%hd181563181832%_)
                        (let ((_%$%e181566181836%_
                               (gx#stx-e _%$%hd181563181832%_)))
                          (let ((_%$%lp-hd181567181839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e181566181836%_)))
                                (_%$%lp-tl181568181841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e181566181836%_))))
                            (_%$%loop181565181829%_
                             _%$%lp-tl181568181841%_
                             (cons _%$%lp-hd181567181839%_
                                   _%$%arg181569181834%_))))
                        (let ((_%$%arg181570181844%_
                               (reverse _%$%arg181569181834%_)))
                          (if (gx#stx-pair? _%$%tl181561181821%_)
                              (let ((_%$%e181571181846%_
                                     (gx#stx-e _%$%tl181561181821%_)))
                                (let ((_%$%hd181572181849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e181571181846%_)))
                                      (_%$%tl181573181851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e181571181846%_))))
                                  (if (gx#stx-pair? _%$%hd181572181849%_)
                                      (let ((_%$%e181574181854%_
                                             (gx#stx-e _%$%hd181572181849%_)))
                                        (let ((_%$%hd181575181857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181574181854%_)))
                                              (_%$%tl181576181859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181574181854%_))))
                                          (if (gx#identifier?
                                               _%$%hd181575181857%_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _%$%hd181575181857%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl181576181859%_)
                                                      (let ((_%$%e181577181862%_
                                                             (gx#stx-e
                                                              _%$%tl181576181859%_)))
                                                        (let ((_%$%hd181578181865%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e181577181862%_)))
                      (_%$%tl181579181867%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e181577181862%_))))
                  (if (gx#stx-pair? _%$%hd181578181865%_)
                      (let ((_%$%e181580181870%_
                             (gx#stx-e _%$%hd181578181865%_)))
                        (let ((_%$%hd181581181873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e181580181870%_)))
                              (_%$%tl181582181875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e181580181870%_))))
                          (if (gx#identifier? _%$%hd181581181873%_)
                              (if (gx#stx-eq? '%#ref _%$%hd181581181873%_)
                                  (if (gx#stx-pair? _%$%tl181582181875%_)
                                      (let ((_%$%e181583181878%_
                                             (gx#stx-e _%$%tl181582181875%_)))
                                        (let ((_%$%hd181584181881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181583181878%_)))
                                              (_%$%tl181585181883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181583181878%_))))
                                          (if (gx#stx-null?
                                               _%$%tl181585181883%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl181579181867%_)
                                                  (let ((_%$%e181586181886%_
                                                         (gx#stx-e
                                                          _%$%tl181579181867%_)))
                                                    (let ((_%$%hd181587181889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e181586181886%_)))
                                                          (_%$%tl181588181891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e181586181886%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd181587181889%_)
                                                          (let ((_%$%e181589181894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd181587181889%_)))
                    (let ((_%$%hd181590181897%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181589181894%_)))
                          (_%$%tl181591181899%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181589181894%_))))
                      (if (gx#identifier? _%$%hd181590181897%_)
                          (if (gx#stx-eq? '%#ref _%$%hd181590181897%_)
                              (if (gx#stx-pair? _%$%tl181591181899%_)
                                  (let ((_%$%e181592181902%_
                                         (gx#stx-e _%$%tl181591181899%_)))
                                    (let ((_%$%hd181593181905%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181592181902%_)))
                                          (_%$%tl181594181907%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181592181902%_))))
                                      (if (gx#stx-null? _%$%tl181594181907%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl181588181891%_)
                                              (if (fx>= (gx#stx-length
                                                         _%$%tl181588181891%_)
                                                        '1)
                                                  (let ((_g183597_
                                                         (gx#syntax-split-splice
                                                          _%$%tl181588181891%_
                                                          '1)))
                                                    (begin
                                                      (let ((_g183598_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g183597_)
                           (##values-length _g183597_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g183598_ 2)))
                    (error "Context expects 2 values" _g183598_)))
              (let ((_%$%target181595181910%_
                     (let () (declare (not safe)) (##values-ref _g183597_ 0)))
                    (_%$%tl181597181912%_
                     (let () (declare (not safe)) (##values-ref _g183597_ 1))))
                (if (gx#stx-pair? _%$%tl181597181912%_)
                    (let ((_%$%e181604181915%_
                           (gx#stx-e _%$%tl181597181912%_)))
                      (let ((_%$%hd181605181918%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e181604181915%_)))
                            (_%$%tl181606181920%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e181604181915%_))))
                        (if (gx#stx-pair? _%$%hd181605181918%_)
                            (let ((_%$%e181607181923%_
                                   (gx#stx-e _%$%hd181605181918%_)))
                              (let ((_%$%hd181608181926%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e181607181923%_)))
                                    (_%$%tl181609181928%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e181607181923%_))))
                                (if (gx#identifier? _%$%hd181608181926%_)
                                    (if (gx#stx-eq?
                                         '%#ref
                                         _%$%hd181608181926%_)
                                        (if (gx#stx-pair? _%$%tl181609181928%_)
                                            (let ((_%$%e181610181931%_
                                                   (gx#stx-e
                                                    _%$%tl181609181928%_)))
                                              (let ((_%$%hd181611181934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e181610181931%_)))
                                                    (_%$%tl181612181936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e181610181931%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl181612181936%_)
                                                    (if (gx#stx-null?
                                                         _%$%tl181606181920%_)
                                                        (letrec ((_%$%loop181598181939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd181596181942%_ _%$%xarg181602181944%_)
                            (if (gx#stx-pair? _%$%hd181596181942%_)
                                (let ((_%$%e181599181946%_
                                       (gx#stx-e _%$%hd181596181942%_)))
                                  (let ((_%$%lp-hd181600181949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e181599181946%_)))
                                        (_%$%lp-tl181601181951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e181599181946%_))))
                                    (if (gx#stx-pair? _%$%lp-hd181600181949%_)
                                        (let ((_%$%e181613181954%_
                                               (gx#stx-e
                                                _%$%lp-hd181600181949%_)))
                                          (let ((_%$%hd181614181957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e181613181954%_)))
                                                (_%$%tl181615181959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e181613181954%_))))
                                            (if (gx#identifier?
                                                 _%$%hd181614181957%_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _%$%hd181614181957%_)
                                                    (if (gx#stx-pair?
                                                         _%$%tl181615181959%_)
                                                        (let ((_%$%e181616181962%_
                                                               (gx#stx-e
                                                                _%$%tl181615181959%_)))
                                                          (let ((_%$%hd181617181965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e181616181962%_)))
                        (_%$%tl181618181967%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e181616181962%_))))
                    (if (gx#stx-null? _%$%tl181618181967%_)
                        (_%$%loop181598181939%_
                         _%$%lp-tl181601181951%_
                         (cons _%$%hd181617181965%_ _%$%xarg181602181944%_))
                        (_%$%g181504181811%_ _%$%g181507181814%_))))
                (_%$%g181504181811%_ _%$%g181507181814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g181504181811%_
                                                     _%$%g181507181814%_))
                                                (_%$%g181504181811%_
                                                 _%$%g181507181814%_))))
                                        (_%$%g181504181811%_
                                         _%$%g181507181814%_))))
                                (let ((_%$%xarg181603181970%_
                                       (reverse _%$%xarg181602181944%_)))
                                  (if (gx#stx-null? _%$%tl181573181851%_)
                                      ((lambda (_%$%g181553181972%_
                                                _%$%g181554181973%_
                                                _%$%g181555181974%_
                                                _%$%g181556181975%_
                                                _%$%g181557181976%_
                                                _%$%g181558181977%_)
                                         (if (and (gx#identifier-list?
                                                   (foldr (lambda (_%$%g182020182023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g182021182025%_)
                    (cons _%$%g182020182023%_ _%$%g182021182025%_))
                  '()
                  _%$%g181558181977%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#identifier?
                                                   _%$%g181557181976%_)
                                                  (gxc#runtime-identifier=?
                                                   _%$%g181556181975%_
                                                   'apply)
                                                  (fx= (length (foldr (lambda (_%$%g182027182030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%$%g182028182032%_)
                                (cons _%$%g182027182030%_ _%$%g182028182032%_))
                              '()
                              _%$%g181558181977%_))
               (length (foldr (lambda (_%$%g182034182037%_ _%$%g182035182039%_)
                                (cons _%$%g182034182037%_ _%$%g182035182039%_))
                              '()
                              _%$%g181554181973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (andmap gx#free-identifier=?
                                                          (foldr (lambda (_%$%g182041182044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g182042182046%_)
                           (cons _%$%g182041182044%_ _%$%g182042182046%_))
                         '()
                         _%$%g181558181977%_)
                  (foldr (lambda (_%$%g182048182051%_ _%$%g182049182053%_)
                           (cons _%$%g182048182051%_ _%$%g182049182053%_))
                         '()
                         _%$%g181554181973%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#free-identifier=?
                                                   _%$%g181557181976%_
                                                   _%$%g181553181972%_)
                                                  (not (find (lambda (_%$%g182055182057%_)
                                                               (gx#free-identifier=?
                                                                _%$%g182055182057%_
                                                                _%$%g181555181974%_))
                                                             (foldr (lambda (_%$%g182059182062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g182060182064%_)
                              (cons _%$%g182059182062%_ _%$%g182060182064%_))
                            (cons _%$%g181557181976%_ '())
                            _%$%g181558181977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '#t
                                             (_%$%g181504181811%_
                                              _%$%g181507181814%_)))
                                       _%$%hd181611181934%_
                                       _%$%xarg181603181970%_
                                       _%$%hd181593181905%_
                                       _%$%hd181584181881%_
                                       _%$%tl181564181826%_
                                       _%$%arg181570181844%_)
                                      (_%$%g181504181811%_
                                       _%$%g181507181814%_)))))))
                  (_%$%loop181598181939%_ _%$%target181595181910%_ '()))
                (_%$%g181504181811%_ _%$%g181507181814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g181504181811%_
                                                     _%$%g181507181814%_))))
                                            (_%$%g181504181811%_
                                             _%$%g181507181814%_))
                                        (_%$%g181504181811%_
                                         _%$%g181507181814%_))
                                    (_%$%g181504181811%_
                                     _%$%g181507181814%_))))
                            (_%$%g181504181811%_ _%$%g181507181814%_))))
                    (_%$%g181504181811%_ _%$%g181507181814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181504181811%_
                                                   _%$%g181507181814%_))
                                              (_%$%g181504181811%_
                                               _%$%g181507181814%_))
                                          (_%$%g181504181811%_
                                           _%$%g181507181814%_))))
                                  (_%$%g181504181811%_ _%$%g181507181814%_))
                              (_%$%g181504181811%_ _%$%g181507181814%_))
                          (_%$%g181504181811%_ _%$%g181507181814%_))))
                  (_%$%g181504181811%_ _%$%g181507181814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181504181811%_
                                                   _%$%g181507181814%_))
                                              (_%$%g181504181811%_
                                               _%$%g181507181814%_))))
                                      (_%$%g181504181811%_
                                       _%$%g181507181814%_))
                                  (_%$%g181504181811%_ _%$%g181507181814%_))
                              (_%$%g181504181811%_ _%$%g181507181814%_))))
                      (_%$%g181504181811%_ _%$%g181507181814%_))))
              (_%$%g181504181811%_ _%$%g181507181814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181504181811%_
                                                   _%$%g181507181814%_))
                                              (_%$%g181504181811%_
                                               _%$%g181507181814%_))))
                                      (_%$%g181504181811%_
                                       _%$%g181507181814%_))))
                              (_%$%g181504181811%_ _%$%g181507181814%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop181565181829%_
                                                   _%$%target181562181824%_
                                                   '())))))
                                          (_%$%g181504181811%_
                                           _%$%g181507181814%_))))
                                  (_%$%g181504181811%_ _%$%g181507181814%_))))
                           (_%$%g181502182257%_
                            (lambda (_%$%g181507182070%_)
                              (if (gx#stx-pair? _%$%g181507182070%_)
                                  (let ((_%$%e181511182072%_
                                         (gx#stx-e _%$%g181507182070%_)))
                                    (let ((_%$%hd181512182075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181511182072%_)))
                                          (_%$%tl181513182077%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181511182072%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd181512182075%_)
                                          (let ((_g183599_
                                                 (gx#syntax-split-splice
                                                  _%$%hd181512182075%_
                                                  '0)))
                                            (begin
                                              (let ((_g183600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183599_)
                                                           (##values-length
                                                            _g183599_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183600_)))
                                              (let ((_%$%target181514182080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183599_
                                                        0)))
                                                    (_%$%tl181516182082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183599_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl181516182082%_)
                                                    (letrec ((_%$%loop181517182085%_
                                                              (lambda (_%$%hd181515182088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%arg181521182090%_)
                        (if (gx#stx-pair? _%$%hd181515182088%_)
                            (let ((_%$%e181518182092%_
                                   (gx#stx-e _%$%hd181515182088%_)))
                              (let ((_%$%lp-hd181519182095%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e181518182092%_)))
                                    (_%$%lp-tl181520182097%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e181518182092%_))))
                                (_%$%loop181517182085%_
                                 _%$%lp-tl181520182097%_
                                 (cons _%$%lp-hd181519182095%_
                                       _%$%arg181521182090%_))))
                            (let ((_%$%arg181522182100%_
                                   (reverse _%$%arg181521182090%_)))
                              (if (gx#stx-pair? _%$%tl181513182077%_)
                                  (let ((_%$%e181523182102%_
                                         (gx#stx-e _%$%tl181513182077%_)))
                                    (let ((_%$%hd181524182105%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181523182102%_)))
                                          (_%$%tl181525182107%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181523182102%_))))
                                      (if (gx#stx-pair? _%$%hd181524182105%_)
                                          (let ((_%$%e181526182110%_
                                                 (gx#stx-e
                                                  _%$%hd181524182105%_)))
                                            (let ((_%$%hd181527182113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e181526182110%_)))
                                                  (_%$%tl181528182115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e181526182110%_))))
                                              (if (gx#identifier?
                                                   _%$%hd181527182113%_)
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _%$%hd181527182113%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl181528182115%_)
                                                          (let ((_%$%e181529182118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl181528182115%_)))
                    (let ((_%$%hd181530182121%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181529182118%_)))
                          (_%$%tl181531182123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181529182118%_))))
                      (if (gx#stx-pair? _%$%hd181530182121%_)
                          (let ((_%$%e181532182126%_
                                 (gx#stx-e _%$%hd181530182121%_)))
                            (let ((_%$%hd181533182129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e181532182126%_)))
                                  (_%$%tl181534182131%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e181532182126%_))))
                              (if (gx#identifier? _%$%hd181533182129%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd181533182129%_)
                                      (if (gx#stx-pair? _%$%tl181534182131%_)
                                          (let ((_%$%e181535182134%_
                                                 (gx#stx-e
                                                  _%$%tl181534182131%_)))
                                            (let ((_%$%hd181536182137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e181535182134%_)))
                                                  (_%$%tl181537182139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e181535182134%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl181537182139%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl181531182123%_)
                                                      (let ((_g183601_
                                                             (gx#syntax-split-splice
                                                              _%$%tl181531182123%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g183602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g183601_)
                               (##values-length _g183601_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g183602_ 2)))
                        (error "Context expects 2 values" _g183602_)))
                  (let ((_%$%target181538182142%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g183601_ 0)))
                        (_%$%tl181540182144%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g183601_ 1))))
                    (if (gx#stx-null? _%$%tl181540182144%_)
                        (letrec ((_%$%loop181541182147%_
                                  (lambda (_%$%hd181539182150%_
                                           _%$%xarg181545182152%_)
                                    (if (gx#stx-pair? _%$%hd181539182150%_)
                                        (let ((_%$%e181542182154%_
                                               (gx#stx-e
                                                _%$%hd181539182150%_)))
                                          (let ((_%$%lp-hd181543182157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e181542182154%_)))
                                                (_%$%lp-tl181544182159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e181542182154%_))))
                                            (if (gx#stx-pair?
                                                 _%$%lp-hd181543182157%_)
                                                (let ((_%$%e181547182162%_
                                                       (gx#stx-e
                                                        _%$%lp-hd181543182157%_)))
                                                  (let ((_%$%hd181548182165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e181547182162%_)))
                                                        (_%$%tl181549182167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e181547182162%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd181548182165%_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd181548182165%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl181549182167%_)
                        (let ((_%$%e181550182170%_
                               (gx#stx-e _%$%tl181549182167%_)))
                          (let ((_%$%hd181551182173%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e181550182170%_)))
                                (_%$%tl181552182175%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e181550182170%_))))
                            (if (gx#stx-null? _%$%tl181552182175%_)
                                (_%$%loop181541182147%_
                                 _%$%lp-tl181544182159%_
                                 (cons _%$%hd181551182173%_
                                       _%$%xarg181545182152%_))
                                (_%$%g181503182067%_ _%$%g181507182070%_))))
                        (_%$%g181503182067%_ _%$%g181507182070%_))
                    (_%$%g181503182067%_ _%$%g181507182070%_))
                (_%$%g181503182067%_ _%$%g181507182070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g181503182067%_
                                                 _%$%g181507182070%_))))
                                        (let ((_%$%xarg181546182178%_
                                               (reverse _%$%xarg181545182152%_)))
                                          (if (gx#stx-null?
                                               _%$%tl181525182107%_)
                                              ((lambda (_%$%g181508182180%_
                                                        _%$%g181509182181%_
                                                        _%$%g181510182182%_)
                                                 (if (and (gx#identifier-list?
                                                           (foldr (lambda (_%$%g182210182213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%$%g182211182215%_)
                            (cons _%$%g182210182213%_ _%$%g182211182215%_))
                          '()
                          _%$%g181510182182%_))
                  (fx= (length (foldr (lambda (_%$%g182217182220%_
                                               _%$%g182218182222%_)
                                        (cons _%$%g182217182220%_
                                              _%$%g182218182222%_))
                                      '()
                                      _%$%g181510182182%_))
                       (length (foldr (lambda (_%$%g182224182227%_
                                               _%$%g182225182229%_)
                                        (cons _%$%g182224182227%_
                                              _%$%g182225182229%_))
                                      '()
                                      _%$%g181508182180%_)))
                  (andmap gx#free-identifier=?
                          (foldr (lambda (_%$%g182231182234%_
                                          _%$%g182232182236%_)
                                   (cons _%$%g182231182234%_
                                         _%$%g182232182236%_))
                                 '()
                                 _%$%g181510182182%_)
                          (foldr (lambda (_%$%g182238182241%_
                                          _%$%g182239182243%_)
                                   (cons _%$%g182238182241%_
                                         _%$%g182239182243%_))
                                 '()
                                 _%$%g181508182180%_))
                  (not (find (lambda (_%$%g182245182247%_)
                               (gx#free-identifier=?
                                _%$%g182245182247%_
                                _%$%g181509182181%_))
                             (foldr (lambda (_%$%g182249182252%_
                                             _%$%g182250182254%_)
                                      (cons _%$%g182249182252%_
                                            _%$%g182250182254%_))
                                    '()
                                    _%$%g181510182182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_%$%g181503182067%_
                                                      _%$%g181507182070%_)))
                                               _%$%xarg181546182178%_
                                               _%$%hd181536182137%_
                                               _%$%arg181522182100%_)
                                              (_%$%g181503182067%_
                                               _%$%g181507182070%_)))))))
                          (_%$%loop181541182147%_
                           _%$%target181538182142%_
                           '()))
                        (_%$%g181503182067%_ _%$%g181507182070%_)))))
              (_%$%g181503182067%_ _%$%g181507182070%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181503182067%_
                                                   _%$%g181507182070%_))))
                                          (_%$%g181503182067%_
                                           _%$%g181507182070%_))
                                      (_%$%g181503182067%_
                                       _%$%g181507182070%_))
                                  (_%$%g181503182067%_ _%$%g181507182070%_))))
                          (_%$%g181503182067%_ _%$%g181507182070%_))))
                  (_%$%g181503182067%_ _%$%g181507182070%_))
              (_%$%g181503182067%_ _%$%g181507182070%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g181503182067%_
                                                   _%$%g181507182070%_))))
                                          (_%$%g181503182067%_
                                           _%$%g181507182070%_))))
                                  (_%$%g181503182067%_
                                   _%$%g181507182070%_)))))))
              (_%$%loop181517182085%_ _%$%target181514182080%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g181503182067%_
                                                     _%$%g181507182070%_)))))
                                          (_%$%g181503182067%_
                                           _%$%g181507182070%_))))
                                  (_%$%g181503182067%_ _%$%g181507182070%_)))))
                      (_%$%g181502182257%_ _%form181501%_))))
                 (_%dispatch-case-e180821%_
                  (lambda (_%hd180968%_ _%body180969%_)
                    (let* ((_%form180971%_
                            (cons _%hd180968%_ (cons _%body180969%_ '())))
                           (_%$%g180975181099%_
                            (lambda (_%$%g180976181096%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g180976181096%_)))
                           (_%$%g180974181217%_
                            (lambda (_%$%g180976181102%_)
                              (if (gx#stx-pair? _%$%g180976181102%_)
                                  (let ((_%$%e181065181104%_
                                         (gx#stx-e _%$%g180976181102%_)))
                                    (let ((_%$%hd181066181107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181065181104%_)))
                                          (_%$%tl181067181109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181065181104%_))))
                                      (if (gx#stx-pair? _%$%tl181067181109%_)
                                          (let ((_%$%e181068181112%_
                                                 (gx#stx-e
                                                  _%$%tl181067181109%_)))
                                            (let ((_%$%hd181069181115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e181068181112%_)))
                                                  (_%$%tl181070181117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e181068181112%_))))
                                              (if (gx#stx-pair?
                                                   _%$%hd181069181115%_)
                                                  (let ((_%$%e181071181120%_
                                                         (gx#stx-e
                                                          _%$%hd181069181115%_)))
                                                    (let ((_%$%hd181072181123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e181071181120%_)))
                                                          (_%$%tl181073181125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e181071181120%_))))
                                                      (if (gx#identifier?
                                                           _%$%hd181072181123%_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _%$%hd181072181123%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl181073181125%_)
                          (let ((_%$%e181074181128%_
                                 (gx#stx-e _%$%tl181073181125%_)))
                            (let ((_%$%hd181075181131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e181074181128%_)))
                                  (_%$%tl181076181133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e181074181128%_))))
                              (if (gx#stx-pair? _%$%hd181075181131%_)
                                  (let ((_%$%e181077181136%_
                                         (gx#stx-e _%$%hd181075181131%_)))
                                    (let ((_%$%hd181078181139%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181077181136%_)))
                                          (_%$%tl181079181141%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181077181136%_))))
                                      (if (gx#identifier? _%$%hd181078181139%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd181078181139%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl181079181141%_)
                                                  (let ((_%$%e181080181144%_
                                                         (gx#stx-e
                                                          _%$%tl181079181141%_)))
                                                    (let ((_%$%hd181081181147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e181080181144%_)))
                                                          (_%$%tl181082181149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e181080181144%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl181082181149%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl181076181133%_)
                                                              (let ((_%$%e181083181152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl181076181133%_)))
                        (let ((_%$%hd181084181155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e181083181152%_)))
                              (_%$%tl181085181157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e181083181152%_))))
                          (if (gx#stx-pair? _%$%hd181084181155%_)
                              (let ((_%$%e181086181160%_
                                     (gx#stx-e _%$%hd181084181155%_)))
                                (let ((_%$%hd181087181163%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e181086181160%_)))
                                      (_%$%tl181088181165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e181086181160%_))))
                                  (if (gx#identifier? _%$%hd181087181163%_)
                                      (if (gx#stx-eq?
                                           '%#ref
                                           _%$%hd181087181163%_)
                                          (if (gx#stx-pair?
                                               _%$%tl181088181165%_)
                                              (let ((_%$%e181089181168%_
                                                     (gx#stx-e
                                                      _%$%tl181088181165%_)))
                                                (let ((_%$%hd181090181171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e181089181168%_)))
                                                      (_%$%tl181091181173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e181089181168%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl181091181173%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl181085181157%_)
                                                          (let ((_%$%e181092181176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl181085181157%_)))
                    (let ((_%$%hd181093181179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181092181176%_)))
                          (_%$%tl181094181181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181092181176%_))))
                      (if (gx#stx-null? _%$%tl181094181181%_)
                          (if (gx#stx-null? _%$%tl181070181117%_)
                              ((lambda (_%$%g181062181184%_
                                        _%$%g181063181185%_
                                        _%$%g181064181186%_)
                                 (gxc#compile-e
                                  _%self180817%_
                                  (cons (gx#datum->syntax '#f '%#ref)
                                        (cons _%$%g181062181184%_ '()))))
                               _%$%hd181090181171%_
                               _%$%hd181081181147%_
                               _%$%hd181066181107%_)
                              (_%$%g180975181099%_ _%$%g180976181102%_))
                          (_%$%g180975181099%_ _%$%g180976181102%_))))
                  (_%$%g180975181099%_ _%$%g180976181102%_))
              (_%$%g180975181099%_ _%$%g180976181102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g180975181099%_
                                               _%$%g180976181102%_))
                                          (_%$%g180975181099%_
                                           _%$%g180976181102%_))
                                      (_%$%g180975181099%_
                                       _%$%g180976181102%_))))
                              (_%$%g180975181099%_ _%$%g180976181102%_))))
                      (_%$%g180975181099%_ _%$%g180976181102%_))
                  (_%$%g180975181099%_ _%$%g180976181102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180975181099%_
                                                   _%$%g180976181102%_))
                                              (_%$%g180975181099%_
                                               _%$%g180976181102%_))
                                          (_%$%g180975181099%_
                                           _%$%g180976181102%_))))
                                  (_%$%g180975181099%_ _%$%g180976181102%_))))
                          (_%$%g180975181099%_ _%$%g180976181102%_))
                      (_%$%g180975181099%_ _%$%g180976181102%_))
                  (_%$%g180975181099%_ _%$%g180976181102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180975181099%_
                                                   _%$%g180976181102%_))))
                                          (_%$%g180975181099%_
                                           _%$%g180976181102%_))))
                                  (_%$%g180975181099%_ _%$%g180976181102%_))))
                           (_%$%g180973181351%_
                            (lambda (_%$%g180976181220%_)
                              (if (gx#stx-pair? _%$%g180976181220%_)
                                  (let ((_%$%e181026181222%_
                                         (gx#stx-e _%$%g180976181220%_)))
                                    (let ((_%$%hd181027181225%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181026181222%_)))
                                          (_%$%tl181028181227%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181026181222%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd181027181225%_)
                                          (let ((_g183603_
                                                 (gx#syntax-split-splice
                                                  _%$%hd181027181225%_
                                                  '0)))
                                            (begin
                                              (let ((_g183604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183603_)
                                                           (##values-length
                                                            _g183603_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183604_)))
                                              (let ((_%$%target181029181230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183603_
                                                        0)))
                                                    (_%$%tl181031181232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183603_
                                                        1))))
                                                (letrec ((_%$%loop181032181235%_
                                                          (lambda (_%$%hd181030181238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg181036181240%_)
                    (if (gx#stx-pair? _%$%hd181030181238%_)
                        (let ((_%$%e181033181242%_
                               (gx#stx-e _%$%hd181030181238%_)))
                          (let ((_%$%lp-hd181034181245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e181033181242%_)))
                                (_%$%lp-tl181035181247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e181033181242%_))))
                            (_%$%loop181032181235%_
                             _%$%lp-tl181035181247%_
                             (cons _%$%lp-hd181034181245%_
                                   _%$%arg181036181240%_))))
                        (let ((_%$%arg181037181250%_
                               (reverse _%$%arg181036181240%_)))
                          (if (gx#stx-pair? _%$%tl181028181227%_)
                              (let ((_%$%e181038181252%_
                                     (gx#stx-e _%$%tl181028181227%_)))
                                (let ((_%$%hd181039181255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e181038181252%_)))
                                      (_%$%tl181040181257%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e181038181252%_))))
                                  (if (gx#stx-pair? _%$%hd181039181255%_)
                                      (let ((_%$%e181041181260%_
                                             (gx#stx-e _%$%hd181039181255%_)))
                                        (let ((_%$%hd181042181263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181041181260%_)))
                                              (_%$%tl181043181265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181041181260%_))))
                                          (if (gx#identifier?
                                               _%$%hd181042181263%_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _%$%hd181042181263%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl181043181265%_)
                                                      (let ((_%$%e181044181268%_
                                                             (gx#stx-e
                                                              _%$%tl181043181265%_)))
                                                        (let ((_%$%hd181045181271%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e181044181268%_)))
                      (_%$%tl181046181273%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e181044181268%_))))
                  (if (gx#stx-pair? _%$%hd181045181271%_)
                      (let ((_%$%e181047181276%_
                             (gx#stx-e _%$%hd181045181271%_)))
                        (let ((_%$%hd181048181279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e181047181276%_)))
                              (_%$%tl181049181281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e181047181276%_))))
                          (if (gx#identifier? _%$%hd181048181279%_)
                              (if (gx#stx-eq? '%#ref _%$%hd181048181279%_)
                                  (if (gx#stx-pair? _%$%tl181049181281%_)
                                      (let ((_%$%e181050181284%_
                                             (gx#stx-e _%$%tl181049181281%_)))
                                        (let ((_%$%hd181051181287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181050181284%_)))
                                              (_%$%tl181052181289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181050181284%_))))
                                          (if (gx#stx-null?
                                               _%$%tl181052181289%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl181046181273%_)
                                                  (let ((_%$%e181053181292%_
                                                         (gx#stx-e
                                                          _%$%tl181046181273%_)))
                                                    (let ((_%$%hd181054181295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e181053181292%_)))
                                                          (_%$%tl181055181297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e181053181292%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%hd181054181295%_)
                                                          (let ((_%$%e181056181300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd181054181295%_)))
                    (let ((_%$%hd181057181303%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181056181300%_)))
                          (_%$%tl181058181305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181056181300%_))))
                      (if (gx#identifier? _%$%hd181057181303%_)
                          (if (gx#stx-eq? '%#ref _%$%hd181057181303%_)
                              (if (gx#stx-pair? _%$%tl181058181305%_)
                                  (let ((_%$%e181059181308%_
                                         (gx#stx-e _%$%tl181058181305%_)))
                                    (let ((_%$%hd181060181311%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e181059181308%_)))
                                          (_%$%tl181061181313%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e181059181308%_))))
                                      (if (gx#stx-null? _%$%tl181061181313%_)
                                          (if (gx#stx-null?
                                               _%$%tl181040181257%_)
                                              ((lambda (_%$%g181022181316%_
                                                        _%$%g181023181317%_
                                                        _%$%g181024181318%_
                                                        _%$%g181025181319%_)
                                                 (gxc#compile-e
                                                  _%self180817%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '%#ref)
                                                        (cons _%$%g181022181316%_
                                                              '()))))
                                               _%$%hd181060181311%_
                                               _%$%hd181051181287%_
                                               _%$%tl181031181232%_
                                               _%$%arg181037181250%_)
                                              (_%$%g180974181217%_
                                               _%$%g180976181220%_))
                                          (_%$%g180974181217%_
                                           _%$%g180976181220%_))))
                                  (_%$%g180974181217%_ _%$%g180976181220%_))
                              (_%$%g180974181217%_ _%$%g180976181220%_))
                          (_%$%g180974181217%_ _%$%g180976181220%_))))
                  (_%$%g180974181217%_ _%$%g180976181220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180974181217%_
                                                   _%$%g180976181220%_))
                                              (_%$%g180974181217%_
                                               _%$%g180976181220%_))))
                                      (_%$%g180974181217%_
                                       _%$%g180976181220%_))
                                  (_%$%g180974181217%_ _%$%g180976181220%_))
                              (_%$%g180974181217%_ _%$%g180976181220%_))))
                      (_%$%g180974181217%_ _%$%g180976181220%_))))
              (_%$%g180974181217%_ _%$%g180976181220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180974181217%_
                                                   _%$%g180976181220%_))
                                              (_%$%g180974181217%_
                                               _%$%g180976181220%_))))
                                      (_%$%g180974181217%_
                                       _%$%g180976181220%_))))
                              (_%$%g180974181217%_ _%$%g180976181220%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop181032181235%_
                                                   _%$%target181029181230%_
                                                   '())))))
                                          (_%$%g180974181217%_
                                           _%$%g180976181220%_))))
                                  (_%$%g180974181217%_ _%$%g180976181220%_))))
                           (_%$%g180972181495%_
                            (lambda (_%$%g180976181354%_)
                              (if (gx#stx-pair? _%$%g180976181354%_)
                                  (let ((_%$%e180980181356%_
                                         (gx#stx-e _%$%g180976181354%_)))
                                    (let ((_%$%hd180981181359%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e180980181356%_)))
                                          (_%$%tl180982181361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e180980181356%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd180981181359%_)
                                          (let ((_g183605_
                                                 (gx#syntax-split-splice
                                                  _%$%hd180981181359%_
                                                  '0)))
                                            (begin
                                              (let ((_g183606_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183605_)
                                                           (##values-length
                                                            _g183605_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183606_)))
                                              (let ((_%$%target180983181364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183605_
                                                        0)))
                                                    (_%$%tl180985181366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g183605_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl180985181366%_)
                                                    (letrec ((_%$%loop180986181369%_
                                                              (lambda (_%$%hd180984181372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%arg180990181374%_)
                        (if (gx#stx-pair? _%$%hd180984181372%_)
                            (let ((_%$%e180987181376%_
                                   (gx#stx-e _%$%hd180984181372%_)))
                              (let ((_%$%lp-hd180988181379%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e180987181376%_)))
                                    (_%$%lp-tl180989181381%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e180987181376%_))))
                                (_%$%loop180986181369%_
                                 _%$%lp-tl180989181381%_
                                 (cons _%$%lp-hd180988181379%_
                                       _%$%arg180990181374%_))))
                            (let ((_%$%arg180991181384%_
                                   (reverse _%$%arg180990181374%_)))
                              (if (gx#stx-pair? _%$%tl180982181361%_)
                                  (let ((_%$%e180992181386%_
                                         (gx#stx-e _%$%tl180982181361%_)))
                                    (let ((_%$%hd180993181389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e180992181386%_)))
                                          (_%$%tl180994181391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e180992181386%_))))
                                      (if (gx#stx-pair? _%$%hd180993181389%_)
                                          (let ((_%$%e180995181394%_
                                                 (gx#stx-e
                                                  _%$%hd180993181389%_)))
                                            (let ((_%$%hd180996181397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e180995181394%_)))
                                                  (_%$%tl180997181399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e180995181394%_))))
                                              (if (gx#identifier?
                                                   _%$%hd180996181397%_)
                                                  (if (gx#stx-eq?
                                                       '%#call
                                                       _%$%hd180996181397%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl180997181399%_)
                                                          (let ((_%$%e180998181402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl180997181399%_)))
                    (let ((_%$%hd180999181405%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e180998181402%_)))
                          (_%$%tl181000181407%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e180998181402%_))))
                      (if (gx#stx-pair? _%$%hd180999181405%_)
                          (let ((_%$%e181001181410%_
                                 (gx#stx-e _%$%hd180999181405%_)))
                            (let ((_%$%hd181002181413%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e181001181410%_)))
                                  (_%$%tl181003181415%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e181001181410%_))))
                              (if (gx#identifier? _%$%hd181002181413%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd181002181413%_)
                                      (if (gx#stx-pair? _%$%tl181003181415%_)
                                          (let ((_%$%e181004181418%_
                                                 (gx#stx-e
                                                  _%$%tl181003181415%_)))
                                            (let ((_%$%hd181005181421%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e181004181418%_)))
                                                  (_%$%tl181006181423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e181004181418%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl181006181423%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl181000181407%_)
                                                      (let ((_g183607_
                                                             (gx#syntax-split-splice
                                                              _%$%tl181000181407%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g183608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g183607_)
                               (##values-length _g183607_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g183608_ 2)))
                        (error "Context expects 2 values" _g183608_)))
                  (let ((_%$%target181007181426%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g183607_ 0)))
                        (_%$%tl181009181428%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g183607_ 1))))
                    (if (gx#stx-null? _%$%tl181009181428%_)
                        (letrec ((_%$%loop181010181431%_
                                  (lambda (_%$%hd181008181434%_
                                           _%$%xarg181014181436%_)
                                    (if (gx#stx-pair? _%$%hd181008181434%_)
                                        (let ((_%$%e181011181438%_
                                               (gx#stx-e
                                                _%$%hd181008181434%_)))
                                          (let ((_%$%lp-hd181012181441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e181011181438%_)))
                                                (_%$%lp-tl181013181443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e181011181438%_))))
                                            (if (gx#stx-pair?
                                                 _%$%lp-hd181012181441%_)
                                                (let ((_%$%e181016181446%_
                                                       (gx#stx-e
                                                        _%$%lp-hd181012181441%_)))
                                                  (let ((_%$%hd181017181449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e181016181446%_)))
                                                        (_%$%tl181018181451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e181016181446%_))))
                                                    (if (gx#identifier?
                                                         _%$%hd181017181449%_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _%$%hd181017181449%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl181018181451%_)
                        (let ((_%$%e181019181454%_
                               (gx#stx-e _%$%tl181018181451%_)))
                          (let ((_%$%hd181020181457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e181019181454%_)))
                                (_%$%tl181021181459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e181019181454%_))))
                            (if (gx#stx-null? _%$%tl181021181459%_)
                                (_%$%loop181010181431%_
                                 _%$%lp-tl181013181443%_
                                 (cons _%$%hd181020181457%_
                                       _%$%xarg181014181436%_))
                                (_%$%g180973181351%_ _%$%g180976181354%_))))
                        (_%$%g180973181351%_ _%$%g180976181354%_))
                    (_%$%g180973181351%_ _%$%g180976181354%_))
                (_%$%g180973181351%_ _%$%g180976181354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g180973181351%_
                                                 _%$%g180976181354%_))))
                                        (let ((_%$%xarg181015181462%_
                                               (reverse _%$%xarg181014181436%_)))
                                          (if (gx#stx-null?
                                               _%$%tl180994181391%_)
                                              ((lambda (_%$%g180977181464%_
                                                        _%$%g180978181465%_
                                                        _%$%g180979181466%_)
                                                 (gxc#compile-e
                                                  _%self180817%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '%#ref)
                                                        (cons _%$%g180978181465%_
                                                              '()))))
                                               _%$%xarg181015181462%_
                                               _%$%hd181005181421%_
                                               _%$%arg180991181384%_)
                                              (_%$%g180973181351%_
                                               _%$%g180976181354%_)))))))
                          (_%$%loop181010181431%_
                           _%$%target181007181426%_
                           '()))
                        (_%$%g180973181351%_ _%$%g180976181354%_)))))
              (_%$%g180973181351%_ _%$%g180976181354%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180973181351%_
                                                   _%$%g180976181354%_))))
                                          (_%$%g180973181351%_
                                           _%$%g180976181354%_))
                                      (_%$%g180973181351%_
                                       _%$%g180976181354%_))
                                  (_%$%g180973181351%_ _%$%g180976181354%_))))
                          (_%$%g180973181351%_ _%$%g180976181354%_))))
                  (_%$%g180973181351%_ _%$%g180976181354%_))
              (_%$%g180973181351%_ _%$%g180976181354%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180973181351%_
                                                   _%$%g180976181354%_))))
                                          (_%$%g180973181351%_
                                           _%$%g180976181354%_))))
                                  (_%$%g180973181351%_
                                   _%$%g180976181354%_)))))))
              (_%$%loop180986181369%_ _%$%target180983181364%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g180973181351%_
                                                     _%$%g180976181354%_)))))
                                          (_%$%g180973181351%_
                                           _%$%g180976181354%_))))
                                  (_%$%g180973181351%_ _%$%g180976181354%_)))))
                      (_%$%g180972181495%_ _%form180971%_))))
                 (_%generate1180822%_
                  (lambda (_%args180953%_
                           _%arglen180954%_
                           _%hd180955%_
                           _%body180956%_)
                    (let* ((_%len180958%_ (gx#stx-length _%hd180955%_))
                           (_%condition180963%_
                            (if (gx#stx-list? _%hd180955%_)
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen180954%_
                                                (cons _%len180958%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen180954%_ (cons _%len180958%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len180958%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen180954%_
                                                    (cons _%len180958%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen180954%_ (cons _%len180958%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch180965%_
                            (if (_%dispatch-case?180820%_
                                 _%hd180955%_
                                 _%body180956%_)
                                (_%dispatch-case-e180821%_
                                 _%hd180955%_
                                 _%body180956%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self180817%_
                                 _%hd180955%_
                                 _%body180956%_))))
                      (cons _%condition180963%_
                            (cons (cons 'apply
                                        (cons _%dispatch180965%_
                                              (cons _%args180953%_ '())))
                                  '()))))))
          (let* ((_%$%g180824180852%_
                  (lambda (_%$%g180825180849%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g180825180849%_)))
                 (_%$%g180823180950%_
                  (lambda (_%$%g180825180855%_)
                    (if (gx#stx-pair? _%$%g180825180855%_)
                        (let ((_%$%e180828180857%_
                               (gx#stx-e _%$%g180825180855%_)))
                          (let ((_%$%hd180829180860%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e180828180857%_)))
                                (_%$%tl180830180862%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e180828180857%_))))
                            (if (gx#stx-pair/null? _%$%tl180830180862%_)
                                (let ((_g183609_
                                       (gx#syntax-split-splice
                                        _%$%tl180830180862%_
                                        '0)))
                                  (begin
                                    (let ((_g183610_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g183609_)
                                                 (##values-length _g183609_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g183610_ 2)))
                                          (error "Context expects 2 values"
                                                 _g183610_)))
                                    (let ((_%$%target180831180865%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g183609_ 0)))
                                          (_%$%tl180833180867%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g183609_ 1))))
                                      (if (gx#stx-null? _%$%tl180833180867%_)
                                          (letrec ((_%$%loop180834180870%_
                                                    (lambda (_%$%hd180832180873%_
                                                             _%$%body180838180875%_
                                                             _%$%hd180839180876%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd180832180873%_)
                                                          (let ((_%$%e180835180878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd180832180873%_)))
                    (let ((_%$%lp-hd180836180881%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e180835180878%_)))
                          (_%$%lp-tl180837180883%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e180835180878%_))))
                      (if (gx#stx-pair? _%$%lp-hd180836180881%_)
                          (let ((_%$%e180842180886%_
                                 (gx#stx-e _%$%lp-hd180836180881%_)))
                            (let ((_%$%hd180843180889%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e180842180886%_)))
                                  (_%$%tl180844180891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e180842180886%_))))
                              (if (gx#stx-pair? _%$%tl180844180891%_)
                                  (let ((_%$%e180845180894%_
                                         (gx#stx-e _%$%tl180844180891%_)))
                                    (let ((_%$%hd180846180897%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e180845180894%_)))
                                          (_%$%tl180847180899%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e180845180894%_))))
                                      (if (gx#stx-null? _%$%tl180847180899%_)
                                          (_%$%loop180834180870%_
                                           _%$%lp-tl180837180883%_
                                           (cons _%$%hd180846180897%_
                                                 _%$%body180838180875%_)
                                           (cons _%$%hd180843180889%_
                                                 _%$%hd180839180876%_))
                                          (_%$%g180824180852%_
                                           _%$%g180825180855%_))))
                                  (_%$%g180824180852%_ _%$%g180825180855%_))))
                          (_%$%g180824180852%_ _%$%g180825180855%_))))
                  (let ((_%$%body180840180902%_
                         (reverse _%$%body180838180875%_))
                        (_%$%hd180841180903%_ (reverse _%$%hd180839180876%_)))
                    ((lambda (_%$%g180826180905%_ _%$%g180827180906%_)
                       (let ((_%args180925%_ (gxc#generate-runtime-temporary))
                             (_%arglen180926%_
                              (gxc#generate-runtime-temporary))
                             (_%name180927%_
                              (let ((_%$e180922%_
                                     (hash-get
                                      (gxc#current-compile-runtime-names)
                                      _%stx180818%_)))
                                (if _%$e180922%_
                                    _%$e180922%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args180925%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen180926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args180925%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args180925%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (foldr cons
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name180927%_
                                                                (cons _%args180925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '())
                                  (map (lambda (_%$%g180928180931%_
                                                _%$%g180929180933%_)
                                         (_%generate1180822%_
                                          _%args180925%_
                                          _%arglen180926%_
                                          _%$%g180928180931%_
                                          _%$%g180929180933%_))
                                       (foldr (lambda (_%$%g180935180938%_
                                                       _%$%g180936180940%_)
                                                (cons _%$%g180935180938%_
                                                      _%$%g180936180940%_))
                                              '()
                                              _%$%g180827180906%_)
                                       (foldr (lambda (_%$%g180942180945%_
                                                       _%$%g180943180947%_)
                                                (cons _%$%g180942180945%_
                                                      _%$%g180943180947%_))
                                              '()
                                              _%$%g180826180905%_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%$%body180840180902%_
                     _%$%hd180841180903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop180834180870%_
                                             _%$%target180831180865%_
                                             '()
                                             '()))
                                          (_%$%g180824180852%_
                                           _%$%g180825180855%_)))))
                                (_%$%g180824180852%_ _%$%g180825180855%_))))
                        (_%$%g180824180852%_ _%$%g180825180855%_)))))
            (_%$%g180823180950%_ _%stx180818%_)))))
    (define gxc#generate-runtime-let-values%
      (let ((_%$%opt-lambda180052180805%_
             (lambda (_%self180054%_ _%stx180055%_ _%compiled-body?180056%_)
               (letrec ((_%generate-simple180058%_
                         (lambda (_%hd180802%_ _%body180803%_)
                           (_%coalesce-boolean180059%_
                            (_%simplify-let180060%_
                             (gxc#generate-runtime-simple-let
                              _%self180054%_
                              'let
                              _%hd180802%_
                              _%body180803%_
                              _%compiled-body?180056%_)))))
                        (_%coalesce-boolean180059%_
                         (lambda (_%code180663%_)
                           (if (gxc#current-compile-boolean-context)
                               (let* ((_%$%code180664180690%_ _%code180663%_)
                                      (_%$%E180667180694%_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _%$%code180664180690%_
                                                '(['let
                                                   [[id expr1]]
                                                   ['if
                                                    (eq? id)
                                                    (eq? id)
                                                    expr2]])
                                                'else)
                                         (void)))
                                      (_%$%else180666180698%_
                                       (lambda () _%code180663%_))
                                      (_%$%K180668180735%_
                                       (lambda (_%expr2180701%_
                                                _%expr1180702%_
                                                _%id180703%_)
                                         (let* ((_%$%expr2180704180712%_
                                                 _%expr2180701%_)
                                                (_%$%E180707180716%_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _%$%expr2180704180712%_
                                                          '(['or . exprs])
                                                          'else)
                                                   (void)))
                                                (_%$%else180706180720%_
                                                 (lambda ()
                                                   (cons 'or
                                                         (cons _%expr1180702%_
                                                               (cons _%expr2180701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K180708180725%_
                                                 (lambda (_%exprs180723%_)
                                                   (cons 'or
                                                         (cons _%expr1180702%_
                                                               _%exprs180723%_)))))
                                           (if (pair? _%$%expr2180704180712%_)
                                               (let ((_%$%hd180709180728%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%expr2180704180712%_)))
                                                     (_%$%tl180710180730%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%expr2180704180712%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##eq? _%$%hd180709180728%_
                                                              'or))
                                                     (let ((_%exprs180733%_
                                                            _%$%tl180710180730%_))
                                                       (_%$%K180708180725%_
                                                        _%exprs180733%_))
                                                     (_%$%else180706180720%_)))
                                               (_%$%else180706180720%_))))))
                                 (if (pair? _%$%code180664180690%_)
                                     (let ((_%$%hd180669180738%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%code180664180690%_)))
                                           (_%$%tl180670180740%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%code180664180690%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##eq? _%$%hd180669180738%_ 'let))
                                           (if (pair? _%$%tl180670180740%_)
                                               (let ((_%$%hd180671180743%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tl180670180740%_)))
                                                     (_%$%tl180672180745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tl180670180740%_))))
                                                 (if (pair? _%$%hd180671180743%_)
                                                     (let ((_%$%hd180683180748%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%hd180671180743%_)))
                                                           (_%$%tl180684180750%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%hd180671180743%_))))
                                                       (if (pair? _%$%hd180683180748%_)
                                                           (let ((_%$%hd180685180753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd180683180748%_)))
                         (_%$%tl180686180755%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd180683180748%_))))
                     (let ((_%id180758%_ _%$%hd180685180753%_))
                       (if (pair? _%$%tl180686180755%_)
                           (let ((_%$%hd180687180760%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%tl180686180755%_)))
                                 (_%$%tl180688180762%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%tl180686180755%_))))
                             (let ((_%expr1180765%_ _%$%hd180687180760%_))
                               (if (null? _%$%tl180688180762%_)
                                   (if (null? _%$%tl180684180750%_)
                                       (if (pair? _%$%tl180672180745%_)
                                           (let ((_%$%hd180673180767%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%tl180672180745%_)))
                                                 (_%$%tl180674180769%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%tl180672180745%_))))
                                             (if (pair? _%$%hd180673180767%_)
                                                 (let ((_%$%hd180675180772%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd180673180767%_)))
                                                       (_%$%tl180676180774%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd180673180767%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##eq? _%$%hd180675180772%_
                                                                'if))
                                                       (if (pair? _%$%tl180676180774%_)
                                                           (let ((_%$%hd180677180777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##car _%$%tl180676180774%_)))
                         (_%$%tl180678180779%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%tl180676180774%_))))
                     (if ((lambda (_%$%g180781180783%_)
                            (eq? _%$%g180781180783%_ _%id180758%_))
                          _%$%hd180677180777%_)
                         (if (pair? _%$%tl180678180779%_)
                             (let ((_%$%hd180679180786%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%tl180678180779%_)))
                                   (_%$%tl180680180788%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl180678180779%_))))
                               (if ((lambda (_%$%g180790180792%_)
                                      (eq? _%$%g180790180792%_ _%id180758%_))
                                    _%$%hd180679180786%_)
                                   (if (pair? _%$%tl180680180788%_)
                                       (let ((_%$%hd180681180795%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%tl180680180788%_)))
                                             (_%$%tl180682180797%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl180680180788%_))))
                                         (let ((_%expr2180800%_
                                                _%$%hd180681180795%_))
                                           (if (null? _%$%tl180682180797%_)
                                               (if (null? _%$%tl180674180769%_)
                                                   (_%$%K180668180735%_
                                                    _%expr2180800%_
                                                    _%expr1180765%_
                                                    _%id180758%_)
                                                   (_%$%else180666180698%_))
                                               (_%$%else180666180698%_))))
                                       (_%$%else180666180698%_))
                                   (_%$%else180666180698%_)))
                             (_%$%else180666180698%_))
                         (_%$%else180666180698%_)))
                   (_%$%else180666180698%_))
               (_%$%else180666180698%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%else180666180698%_)))
                                           (_%$%else180666180698%_))
                                       (_%$%else180666180698%_))
                                   (_%$%else180666180698%_))))
                           (_%$%else180666180698%_))))
                   (_%$%else180666180698%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%else180666180698%_)))
                                               (_%$%else180666180698%_))
                                           (_%$%else180666180698%_)))
                                     (_%$%else180666180698%_)))
                               _%code180663%_)))
                        (_%simplify-let180060%_
                         (lambda (_%code180362%_)
                           (let* ((_%$%code180363180435%_ _%code180362%_)
                                  (_%$%E180369180439%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%code180363180435%_
                                            '(['let [] expr])
                                            '(['let
                                               [[id expr]]
                                               ['let [] . body]])
                                            '(['let
                                               [[id1 expr1]]
                                               ['let [[id2 expr2]] . body]])
                                            '(['let
                                               [[id1 expr1]]
                                               ['let* bind . body]])
                                            'else)
                                     (void)))
                                  (_%$%else180368180443%_
                                   (lambda () _%code180362%_))
                                  (_%$%try-match180367180503%_
                                   (lambda ()
                                     (let ((_%$%K180370180452%_
                                            (lambda (_%body180447%_
                                                     _%bind180448%_
                                                     _%expr1180449%_
                                                     _%id1180450%_)
                                              (cons 'let*
                                                    (cons (cons (cons _%id1180450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr1180449%_ '()))
                        _%bind180448%_)
                  _%body180447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%code180363180435%_)
                                           (let ((_%$%hd180371180455%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%code180363180435%_)))
                                                 (_%$%tl180372180457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%code180363180435%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##eq? _%$%hd180371180455%_
                                                          'let))
                                                 (if (pair? _%$%tl180372180457%_)
                                                     (let ((_%$%hd180373180460%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%tl180372180457%_)))
                                                           (_%$%tl180374180462%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%tl180372180457%_))))
                                                       (if (pair? _%$%hd180373180460%_)
                                                           (let ((_%$%hd180381180465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd180373180460%_)))
                         (_%$%tl180382180467%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd180373180460%_))))
                     (if (pair? _%$%hd180381180465%_)
                         (let ((_%$%hd180383180470%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%hd180381180465%_)))
                               (_%$%tl180384180472%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%hd180381180465%_))))
                           (let ((_%id1180475%_ _%$%hd180383180470%_))
                             (if (pair? _%$%tl180384180472%_)
                                 (let ((_%$%hd180385180477%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl180384180472%_)))
                                       (_%$%tl180386180479%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl180384180472%_))))
                                   (let ((_%expr1180482%_
                                          _%$%hd180385180477%_))
                                     (if (null? _%$%tl180386180479%_)
                                         (if (null? _%$%tl180382180467%_)
                                             (if (pair? _%$%tl180374180462%_)
                                                 (let ((_%$%hd180375180484%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%tl180374180462%_)))
                                                       (_%$%tl180376180486%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%tl180374180462%_))))
                                                   (if (pair? _%$%hd180375180484%_)
                                                       (let ((_%$%hd180377180489%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%hd180375180484%_)))
                     (_%$%tl180378180491%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%hd180375180484%_))))
                 (if (let ()
                       (declare (not safe))
                       (##eq? _%$%hd180377180489%_ 'let*))
                     (if (pair? _%$%tl180378180491%_)
                         (let ((_%$%hd180379180494%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%tl180378180491%_)))
                               (_%$%tl180380180496%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%tl180378180491%_))))
                           (let* ((_%bind180499%_ _%$%hd180379180494%_)
                                  (_%body180501%_ _%$%tl180380180496%_))
                             (if (null? _%$%tl180376180486%_)
                                 (_%$%K180370180452%_
                                  _%body180501%_
                                  _%bind180499%_
                                  _%expr1180482%_
                                  _%id1180475%_)
                                 (_%$%else180368180443%_))))
                         (_%$%else180368180443%_))
                     (_%$%else180368180443%_)))
               (_%$%else180368180443%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%else180368180443%_))
                                             (_%$%else180368180443%_))
                                         (_%$%else180368180443%_))))
                                 (_%$%else180368180443%_))))
                         (_%$%else180368180443%_)))
                   (_%$%else180368180443%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%else180368180443%_))
                                                 (_%$%else180368180443%_)))
                                           (_%$%else180368180443%_)))))
                                  (_%$%try-match180366180581%_
                                   (lambda ()
                                     (let ((_%$%K180387180513%_
                                            (lambda (_%body180507%_
                                                     _%expr2180508%_
                                                     _%id2180509%_
                                                     _%expr1180510%_
                                                     _%id1180511%_)
                                              (cons 'let*
                                                    (cons (cons (cons _%id1180511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr1180510%_ '()))
                        (cons (cons _%id2180509%_ (cons _%expr2180508%_ '()))
                              '()))
                  _%body180507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%code180363180435%_)
                                           (let ((_%$%hd180388180516%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%code180363180435%_)))
                                                 (_%$%tl180389180518%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%code180363180435%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##eq? _%$%hd180388180516%_
                                                          'let))
                                                 (if (pair? _%$%tl180389180518%_)
                                                     (let ((_%$%hd180390180521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%tl180389180518%_)))
                                                           (_%$%tl180391180523%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%tl180389180518%_))))
                                                       (if (pair? _%$%hd180390180521%_)
                                                           (let ((_%$%hd180404180526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd180390180521%_)))
                         (_%$%tl180405180528%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd180390180521%_))))
                     (if (pair? _%$%hd180404180526%_)
                         (let ((_%$%hd180406180531%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%hd180404180526%_)))
                               (_%$%tl180407180533%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%hd180404180526%_))))
                           (let ((_%id1180536%_ _%$%hd180406180531%_))
                             (if (pair? _%$%tl180407180533%_)
                                 (let ((_%$%hd180408180538%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl180407180533%_)))
                                       (_%$%tl180409180540%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl180407180533%_))))
                                   (let ((_%expr1180543%_
                                          _%$%hd180408180538%_))
                                     (if (null? _%$%tl180409180540%_)
                                         (if (null? _%$%tl180405180528%_)
                                             (if (pair? _%$%tl180391180523%_)
                                                 (let ((_%$%hd180392180545%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%tl180391180523%_)))
                                                       (_%$%tl180393180547%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%tl180391180523%_))))
                                                   (if (pair? _%$%hd180392180545%_)
                                                       (let ((_%$%hd180394180550%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%hd180392180545%_)))
                     (_%$%tl180395180552%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%hd180392180545%_))))
                 (if (let ()
                       (declare (not safe))
                       (##eq? _%$%hd180394180550%_ 'let))
                     (if (pair? _%$%tl180395180552%_)
                         (let ((_%$%hd180396180555%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%tl180395180552%_)))
                               (_%$%tl180397180557%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%tl180395180552%_))))
                           (if (pair? _%$%hd180396180555%_)
                               (let ((_%$%hd180398180560%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%hd180396180555%_)))
                                     (_%$%tl180399180562%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%hd180396180555%_))))
                                 (if (pair? _%$%hd180398180560%_)
                                     (let ((_%$%hd180400180565%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%hd180398180560%_)))
                                           (_%$%tl180401180567%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%hd180398180560%_))))
                                       (let ((_%id2180570%_
                                              _%$%hd180400180565%_))
                                         (if (pair? _%$%tl180401180567%_)
                                             (let ((_%$%hd180402180572%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%tl180401180567%_)))
                                                   (_%$%tl180403180574%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%tl180401180567%_))))
                                               (let ((_%expr2180577%_
                                                      _%$%hd180402180572%_))
                                                 (if (null? _%$%tl180403180574%_)
                                                     (if (null? _%$%tl180399180562%_)
                                                         (let ((_%body180579%_
                                                                _%$%tl180397180557%_))
                                                           (if (null? _%$%tl180393180547%_)
                                                               (_%$%K180387180513%_
                                                                _%body180579%_
                                                                _%expr2180577%_
                                                                _%id2180570%_
                                                                _%expr1180543%_
                                                                _%id1180536%_)
                                                               (_%$%try-match180367180503%_)))
                                                         (_%$%try-match180367180503%_))
                                                     (_%$%try-match180367180503%_))))
                                             (_%$%try-match180367180503%_))))
                                     (_%$%try-match180367180503%_)))
                               (_%$%try-match180367180503%_)))
                         (_%$%try-match180367180503%_))
                     (_%$%try-match180367180503%_)))
               (_%$%try-match180367180503%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%try-match180367180503%_))
                                             (_%$%try-match180367180503%_))
                                         (_%$%try-match180367180503%_))))
                                 (_%$%try-match180367180503%_))))
                         (_%$%try-match180367180503%_)))
                   (_%$%try-match180367180503%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match180367180503%_))
                                                 (_%$%try-match180367180503%_)))
                                           (_%$%try-match180367180503%_)))))
                                  (_%$%try-match180365180638%_
                                   (lambda ()
                                     (let ((_%$%K180410180589%_
                                            (lambda (_%body180585%_
                                                     _%expr180586%_
                                                     _%id180587%_)
                                              (cons 'let
                                                    (cons (cons (cons _%id180587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr180586%_ '()))
                        '())
                  _%body180585%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%code180363180435%_)
                                           (let ((_%$%hd180411180592%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%code180363180435%_)))
                                                 (_%$%tl180412180594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%code180363180435%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##eq? _%$%hd180411180592%_
                                                          'let))
                                                 (if (pair? _%$%tl180412180594%_)
                                                     (let ((_%$%hd180413180597%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%tl180412180594%_)))
                                                           (_%$%tl180414180599%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%tl180412180594%_))))
                                                       (if (pair? _%$%hd180413180597%_)
                                                           (let ((_%$%hd180421180602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd180413180597%_)))
                         (_%$%tl180422180604%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd180413180597%_))))
                     (if (pair? _%$%hd180421180602%_)
                         (let ((_%$%hd180423180607%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%hd180421180602%_)))
                               (_%$%tl180424180609%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%hd180421180602%_))))
                           (let ((_%id180612%_ _%$%hd180423180607%_))
                             (if (pair? _%$%tl180424180609%_)
                                 (let ((_%$%hd180425180614%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl180424180609%_)))
                                       (_%$%tl180426180616%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl180424180609%_))))
                                   (let ((_%expr180619%_ _%$%hd180425180614%_))
                                     (if (null? _%$%tl180426180616%_)
                                         (if (null? _%$%tl180422180604%_)
                                             (if (pair? _%$%tl180414180599%_)
                                                 (let ((_%$%hd180415180621%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%tl180414180599%_)))
                                                       (_%$%tl180416180623%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%tl180414180599%_))))
                                                   (if (pair? _%$%hd180415180621%_)
                                                       (let ((_%$%hd180417180626%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%hd180415180621%_)))
                     (_%$%tl180418180628%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%hd180415180621%_))))
                 (if (let ()
                       (declare (not safe))
                       (##eq? _%$%hd180417180626%_ 'let))
                     (if (pair? _%$%tl180418180628%_)
                         (let ((_%$%hd180419180631%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%tl180418180628%_)))
                               (_%$%tl180420180633%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%tl180418180628%_))))
                           (if (null? _%$%hd180419180631%_)
                               (let ((_%body180636%_ _%$%tl180420180633%_))
                                 (if (null? _%$%tl180416180623%_)
                                     (_%$%K180410180589%_
                                      _%body180636%_
                                      _%expr180619%_
                                      _%id180612%_)
                                     (_%$%try-match180366180581%_)))
                               (_%$%try-match180366180581%_)))
                         (_%$%try-match180366180581%_))
                     (_%$%try-match180366180581%_)))
               (_%$%try-match180366180581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%try-match180366180581%_))
                                             (_%$%try-match180366180581%_))
                                         (_%$%try-match180366180581%_))))
                                 (_%$%try-match180366180581%_))))
                         (_%$%try-match180366180581%_)))
                   (_%$%try-match180366180581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%try-match180366180581%_))
                                                 (_%$%try-match180366180581%_)))
                                           (_%$%try-match180366180581%_)))))
                                  (_%$%K180427180643%_
                                   (lambda (_%expr180641%_) _%expr180641%_)))
                             (if (pair? _%$%code180363180435%_)
                                 (let ((_%$%hd180428180646%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%code180363180435%_)))
                                       (_%$%tl180429180648%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%code180363180435%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##eq? _%$%hd180428180646%_ 'let))
                                       (if (pair? _%$%tl180429180648%_)
                                           (let ((_%$%hd180430180651%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%tl180429180648%_)))
                                                 (_%$%tl180431180653%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%tl180429180648%_))))
                                             (if (null? _%$%hd180430180651%_)
                                                 (if (pair? _%$%tl180431180653%_)
                                                     (let ((_%$%hd180432180656%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%tl180431180653%_)))
                                                           (_%$%tl180433180658%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%tl180431180653%_))))
                                                       (let ((_%expr180661%_
                                                              _%$%hd180432180656%_))
                                                         (if (null? _%$%tl180433180658%_)
                                                             (_%$%K180427180643%_
                                                              _%expr180661%_)
                                                             (_%$%try-match180365180638%_))))
                                                     (_%$%try-match180365180638%_))
                                                 (_%$%try-match180365180638%_)))
                                           (_%$%try-match180365180638%_))
                                       (_%$%try-match180365180638%_)))
                                 (_%$%try-match180365180638%_)))))
                        (_%generate-values180061%_
                         (lambda (_%hd180175%_ _%body180176%_)
                           (let _%lp180178%_ ((_%rest180180%_ _%hd180175%_)
                                              (_%bind180181%_ '())
                                              (_%check180182%_ '())
                                              (_%post180183%_ '()))
                             (let* ((_%$%g180186180197%_
                                     (lambda (_%$%g180187180194%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g180187180194%_)))
                                    (_%$%g180185180211%_
                                     (lambda (_%$%g180187180200%_)
                                       ((lambda ()
                                          (let* ((_%body180204%_
                                                  (if _%compiled-body?180056%_
                                                      _%body180176%_
                                                      (gxc#compile-e
                                                       _%self180054%_
                                                       _%body180176%_)))
                                                 (_%body180206%_
                                                  (_%generate-values-post180062%_
                                                   _%post180183%_
                                                   _%body180204%_))
                                                 (_%body180208%_
                                                  (_%generate-values-check180063%_
                                                   _%check180182%_
                                                   _%body180206%_)))
                                            (cons 'let
                                                  (cons (reverse _%bind180181%_)
                                                        (cons _%body180208%_
                                                              '()))))))))
                                    (_%$%g180184180359%_
                                     (lambda (_%$%g180187180214%_)
                                       (if (gx#stx-pair? _%$%g180187180214%_)
                                           (let ((_%$%e180190180216%_
                                                  (gx#stx-e
                                                   _%$%g180187180214%_)))
                                             (let ((_%$%hd180191180219%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e180190180216%_)))
                                                   (_%$%tl180192180221%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e180190180216%_))))
                                               ((lambda (_%$%g180188180224%_
                                                         _%$%g180189180225%_)
                                                  (let* ((_%$%g180240180265%_
                                                          (lambda (_%$%g180241180262%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g180241180262%_)))
                                                         (_%$%g180239180309%_
                                                          (lambda (_%$%g180241180268%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g180241180268%_)
                        (let ((_%$%e180255180270%_
                               (gx#stx-e _%$%g180241180268%_)))
                          (let ((_%$%hd180256180273%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e180255180270%_)))
                                (_%$%tl180257180275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e180255180270%_))))
                            (if (gx#stx-pair? _%$%tl180257180275%_)
                                (let ((_%$%e180258180278%_
                                       (gx#stx-e _%$%tl180257180275%_)))
                                  (let ((_%$%hd180259180281%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e180258180278%_)))
                                        (_%$%tl180260180283%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e180258180278%_))))
                                    (if (gx#stx-null? _%$%tl180260180283%_)
                                        ((lambda (_%$%g180253180286%_
                                                  _%$%g180254180287%_)
                                           (let* ((_%vals180300%_
                                                   (gxc#generate-runtime-temporary))
                                                  (_%check-values180302%_
                                                   (gxc#generate-runtime-check-values
                                                    _%vals180300%_
                                                    _%$%g180254180287%_
                                                    _%$%g180253180286%_))
                                                  (_%refs180304%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals180300%_
                                                    _%$%g180254180287%_))
                                                  (_%expr180306%_
                                                   (gxc#compile-e
                                                    _%self180054%_
                                                    _%$%g180253180286%_)))
                                             (_%lp180178%_
                                              _%$%g180188180224%_
                                              (cons (cons _%vals180300%_
                                                          (cons _%expr180306%_
                                                                '()))
                                                    _%bind180181%_)
                                              (cons _%check-values180302%_
                                                    _%check180182%_)
                                              (cons _%refs180304%_
                                                    _%post180183%_))))
                                         _%$%hd180259180281%_
                                         _%$%hd180256180273%_)
                                        (_%$%g180240180265%_
                                         _%$%g180241180268%_))))
                                (_%$%g180240180265%_ _%$%g180241180268%_))))
                        (_%$%g180240180265%_ _%$%g180241180268%_))))
                 (_%$%g180238180356%_
                  (lambda (_%$%g180241180312%_)
                    (if (gx#stx-pair? _%$%g180241180312%_)
                        (let ((_%$%e180244180314%_
                               (gx#stx-e _%$%g180241180312%_)))
                          (let ((_%$%hd180245180317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e180244180314%_)))
                                (_%$%tl180246180319%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e180244180314%_))))
                            (if (gx#stx-pair? _%$%hd180245180317%_)
                                (let ((_%$%e180247180322%_
                                       (gx#stx-e _%$%hd180245180317%_)))
                                  (let ((_%$%hd180248180325%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e180247180322%_)))
                                        (_%$%tl180249180327%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e180247180322%_))))
                                    (if (gx#stx-null? _%$%tl180249180327%_)
                                        (if (gx#stx-pair? _%$%tl180246180319%_)
                                            (let ((_%$%e180250180330%_
                                                   (gx#stx-e
                                                    _%$%tl180246180319%_)))
                                              (let ((_%$%hd180251180333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e180250180330%_)))
                                                    (_%$%tl180252180335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e180250180330%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl180252180335%_)
                                                    ((lambda (_%$%g180242180338%_
                                                              _%$%g180243180339%_)
                                                       (let ((_%eid180353%_
                                                              (gxc#generate-runtime-binding-id*
                                                               _%$%g180243180339%_))
                                                             (_%expr180354%_
                                                              (gxc#compile-e
                                                               _%self180054%_
                                                               _%$%g180242180338%_)))
                                                         (_%lp180178%_
                                                          _%$%g180188180224%_
                                                          (cons (cons _%eid180353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr180354%_ '()))
                        _%bind180181%_)
                  _%check180182%_
                  _%post180183%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%hd180251180333%_
                                                     _%$%hd180248180325%_)
                                                    (_%$%g180239180309%_
                                                     _%$%g180241180312%_))))
                                            (_%$%g180239180309%_
                                             _%$%g180241180312%_))
                                        (_%$%g180239180309%_
                                         _%$%g180241180312%_))))
                                (_%$%g180239180309%_ _%$%g180241180312%_))))
                        (_%$%g180239180309%_ _%$%g180241180312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g180238180356%_
                                                     _%$%g180189180225%_)))
                                                _%$%tl180192180221%_
                                                _%$%hd180191180219%_)))
                                           (_%$%g180185180211%_
                                            _%$%g180187180214%_)))))
                               (_%$%g180184180359%_ _%rest180180%_)))))
                        (_%generate-values-post180062%_
                         (lambda (_%post180134%_ _%body180135%_)
                           (let _%lp180137%_ ((_%rest180139%_ _%post180134%_)
                                              (_%body180140%_ _%body180135%_))
                             (let* ((_%$%rest180141180149%_ _%rest180139%_)
                                    (_%$%E180144180153%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%$%rest180141180149%_
                                              '([bind . rest])
                                              'else)
                                       (void)))
                                    (_%$%else180143180157%_
                                     (lambda () _%body180140%_))
                                    (_%$%K180145180163%_
                                     (lambda (_%rest180160%_ _%bind180161%_)
                                       (_%lp180137%_
                                        _%rest180160%_
                                        (cons 'let
                                              (cons _%bind180161%_
                                                    (cons _%body180140%_
                                                          '())))))))
                               (if (pair? _%$%rest180141180149%_)
                                   (let ((_%$%hd180146180166%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%rest180141180149%_)))
                                         (_%$%tl180147180168%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%rest180141180149%_))))
                                     (let* ((_%bind180171%_
                                             _%$%hd180146180166%_)
                                            (_%rest180173%_
                                             _%$%tl180147180168%_))
                                       (_%$%K180145180163%_
                                        _%rest180173%_
                                        _%bind180171%_)))
                                   (_%$%else180143180157%_))))))
                        (_%generate-values-check180063%_
                         (lambda (_%check180131%_ _%body180132%_)
                           (cons 'begin
                                 (foldr cons
                                        (cons _%body180132%_ '())
                                        (reverse _%check180131%_))))))
                 (let* ((_%$%g180065180082%_
                         (lambda (_%$%g180066180079%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g180066180079%_)))
                        (_%$%g180064180128%_
                         (lambda (_%$%g180066180085%_)
                           (if (gx#stx-pair? _%$%g180066180085%_)
                               (let ((_%$%e180069180087%_
                                      (gx#stx-e _%$%g180066180085%_)))
                                 (let ((_%$%hd180070180090%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e180069180087%_)))
                                       (_%$%tl180071180092%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e180069180087%_))))
                                   (if (gx#stx-pair? _%$%tl180071180092%_)
                                       (let ((_%$%e180072180095%_
                                              (gx#stx-e _%$%tl180071180092%_)))
                                         (let ((_%$%hd180073180098%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e180072180095%_)))
                                               (_%$%tl180074180100%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e180072180095%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl180074180100%_)
                                               (let ((_%$%e180075180103%_
                                                      (gx#stx-e
                                                       _%$%tl180074180100%_)))
                                                 (let ((_%$%hd180076180106%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e180075180103%_)))
                                                       (_%$%tl180077180108%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e180075180103%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl180077180108%_)
                                                       ((lambda (_%$%g180067180111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g180068180112%_)
                  (if (gxc#generate-runtime-simple-let? _%$%g180068180112%_)
                      (_%generate-simple180058%_
                       _%$%g180068180112%_
                       _%$%g180067180111%_)
                      (_%generate-values180061%_
                       _%$%g180068180112%_
                       _%$%g180067180111%_)))
                _%$%hd180076180106%_
                _%$%hd180073180098%_)
               (_%$%g180065180082%_ _%$%g180066180085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g180065180082%_
                                                _%$%g180066180085%_))))
                                       (_%$%g180065180082%_
                                        _%$%g180066180085%_))))
                               (_%$%g180065180082%_ _%$%g180066180085%_)))))
                   (_%$%g180064180128%_ _%stx180055%_))))))
        (lambda _g183611_
          (let ((_g183612_ (let () (declare (not safe)) (##length _g183611_))))
            (cond ((let () (declare (not safe)) (##fx= _g183612_ 2))
                   (apply (lambda (_%self180808%_ _%stx180809%_)
                            (let ((_%compiled-body?180811%_ '#f))
                              (_%$%opt-lambda180052180805%_
                               _%self180808%_
                               _%stx180809%_
                               _%compiled-body?180811%_)))
                          _g183611_))
                  ((let () (declare (not safe)) (##fx= _g183612_ 3))
                   (apply _%$%opt-lambda180052180805%_ _g183611_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g183611_)))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals179948%_ _%hd179949%_)
        (let _%lp179951%_ ((_%rest179953%_ _%hd179949%_)
                           (_%k179954%_ '0)
                           (_%r179955%_ '()))
          (let* ((_%$%g179960179977%_
                  (lambda (_%$%g179961179974%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g179961179974%_)))
                 (_%$%g179959179984%_
                  (lambda (_%$%g179961179980%_)
                    ((lambda () (reverse _%r179955%_)))))
                 (_%$%g179958180000%_
                  (lambda (_%$%g179961179987%_)
                    ((lambda (_%$%g179972179989%_)
                       (if (gx#identifier? _%$%g179972179989%_)
                           (foldl cons
                                  (cons (cons (gxc#generate-runtime-binding-id
                                               _%$%g179972179989%_)
                                              (cons (gxc#generate-runtime-values->list
                                                     _%vals179948%_
                                                     _%k179954%_)
                                                    '()))
                                        '())
                                  _%r179955%_)
                           (_%$%g179959179984%_ _%$%g179961179987%_)))
                     _%$%g179961179987%_)))
                 (_%$%g179957180024%_
                  (lambda (_%$%g179961180003%_)
                    (if (gx#stx-pair? _%$%g179961180003%_)
                        (let ((_%$%e179969180005%_
                               (gx#stx-e _%$%g179961180003%_)))
                          (let ((_%$%hd179970180008%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e179969180005%_)))
                                (_%$%tl179971180010%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e179969180005%_))))
                            ((lambda (_%$%g179967180013%_ _%$%g179968180014%_)
                               (_%lp179951%_
                                _%$%g179967180013%_
                                (fx1+ _%k179954%_)
                                (cons (cons (gxc#generate-runtime-binding-id
                                             _%$%g179968180014%_)
                                            (cons (gxc#generate-runtime-values-ref
                                                   _%vals179948%_
                                                   _%k179954%_
                                                   _%$%g179967180013%_)
                                                  '()))
                                      _%r179955%_)))
                             _%$%tl179971180010%_
                             _%$%hd179970180008%_)))
                        (_%$%g179958180000%_ _%$%g179961180003%_))))
                 (_%$%g179956180050%_
                  (lambda (_%$%g179961180027%_)
                    (if (gx#stx-pair? _%$%g179961180027%_)
                        (let ((_%$%e179963180029%_
                               (gx#stx-e _%$%g179961180027%_)))
                          (let ((_%$%hd179964180032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e179963180029%_)))
                                (_%$%tl179965180034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e179963180029%_))))
                            (if (gx#stx-datum? _%$%hd179964180032%_)
                                (let ((_%$%e179966180037%_
                                       (gx#stx-e _%$%hd179964180032%_)))
                                  (if (equal? _%$%e179966180037%_ '#f)
                                      ((lambda (_%$%g179962180040%_)
                                         (_%lp179951%_
                                          _%$%g179962180040%_
                                          (fx1+ _%k179954%_)
                                          _%r179955%_))
                                       _%$%tl179965180034%_)
                                      (_%$%g179957180024%_
                                       _%$%g179961180027%_)))
                                (_%$%g179957180024%_ _%$%g179961180027%_))))
                        (_%$%g179957180024%_ _%$%g179961180027%_)))))
            (_%$%g179956180050%_ _%rest179953%_)))))
    (define gxc#generate-runtime-letrec-values%
      (let ((_%$%opt-lambda179625179936%_
             (lambda (_%self179627%_ _%stx179628%_ _%compiled-body?179629%_)
               (letrec ((_%generate-simple179631%_
                         (lambda (_%hd179933%_ _%body179934%_)
                           (gxc#generate-runtime-simple-let
                            _%self179627%_
                            'letrec
                            _%hd179933%_
                            _%body179934%_
                            _%compiled-body?179629%_)))
                        (_%generate-values179632%_
                         (lambda (_%hd179712%_ _%body179713%_)
                           (let _%lp179715%_ ((_%rest179717%_ _%hd179712%_)
                                              (_%bind179718%_ '())
                                              (_%check179719%_ '())
                                              (_%post179720%_ '()))
                             (let* ((_%$%g179723179734%_
                                     (lambda (_%$%g179724179731%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g179724179731%_)))
                                    (_%$%g179722179748%_
                                     (lambda (_%$%g179724179737%_)
                                       ((lambda ()
                                          (let* ((_%body179741%_
                                                  (if _%compiled-body?179629%_
                                                      _%body179713%_
                                                      (gxc#compile-e
                                                       _%self179627%_
                                                       _%body179713%_)))
                                                 (_%body179743%_
                                                  (_%generate-values-post179634%_
                                                   _%post179720%_
                                                   _%body179741%_))
                                                 (_%body179745%_
                                                  (_%generate-values-check179633%_
                                                   _%check179719%_
                                                   _%body179743%_)))
                                            (cons 'letrec
                                                  (cons (reverse _%bind179718%_)
                                                        (cons _%body179745%_
                                                              '()))))))))
                                    (_%$%g179721179930%_
                                     (lambda (_%$%g179724179751%_)
                                       (if (gx#stx-pair? _%$%g179724179751%_)
                                           (let ((_%$%e179727179753%_
                                                  (gx#stx-e
                                                   _%$%g179724179751%_)))
                                             (let ((_%$%hd179728179756%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e179727179753%_)))
                                                   (_%$%tl179729179758%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e179727179753%_))))
                                               ((lambda (_%$%g179725179761%_
                                                         _%$%g179726179762%_)
                                                  (let* ((_%$%g179777179802%_
                                                          (lambda (_%$%g179778179799%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g179778179799%_)))
                                                         (_%$%g179776179880%_
                                                          (lambda (_%$%g179778179805%_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g179778179805%_)
                        (let ((_%$%e179792179807%_
                               (gx#stx-e _%$%g179778179805%_)))
                          (let ((_%$%hd179793179810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e179792179807%_)))
                                (_%$%tl179794179812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e179792179807%_))))
                            (if (gx#stx-pair? _%$%tl179794179812%_)
                                (let ((_%$%e179795179815%_
                                       (gx#stx-e _%$%tl179794179812%_)))
                                  (let ((_%$%hd179796179818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e179795179815%_)))
                                        (_%$%tl179797179820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e179795179815%_))))
                                    (if (gx#stx-null? _%$%tl179797179820%_)
                                        ((lambda (_%$%g179790179823%_
                                                  _%$%g179791179824%_)
                                           (let* ((_%vals179837%_
                                                   (gxc#generate-runtime-temporary))
                                                  (_%check-values179839%_
                                                   (gxc#generate-runtime-check-values
                                                    _%vals179837%_
                                                    _%$%g179791179824%_
                                                    _%$%g179790179823%_))
                                                  (_%refs179841%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals179837%_
                                                    _%$%g179791179824%_))
                                                  (_%expr179843%_
                                                   (gxc#compile-e
                                                    _%self179627%_
                                                    _%$%g179790179823%_)))
                                             (_%lp179715%_
                                              _%$%g179725179761%_
                                              (foldl cons
                                                     (cons (cons _%vals179837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr179843%_ '()))
                   _%bind179718%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (map (lambda (_%$%e179845179847%_)
                                                            (let* ((_%$%$%e179845179849179858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e179845179847%_)
                           (_%$%E179851179862%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%$%e179845179849179858%_
                                     '([eid _]))
                              (void)))
                           (_%$%K179852179867%_
                            (lambda (_%eid179865%_)
                              (cons _%eid179865%_ (cons '#!void '())))))
                      (if (pair? _%$%$%e179845179849179858%_)
                          (let ((_%$%hd179853179870%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$%e179845179849179858%_)))
                                (_%$%tl179854179872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$%e179845179849179858%_))))
                            (let ((_%eid179875%_ _%$%hd179853179870%_))
                              (if (pair? _%$%tl179854179872%_)
                                  (let ((_%$%tl179856179877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl179854179872%_))))
                                    (if (null? _%$%tl179856179877%_)
                                        (_%$%K179852179867%_ _%eid179875%_)
                                        (_%$%E179851179862%_)))
                                  (_%$%E179851179862%_))))
                          (_%$%E179851179862%_))))
                  _%refs179841%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%check-values179839%_
                                                    _%check179719%_)
                                              (foldl cons
                                                     _%refs179841%_
                                                     _%post179720%_))))
                                         _%$%hd179796179818%_
                                         _%$%hd179793179810%_)
                                        (_%$%g179777179802%_
                                         _%$%g179778179805%_))))
                                (_%$%g179777179802%_ _%$%g179778179805%_))))
                        (_%$%g179777179802%_ _%$%g179778179805%_))))
                 (_%$%g179775179927%_
                  (lambda (_%$%g179778179883%_)
                    (if (gx#stx-pair? _%$%g179778179883%_)
                        (let ((_%$%e179781179885%_
                               (gx#stx-e _%$%g179778179883%_)))
                          (let ((_%$%hd179782179888%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e179781179885%_)))
                                (_%$%tl179783179890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e179781179885%_))))
                            (if (gx#stx-pair? _%$%hd179782179888%_)
                                (let ((_%$%e179784179893%_
                                       (gx#stx-e _%$%hd179782179888%_)))
                                  (let ((_%$%hd179785179896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e179784179893%_)))
                                        (_%$%tl179786179898%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e179784179893%_))))
                                    (if (gx#stx-null? _%$%tl179786179898%_)
                                        (if (gx#stx-pair? _%$%tl179783179890%_)
                                            (let ((_%$%e179787179901%_
                                                   (gx#stx-e
                                                    _%$%tl179783179890%_)))
                                              (let ((_%$%hd179788179904%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e179787179901%_)))
                                                    (_%$%tl179789179906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e179787179901%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl179789179906%_)
                                                    ((lambda (_%$%g179779179909%_
                                                              _%$%g179780179910%_)
                                                       (let ((_%eid179924%_
                                                              (gxc#generate-runtime-binding-id*
                                                               _%$%g179780179910%_))
                                                             (_%expr179925%_
                                                              (gxc#compile-e
                                                               _%self179627%_
                                                               _%$%g179779179909%_)))
                                                         (_%lp179715%_
                                                          _%$%g179725179761%_
                                                          (cons (cons _%eid179924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%expr179925%_ '()))
                        _%bind179718%_)
                  _%check179719%_
                  _%post179720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%$%hd179788179904%_
                                                     _%$%hd179785179896%_)
                                                    (_%$%g179776179880%_
                                                     _%$%g179778179883%_))))
                                            (_%$%g179776179880%_
                                             _%$%g179778179883%_))
                                        (_%$%g179776179880%_
                                         _%$%g179778179883%_))))
                                (_%$%g179776179880%_ _%$%g179778179883%_))))
                        (_%$%g179776179880%_ _%$%g179778179883%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g179775179927%_
                                                     _%$%g179726179762%_)))
                                                _%$%tl179729179758%_
                                                _%$%hd179728179756%_)))
                                           (_%$%g179722179748%_
                                            _%$%g179724179751%_)))))
                               (_%$%g179721179930%_ _%rest179717%_)))))
                        (_%generate-values-check179633%_
                         (lambda (_%check179709%_ _%body179710%_)
                           (cons 'begin
                                 (foldr cons
                                        (cons _%body179710%_ '())
                                        (reverse _%check179709%_)))))
                        (_%generate-values-post179634%_
                         (lambda (_%post179702%_ _%body179703%_)
                           (cons 'begin
                                 (foldr cons
                                        (cons _%body179703%_ '())
                                        (map (lambda (_%$%g179704179706%_)
                                               (cons 'set!
                                                     _%$%g179704179706%_))
                                             (reverse _%post179702%_)))))))
                 (let* ((_%$%g179636179653%_
                         (lambda (_%$%g179637179650%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g179637179650%_)))
                        (_%$%g179635179699%_
                         (lambda (_%$%g179637179656%_)
                           (if (gx#stx-pair? _%$%g179637179656%_)
                               (let ((_%$%e179640179658%_
                                      (gx#stx-e _%$%g179637179656%_)))
                                 (let ((_%$%hd179641179661%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e179640179658%_)))
                                       (_%$%tl179642179663%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e179640179658%_))))
                                   (if (gx#stx-pair? _%$%tl179642179663%_)
                                       (let ((_%$%e179643179666%_
                                              (gx#stx-e _%$%tl179642179663%_)))
                                         (let ((_%$%hd179644179669%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e179643179666%_)))
                                               (_%$%tl179645179671%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e179643179666%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl179645179671%_)
                                               (let ((_%$%e179646179674%_
                                                      (gx#stx-e
                                                       _%$%tl179645179671%_)))
                                                 (let ((_%$%hd179647179677%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e179646179674%_)))
                                                       (_%$%tl179648179679%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e179646179674%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl179648179679%_)
                                                       ((lambda (_%$%g179638179682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g179639179683%_)
                  (if (gxc#generate-runtime-simple-let? _%$%g179639179683%_)
                      (_%generate-simple179631%_
                       _%$%g179639179683%_
                       _%$%g179638179682%_)
                      (_%generate-values179632%_
                       _%$%g179639179683%_
                       _%$%g179638179682%_)))
                _%$%hd179647179677%_
                _%$%hd179644179669%_)
               (_%$%g179636179653%_ _%$%g179637179656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g179636179653%_
                                                _%$%g179637179656%_))))
                                       (_%$%g179636179653%_
                                        _%$%g179637179656%_))))
                               (_%$%g179636179653%_ _%$%g179637179656%_)))))
                   (_%$%g179635179699%_ _%stx179628%_))))))
        (lambda _g183613_
          (let ((_g183614_ (let () (declare (not safe)) (##length _g183613_))))
            (cond ((let () (declare (not safe)) (##fx= _g183614_ 2))
                   (apply (lambda (_%self179939%_ _%stx179940%_)
                            (let ((_%compiled-body?179942%_ '#f))
                              (_%$%opt-lambda179625179936%_
                               _%self179939%_
                               _%stx179940%_
                               _%compiled-body?179942%_)))
                          _g183613_))
                  ((let () (declare (not safe)) (##fx= _g183614_ 3))
                   (apply _%$%opt-lambda179625179936%_ _g183613_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g183613_)))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self179208%_ _%stx179209%_)
        (letrec ((_%generate-values179211%_
                  (lambda (_%hd179454%_ _%body179455%_)
                    (let _%lp179457%_ ((_%rest179459%_ _%hd179454%_)
                                       (_%bind179460%_ '()))
                      (let* ((_%$%rest179461179469%_ _%rest179459%_)
                             (_%$%E179464179473%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest179461179469%_
                                       '([hd-bind . rest])
                                       'else)
                                (void)))
                             (_%$%else179463179480%_
                              (lambda ()
                                (let ((_%bind179477%_ (reverse _%bind179460%_))
                                      (_%body179478%_
                                       (gxc#compile-e
                                        _%self179208%_
                                        _%body179455%_)))
                                  (cons 'letrec*
                                        (cons _%bind179477%_
                                              (cons _%body179478%_ '()))))))
                             (_%$%K179465179614%_
                              (lambda (_%rest179483%_ _%hd-bind179484%_)
                                (let* ((_%$%g179487179512%_
                                        (lambda (_%$%g179488179509%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g179488179509%_)))
                                       (_%$%g179486179564%_
                                        (lambda (_%$%g179488179515%_)
                                          (if (gx#stx-pair?
                                               _%$%g179488179515%_)
                                              (let ((_%$%e179502179517%_
                                                     (gx#stx-e
                                                      _%$%g179488179515%_)))
                                                (let ((_%$%hd179503179520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e179502179517%_)))
                                                      (_%$%tl179504179522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e179502179517%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl179504179522%_)
                                                      (let ((_%$%e179505179525%_
                                                             (gx#stx-e
                                                              _%$%tl179504179522%_)))
                                                        (let ((_%$%hd179506179528%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e179505179525%_)))
                      (_%$%tl179507179530%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e179505179525%_))))
                  (if (gx#stx-null? _%$%tl179507179530%_)
                      ((lambda (_%$%g179500179533%_ _%$%g179501179534%_)
                         (let* ((_%vals179553%_
                                 (gxc#generate-runtime-temporary))
                                (_%tmp179555%_
                                 (gxc#generate-runtime-temporary))
                                (_%check-values179557%_
                                 (gxc#generate-runtime-check-values
                                  _%tmp179555%_
                                  _%$%g179501179534%_
                                  _%$%g179500179533%_))
                                (_%refs179559%_
                                 (gxc#generate-runtime-let-values-bind
                                  _%vals179553%_
                                  _%$%g179501179534%_))
                                (_%expr179561%_
                                 (gxc#compile-e
                                  _%self179208%_
                                  _%$%g179500179533%_)))
                           (_%lp179457%_
                            _%rest179483%_
                            (foldl cons
                                   (cons (cons _%vals179553%_
                                               (cons (cons 'let
                                                           (cons (cons (cons _%tmp179555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _%expr179561%_ '()))
                               '())
                         (cons _%check-values179557%_
                               (cons _%tmp179555%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%bind179460%_)
                                   _%refs179559%_))))
                       _%$%hd179506179528%_
                       _%$%hd179503179520%_)
                      (_%$%g179487179512%_ _%$%g179488179515%_))))
              (_%$%g179487179512%_ _%$%g179488179515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g179487179512%_
                                               _%$%g179488179515%_))))
                                       (_%$%g179485179611%_
                                        (lambda (_%$%g179488179567%_)
                                          (if (gx#stx-pair?
                                               _%$%g179488179567%_)
                                              (let ((_%$%e179491179569%_
                                                     (gx#stx-e
                                                      _%$%g179488179567%_)))
                                                (let ((_%$%hd179492179572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e179491179569%_)))
                                                      (_%$%tl179493179574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e179491179569%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd179492179572%_)
                                                      (let ((_%$%e179494179577%_
                                                             (gx#stx-e
                                                              _%$%hd179492179572%_)))
                                                        (let ((_%$%hd179495179580%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e179494179577%_)))
                      (_%$%tl179496179582%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e179494179577%_))))
                  (if (gx#stx-null? _%$%tl179496179582%_)
                      (if (gx#stx-pair? _%$%tl179493179574%_)
                          (let ((_%$%e179497179585%_
                                 (gx#stx-e _%$%tl179493179574%_)))
                            (let ((_%$%hd179498179588%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e179497179585%_)))
                                  (_%$%tl179499179590%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e179497179585%_))))
                              (if (gx#stx-null? _%$%tl179499179590%_)
                                  ((lambda (_%$%g179489179593%_
                                            _%$%g179490179594%_)
                                     (let ((_%eid179608%_
                                            (gxc#generate-runtime-binding-id*
                                             _%$%g179490179594%_))
                                           (_%expr179609%_
                                            (gxc#compile-e
                                             _%self179208%_
                                             _%$%g179489179593%_)))
                                       (_%lp179457%_
                                        _%rest179483%_
                                        (cons (cons _%eid179608%_
                                                    (cons _%expr179609%_ '()))
                                              _%bind179460%_))))
                                   _%$%hd179498179588%_
                                   _%$%hd179495179580%_)
                                  (_%$%g179486179564%_ _%$%g179488179567%_))))
                          (_%$%g179486179564%_ _%$%g179488179567%_))
                      (_%$%g179486179564%_ _%$%g179488179567%_))))
              (_%$%g179486179564%_ _%$%g179488179567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g179486179564%_
                                               _%$%g179488179567%_)))))
                                  (_%$%g179485179611%_ _%hd-bind179484%_)))))
                        (if (pair? _%$%rest179461179469%_)
                            (let ((_%$%hd179466179617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest179461179469%_)))
                                  (_%$%tl179467179619%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest179461179469%_))))
                              (let* ((_%hd-bind179622%_ _%$%hd179466179617%_)
                                     (_%rest179624%_ _%$%tl179467179619%_))
                                (_%$%K179465179614%_
                                 _%rest179624%_
                                 _%hd-bind179622%_)))
                            (_%$%else179463179480%_))))))
                 (_%generate-letrec?179212%_
                  (lambda (_%hd179344%_)
                    (let _%lp179346%_ ((_%rest179348%_ _%hd179344%_))
                      (let* ((_%$%rest179349179357%_ _%rest179348%_)
                             (_%$%E179352179361%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest179349179357%_
                                       '([hd-bind . rest])
                                       'else)
                                (void)))
                             (_%$%else179351179365%_ (lambda () '#t))
                             (_%$%K179353179442%_
                              (lambda (_%rest179368%_ _%hd-bind179369%_)
                                (let* ((_%$%g179371179388%_
                                        (lambda (_%$%g179372179385%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g179372179385%_)))
                                       (_%$%g179370179439%_
                                        (lambda (_%$%g179372179391%_)
                                          (if (gx#stx-pair?
                                               _%$%g179372179391%_)
                                              (let ((_%$%e179375179393%_
                                                     (gx#stx-e
                                                      _%$%g179372179391%_)))
                                                (let ((_%$%hd179376179396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e179375179393%_)))
                                                      (_%$%tl179377179398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e179375179393%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%hd179376179396%_)
                                                      (let ((_%$%e179378179401%_
                                                             (gx#stx-e
                                                              _%$%hd179376179396%_)))
                                                        (let ((_%$%hd179379179404%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e179378179401%_)))
                      (_%$%tl179380179406%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e179378179401%_))))
                  (if (gx#stx-null? _%$%tl179380179406%_)
                      (if (gx#stx-pair? _%$%tl179377179398%_)
                          (let ((_%$%e179381179409%_
                                 (gx#stx-e _%$%tl179377179398%_)))
                            (let ((_%$%hd179382179412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e179381179409%_)))
                                  (_%$%tl179383179414%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e179381179409%_))))
                              (if (gx#stx-null? _%$%tl179383179414%_)
                                  ((lambda (_%$%g179373179417%_
                                            _%$%g179374179418%_)
                                     (if (_%is-lambda-expr?179213%_
                                          _%$%g179373179417%_)
                                         (_%lp179346%_ _%rest179368%_)
                                         '#f))
                                   _%$%hd179382179412%_
                                   _%$%hd179379179404%_)
                                  (_%$%g179371179388%_ _%$%g179372179391%_))))
                          (_%$%g179371179388%_ _%$%g179372179391%_))
                      (_%$%g179371179388%_ _%$%g179372179391%_))))
              (_%$%g179371179388%_ _%$%g179372179391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g179371179388%_
                                               _%$%g179372179391%_)))))
                                  (_%$%g179370179439%_ _%hd-bind179369%_)))))
                        (if (pair? _%$%rest179349179357%_)
                            (let ((_%$%hd179354179445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest179349179357%_)))
                                  (_%$%tl179355179447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest179349179357%_))))
                              (let* ((_%hd-bind179450%_ _%$%hd179354179445%_)
                                     (_%rest179452%_ _%$%tl179355179447%_))
                                (_%$%K179353179442%_
                                 _%rest179452%_
                                 _%hd-bind179450%_)))
                            (_%$%else179351179365%_))))))
                 (_%is-lambda-expr?179213%_
                  (lambda (_%expr179281%_)
                    (let* ((_%$%g179284179298%_
                            (lambda (_%$%g179285179295%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g179285179295%_)))
                           (_%$%g179283179305%_
                            (lambda (_%$%g179285179301%_) ((lambda () '#f))))
                           (_%$%g179282179341%_
                            (lambda (_%$%g179285179308%_)
                              (if (gx#stx-pair? _%$%g179285179308%_)
                                  (let ((_%$%e179288179310%_
                                         (gx#stx-e _%$%g179285179308%_)))
                                    (let ((_%$%hd179289179313%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e179288179310%_)))
                                          (_%$%tl179290179315%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e179288179310%_))))
                                      (if (gx#identifier? _%$%hd179289179313%_)
                                          (if (gx#stx-eq?
                                               '%#lambda
                                               _%$%hd179289179313%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl179290179315%_)
                                                  (let ((_%$%e179291179318%_
                                                         (gx#stx-e
                                                          _%$%tl179290179315%_)))
                                                    (let ((_%$%hd179292179321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e179291179318%_)))
                                                          (_%$%tl179293179323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e179291179318%_))))
                                                      ((lambda (_%$%g179286179326%_
                                                                _%$%g179287179327%_)
                                                         '#t)
                                                       _%$%tl179293179323%_
                                                       _%$%hd179292179321%_)))
                                                  (_%$%g179283179305%_
                                                   _%$%g179285179308%_))
                                              (_%$%g179283179305%_
                                               _%$%g179285179308%_))
                                          (_%$%g179283179305%_
                                           _%$%g179285179308%_))))
                                  (_%$%g179283179305%_ _%$%g179285179308%_)))))
                      (_%$%g179282179341%_ _%expr179281%_)))))
          (let* ((_%$%g179215179232%_
                  (lambda (_%$%g179216179229%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g179216179229%_)))
                 (_%$%g179214179278%_
                  (lambda (_%$%g179216179235%_)
                    (if (gx#stx-pair? _%$%g179216179235%_)
                        (let ((_%$%e179219179237%_
                               (gx#stx-e _%$%g179216179235%_)))
                          (let ((_%$%hd179220179240%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e179219179237%_)))
                                (_%$%tl179221179242%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e179219179237%_))))
                            (if (gx#stx-pair? _%$%tl179221179242%_)
                                (let ((_%$%e179222179245%_
                                       (gx#stx-e _%$%tl179221179242%_)))
                                  (let ((_%$%hd179223179248%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e179222179245%_)))
                                        (_%$%tl179224179250%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e179222179245%_))))
                                    (if (gx#stx-pair? _%$%tl179224179250%_)
                                        (let ((_%$%e179225179253%_
                                               (gx#stx-e
                                                _%$%tl179224179250%_)))
                                          (let ((_%$%hd179226179256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e179225179253%_)))
                                                (_%$%tl179227179258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e179225179253%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl179227179258%_)
                                                ((lambda (_%$%g179217179261%_
                                                          _%$%g179218179262%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%$%g179218179262%_)
                                                       (if (_%generate-letrec?179212%_
                                                            _%$%g179218179262%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self179208%_
                                                            'letrec
                                                            _%$%g179218179262%_
                                                            _%$%g179217179261%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self179208%_
                                                            'letrec*
                                                            _%$%g179218179262%_
                                                            _%$%g179217179261%_
                                                            '#f))
                                                       (_%generate-values179211%_
                                                        _%$%g179218179262%_
                                                        _%$%g179217179261%_)))
                                                 _%$%hd179226179256%_
                                                 _%$%hd179223179248%_)
                                                (_%$%g179215179232%_
                                                 _%$%g179216179235%_))))
                                        (_%$%g179215179232%_
                                         _%$%g179216179235%_))))
                                (_%$%g179215179232%_ _%$%g179216179235%_))))
                        (_%$%g179215179232%_ _%$%g179216179235%_)))))
            (_%$%g179214179278%_ _%stx179209%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd179145%_)
        (let _%lp179147%_ ((_%rest179149%_ _%hd179145%_))
          (let* ((_%$%rest179150179166%_ _%rest179149%_)
                 (_%$%E179154179170%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest179150179166%_
                           '([[[_] _] . rest])
                           '([])
                           'else)
                    (void)))
                 (_%$%else179153179174%_ (lambda () '#f))
                 (_%$%try-match179152179182%_
                  (lambda ()
                    (let ((_%$%K179155179179%_ (lambda () '#t)))
                      (if (null? _%$%rest179150179166%_)
                          (_%$%K179155179179%_)
                          (_%$%else179153179174%_)))))
                 (_%$%K179156179187%_
                  (lambda (_%rest179185%_) (_%lp179147%_ _%rest179185%_))))
            (if (pair? _%$%rest179150179166%_)
                (let ((_%$%hd179157179190%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest179150179166%_)))
                      (_%$%tl179158179192%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest179150179166%_))))
                  (if (pair? _%$%hd179157179190%_)
                      (let ((_%$%hd179159179195%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%hd179157179190%_)))
                            (_%$%tl179160179197%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%hd179157179190%_))))
                        (if (pair? _%$%hd179159179195%_)
                            (let ((_%$%tl179164179200%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%hd179159179195%_))))
                              (if (null? _%$%tl179164179200%_)
                                  (if (pair? _%$%tl179160179197%_)
                                      (let ((_%$%tl179162179203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%tl179160179197%_))))
                                        (if (null? _%$%tl179162179203%_)
                                            (let ((_%rest179206%_
                                                   _%$%tl179158179192%_))
                                              (_%$%K179156179187%_
                                               _%rest179206%_))
                                            (_%$%try-match179152179182%_)))
                                      (_%$%try-match179152179182%_))
                                  (_%$%try-match179152179182%_)))
                            (_%$%try-match179152179182%_)))
                      (_%$%try-match179152179182%_)))
                (_%$%try-match179152179182%_))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self179057%_
               _%form179058%_
               _%hd179059%_
               _%body179060%_
               _%compiled-body?179061%_)
        (letrec ((_%generate1179063%_
                  (lambda (_%bind179102%_)
                    (let* ((_%$%bind179103179114%_ _%bind179102%_)
                           (_%$%E179105179117%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%bind179103179114%_
                                     '([[id] expr]))
                              (void)))
                           (_%$%K179106179123%_
                            (lambda (_%expr179120%_ _%id179121%_)
                              (cons (gxc#generate-runtime-binding-id*
                                     _%id179121%_)
                                    (cons (gxc#compile-e
                                           _%self179057%_
                                           _%expr179120%_)
                                          '())))))
                      (if (pair? _%$%bind179103179114%_)
                          (let ((_%$%hd179107179126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%bind179103179114%_)))
                                (_%$%tl179108179128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%bind179103179114%_))))
                            (if (pair? _%$%hd179107179126%_)
                                (let ((_%$%hd179111179131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd179107179126%_)))
                                      (_%$%tl179112179133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd179107179126%_))))
                                  (let ((_%id179136%_ _%$%hd179111179131%_))
                                    (if (null? _%$%tl179112179133%_)
                                        (if (pair? _%$%tl179108179128%_)
                                            (let ((_%$%hd179109179138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl179108179128%_)))
                                                  (_%$%tl179110179140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl179108179128%_))))
                                              (let ((_%expr179143%_
                                                     _%$%hd179109179138%_))
                                                (if (null? _%$%tl179110179140%_)
                                                    (_%$%K179106179123%_
                                                     _%expr179143%_
                                                     _%id179136%_)
                                                    (_%$%E179105179117%_))))
                                            (_%$%E179105179117%_))
                                        (_%$%E179105179117%_))))
                                (_%$%E179105179117%_)))
                          (_%$%E179105179117%_))))))
          (let* ((_%bind179065%_ (map _%generate1179063%_ _%hd179059%_))
                 (_%body179067%_
                  (if _%compiled-body?179061%_
                      _%body179060%_
                      (gxc#compile-e _%self179057%_ _%body179060%_)))
                 (_%body179099%_
                  (let* ((_%$%body179068179076%_ _%body179067%_)
                         (_%$%E179071179080%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%$%body179068179076%_
                                   '(['begin . exprs])
                                   'else)
                            (void)))
                         (_%$%else179070179084%_
                          (lambda () (cons _%body179067%_ '())))
                         (_%$%K179072179089%_
                          (lambda (_%exprs179087%_) _%exprs179087%_)))
                    (if (pair? _%$%body179068179076%_)
                        (let ((_%$%hd179073179092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%body179068179076%_)))
                              (_%$%tl179074179094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%body179068179076%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%$%hd179073179092%_ 'begin))
                              (let ((_%exprs179097%_ _%$%tl179074179094%_))
                                (_%$%K179072179089%_ _%exprs179097%_))
                              (_%$%else179070179084%_)))
                        (_%$%else179070179084%_)))))
            (cons _%form179058%_ (cons _%bind179065%_ _%body179099%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self178957%_ _%stx178958%_)
        (letrec ((_%generate1178960%_
                  (lambda (_%datum179012%_)
                    (if (or (null? _%datum179012%_)
                            (interned-symbol? _%datum179012%_)
                            (gx#self-quoting? _%datum179012%_)
                            (eof-object? _%datum179012%_))
                        _%datum179012%_
                        (if (uninterned-symbol? _%datum179012%_)
                            (gxc#generate-runtime-gensym-reference
                             _%datum179012%_
                             '#t)
                            (if (pair? _%datum179012%_)
                                (cons (_%generate1178960%_
                                       (car _%datum179012%_))
                                      (_%generate1178960%_
                                       (cdr _%datum179012%_)))
                                (if (box? _%datum179012%_)
                                    (box (_%generate1178960%_
                                          (unbox _%datum179012%_)))
                                    (if (vector? _%datum179012%_)
                                        (vector-map
                                         _%generate1178960%_
                                         _%datum179012%_)
                                        (if (or (s8vector? _%datum179012%_)
                                                (u8vector? _%datum179012%_)
                                                (s16vector? _%datum179012%_)
                                                (u16vector? _%datum179012%_)
                                                (s32vector? _%datum179012%_)
                                                (u32vector? _%datum179012%_)
                                                (s64vector? _%datum179012%_)
                                                (u64vector? _%datum179012%_)
                                                (f32vector? _%datum179012%_)
                                                (f64vector? _%datum179012%_))
                                            _%datum179012%_
                                            (gxc#raise-compile-error
                                             '"Cannot compile non-primitive quote"
                                             _%stx178958%_))))))))))
          (let* ((_%$%g178962178975%_
                  (lambda (_%$%g178963178972%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g178963178972%_)))
                 (_%$%g178961179009%_
                  (lambda (_%$%g178963178978%_)
                    (if (gx#stx-pair? _%$%g178963178978%_)
                        (let ((_%$%e178965178980%_
                               (gx#stx-e _%$%g178963178978%_)))
                          (let ((_%$%hd178966178983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e178965178980%_)))
                                (_%$%tl178967178985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e178965178980%_))))
                            (if (gx#stx-pair? _%$%tl178967178985%_)
                                (let ((_%$%e178968178988%_
                                       (gx#stx-e _%$%tl178967178985%_)))
                                  (let ((_%$%hd178969178991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e178968178988%_)))
                                        (_%$%tl178970178993%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e178968178988%_))))
                                    (if (gx#stx-null? _%$%tl178970178993%_)
                                        ((lambda (_%$%g178964178996%_)
                                           (cons 'quote
                                                 (cons (_%generate1178960%_
                                                        (gx#stx-e
                                                         _%$%g178964178996%_))
                                                       '())))
                                         _%$%hd178969178991%_)
                                        (_%$%g178962178975%_
                                         _%$%g178963178978%_))))
                                (_%$%g178962178975%_ _%$%g178963178978%_))))
                        (_%$%g178962178975%_ _%$%g178963178978%_)))))
            (_%$%g178961179009%_ _%stx178958%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self178404%_ _%stx178405%_)
        (letrec ((_%compile-call178407%_
                  (lambda (_%rator178694%_ _%rands178695%_)
                    (let ((_%rator178701%_
                           (gxc#compile-e _%self178404%_ _%rator178694%_))
                          (_%rands178702%_
                           (map (lambda (_%$%g178696178698%_)
                                  (gxc#compile-e
                                   _%self178404%_
                                   _%$%g178696178698%_))
                                _%rands178695%_)))
                      (let* ((_%$%g178705178757%_
                              (lambda (_%$%g178706178754%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g178706178754%_)))
                             (_%$%g178704178764%_
                              (lambda (_%$%g178706178760%_)
                                ((lambda ()
                                   (cons _%rator178701%_ _%rands178702%_)))))
                             (_%$%g178703178954%_
                              (lambda (_%$%g178706178767%_)
                                (if (gx#stx-pair? _%$%g178706178767%_)
                                    (let ((_%$%e178711178769%_
                                           (gx#stx-e _%$%g178706178767%_)))
                                      (let ((_%$%hd178712178772%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e178711178769%_)))
                                            (_%$%tl178713178774%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e178711178769%_))))
                                        (if (gx#identifier?
                                             _%$%hd178712178772%_)
                                            (if (gx#stx-eq?
                                                 'letrec
                                                 _%$%hd178712178772%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl178713178774%_)
                                                    (let ((_%$%e178714178777%_
                                                           (gx#stx-e
                                                            _%$%tl178713178774%_)))
                                                      (let ((_%$%hd178715178780%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e178714178777%_)))
                    (_%$%tl178716178782%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e178714178777%_))))
                (if (gx#stx-pair? _%$%hd178715178780%_)
                    (let ((_%$%e178717178785%_
                           (gx#stx-e _%$%hd178715178780%_)))
                      (let ((_%$%hd178718178788%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e178717178785%_)))
                            (_%$%tl178719178790%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e178717178785%_))))
                        (if (gx#stx-pair? _%$%hd178718178788%_)
                            (let ((_%$%e178720178793%_
                                   (gx#stx-e _%$%hd178718178788%_)))
                              (let ((_%$%hd178721178796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e178720178793%_)))
                                    (_%$%tl178722178798%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e178720178793%_))))
                                (if (gx#stx-pair? _%$%tl178722178798%_)
                                    (let ((_%$%e178723178801%_
                                           (gx#stx-e _%$%tl178722178798%_)))
                                      (let ((_%$%hd178724178804%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e178723178801%_)))
                                            (_%$%tl178725178806%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e178723178801%_))))
                                        (if (gx#stx-pair? _%$%hd178724178804%_)
                                            (let ((_%$%e178726178809%_
                                                   (gx#stx-e
                                                    _%$%hd178724178804%_)))
                                              (let ((_%$%hd178727178812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e178726178809%_)))
                                                    (_%$%tl178728178814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e178726178809%_))))
                                                (if (gx#identifier?
                                                     _%$%hd178727178812%_)
                                                    (if (gx#stx-eq?
                                                         'lambda
                                                         _%$%hd178727178812%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl178728178814%_)
                                                            (let ((_%$%e178729178817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl178728178814%_)))
                      (let ((_%$%hd178730178820%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e178729178817%_)))
                            (_%$%tl178731178822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e178729178817%_))))
                        (if (gx#stx-pair/null? _%$%hd178730178820%_)
                            (let ((_g183615_
                                   (gx#syntax-split-splice
                                    _%$%hd178730178820%_
                                    '0)))
                              (begin
                                (let ((_g183616_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g183615_)
                                             (##values-length _g183615_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g183616_ 2)))
                                      (error "Context expects 2 values"
                                             _g183616_)))
                                (let ((_%$%target178732178825%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g183615_ 0)))
                                      (_%$%tl178734178827%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g183615_ 1))))
                                  (if (gx#stx-null? _%$%tl178734178827%_)
                                      (letrec ((_%$%loop178735178830%_
                                                (lambda (_%$%hd178733178833%_
                                                         _%$%arg178739178835%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd178733178833%_)
                                                      (let ((_%$%e178736178837%_
                                                             (gx#stx-e
                                                              _%$%hd178733178833%_)))
                                                        (let ((_%$%lp-hd178737178840%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e178736178837%_)))
                      (_%$%lp-tl178738178842%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e178736178837%_))))
                  (_%$%loop178735178830%_
                   _%$%lp-tl178738178842%_
                   (cons _%$%lp-hd178737178840%_ _%$%arg178739178835%_))))
              (let ((_%$%arg178740178845%_ (reverse _%$%arg178739178835%_)))
                (if (gx#stx-pair/null? _%$%tl178731178822%_)
                    (let ((_g183617_
                           (gx#syntax-split-splice _%$%tl178731178822%_ '0)))
                      (begin
                        (let ((_g183618_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g183617_)
                                     (##values-length _g183617_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g183618_ 2)))
                              (error "Context expects 2 values" _g183618_)))
                        (let ((_%$%target178741178847%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g183617_ 0)))
                              (_%$%tl178743178849%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g183617_ 1))))
                          (if (gx#stx-null? _%$%tl178743178849%_)
                              (letrec ((_%$%loop178744178852%_
                                        (lambda (_%$%hd178742178855%_
                                                 _%$%body178748178857%_)
                                          (if (gx#stx-pair?
                                               _%$%hd178742178855%_)
                                              (let ((_%$%e178745178859%_
                                                     (gx#stx-e
                                                      _%$%hd178742178855%_)))
                                                (let ((_%$%lp-hd178746178862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e178745178859%_)))
                                                      (_%$%lp-tl178747178864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e178745178859%_))))
                                                  (_%$%loop178744178852%_
                                                   _%$%lp-tl178747178864%_
                                                   (cons _%$%lp-hd178746178862%_
                                                         _%$%body178748178857%_))))
                                              (let ((_%$%body178749178867%_
                                                     (reverse _%$%body178748178857%_)))
                                                (if (gx#stx-null?
                                                     _%$%tl178725178806%_)
                                                    (if (gx#stx-null?
                                                         _%$%tl178719178790%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl178716178782%_)
                                                            (let ((_%$%e178750178869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%tl178716178782%_)))
                      (let ((_%$%hd178751178872%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e178750178869%_)))
                            (_%$%tl178752178874%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e178750178869%_))))
                        (if (gx#stx-null? _%$%tl178752178874%_)
                            ((lambda (_%$%g178707178877%_
                                      _%$%g178708178878%_
                                      _%$%g178709178879%_
                                      _%$%g178710178880%_)
                               (if (eq? _%$%g178710178880%_
                                        _%$%g178707178877%_)
                                   (if (fx= (length _%rands178702%_)
                                            (length (foldr (lambda (_%$%g178916178919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g178917178921%_)
                     (cons _%$%g178916178919%_ _%$%g178917178921%_))
                   '()
                   _%$%g178709178879%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let* ((_%id178924%_
                                               _%$%g178710178880%_)
                                              (_%args178933%_
                                               (foldr (lambda (_%$%g178925178928%_
                                                               _%$%g178926178930%_)
                                                        (cons _%$%g178925178928%_
                                                              _%$%g178926178930%_))
                                                      '()
                                                      _%$%g178709178879%_))
                                              (_%body178942%_
                                               (foldr (lambda (_%$%g178934178937%_
                                                               _%$%g178935178939%_)
                                                        (cons _%$%g178934178937%_
                                                              _%$%g178935178939%_))
                                                      '()
                                                      _%$%g178708178878%_))
                                              (_%init178944%_
                                               (map list
                                                    _%args178933%_
                                                    _%rands178702%_)))
                                         (cons 'let
                                               (cons _%id178924%_
                                                     (cons _%init178944%_
                                                           _%body178942%_))))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx178405%_
                                        (foldr (lambda (_%$%g178946178949%_
                                                        _%$%g178947178951%_)
                                                 (cons _%$%g178946178949%_
                                                       _%$%g178947178951%_))
                                               '()
                                               _%$%g178709178879%_)
                                        _%rands178702%_))
                                   (_%$%g178704178764%_ _%$%g178706178767%_)))
                             _%$%hd178751178872%_
                             _%$%body178749178867%_
                             _%$%arg178740178845%_
                             _%$%hd178721178796%_)
                            (_%$%g178704178764%_ _%$%g178706178767%_))))
                    (_%$%g178704178764%_ _%$%g178706178767%_))
                (_%$%g178704178764%_ _%$%g178706178767%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g178704178764%_
                                                     _%$%g178706178767%_)))))))
                                (_%$%loop178744178852%_
                                 _%$%target178741178847%_
                                 '()))
                              (_%$%g178704178764%_ _%$%g178706178767%_)))))
                    (_%$%g178704178764%_ _%$%g178706178767%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop178735178830%_
                                         _%$%target178732178825%_
                                         '()))
                                      (_%$%g178704178764%_
                                       _%$%g178706178767%_)))))
                            (_%$%g178704178764%_ _%$%g178706178767%_))))
                    (_%$%g178704178764%_ _%$%g178706178767%_))
                (_%$%g178704178764%_ _%$%g178706178767%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g178704178764%_
                                                     _%$%g178706178767%_))))
                                            (_%$%g178704178764%_
                                             _%$%g178706178767%_))))
                                    (_%$%g178704178764%_
                                     _%$%g178706178767%_))))
                            (_%$%g178704178764%_ _%$%g178706178767%_))))
                    (_%$%g178704178764%_ _%$%g178706178767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g178704178764%_
                                                     _%$%g178706178767%_))
                                                (_%$%g178704178764%_
                                                 _%$%g178706178767%_))
                                            (_%$%g178704178764%_
                                             _%$%g178706178767%_))))
                                    (_%$%g178704178764%_
                                     _%$%g178706178767%_)))))
                        (_%$%g178703178954%_ _%rator178701%_))))))
          (let* ((_%$%g178409178432%_
                  (lambda (_%$%g178410178429%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g178410178429%_)))
                 (_%$%g178408178691%_
                  (lambda (_%$%g178410178435%_)
                    (if (gx#stx-pair? _%$%g178410178435%_)
                        (let ((_%$%e178413178437%_
                               (gx#stx-e _%$%g178410178435%_)))
                          (let ((_%$%hd178414178440%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e178413178437%_)))
                                (_%$%tl178415178442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e178413178437%_))))
                            (if (gx#stx-pair? _%$%tl178415178442%_)
                                (let ((_%$%e178416178445%_
                                       (gx#stx-e _%$%tl178415178442%_)))
                                  (let ((_%$%hd178417178448%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e178416178445%_)))
                                        (_%$%tl178418178450%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e178416178445%_))))
                                    (if (gx#stx-pair/null?
                                         _%$%tl178418178450%_)
                                        (let ((_g183619_
                                               (gx#syntax-split-splice
                                                _%$%tl178418178450%_
                                                '0)))
                                          (begin
                                            (let ((_g183620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g183619_)
                                                         (##values-length
                                                          _g183619_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g183620_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g183620_)))
                                            (let ((_%$%target178419178453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g183619_
                                                      0)))
                                                  (_%$%tl178421178455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g183619_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl178421178455%_)
                                                  (letrec ((_%$%loop178422178458%_
                                                            (lambda (_%$%hd178420178461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%rand178426178463%_)
                      (if (gx#stx-pair? _%$%hd178420178461%_)
                          (let ((_%$%e178423178465%_
                                 (gx#stx-e _%$%hd178420178461%_)))
                            (let ((_%$%lp-hd178424178468%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e178423178465%_)))
                                  (_%$%lp-tl178425178470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e178423178465%_))))
                              (_%$%loop178422178458%_
                               _%$%lp-tl178425178470%_
                               (cons _%$%lp-hd178424178468%_
                                     _%$%rand178426178463%_))))
                          (let ((_%$%rand178427178473%_
                                 (reverse _%$%rand178426178463%_)))
                            ((lambda (_%$%g178411178475%_ _%$%g178412178476%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call178407%_
                                    _%$%g178412178476%_
                                    (foldr (lambda (_%$%g178493178496%_
                                                    _%$%g178494178498%_)
                                             (cons _%$%g178493178496%_
                                                   _%$%g178494178498%_))
                                           '()
                                           _%$%g178411178475%_))
                                   (let* ((_%$%g178502178514%_
                                           (lambda (_%$%g178503178511%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g178503178511%_)))
                                          (_%$%g178501178528%_
                                           (lambda (_%$%g178503178517%_)
                                             ((lambda ()
                                                (_%compile-call178407%_
                                                 _%$%g178412178476%_
                                                 (foldr (lambda (_%$%g178520178523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g178521178525%_)
                  (cons _%$%g178520178523%_ _%$%g178521178525%_))
                '()
                _%$%g178411178475%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g178500178688%_
                                           (lambda (_%$%g178503178531%_)
                                             (if (gx#stx-pair?
                                                  _%$%g178503178531%_)
                                                 (let ((_%$%e178504178533%_
                                                        (gx#stx-e
                                                         _%$%g178503178531%_)))
                                                   (let ((_%$%hd178505178536%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e178504178533%_)))
                                                         (_%$%tl178506178538%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e178504178533%_))))
                                                     (if (gx#identifier?
                                                          _%$%hd178505178536%_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _%$%hd178505178536%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%tl178506178538%_)
                         (let ((_%$%e178507178541%_
                                (gx#stx-e _%$%tl178506178538%_)))
                           (let ((_%$%hd178508178544%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e178507178541%_)))
                                 (_%$%tl178509178546%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e178507178541%_))))
                             (if (gx#stx-null? _%$%tl178509178546%_)
                                 ((lambda ()
                                    (let ((_%f178551%_
                                           (gxc#compile-e
                                            _%self178404%_
                                            _%$%g178412178476%_)))
                                      (if (and (string-prefix?
                                                '"##"
                                                (symbol->string _%f178551%_))
                                               (not (memq _%f178551%_
                                                          gxc#checked-primitives)))
                                          (let _%lp178553%_ ((_%rest178556%_
                                                              (reverse (foldr (lambda (_%$%g178673178676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               _%$%g178674178678%_)
                                        (cons _%$%g178673178676%_
                                              _%$%g178674178678%_))
                                      '()
                                      _%$%g178411178475%_)))
                     (_%bind178558%_ '())
                     (_%args178559%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let* ((_%$%rest178560178568%_
                                                    _%rest178556%_)
                                                   (_%$%E178563178572%_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _%$%rest178560178568%_
                                                             '([e . rest])
                                                             'else)
                                                      (void)))
                                                   (_%$%else178562178576%_
                                                    (lambda ()
                                                      (cons 'let
                                                            (cons _%bind178558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '(declare (not safe))
                                (cons (cons _%f178551%_ _%args178559%_)
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K178564178662%_
                                                    (lambda (_%rest178579%_
                                                             _%e178580%_)
                                                      (let* ((_%$%g178585178603%_
                                                              (lambda (_%$%g178586178600%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g178586178600%_)))
                     (_%$%g178584178613%_
                      (lambda (_%$%g178586178606%_)
                        ((lambda ()
                           (let ((_%tmp178610%_ (make-symbol (gensym '__tmp))))
                             (_%lp178553%_
                              _%rest178579%_
                              (cons (cons _%tmp178610%_
                                          (cons (gxc#compile-e _%e178580%_)
                                                '()))
                                    _%bind178558%_)
                              (cons _%tmp178610%_ _%args178559%_)))))))
                     (_%$%g178583178636%_
                      (lambda (_%$%g178586178616%_)
                        (if (gx#stx-pair? _%$%g178586178616%_)
                            (let ((_%$%e178593178618%_
                                   (gx#stx-e _%$%g178586178616%_)))
                              (let ((_%$%hd178594178621%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e178593178618%_)))
                                    (_%$%tl178595178623%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e178593178618%_))))
                                (if (gx#identifier? _%$%hd178594178621%_)
                                    (if (gx#stx-eq?
                                         '%#quote
                                         _%$%hd178594178621%_)
                                        (if (gx#stx-pair? _%$%tl178595178623%_)
                                            (let ((_%$%e178596178626%_
                                                   (gx#stx-e
                                                    _%$%tl178595178623%_)))
                                              (let ((_%$%hd178597178629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e178596178626%_)))
                                                    (_%$%tl178598178631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e178596178626%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl178598178631%_)
                                                    ((lambda ()
                                                       (_%lp178553%_
                                                        _%rest178579%_
                                                        _%bind178558%_
                                                        (cons (gxc#compile-e
                                                               _%e178580%_)
                                                              _%args178559%_))))
                                                    (_%$%g178584178613%_
                                                     _%$%g178586178616%_))))
                                            (_%$%g178584178613%_
                                             _%$%g178586178616%_))
                                        (_%$%g178584178613%_
                                         _%$%g178586178616%_))
                                    (_%$%g178584178613%_
                                     _%$%g178586178616%_))))
                            (_%$%g178584178613%_ _%$%g178586178616%_))))
                     (_%$%g178582178659%_
                      (lambda (_%$%g178586178639%_)
                        (if (gx#stx-pair? _%$%g178586178639%_)
                            (let ((_%$%e178587178641%_
                                   (gx#stx-e _%$%g178586178639%_)))
                              (let ((_%$%hd178588178644%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e178587178641%_)))
                                    (_%$%tl178589178646%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e178587178641%_))))
                                (if (gx#identifier? _%$%hd178588178644%_)
                                    (if (gx#stx-eq?
                                         '%#ref
                                         _%$%hd178588178644%_)
                                        (if (gx#stx-pair? _%$%tl178589178646%_)
                                            (let ((_%$%e178590178649%_
                                                   (gx#stx-e
                                                    _%$%tl178589178646%_)))
                                              (let ((_%$%hd178591178652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e178590178649%_)))
                                                    (_%$%tl178592178654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e178590178649%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl178592178654%_)
                                                    ((lambda ()
                                                       (_%lp178553%_
                                                        _%rest178579%_
                                                        _%bind178558%_
                                                        (cons (gxc#compile-e
                                                               _%e178580%_)
                                                              _%args178559%_))))
                                                    (_%$%g178583178636%_
                                                     _%$%g178586178639%_))))
                                            (_%$%g178583178636%_
                                             _%$%g178586178639%_))
                                        (_%$%g178583178636%_
                                         _%$%g178586178639%_))
                                    (_%$%g178583178636%_
                                     _%$%g178586178639%_))))
                            (_%$%g178583178636%_ _%$%g178586178639%_)))))
                (_%$%g178582178659%_ _%e178580%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%$%rest178560178568%_)
                                                  (let ((_%$%hd178565178665%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%rest178560178568%_)))
                                                        (_%$%tl178566178667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%rest178560178568%_))))
                                                    (let* ((_%e178670%_
                                                            _%$%hd178565178665%_)
                                                           (_%rest178672%_
                                                            _%$%tl178566178667%_))
                                                      (_%$%K178564178662%_
                                                       _%rest178672%_
                                                       _%e178670%_)))
                                                  (_%$%else178562178576%_))))
                                          (_%compile-call178407%_
                                           _%$%g178412178476%_
                                           (foldr (lambda (_%$%g178680178683%_
                                                           _%$%g178681178685%_)
                                                    (cons _%$%g178680178683%_
                                                          _%$%g178681178685%_))
                                                  '()
                                                  _%$%g178411178475%_))))))
                                 (_%$%g178501178528%_ _%$%g178503178531%_))))
                         (_%$%g178501178528%_ _%$%g178503178531%_))
                     (_%$%g178501178528%_ _%$%g178503178531%_))
                 (_%$%g178501178528%_ _%$%g178503178531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g178501178528%_
                                                  _%$%g178503178531%_)))))
                                     (_%$%g178500178688%_
                                      _%$%g178412178476%_))))
                             _%$%rand178427178473%_
                             _%$%hd178417178448%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop178422178458%_
                                                     _%$%target178419178453%_
                                                     '()))
                                                  (_%$%g178409178432%_
                                                   _%$%g178410178435%_)))))
                                        (_%$%g178409178432%_
                                         _%$%g178410178435%_))))
                                (_%$%g178409178432%_ _%$%g178410178435%_))))
                        (_%$%g178409178432%_ _%$%g178410178435%_)))))
            (_%$%g178408178691%_ _%stx178405%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self178149%_ _%stx178150%_)
        (let* ((_%$%g178153178182%_
                (lambda (_%$%g178154178179%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g178154178179%_)))
               (_%$%g178152178189%_
                (lambda (_%$%g178154178185%_)
                  ((lambda ()
                     (gxc#generate-runtime-call%
                      _%self178149%_
                      _%stx178150%_)))))
               (_%$%g178151178401%_
                (lambda (_%$%g178154178192%_)
                  (if (gx#stx-pair? _%$%g178154178192%_)
                      (let ((_%$%e178157178194%_
                             (gx#stx-e _%$%g178154178192%_)))
                        (let ((_%$%hd178158178197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e178157178194%_)))
                              (_%$%tl178159178199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e178157178194%_))))
                          (if (gx#stx-pair? _%$%tl178159178199%_)
                              (let ((_%$%e178160178202%_
                                     (gx#stx-e _%$%tl178159178199%_)))
                                (let ((_%$%hd178161178205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e178160178202%_)))
                                      (_%$%tl178162178207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e178160178202%_))))
                                  (if (gx#stx-pair? _%$%hd178161178205%_)
                                      (let ((_%$%e178163178210%_
                                             (gx#stx-e _%$%hd178161178205%_)))
                                        (let ((_%$%hd178164178213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178163178210%_)))
                                              (_%$%tl178165178215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178163178210%_))))
                                          (if (gx#identifier?
                                               _%$%hd178164178213%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd178164178213%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl178165178215%_)
                                                      (let ((_%$%e178166178218%_
                                                             (gx#stx-e
                                                              _%$%tl178165178215%_)))
                                                        (let ((_%$%hd178167178221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e178166178218%_)))
                      (_%$%tl178168178223%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e178166178218%_))))
                  (if (gx#stx-null? _%$%tl178168178223%_)
                      (if (gx#stx-pair/null? _%$%tl178162178207%_)
                          (let ((_g183621_
                                 (gx#syntax-split-splice
                                  _%$%tl178162178207%_
                                  '0)))
                            (begin
                              (let ((_g183622_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g183621_)
                                           (##values-length _g183621_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g183622_ 2)))
                                    (error "Context expects 2 values"
                                           _g183622_)))
                              (let ((_%$%target178169178226%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g183621_ 0)))
                                    (_%$%tl178171178228%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g183621_ 1))))
                                (if (gx#stx-null? _%$%tl178171178228%_)
                                    (letrec ((_%$%loop178172178231%_
                                              (lambda (_%$%hd178170178234%_
                                                       _%$%rand178176178236%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd178170178234%_)
                                                    (let ((_%$%e178173178238%_
                                                           (gx#stx-e
                                                            _%$%hd178170178234%_)))
                                                      (let ((_%$%lp-hd178174178241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e178173178238%_)))
                    (_%$%lp-tl178175178243%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e178173178238%_))))
                (_%$%loop178172178231%_
                 _%$%lp-tl178175178243%_
                 (cons _%$%lp-hd178174178241%_ _%$%rand178176178236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%rand178177178246%_
                                                           (reverse _%$%rand178176178236%_)))
                                                      ((lambda (_%$%g178155178248%_
                                                                _%$%g178156178249%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (gxc#generate-runtime-call%
                                                              _%self178149%_
                                                              _%stx178150%_)
                                                             (let ((_%f178271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#compile-e
                             _%self178149%_
                             (cons (gx#datum->syntax '#f '%#ref)
                                   (cons _%$%g178156178249%_ '())))))
                       (let _%lp178273%_ ((_%rest178276%_
                                           (reverse (foldr (lambda (_%$%g178393178396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g178394178398%_)
                     (cons _%$%g178393178396%_ _%$%g178394178398%_))
                   '()
                   _%$%g178155178248%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%bind178278%_ '())
                                          (_%args178279%_ '()))
                         (let* ((_%$%rest178280178288%_ _%rest178276%_)
                                (_%$%E178283178292%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%$%rest178280178288%_
                                          '([e . rest])
                                          'else)
                                   (void)))
                                (_%$%else178282178296%_
                                 (lambda ()
                                   (cons 'let
                                         (cons _%bind178278%_
                                               (cons '(declare (not safe))
                                                     (cons (cons _%f178271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%args178279%_)
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (_%$%K178284178382%_
                                 (lambda (_%rest178299%_ _%e178300%_)
                                   (let* ((_%$%g178305178323%_
                                           (lambda (_%$%g178306178320%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g178306178320%_)))
                                          (_%$%g178304178333%_
                                           (lambda (_%$%g178306178326%_)
                                             ((lambda ()
                                                (let ((_%tmp178330%_
                                                       (make-symbol
                                                        (gensym '__tmp))))
                                                  (_%lp178273%_
                                                   _%rest178299%_
                                                   (cons (cons _%tmp178330%_
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%e178300%_)
                             '()))
                 _%bind178278%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp178330%_
                                                         _%args178279%_)))))))
                                          (_%$%g178303178356%_
                                           (lambda (_%$%g178306178336%_)
                                             (if (gx#stx-pair?
                                                  _%$%g178306178336%_)
                                                 (let ((_%$%e178313178338%_
                                                        (gx#stx-e
                                                         _%$%g178306178336%_)))
                                                   (let ((_%$%hd178314178341%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e178313178338%_)))
                                                         (_%$%tl178315178343%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e178313178338%_))))
                                                     (if (gx#identifier?
                                                          _%$%hd178314178341%_)
                                                         (if (gx#stx-eq?
                                                              '%#quote
                                                              _%$%hd178314178341%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%tl178315178343%_)
                         (let ((_%$%e178316178346%_
                                (gx#stx-e _%$%tl178315178343%_)))
                           (let ((_%$%hd178317178349%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e178316178346%_)))
                                 (_%$%tl178318178351%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e178316178346%_))))
                             (if (gx#stx-null? _%$%tl178318178351%_)
                                 ((lambda ()
                                    (_%lp178273%_
                                     _%rest178299%_
                                     _%bind178278%_
                                     (cons (gxc#compile-e _%e178300%_)
                                           _%args178279%_))))
                                 (_%$%g178304178333%_ _%$%g178306178336%_))))
                         (_%$%g178304178333%_ _%$%g178306178336%_))
                     (_%$%g178304178333%_ _%$%g178306178336%_))
                 (_%$%g178304178333%_ _%$%g178306178336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g178304178333%_
                                                  _%$%g178306178336%_))))
                                          (_%$%g178302178379%_
                                           (lambda (_%$%g178306178359%_)
                                             (if (gx#stx-pair?
                                                  _%$%g178306178359%_)
                                                 (let ((_%$%e178307178361%_
                                                        (gx#stx-e
                                                         _%$%g178306178359%_)))
                                                   (let ((_%$%hd178308178364%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e178307178361%_)))
                                                         (_%$%tl178309178366%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e178307178361%_))))
                                                     (if (gx#identifier?
                                                          _%$%hd178308178364%_)
                                                         (if (gx#stx-eq?
                                                              '%#ref
                                                              _%$%hd178308178364%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%tl178309178366%_)
                         (let ((_%$%e178310178369%_
                                (gx#stx-e _%$%tl178309178366%_)))
                           (let ((_%$%hd178311178372%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e178310178369%_)))
                                 (_%$%tl178312178374%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e178310178369%_))))
                             (if (gx#stx-null? _%$%tl178312178374%_)
                                 ((lambda ()
                                    (_%lp178273%_
                                     _%rest178299%_
                                     _%bind178278%_
                                     (cons (gxc#compile-e _%e178300%_)
                                           _%args178279%_))))
                                 (_%$%g178303178356%_ _%$%g178306178359%_))))
                         (_%$%g178303178356%_ _%$%g178306178359%_))
                     (_%$%g178303178356%_ _%$%g178306178359%_))
                 (_%$%g178303178356%_ _%$%g178306178359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g178303178356%_
                                                  _%$%g178306178359%_)))))
                                     (_%$%g178302178379%_ _%e178300%_)))))
                           (if (pair? _%$%rest178280178288%_)
                               (let ((_%$%hd178285178385%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest178280178288%_)))
                                     (_%$%tl178286178387%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest178280178288%_))))
                                 (let* ((_%e178390%_ _%$%hd178285178385%_)
                                        (_%rest178392%_ _%$%tl178286178387%_))
                                   (_%$%K178284178382%_
                                    _%rest178392%_
                                    _%e178390%_)))
                               (_%$%else178282178296%_)))))))
               _%$%rand178177178246%_
               _%$%hd178167178221%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop178172178231%_
                                       _%$%target178169178226%_
                                       '()))
                                    (_%$%g178152178189%_
                                     _%$%g178154178192%_)))))
                          (_%$%g178152178189%_ _%$%g178154178192%_))
                      (_%$%g178152178189%_ _%$%g178154178192%_))))
              (_%$%g178152178189%_ _%$%g178154178192%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g178152178189%_
                                                   _%$%g178154178192%_))
                                              (_%$%g178152178189%_
                                               _%$%g178154178192%_))))
                                      (_%$%g178152178189%_
                                       _%$%g178154178192%_))))
                              (_%$%g178152178189%_ _%$%g178154178192%_))))
                      (_%$%g178152178189%_ _%$%g178154178192%_)))))
          (_%$%g178151178401%_ _%stx178150%_))))
    (define gxc#generate-runtime-if%
      (lambda (_%self177961%_ _%stx177962%_)
        (letrec ((_%simplify177964%_
                  (lambda (_%code178049%_)
                    (let* ((_%$%code178050178068%_ _%code178049%_)
                           (_%$%E178053178072%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%code178050178068%_
                                     '(['if test expr ['quote #f]])
                                     'else)
                              (void)))
                           (_%$%else178052178076%_ (lambda () _%code178049%_))
                           (_%$%K178054178112%_
                            (lambda (_%expr178079%_ _%test178080%_)
                              (let* ((_%$%expr178081178089%_ _%expr178079%_)
                                     (_%$%E178084178093%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%expr178081178089%_
                                               '(['and . exprs])
                                               'else)
                                        (void)))
                                     (_%$%else178083178097%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test178080%_
                                                    (cons _%expr178079%_
                                                          '())))))
                                     (_%$%K178085178102%_
                                      (lambda (_%exprs178100%_)
                                        (cons 'and
                                              (cons _%test178080%_
                                                    _%exprs178100%_)))))
                                (if (pair? _%$%expr178081178089%_)
                                    (let ((_%$%hd178086178105%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%expr178081178089%_)))
                                          (_%$%tl178087178107%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%expr178081178089%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%$%hd178086178105%_ 'and))
                                          (let ((_%exprs178110%_
                                                 _%$%tl178087178107%_))
                                            (_%$%K178085178102%_
                                             _%exprs178110%_))
                                          (_%$%else178083178097%_)))
                                    (_%$%else178083178097%_))))))
                      (if (pair? _%$%code178050178068%_)
                          (let ((_%$%hd178055178115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%code178050178068%_)))
                                (_%$%tl178056178117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%code178050178068%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%$%hd178055178115%_ 'if))
                                (if (pair? _%$%tl178056178117%_)
                                    (let ((_%$%hd178057178120%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl178056178117%_)))
                                          (_%$%tl178058178122%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl178056178117%_))))
                                      (let ((_%test178125%_
                                             _%$%hd178057178120%_))
                                        (if (pair? _%$%tl178058178122%_)
                                            (let ((_%$%hd178059178127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tl178058178122%_)))
                                                  (_%$%tl178060178129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tl178058178122%_))))
                                              (let ((_%expr178132%_
                                                     _%$%hd178059178127%_))
                                                (if (pair? _%$%tl178060178129%_)
                                                    (let ((_%$%hd178061178134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%tl178060178129%_)))
                                                          (_%$%tl178062178136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%tl178060178129%_))))
                                                      (if (pair? _%$%hd178061178134%_)
                                                          (let ((_%$%hd178063178139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%hd178061178134%_)))
                        (_%$%tl178064178141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%hd178061178134%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd178063178139%_ 'quote))
                        (if (pair? _%$%tl178064178141%_)
                            (let ((_%$%hd178065178144%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl178064178141%_)))
                                  (_%$%tl178066178146%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl178064178141%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%$%hd178065178144%_ '#f))
                                  (if (null? _%$%tl178066178146%_)
                                      (if (null? _%$%tl178062178136%_)
                                          (_%$%K178054178112%_
                                           _%expr178132%_
                                           _%test178125%_)
                                          (_%$%else178052178076%_))
                                      (_%$%else178052178076%_))
                                  (_%$%else178052178076%_)))
                            (_%$%else178052178076%_))
                        (_%$%else178052178076%_)))
                  (_%$%else178052178076%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else178052178076%_))))
                                            (_%$%else178052178076%_))))
                                    (_%$%else178052178076%_))
                                (_%$%else178052178076%_)))
                          (_%$%else178052178076%_))))))
          (let* ((_%$%g177966177987%_
                  (lambda (_%$%g177967177984%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g177967177984%_)))
                 (_%$%g177965178046%_
                  (lambda (_%$%g177967177990%_)
                    (if (gx#stx-pair? _%$%g177967177990%_)
                        (let ((_%$%e177971177992%_
                               (gx#stx-e _%$%g177967177990%_)))
                          (let ((_%$%hd177972177995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e177971177992%_)))
                                (_%$%tl177973177997%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e177971177992%_))))
                            (if (gx#stx-pair? _%$%tl177973177997%_)
                                (let ((_%$%e177974178000%_
                                       (gx#stx-e _%$%tl177973177997%_)))
                                  (let ((_%$%hd177975178003%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e177974178000%_)))
                                        (_%$%tl177976178005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e177974178000%_))))
                                    (if (gx#stx-pair? _%$%tl177976178005%_)
                                        (let ((_%$%e177977178008%_
                                               (gx#stx-e
                                                _%$%tl177976178005%_)))
                                          (let ((_%$%hd177978178011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e177977178008%_)))
                                                (_%$%tl177979178013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e177977178008%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl177979178013%_)
                                                (let ((_%$%e177980178016%_
                                                       (gx#stx-e
                                                        _%$%tl177979178013%_)))
                                                  (let ((_%$%hd177981178019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e177980178016%_)))
                                                        (_%$%tl177982178021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e177980178016%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl177982178021%_)
                                                        ((lambda (_%$%g177968178024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g177969178025%_
                          _%$%g177970178026%_)
                   (if (gxc#current-compile-boolean-context)
                       (_%simplify177964%_
                        (cons 'if
                              (cons (gxc#compile-e
                                     _%self177961%_
                                     _%$%g177970178026%_)
                                    (cons (gxc#compile-e
                                           _%self177961%_
                                           _%$%g177969178025%_)
                                          (cons (gxc#compile-e
                                                 _%self177961%_
                                                 _%$%g177968178024%_)
                                                '())))))
                       (cons 'if
                             (cons (call-with-parameters
                                    (lambda ()
                                      (gxc#compile-e
                                       _%self177961%_
                                       _%$%g177970178026%_))
                                    gxc#current-compile-boolean-context
                                    '#t)
                                   (cons (gxc#compile-e
                                          _%self177961%_
                                          _%$%g177969178025%_)
                                         (cons (gxc#compile-e
                                                _%self177961%_
                                                _%$%g177968178024%_)
                                               '()))))))
                 _%$%hd177981178019%_
                 _%$%hd177978178011%_
                 _%$%hd177975178003%_)
                (_%$%g177966177987%_ _%$%g177967177990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g177966177987%_
                                                 _%$%g177967177990%_))))
                                        (_%$%g177966177987%_
                                         _%$%g177967177990%_))))
                                (_%$%g177966177987%_ _%$%g177967177990%_))))
                        (_%$%g177966177987%_ _%$%g177967177990%_)))))
            (_%$%g177965178046%_ _%stx177962%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self177909%_ _%stx177910%_)
        (let* ((_%$%g177912177925%_
                (lambda (_%$%g177913177922%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177913177922%_)))
               (_%$%g177911177958%_
                (lambda (_%$%g177913177928%_)
                  (if (gx#stx-pair? _%$%g177913177928%_)
                      (let ((_%$%e177915177930%_
                             (gx#stx-e _%$%g177913177928%_)))
                        (let ((_%$%hd177916177933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177915177930%_)))
                              (_%$%tl177917177935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177915177930%_))))
                          (if (gx#stx-pair? _%$%tl177917177935%_)
                              (let ((_%$%e177918177938%_
                                     (gx#stx-e _%$%tl177917177935%_)))
                                (let ((_%$%hd177919177941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177918177938%_)))
                                      (_%$%tl177920177943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177918177938%_))))
                                  (if (gx#stx-null? _%$%tl177920177943%_)
                                      ((lambda (_%$%g177914177946%_)
                                         (gxc#generate-runtime-binding-id
                                          _%$%g177914177946%_))
                                       _%$%hd177919177941%_)
                                      (_%$%g177912177925%_
                                       _%$%g177913177928%_))))
                              (_%$%g177912177925%_ _%$%g177913177928%_))))
                      (_%$%g177912177925%_ _%$%g177913177928%_)))))
          (_%$%g177911177958%_ _%stx177910%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self177841%_ _%stx177842%_)
        (let* ((_%$%g177844177861%_
                (lambda (_%$%g177845177858%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177845177858%_)))
               (_%$%g177843177906%_
                (lambda (_%$%g177845177864%_)
                  (if (gx#stx-pair? _%$%g177845177864%_)
                      (let ((_%$%e177848177866%_
                             (gx#stx-e _%$%g177845177864%_)))
                        (let ((_%$%hd177849177869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177848177866%_)))
                              (_%$%tl177850177871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177848177866%_))))
                          (if (gx#stx-pair? _%$%tl177850177871%_)
                              (let ((_%$%e177851177874%_
                                     (gx#stx-e _%$%tl177850177871%_)))
                                (let ((_%$%hd177852177877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177851177874%_)))
                                      (_%$%tl177853177879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177851177874%_))))
                                  (if (gx#stx-pair? _%$%tl177853177879%_)
                                      (let ((_%$%e177854177882%_
                                             (gx#stx-e _%$%tl177853177879%_)))
                                        (let ((_%$%hd177855177885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177854177882%_)))
                                              (_%$%tl177856177887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177854177882%_))))
                                          (if (gx#stx-null?
                                               _%$%tl177856177887%_)
                                              ((lambda (_%$%g177846177890%_
                                                        _%$%g177847177891%_)
                                                 (cons 'set!
                                                       (cons (gxc#generate-runtime-binding-id
                                                              _%$%g177847177891%_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%self177841%_
                            _%$%g177846177890%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd177855177885%_
                                               _%$%hd177852177877%_)
                                              (_%$%g177844177861%_
                                               _%$%g177845177864%_))))
                                      (_%$%g177844177861%_
                                       _%$%g177845177864%_))))
                              (_%$%g177844177861%_ _%$%g177845177864%_))))
                      (_%$%g177844177861%_ _%$%g177845177864%_)))))
          (_%$%g177843177906%_ _%stx177842%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self177652%_ _%stx177653%_)
        (let* ((_%$%g177655177672%_
                (lambda (_%$%g177656177669%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177656177669%_)))
               (_%$%g177654177838%_
                (lambda (_%$%g177656177675%_)
                  (if (gx#stx-pair? _%$%g177656177675%_)
                      (let ((_%$%e177659177677%_
                             (gx#stx-e _%$%g177656177675%_)))
                        (let ((_%$%hd177660177680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177659177677%_)))
                              (_%$%tl177661177682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177659177677%_))))
                          (if (gx#stx-pair? _%$%tl177661177682%_)
                              (let ((_%$%e177662177685%_
                                     (gx#stx-e _%$%tl177661177682%_)))
                                (let ((_%$%hd177663177688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177662177685%_)))
                                      (_%$%tl177664177690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177662177685%_))))
                                  (if (gx#stx-pair? _%$%tl177664177690%_)
                                      (let ((_%$%e177665177693%_
                                             (gx#stx-e _%$%tl177664177690%_)))
                                        (let ((_%$%hd177666177696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177665177693%_)))
                                              (_%$%tl177667177698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177665177693%_))))
                                          (if (gx#stx-null?
                                               _%$%tl177667177698%_)
                                              ((lambda (_%$%g177657177701%_
                                                        _%$%g177658177702%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%self177652%_
                          _%$%g177657177701%_)
                         (cons (gxc#compile-e
                                _%self177652%_
                                _%$%g177658177702%_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp177717%_ ((_%rest177720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g177658177702%_
                                       (cons _%$%g177657177701%_ '())))
                                (_%bind177722%_ '())
                                (_%args177723%_ '()))
               (let* ((_%$%rest177724177732%_ _%rest177720%_)
                      (_%$%E177727177736%_
                       (lambda ()
                         (error '"No clause matching"
                                _%$%rest177724177732%_
                                '([e . rest])
                                'else)
                         (void)))
                      (_%$%else177726177740%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind177722%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args177723%_)
                                                 '()))))))
                      (_%$%K177728177826%_
                       (lambda (_%rest177743%_ _%e177744%_)
                         (let* ((_%$%g177749177767%_
                                 (lambda (_%$%g177750177764%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g177750177764%_)))
                                (_%$%g177748177777%_
                                 (lambda (_%$%g177750177770%_)
                                   ((lambda ()
                                      (let ((_%tmp177774%_
                                             (make-symbol (gensym '__tmp))))
                                        (_%lp177717%_
                                         _%rest177743%_
                                         (cons (cons _%tmp177774%_
                                                     (cons (gxc#compile-e
                                                            _%e177744%_)
                                                           '()))
                                               _%bind177722%_)
                                         (cons _%tmp177774%_
                                               _%args177723%_)))))))
                                (_%$%g177747177800%_
                                 (lambda (_%$%g177750177780%_)
                                   (if (gx#stx-pair? _%$%g177750177780%_)
                                       (let ((_%$%e177757177782%_
                                              (gx#stx-e _%$%g177750177780%_)))
                                         (let ((_%$%hd177758177785%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e177757177782%_)))
                                               (_%$%tl177759177787%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e177757177782%_))))
                                           (if (gx#identifier?
                                                _%$%hd177758177785%_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _%$%hd177758177785%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl177759177787%_)
                                                       (let ((_%$%e177760177790%_
                                                              (gx#stx-e
                                                               _%$%tl177759177787%_)))
                                                         (let ((_%$%hd177761177793%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e177760177790%_)))
                       (_%$%tl177762177795%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e177760177790%_))))
                   (if (gx#stx-null? _%$%tl177762177795%_)
                       ((lambda ()
                          (_%lp177717%_
                           _%rest177743%_
                           _%bind177722%_
                           (cons (gxc#compile-e _%e177744%_) _%args177723%_))))
                       (_%$%g177748177777%_ _%$%g177750177780%_))))
               (_%$%g177748177777%_ _%$%g177750177780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g177748177777%_
                                                    _%$%g177750177780%_))
                                               (_%$%g177748177777%_
                                                _%$%g177750177780%_))))
                                       (_%$%g177748177777%_
                                        _%$%g177750177780%_))))
                                (_%$%g177746177823%_
                                 (lambda (_%$%g177750177803%_)
                                   (if (gx#stx-pair? _%$%g177750177803%_)
                                       (let ((_%$%e177751177805%_
                                              (gx#stx-e _%$%g177750177803%_)))
                                         (let ((_%$%hd177752177808%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e177751177805%_)))
                                               (_%$%tl177753177810%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e177751177805%_))))
                                           (if (gx#identifier?
                                                _%$%hd177752177808%_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd177752177808%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl177753177810%_)
                                                       (let ((_%$%e177754177813%_
                                                              (gx#stx-e
                                                               _%$%tl177753177810%_)))
                                                         (let ((_%$%hd177755177816%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e177754177813%_)))
                       (_%$%tl177756177818%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e177754177813%_))))
                   (if (gx#stx-null? _%$%tl177756177818%_)
                       ((lambda ()
                          (_%lp177717%_
                           _%rest177743%_
                           _%bind177722%_
                           (cons (gxc#compile-e _%e177744%_) _%args177723%_))))
                       (_%$%g177747177800%_ _%$%g177750177803%_))))
               (_%$%g177747177800%_ _%$%g177750177803%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g177747177800%_
                                                    _%$%g177750177803%_))
                                               (_%$%g177747177800%_
                                                _%$%g177750177803%_))))
                                       (_%$%g177747177800%_
                                        _%$%g177750177803%_)))))
                           (_%$%g177746177823%_ _%e177744%_)))))
                 (if (pair? _%$%rest177724177732%_)
                     (let ((_%$%hd177729177829%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%rest177724177732%_)))
                           (_%$%tl177730177831%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%rest177724177732%_))))
                       (let* ((_%e177834%_ _%$%hd177729177829%_)
                              (_%rest177836%_ _%$%tl177730177831%_))
                         (_%$%K177728177826%_ _%rest177836%_ _%e177834%_)))
                     (_%$%else177726177740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd177666177696%_
                                               _%$%hd177663177688%_)
                                              (_%$%g177655177672%_
                                               _%$%g177656177675%_))))
                                      (_%$%g177655177672%_
                                       _%$%g177656177675%_))))
                              (_%$%g177655177672%_ _%$%g177656177675%_))))
                      (_%$%g177655177672%_ _%$%g177656177675%_)))))
          (_%$%g177654177838%_ _%stx177653%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self177463%_ _%stx177464%_)
        (let* ((_%$%g177466177483%_
                (lambda (_%$%g177467177480%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177467177480%_)))
               (_%$%g177465177649%_
                (lambda (_%$%g177467177486%_)
                  (if (gx#stx-pair? _%$%g177467177486%_)
                      (let ((_%$%e177470177488%_
                             (gx#stx-e _%$%g177467177486%_)))
                        (let ((_%$%hd177471177491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177470177488%_)))
                              (_%$%tl177472177493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177470177488%_))))
                          (if (gx#stx-pair? _%$%tl177472177493%_)
                              (let ((_%$%e177473177496%_
                                     (gx#stx-e _%$%tl177472177493%_)))
                                (let ((_%$%hd177474177499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177473177496%_)))
                                      (_%$%tl177475177501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177473177496%_))))
                                  (if (gx#stx-pair? _%$%tl177475177501%_)
                                      (let ((_%$%e177476177504%_
                                             (gx#stx-e _%$%tl177475177501%_)))
                                        (let ((_%$%hd177477177507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177476177504%_)))
                                              (_%$%tl177478177509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177476177504%_))))
                                          (if (gx#stx-null?
                                               _%$%tl177478177509%_)
                                              ((lambda (_%$%g177468177512%_
                                                        _%$%g177469177513%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%self177463%_
                          _%$%g177468177512%_)
                         (cons (gxc#compile-e
                                _%self177463%_
                                _%$%g177469177513%_)
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp177528%_ ((_%rest177531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g177469177513%_
                                       (cons _%$%g177468177512%_ '())))
                                (_%bind177533%_ '())
                                (_%args177534%_ '()))
               (let* ((_%$%rest177535177543%_ _%rest177531%_)
                      (_%$%E177538177547%_
                       (lambda ()
                         (error '"No clause matching"
                                _%$%rest177535177543%_
                                '([e . rest])
                                'else)
                         (void)))
                      (_%$%else177537177551%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind177533%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args177534%_)
                                                 '()))))))
                      (_%$%K177539177637%_
                       (lambda (_%rest177554%_ _%e177555%_)
                         (let* ((_%$%g177560177578%_
                                 (lambda (_%$%g177561177575%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g177561177575%_)))
                                (_%$%g177559177588%_
                                 (lambda (_%$%g177561177581%_)
                                   ((lambda ()
                                      (let ((_%tmp177585%_
                                             (make-symbol (gensym '__tmp))))
                                        (_%lp177528%_
                                         _%rest177554%_
                                         (cons (cons _%tmp177585%_
                                                     (cons (gxc#compile-e
                                                            _%e177555%_)
                                                           '()))
                                               _%bind177533%_)
                                         (cons _%tmp177585%_
                                               _%args177534%_)))))))
                                (_%$%g177558177611%_
                                 (lambda (_%$%g177561177591%_)
                                   (if (gx#stx-pair? _%$%g177561177591%_)
                                       (let ((_%$%e177568177593%_
                                              (gx#stx-e _%$%g177561177591%_)))
                                         (let ((_%$%hd177569177596%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e177568177593%_)))
                                               (_%$%tl177570177598%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e177568177593%_))))
                                           (if (gx#identifier?
                                                _%$%hd177569177596%_)
                                               (if (gx#stx-eq?
                                                    '%#quote
                                                    _%$%hd177569177596%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl177570177598%_)
                                                       (let ((_%$%e177571177601%_
                                                              (gx#stx-e
                                                               _%$%tl177570177598%_)))
                                                         (let ((_%$%hd177572177604%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e177571177601%_)))
                       (_%$%tl177573177606%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e177571177601%_))))
                   (if (gx#stx-null? _%$%tl177573177606%_)
                       ((lambda ()
                          (_%lp177528%_
                           _%rest177554%_
                           _%bind177533%_
                           (cons (gxc#compile-e _%e177555%_) _%args177534%_))))
                       (_%$%g177559177588%_ _%$%g177561177591%_))))
               (_%$%g177559177588%_ _%$%g177561177591%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g177559177588%_
                                                    _%$%g177561177591%_))
                                               (_%$%g177559177588%_
                                                _%$%g177561177591%_))))
                                       (_%$%g177559177588%_
                                        _%$%g177561177591%_))))
                                (_%$%g177557177634%_
                                 (lambda (_%$%g177561177614%_)
                                   (if (gx#stx-pair? _%$%g177561177614%_)
                                       (let ((_%$%e177562177616%_
                                              (gx#stx-e _%$%g177561177614%_)))
                                         (let ((_%$%hd177563177619%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e177562177616%_)))
                                               (_%$%tl177564177621%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e177562177616%_))))
                                           (if (gx#identifier?
                                                _%$%hd177563177619%_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd177563177619%_)
                                                   (if (gx#stx-pair?
                                                        _%$%tl177564177621%_)
                                                       (let ((_%$%e177565177624%_
                                                              (gx#stx-e
                                                               _%$%tl177564177621%_)))
                                                         (let ((_%$%hd177566177627%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e177565177624%_)))
                       (_%$%tl177567177629%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e177565177624%_))))
                   (if (gx#stx-null? _%$%tl177567177629%_)
                       ((lambda ()
                          (_%lp177528%_
                           _%rest177554%_
                           _%bind177533%_
                           (cons (gxc#compile-e _%e177555%_) _%args177534%_))))
                       (_%$%g177558177611%_ _%$%g177561177614%_))))
               (_%$%g177558177611%_ _%$%g177561177614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g177558177611%_
                                                    _%$%g177561177614%_))
                                               (_%$%g177558177611%_
                                                _%$%g177561177614%_))))
                                       (_%$%g177558177611%_
                                        _%$%g177561177614%_)))))
                           (_%$%g177557177634%_ _%e177555%_)))))
                 (if (pair? _%$%rest177535177543%_)
                     (let ((_%$%hd177540177640%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%rest177535177543%_)))
                           (_%$%tl177541177642%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%rest177535177543%_))))
                       (let* ((_%e177645%_ _%$%hd177540177640%_)
                              (_%rest177647%_ _%$%tl177541177642%_))
                         (_%$%K177539177637%_ _%rest177647%_ _%e177645%_)))
                     (_%$%else177537177551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd177477177507%_
                                               _%$%hd177474177499%_)
                                              (_%$%g177466177483%_
                                               _%$%g177467177486%_))))
                                      (_%$%g177466177483%_
                                       _%$%g177467177486%_))))
                              (_%$%g177466177483%_ _%$%g177467177486%_))))
                      (_%$%g177466177483%_ _%$%g177467177486%_)))))
          (_%$%g177465177649%_ _%stx177464%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self177379%_ _%stx177380%_)
        (let* ((_%$%g177382177403%_
                (lambda (_%$%g177383177400%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177383177400%_)))
               (_%$%g177381177460%_
                (lambda (_%$%g177383177406%_)
                  (if (gx#stx-pair? _%$%g177383177406%_)
                      (let ((_%$%e177387177408%_
                             (gx#stx-e _%$%g177383177406%_)))
                        (let ((_%$%hd177388177411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177387177408%_)))
                              (_%$%tl177389177413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177387177408%_))))
                          (if (gx#stx-pair? _%$%tl177389177413%_)
                              (let ((_%$%e177390177416%_
                                     (gx#stx-e _%$%tl177389177413%_)))
                                (let ((_%$%hd177391177419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177390177416%_)))
                                      (_%$%tl177392177421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177390177416%_))))
                                  (if (gx#stx-pair? _%$%tl177392177421%_)
                                      (let ((_%$%e177393177424%_
                                             (gx#stx-e _%$%tl177392177421%_)))
                                        (let ((_%$%hd177394177427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177393177424%_)))
                                              (_%$%tl177395177429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177393177424%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl177395177429%_)
                                              (let ((_%$%e177396177432%_
                                                     (gx#stx-e
                                                      _%$%tl177395177429%_)))
                                                (let ((_%$%hd177397177435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e177396177432%_)))
                                                      (_%$%tl177398177437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e177396177432%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl177398177437%_)
                                                      ((lambda (_%$%g177384177440%_
                                                                _%$%g177385177441%_
                                                                _%$%g177386177442%_)
                                                         (cons '##structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%self177379%_
                              _%$%g177384177440%_)
                             (cons (gxc#compile-e
                                    _%self177379%_
                                    _%$%g177385177441%_)
                                   (cons (gxc#compile-e
                                          _%self177379%_
                                          _%$%g177386177442%_)
                                         (cons ''#f '()))))))
               _%$%hd177397177435%_
               _%$%hd177394177427%_
               _%$%hd177391177419%_)
              (_%$%g177382177403%_ _%$%g177383177406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g177382177403%_
                                               _%$%g177383177406%_))))
                                      (_%$%g177382177403%_
                                       _%$%g177383177406%_))))
                              (_%$%g177382177403%_ _%$%g177383177406%_))))
                      (_%$%g177382177403%_ _%$%g177383177406%_)))))
          (_%$%g177381177460%_ _%stx177380%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self177279%_ _%stx177280%_)
        (let* ((_%$%g177282177307%_
                (lambda (_%$%g177283177304%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177283177304%_)))
               (_%$%g177281177376%_
                (lambda (_%$%g177283177310%_)
                  (if (gx#stx-pair? _%$%g177283177310%_)
                      (let ((_%$%e177288177312%_
                             (gx#stx-e _%$%g177283177310%_)))
                        (let ((_%$%hd177289177315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177288177312%_)))
                              (_%$%tl177290177317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177288177312%_))))
                          (if (gx#stx-pair? _%$%tl177290177317%_)
                              (let ((_%$%e177291177320%_
                                     (gx#stx-e _%$%tl177290177317%_)))
                                (let ((_%$%hd177292177323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177291177320%_)))
                                      (_%$%tl177293177325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177291177320%_))))
                                  (if (gx#stx-pair? _%$%tl177293177325%_)
                                      (let ((_%$%e177294177328%_
                                             (gx#stx-e _%$%tl177293177325%_)))
                                        (let ((_%$%hd177295177331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177294177328%_)))
                                              (_%$%tl177296177333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177294177328%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl177296177333%_)
                                              (let ((_%$%e177297177336%_
                                                     (gx#stx-e
                                                      _%$%tl177296177333%_)))
                                                (let ((_%$%hd177298177339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e177297177336%_)))
                                                      (_%$%tl177299177341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e177297177336%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl177299177341%_)
                                                      (let ((_%$%e177300177344%_
                                                             (gx#stx-e
                                                              _%$%tl177299177341%_)))
                                                        (let ((_%$%hd177301177347%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e177300177344%_)))
                      (_%$%tl177302177349%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e177300177344%_))))
                  (if (gx#stx-null? _%$%tl177302177349%_)
                      ((lambda (_%$%g177284177352%_
                                _%$%g177285177353%_
                                _%$%g177286177354%_
                                _%$%g177287177355%_)
                         (cons '##structure-set!
                               (cons (gxc#compile-e
                                      _%self177279%_
                                      _%$%g177285177353%_)
                                     (cons (gxc#compile-e
                                            _%self177279%_
                                            _%$%g177284177352%_)
                                           (cons (gxc#compile-e
                                                  _%self177279%_
                                                  _%$%g177286177354%_)
                                                 (cons (gxc#compile-e
                                                        _%self177279%_
                                                        _%$%g177287177355%_)
                                                       (cons ''#f '())))))))
                       _%$%hd177301177347%_
                       _%$%hd177298177339%_
                       _%$%hd177295177331%_
                       _%$%hd177292177323%_)
                      (_%$%g177282177307%_ _%$%g177283177310%_))))
              (_%$%g177282177307%_ _%$%g177283177310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g177282177307%_
                                               _%$%g177283177310%_))))
                                      (_%$%g177282177307%_
                                       _%$%g177283177310%_))))
                              (_%$%g177282177307%_ _%$%g177283177310%_))))
                      (_%$%g177282177307%_ _%$%g177283177310%_)))))
          (_%$%g177281177376%_ _%stx177280%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self177195%_ _%stx177196%_)
        (let* ((_%$%g177198177219%_
                (lambda (_%$%g177199177216%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177199177216%_)))
               (_%$%g177197177276%_
                (lambda (_%$%g177199177222%_)
                  (if (gx#stx-pair? _%$%g177199177222%_)
                      (let ((_%$%e177203177224%_
                             (gx#stx-e _%$%g177199177222%_)))
                        (let ((_%$%hd177204177227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177203177224%_)))
                              (_%$%tl177205177229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177203177224%_))))
                          (if (gx#stx-pair? _%$%tl177205177229%_)
                              (let ((_%$%e177206177232%_
                                     (gx#stx-e _%$%tl177205177229%_)))
                                (let ((_%$%hd177207177235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177206177232%_)))
                                      (_%$%tl177208177237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177206177232%_))))
                                  (if (gx#stx-pair? _%$%tl177208177237%_)
                                      (let ((_%$%e177209177240%_
                                             (gx#stx-e _%$%tl177208177237%_)))
                                        (let ((_%$%hd177210177243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177209177240%_)))
                                              (_%$%tl177211177245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177209177240%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl177211177245%_)
                                              (let ((_%$%e177212177248%_
                                                     (gx#stx-e
                                                      _%$%tl177211177245%_)))
                                                (let ((_%$%hd177213177251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e177212177248%_)))
                                                      (_%$%tl177214177253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e177212177248%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl177214177253%_)
                                                      ((lambda (_%$%g177200177256%_
                                                                _%$%g177201177257%_
                                                                _%$%g177202177258%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%self177195%_
                              _%$%g177200177256%_)
                             (cons (gxc#compile-e
                                    _%self177195%_
                                    _%$%g177201177257%_)
                                   (cons (gxc#compile-e
                                          _%self177195%_
                                          _%$%g177202177258%_)
                                         (cons ''#f '()))))))
               _%$%hd177213177251%_
               _%$%hd177210177243%_
               _%$%hd177207177235%_)
              (_%$%g177198177219%_ _%$%g177199177222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g177198177219%_
                                               _%$%g177199177222%_))))
                                      (_%$%g177198177219%_
                                       _%$%g177199177222%_))))
                              (_%$%g177198177219%_ _%$%g177199177222%_))))
                      (_%$%g177198177219%_ _%$%g177199177222%_)))))
          (_%$%g177197177276%_ _%stx177196%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self177095%_ _%stx177096%_)
        (let* ((_%$%g177098177123%_
                (lambda (_%$%g177099177120%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g177099177120%_)))
               (_%$%g177097177192%_
                (lambda (_%$%g177099177126%_)
                  (if (gx#stx-pair? _%$%g177099177126%_)
                      (let ((_%$%e177104177128%_
                             (gx#stx-e _%$%g177099177126%_)))
                        (let ((_%$%hd177105177131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177104177128%_)))
                              (_%$%tl177106177133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177104177128%_))))
                          (if (gx#stx-pair? _%$%tl177106177133%_)
                              (let ((_%$%e177107177136%_
                                     (gx#stx-e _%$%tl177106177133%_)))
                                (let ((_%$%hd177108177139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e177107177136%_)))
                                      (_%$%tl177109177141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e177107177136%_))))
                                  (if (gx#stx-pair? _%$%tl177109177141%_)
                                      (let ((_%$%e177110177144%_
                                             (gx#stx-e _%$%tl177109177141%_)))
                                        (let ((_%$%hd177111177147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e177110177144%_)))
                                              (_%$%tl177112177149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e177110177144%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl177112177149%_)
                                              (let ((_%$%e177113177152%_
                                                     (gx#stx-e
                                                      _%$%tl177112177149%_)))
                                                (let ((_%$%hd177114177155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e177113177152%_)))
                                                      (_%$%tl177115177157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e177113177152%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl177115177157%_)
                                                      (let ((_%$%e177116177160%_
                                                             (gx#stx-e
                                                              _%$%tl177115177157%_)))
                                                        (let ((_%$%hd177117177163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e177116177160%_)))
                      (_%$%tl177118177165%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e177116177160%_))))
                  (if (gx#stx-null? _%$%tl177118177165%_)
                      ((lambda (_%$%g177100177168%_
                                _%$%g177101177169%_
                                _%$%g177102177170%_
                                _%$%g177103177171%_)
                         (cons '##direct-structure-set!
                               (cons (gxc#compile-e
                                      _%self177095%_
                                      _%$%g177101177169%_)
                                     (cons (gxc#compile-e
                                            _%self177095%_
                                            _%$%g177100177168%_)
                                           (cons (gxc#compile-e
                                                  _%self177095%_
                                                  _%$%g177102177170%_)
                                                 (cons (gxc#compile-e
                                                        _%self177095%_
                                                        _%$%g177103177171%_)
                                                       (cons ''#f '())))))))
                       _%$%hd177117177163%_
                       _%$%hd177114177155%_
                       _%$%hd177111177147%_
                       _%$%hd177108177139%_)
                      (_%$%g177098177123%_ _%$%g177099177126%_))))
              (_%$%g177098177123%_ _%$%g177099177126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g177098177123%_
                                               _%$%g177099177126%_))))
                                      (_%$%g177098177123%_
                                       _%$%g177099177126%_))))
                              (_%$%g177098177123%_ _%$%g177099177126%_))))
                      (_%$%g177098177123%_ _%$%g177099177126%_)))))
          (_%$%g177097177192%_ _%stx177096%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self176890%_ _%stx176891%_)
        (let* ((_%$%g176893176914%_
                (lambda (_%$%g176894176911%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g176894176911%_)))
               (_%$%g176892177092%_
                (lambda (_%$%g176894176917%_)
                  (if (gx#stx-pair? _%$%g176894176917%_)
                      (let ((_%$%e176898176919%_
                             (gx#stx-e _%$%g176894176917%_)))
                        (let ((_%$%hd176899176922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e176898176919%_)))
                              (_%$%tl176900176924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e176898176919%_))))
                          (if (gx#stx-pair? _%$%tl176900176924%_)
                              (let ((_%$%e176901176927%_
                                     (gx#stx-e _%$%tl176900176924%_)))
                                (let ((_%$%hd176902176930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e176901176927%_)))
                                      (_%$%tl176903176932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e176901176927%_))))
                                  (if (gx#stx-pair? _%$%tl176903176932%_)
                                      (let ((_%$%e176904176935%_
                                             (gx#stx-e _%$%tl176903176932%_)))
                                        (let ((_%$%hd176905176938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e176904176935%_)))
                                              (_%$%tl176906176940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e176904176935%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl176906176940%_)
                                              (let ((_%$%e176907176943%_
                                                     (gx#stx-e
                                                      _%$%tl176906176940%_)))
                                                (let ((_%$%hd176908176946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e176907176943%_)))
                                                      (_%$%tl176909176948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e176907176943%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl176909176948%_)
                                                      ((lambda (_%$%g176895176951%_
                                                                _%$%g176896176952%_
                                                                _%$%g176897176953%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#compile-e
                                  _%self176890%_
                                  _%$%g176895176951%_)
                                 (cons (gxc#compile-e
                                        _%self176890%_
                                        _%$%g176896176952%_)
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp176971%_ ((_%rest176974%_
                                         (cons _%$%g176896176952%_
                                               (cons _%$%g176895176951%_ '())))
                                        (_%bind176976%_ '())
                                        (_%args176977%_ '()))
                       (let* ((_%$%rest176978176986%_ _%rest176974%_)
                              (_%$%E176981176990%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%rest176978176986%_
                                        '([e . rest])
                                        'else)
                                 (void)))
                              (_%$%else176980176994%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind176976%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))
                              _%args176977%_))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%K176982177080%_
                               (lambda (_%rest176997%_ _%e176998%_)
                                 (let* ((_%$%g177003177021%_
                                         (lambda (_%$%g177004177018%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g177004177018%_)))
                                        (_%$%g177002177031%_
                                         (lambda (_%$%g177004177024%_)
                                           ((lambda ()
                                              (let ((_%tmp177028%_
                                                     (make-symbol
                                                      (gensym '__tmp))))
                                                (_%lp176971%_
                                                 _%rest176997%_
                                                 (cons (cons _%tmp177028%_
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e176998%_)
                           '()))
               _%bind176976%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%tmp177028%_
                                                       _%args176977%_)))))))
                                        (_%$%g177001177054%_
                                         (lambda (_%$%g177004177034%_)
                                           (if (gx#stx-pair?
                                                _%$%g177004177034%_)
                                               (let ((_%$%e177011177036%_
                                                      (gx#stx-e
                                                       _%$%g177004177034%_)))
                                                 (let ((_%$%hd177012177039%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e177011177036%_)))
                                                       (_%$%tl177013177041%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e177011177036%_))))
                                                   (if (gx#identifier?
                                                        _%$%hd177012177039%_)
                                                       (if (gx#stx-eq?
                                                            '%#quote
                                                            _%$%hd177012177039%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl177013177041%_)
                                                               (let ((_%$%e177014177044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl177013177041%_)))
                         (let ((_%$%hd177015177047%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e177014177044%_)))
                               (_%$%tl177016177049%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e177014177044%_))))
                           (if (gx#stx-null? _%$%tl177016177049%_)
                               ((lambda ()
                                  (_%lp176971%_
                                   _%rest176997%_
                                   _%bind176976%_
                                   (cons (gxc#compile-e _%e176998%_)
                                         _%args176977%_))))
                               (_%$%g177002177031%_ _%$%g177004177034%_))))
                       (_%$%g177002177031%_ _%$%g177004177034%_))
                   (_%$%g177002177031%_ _%$%g177004177034%_))
               (_%$%g177002177031%_ _%$%g177004177034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g177002177031%_
                                                _%$%g177004177034%_))))
                                        (_%$%g177000177077%_
                                         (lambda (_%$%g177004177057%_)
                                           (if (gx#stx-pair?
                                                _%$%g177004177057%_)
                                               (let ((_%$%e177005177059%_
                                                      (gx#stx-e
                                                       _%$%g177004177057%_)))
                                                 (let ((_%$%hd177006177062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e177005177059%_)))
                                                       (_%$%tl177007177064%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e177005177059%_))))
                                                   (if (gx#identifier?
                                                        _%$%hd177006177062%_)
                                                       (if (gx#stx-eq?
                                                            '%#ref
                                                            _%$%hd177006177062%_)
                                                           (if (gx#stx-pair?
                                                                _%$%tl177007177064%_)
                                                               (let ((_%$%e177008177067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _%$%tl177007177064%_)))
                         (let ((_%$%hd177009177070%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e177008177067%_)))
                               (_%$%tl177010177072%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e177008177067%_))))
                           (if (gx#stx-null? _%$%tl177010177072%_)
                               ((lambda ()
                                  (_%lp176971%_
                                   _%rest176997%_
                                   _%bind176976%_
                                   (cons (gxc#compile-e _%e176998%_)
                                         _%args176977%_))))
                               (_%$%g177001177054%_ _%$%g177004177057%_))))
                       (_%$%g177001177054%_ _%$%g177004177057%_))
                   (_%$%g177001177054%_ _%$%g177004177057%_))
               (_%$%g177001177054%_ _%$%g177004177057%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g177001177054%_
                                                _%$%g177004177057%_)))))
                                   (_%$%g177000177077%_ _%e176998%_)))))
                         (if (pair? _%$%rest176978176986%_)
                             (let ((_%$%hd176983177083%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rest176978176986%_)))
                                   (_%$%tl176984177085%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rest176978176986%_))))
                               (let* ((_%e177088%_ _%$%hd176983177083%_)
                                      (_%rest177090%_ _%$%tl176984177085%_))
                                 (_%$%K176982177080%_
                                  _%rest177090%_
                                  _%e177088%_)))
                             (_%$%else176980176994%_))))))
               _%$%hd176908176946%_
               _%$%hd176905176938%_
               _%$%hd176902176930%_)
              (_%$%g176893176914%_ _%$%g176894176917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g176893176914%_
                                               _%$%g176894176917%_))))
                                      (_%$%g176893176914%_
                                       _%$%g176894176917%_))))
                              (_%$%g176893176914%_ _%$%g176894176917%_))))
                      (_%$%g176893176914%_ _%$%g176894176917%_)))))
          (_%$%g176892177092%_ _%stx176891%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self176669%_ _%stx176670%_)
        (let* ((_%$%g176672176697%_
                (lambda (_%$%g176673176694%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g176673176694%_)))
               (_%$%g176671176887%_
                (lambda (_%$%g176673176700%_)
                  (if (gx#stx-pair? _%$%g176673176700%_)
                      (let ((_%$%e176678176702%_
                             (gx#stx-e _%$%g176673176700%_)))
                        (let ((_%$%hd176679176705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e176678176702%_)))
                              (_%$%tl176680176707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e176678176702%_))))
                          (if (gx#stx-pair? _%$%tl176680176707%_)
                              (let ((_%$%e176681176710%_
                                     (gx#stx-e _%$%tl176680176707%_)))
                                (let ((_%$%hd176682176713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e176681176710%_)))
                                      (_%$%tl176683176715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e176681176710%_))))
                                  (if (gx#stx-pair? _%$%tl176683176715%_)
                                      (let ((_%$%e176684176718%_
                                             (gx#stx-e _%$%tl176683176715%_)))
                                        (let ((_%$%hd176685176721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e176684176718%_)))
                                              (_%$%tl176686176723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e176684176718%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl176686176723%_)
                                              (let ((_%$%e176687176726%_
                                                     (gx#stx-e
                                                      _%$%tl176686176723%_)))
                                                (let ((_%$%hd176688176729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e176687176726%_)))
                                                      (_%$%tl176689176731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e176687176726%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl176689176731%_)
                                                      (let ((_%$%e176690176734%_
                                                             (gx#stx-e
                                                              _%$%tl176689176731%_)))
                                                        (let ((_%$%hd176691176737%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e176690176734%_)))
                      (_%$%tl176692176739%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e176690176734%_))))
                  (if (gx#stx-null? _%$%tl176692176739%_)
                      ((lambda (_%$%g176674176742%_
                                _%$%g176675176743%_
                                _%$%g176676176744%_
                                _%$%g176677176745%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (gxc#compile-e
                                          _%self176669%_
                                          _%$%g176675176743%_)
                                         (cons (gxc#compile-e
                                                _%self176669%_
                                                _%$%g176674176742%_)
                                               (cons (gxc#compile-e
                                                      _%self176669%_
                                                      _%$%g176676176744%_)
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp176766%_ ((_%rest176769%_
                                                 (cons _%$%g176676176744%_
                                                       (cons _%$%g176674176742%_
                                                             (cons _%$%g176675176743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind176771%_ '())
                                                (_%args176772%_ '()))
                               (let* ((_%$%rest176773176781%_ _%rest176769%_)
                                      (_%$%E176776176785%_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _%$%rest176773176781%_
                                                '([e . rest])
                                                'else)
                                         (void)))
                                      (_%$%else176775176789%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind176771%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (cons ''#f (cons ''#f '()))
                                      _%args176772%_))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%K176777176875%_
                                       (lambda (_%rest176792%_ _%e176793%_)
                                         (let* ((_%$%g176798176816%_
                                                 (lambda (_%$%g176799176813%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g176799176813%_)))
                                                (_%$%g176797176826%_
                                                 (lambda (_%$%g176799176819%_)
                                                   ((lambda ()
                                                      (let ((_%tmp176823%_
                                                             (make-symbol
                                                              (gensym '__tmp))))
                                                        (_%lp176766%_
                                                         _%rest176792%_
                                                         (cons (cons _%tmp176823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gxc#compile-e _%e176793%_) '()))
                       _%bind176771%_)
                 (cons _%tmp176823%_ _%args176772%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g176796176849%_
                                                 (lambda (_%$%g176799176829%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g176799176829%_)
                                                       (let ((_%$%e176806176831%_
                                                              (gx#stx-e
                                                               _%$%g176799176829%_)))
                                                         (let ((_%$%hd176807176834%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e176806176831%_)))
                       (_%$%tl176808176836%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e176806176831%_))))
                   (if (gx#identifier? _%$%hd176807176834%_)
                       (if (gx#stx-eq? '%#quote _%$%hd176807176834%_)
                           (if (gx#stx-pair? _%$%tl176808176836%_)
                               (let ((_%$%e176809176839%_
                                      (gx#stx-e _%$%tl176808176836%_)))
                                 (let ((_%$%hd176810176842%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e176809176839%_)))
                                       (_%$%tl176811176844%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e176809176839%_))))
                                   (if (gx#stx-null? _%$%tl176811176844%_)
                                       ((lambda ()
                                          (_%lp176766%_
                                           _%rest176792%_
                                           _%bind176771%_
                                           (cons (gxc#compile-e _%e176793%_)
                                                 _%args176772%_))))
                                       (_%$%g176797176826%_
                                        _%$%g176799176829%_))))
                               (_%$%g176797176826%_ _%$%g176799176829%_))
                           (_%$%g176797176826%_ _%$%g176799176829%_))
                       (_%$%g176797176826%_ _%$%g176799176829%_))))
               (_%$%g176797176826%_ _%$%g176799176829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g176795176872%_
                                                 (lambda (_%$%g176799176852%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g176799176852%_)
                                                       (let ((_%$%e176800176854%_
                                                              (gx#stx-e
                                                               _%$%g176799176852%_)))
                                                         (let ((_%$%hd176801176857%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e176800176854%_)))
                       (_%$%tl176802176859%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e176800176854%_))))
                   (if (gx#identifier? _%$%hd176801176857%_)
                       (if (gx#stx-eq? '%#ref _%$%hd176801176857%_)
                           (if (gx#stx-pair? _%$%tl176802176859%_)
                               (let ((_%$%e176803176862%_
                                      (gx#stx-e _%$%tl176802176859%_)))
                                 (let ((_%$%hd176804176865%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e176803176862%_)))
                                       (_%$%tl176805176867%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e176803176862%_))))
                                   (if (gx#stx-null? _%$%tl176805176867%_)
                                       ((lambda ()
                                          (_%lp176766%_
                                           _%rest176792%_
                                           _%bind176771%_
                                           (cons (gxc#compile-e _%e176793%_)
                                                 _%args176772%_))))
                                       (_%$%g176796176849%_
                                        _%$%g176799176852%_))))
                               (_%$%g176796176849%_ _%$%g176799176852%_))
                           (_%$%g176796176849%_ _%$%g176799176852%_))
                       (_%$%g176796176849%_ _%$%g176799176852%_))))
               (_%$%g176796176849%_ _%$%g176799176852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g176795176872%_
                                            _%e176793%_)))))
                                 (if (pair? _%$%rest176773176781%_)
                                     (let ((_%$%hd176778176878%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest176773176781%_)))
                                           (_%$%tl176779176880%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest176773176781%_))))
                                       (let* ((_%e176883%_
                                               _%$%hd176778176878%_)
                                              (_%rest176885%_
                                               _%$%tl176779176880%_))
                                         (_%$%K176777176875%_
                                          _%rest176885%_
                                          _%e176883%_)))
                                     (_%$%else176775176789%_))))))
                       _%$%hd176691176737%_
                       _%$%hd176688176729%_
                       _%$%hd176685176721%_
                       _%$%hd176682176713%_)
                      (_%$%g176672176697%_ _%$%g176673176700%_))))
              (_%$%g176672176697%_ _%$%g176673176700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g176672176697%_
                                               _%$%g176673176700%_))))
                                      (_%$%g176672176697%_
                                       _%$%g176673176700%_))))
                              (_%$%g176672176697%_ _%$%g176673176700%_))))
                      (_%$%g176672176697%_ _%$%g176673176700%_)))))
          (_%$%g176671176887%_ _%stx176670%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self176508%_ _%stx176509%_)
        (letrec ((_%import-set-template176511%_
                  (lambda (_%in176614%_ _%phi176615%_)
                    (let ((_%iphi176617%_
                           (fx+ _%phi176615%_
                                (gx#import-set-phi _%in176614%_)))
                          (_%imports176618%_
                           (gx#module-context-import
                            (gx#import-set-source _%in176614%_))))
                      (let _%lp176620%_ ((_%rest176622%_ _%imports176618%_)
                                         (_%r176623%_ '()))
                        (let* ((_%$%rest176624176632%_ _%rest176622%_)
                               (_%$%E176627176636%_
                                (lambda ()
                                  (error '"No clause matching"
                                         _%$%rest176624176632%_
                                         '([in . rest])
                                         'else)
                                  (void)))
                               (_%$%else176626176640%_ (lambda () _%r176623%_))
                               (_%$%K176628176657%_
                                (lambda (_%rest176643%_ _%in176644%_)
                                  (if (gx#module-context? _%in176644%_)
                                      (if (fxzero? _%iphi176617%_)
                                          (_%lp176620%_
                                           _%rest176643%_
                                           (cons _%in176644%_ _%r176623%_))
                                          (_%lp176620%_
                                           _%rest176643%_
                                           _%r176623%_))
                                      (if (gx#module-import? _%in176644%_)
                                          (let ((_%iphi176648%_
                                                 (fx+ _%phi176615%_
                                                      (gx#module-import-phi
                                                       _%in176644%_))))
                                            (if (fxzero? _%iphi176648%_)
                                                (_%lp176620%_
                                                 _%rest176643%_
                                                 (cons (gx#module-export-context
                                                        (gx#module-import-source
                                                         _%in176644%_))
                                                       _%r176623%_))
                                                (_%lp176620%_
                                                 _%rest176643%_
                                                 _%r176623%_)))
                                          (if (gx#import-set? _%in176644%_)
                                              (let ((_%xphi176651%_
                                                     (fx+ _%iphi176617%_
                                                          (gx#import-set-phi
                                                           _%in176644%_))))
                                                (if (fxzero? _%xphi176651%_)
                                                    (_%lp176620%_
                                                     _%rest176643%_
                                                     (cons (gx#import-set-source
                                                            _%in176644%_)
                                                           _%r176623%_))
                                                    (if (fxpositive?
                                                         _%xphi176651%_)
                                                        (_%lp176620%_
                                                         _%rest176643%_
                                                         (foldl cons
                                                                _%r176623%_
                                                                (_%import-set-template176511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in176644%_
                         _%iphi176617%_)))
                (_%lp176620%_ _%rest176643%_ _%r176623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp176620%_
                                               _%rest176643%_
                                               _%r176623%_)))))))
                          (if (pair? _%$%rest176624176632%_)
                              (let ((_%$%hd176629176660%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176624176632%_)))
                                    (_%$%tl176630176662%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176624176632%_))))
                                (let* ((_%in176665%_ _%$%hd176629176660%_)
                                       (_%rest176667%_ _%$%tl176630176662%_))
                                  (_%$%K176628176657%_
                                   _%rest176667%_
                                   _%in176665%_)))
                              (_%$%else176626176640%_))))))))
          (let* ((_%$%g176513176523%_
                  (lambda (_%$%g176514176520%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g176514176520%_)))
                 (_%$%g176512176611%_
                  (lambda (_%$%g176514176526%_)
                    (if (gx#stx-pair? _%$%g176514176526%_)
                        (let ((_%$%e176516176528%_
                               (gx#stx-e _%$%g176514176526%_)))
                          (let ((_%$%hd176517176531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e176516176528%_)))
                                (_%$%tl176518176533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e176516176528%_))))
                            ((lambda (_%$%g176515176536%_)
                               (let ((_%ht176547%_ (make-hash-table-eq)))
                                 (let _%lp176549%_ ((_%rest176551%_
                                                     _%$%g176515176536%_)
                                                    (_%loads176552%_ '()))
                                   (letrec ((_%K176554%_
                                             (lambda (_%ctx176604%_
                                                      _%rest176605%_)
                                               (let ((_%id176607%_
                                                      (gx#expander-context-id
                                                       _%ctx176604%_)))
                                                 (if (hash-get
                                                      _%ht176547%_
                                                      _%id176607%_)
                                                     (_%lp176549%_
                                                      _%rest176605%_
                                                      _%loads176552%_)
                                                     (let ((_%rt176609%_
                                                            (gxc#module-id->path-string
                                                             _%id176607%_)))
                                                       (hash-put!
                                                        _%ht176547%_
                                                        _%id176607%_
                                                        _%rt176609%_)
                                                       (_%lp176549%_
                                                        _%rest176605%_
                                                        (cons _%rt176609%_
                                                              _%loads176552%_))))))))
                                     (let* ((_%$%rest176555176563%_
                                             _%rest176551%_)
                                            (_%$%E176558176567%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%rest176555176563%_
                                                      '([in . rest])
                                                      'else)
                                               (void)))
                                            (_%$%else176557176575%_
                                             (lambda ()
                                               (cons 'begin
                                                     (map (lambda (_%$%g176570176572%_)
                                                            (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g176570176572%_))
                  (reverse _%loads176552%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%K176559176592%_
                                             (lambda (_%rest176578%_
                                                      _%in176579%_)
                                               (if (gx#module-context?
                                                    _%in176579%_)
                                                   (_%K176554%_
                                                    _%in176579%_
                                                    _%rest176578%_)
                                                   (if (gx#module-import?
                                                        _%in176579%_)
                                                       (if (fxzero? (gx#module-import-phi
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in176579%_))
                   (_%K176554%_
                    (gx#module-export-context
                     (gx#module-import-source _%in176579%_))
                    _%rest176578%_)
                   (_%lp176549%_ _%rest176578%_ _%loads176552%_))
               (if (gx#import-set? _%in176579%_)
                   (let ((_%phi176584%_ (gx#import-set-phi _%in176579%_)))
                     (if (fxzero? _%phi176584%_)
                         (_%K176554%_
                          (gx#import-set-source _%in176579%_)
                          _%rest176578%_)
                         (if (fxpositive? _%phi176584%_)
                             (let ((_%deps176588%_
                                    (_%import-set-template176511%_
                                     _%in176579%_
                                     '0)))
                               (_%lp176549%_
                                (foldl cons _%rest176578%_ _%deps176588%_)
                                _%loads176552%_))
                             (_%lp176549%_ _%rest176578%_ _%loads176552%_))))
                   (gxc#raise-compile-error
                    '"Unexpected import"
                    _%stx176509%_
                    _%in176579%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%rest176555176563%_)
                                           (let ((_%$%hd176560176595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%rest176555176563%_)))
                                                 (_%$%tl176561176597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%rest176555176563%_))))
                                             (let* ((_%in176600%_
                                                     _%$%hd176560176595%_)
                                                    (_%rest176602%_
                                                     _%$%tl176561176597%_))
                                               (_%$%K176559176592%_
                                                _%rest176602%_
                                                _%in176600%_)))
                                           (_%$%else176557176575%_)))))))
                             _%$%tl176518176533%_)))
                        (_%$%g176513176523%_ _%$%g176514176526%_)))))
            (_%$%g176512176611%_ _%stx176509%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self176322%_ _%stx176323%_)
        (letrec ((_%add-lift!176325%_
                  (lambda (_%expr176506%_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (cons _%expr176506%_
                           (unbox (gxc#current-compile-lift))))))
                 (_%generate-syntax-quote176326%_
                  (lambda (_%id176503%_ _%marks176504%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id176503%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks176504%_
                                                        '()))))))))
                 (_%generate-simple176327%_
                  (lambda (_%stxq176498%_)
                    (let ((_%gid176500%_ (gxc#generate-runtime-temporary '#t))
                          (_%qid176501%_
                           (gxc#generate-runtime-identifier _%stxq176498%_)))
                      (_%add-lift!176325%_
                       (cons 'define
                             (cons _%gid176500%_
                                   (cons (_%generate-syntax-quote176326%_
                                          _%qid176501%_
                                          ''())
                                         '()))))
                      (hash-put!
                       (gxc#current-compile-identifiers)
                       _%stxq176498%_
                       _%gid176500%_)
                      _%gid176500%_)))
                 (_%generate-serialized176328%_
                  (lambda (_%stxq176488%_ _%marks176489%_)
                    (let* ((_%mark-refs176491%_
                            (map _%generate-mark176329%_ _%marks176489%_))
                           (_%gid176493%_ (gxc#generate-runtime-temporary '#t))
                           (_%qid176495%_
                            (gxc#generate-runtime-identifier _%stxq176488%_)))
                      (_%add-lift!176325%_
                       (cons 'define
                             (cons _%gid176493%_
                                   (cons (_%generate-syntax-quote176326%_
                                          _%qid176495%_
                                          (cons 'list _%mark-refs176491%_))
                                         '()))))
                      (hash-put!
                       (gxc#current-compile-identifiers)
                       _%stxq176488%_
                       _%gid176493%_)
                      _%gid176493%_)))
                 (_%generate-mark176329%_
                  (lambda (_%mark176473%_)
                    (let ((_%$e176475%_
                           (hash-get
                            (gxc#current-compile-marks)
                            _%mark176473%_)))
                      (if _%$e176475%_
                          _%$e176475%_
                          (let* ((_%gid176479%_
                                  (gxc#generate-runtime-temporary '#t))
                                 (_%repr176481%_
                                  (_%serialize-mark176330%_ _%mark176473%_))
                                 (_%ctx176483%_
                                  (gx#core-context-top
                                   (gx#expander-mark-context _%mark176473%_)))
                                 (_%ctx-ref176485%_
                                  (if (eq? _%ctx176483%_
                                           (gx#current-expander-context))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref176331%_
                                                               _%ctx176483%_)
                                                              '()))
                                                  '())))))
                            (hash-put!
                             (gxc#current-compile-marks)
                             _%mark176473%_
                             _%gid176479%_)
                            (_%add-lift!176325%_
                             (cons 'define
                                   (cons _%gid176479%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr176481%_ '()))
                   (cons _%ctx-ref176485%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid176479%_)))))
                 (_%serialize-mark176330%_
                  (lambda (_%mark176421%_)
                    (letrec ((_%quote-e176423%_
                              (lambda (_%sym176471%_)
                                (if (interned-symbol? _%sym176471%_)
                                    _%sym176471%_
                                    (gxc#generate-runtime-gensym-reference
                                     _%sym176471%_)))))
                      (let* ((_%$%mark176424176433%_ _%mark176421%_)
                             (_%$%E176426176436%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%mark176424176433%_
                                       '((expander-mark subst ctx phi trace)))
                                (void)))
                             (_%$%K176427176448%_
                              (lambda (_%trace176439%_
                                       _%phi176440%_
                                       _%ctx176441%_
                                       _%subst176442%_)
                                (let ((_%subs176444%_
                                       (if _%subst176442%_
                                           (hash->list _%subst176442%_)
                                           '())))
                                  (cons _%phi176440%_
                                        (map (lambda (_%pair176446%_)
                                               (cons (_%quote-e176423%_
                                                      (car _%pair176446%_))
                                                     (_%quote-e176423%_
                                                      (cdr _%pair176446%_))))
                                             _%subs176444%_))))))
                        (if (gx#expander-mark? _%$%mark176424176433%_)
                            (let* ((_%$%e176428176451%_
                                    (gx#&expander-mark-subst
                                     _%$%mark176424176433%_))
                                   (_%subst176454%_ _%$%e176428176451%_)
                                   (_%$%e176429176456%_
                                    (gx#&expander-mark-context
                                     _%$%mark176424176433%_))
                                   (_%ctx176459%_ _%$%e176429176456%_)
                                   (_%$%e176430176461%_
                                    (gx#&expander-mark-phi
                                     _%$%mark176424176433%_))
                                   (_%phi176464%_ _%$%e176430176461%_)
                                   (_%$%e176431176466%_
                                    (gx#&expander-mark-trace
                                     _%$%mark176424176433%_))
                                   (_%trace176469%_ _%$%e176431176466%_))
                              (_%$%K176427176448%_
                               _%trace176469%_
                               _%phi176464%_
                               _%ctx176459%_
                               _%subst176454%_))
                            (_%$%E176426176436%_))))))
                 (_%context-ref176331%_
                  (lambda (_%ctx176408%_)
                    (if (gx#module-context?
                         (gx#phi-context-super _%ctx176408%_))
                        (let ((_%ctx-ref176410%_
                               (_%context-ref-nested176333%_ _%ctx176408%_))
                              (_%ctx-origin176411%_
                               (_%context-ref-origin176332%_ _%ctx176408%_))
                              (_%origin176412%_
                               (_%context-ref-origin176332%_
                                (gx#current-expander-context))))
                          (if (eq? _%origin176412%_ _%ctx-origin176411%_)
                              (let ((_%ref176414%_
                                     (_%context-ref-nested176333%_
                                      (gx#current-expander-context))))
                                (let _%lp176416%_ ((_%ref176418%_
                                                    (cdr _%ref176414%_))
                                                   (_%ctx-ref176419%_
                                                    (cdr _%ctx-ref176410%_)))
                                  (if (and (pair? _%ref176418%_)
                                           (eq? (car _%ref176418%_)
                                                (car _%ctx-ref176419%_)))
                                      (_%lp176416%_
                                       (cdr _%ref176418%_)
                                       (cdr _%ctx-ref176419%_))
                                      (cons '#f _%ctx-ref176419%_))))
                              _%ctx-ref176410%_))
                        (make-symbol
                         '":"
                         (gx#expander-context-id _%ctx176408%_)))))
                 (_%context-ref-origin176332%_
                  (lambda (_%ctx176400%_)
                    (let _%lp176402%_ ((_%ctx176404%_ _%ctx176400%_))
                      (let ((_%super176406%_
                             (gx#phi-context-super _%ctx176404%_)))
                        (if (gx#module-context? _%super176406%_)
                            (_%lp176402%_ _%super176406%_)
                            _%ctx176404%_)))))
                 (_%context-ref-nested176333%_
                  (lambda (_%ctx176391%_)
                    (let _%lp176393%_ ((_%ctx176395%_ _%ctx176391%_)
                                       (_%r176396%_ '()))
                      (let ((_%super176398%_
                             (gx#phi-context-super _%ctx176395%_)))
                        (if (gx#module-context? _%super176398%_)
                            (_%lp176393%_
                             _%super176398%_
                             (cons (car (gx#module-context-path _%ctx176395%_))
                                   _%r176396%_))
                            (cons (make-symbol
                                   '":"
                                   (gx#expander-context-id _%ctx176395%_))
                                  _%r176396%_)))))))
          (let* ((_%$%g176335176348%_
                  (lambda (_%$%g176336176345%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g176336176345%_)))
                 (_%$%g176334176388%_
                  (lambda (_%$%g176336176351%_)
                    (if (gx#stx-pair? _%$%g176336176351%_)
                        (let ((_%$%e176338176353%_
                               (gx#stx-e _%$%g176336176351%_)))
                          (let ((_%$%hd176339176356%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e176338176353%_)))
                                (_%$%tl176340176358%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e176338176353%_))))
                            (if (gx#stx-pair? _%$%tl176340176358%_)
                                (let ((_%$%e176341176361%_
                                       (gx#stx-e _%$%tl176340176358%_)))
                                  (let ((_%$%hd176342176364%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e176341176361%_)))
                                        (_%$%tl176343176366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e176341176361%_))))
                                    (if (gx#stx-null? _%$%tl176343176366%_)
                                        ((lambda (_%$%g176337176369%_)
                                           (if (gx#identifier?
                                                _%$%g176337176369%_)
                                               (let ((_%$e176382%_
                                                      (hash-get
                                                       (gxc#current-compile-identifiers)
                                                       _%$%g176337176369%_)))
                                                 (if _%$e176382%_
                                                     _%$e176382%_
                                                     (let ((_%marks176386%_
                                                            (gx#syntax-quote-marks
                                                             _%$%g176337176369%_)))
                                                       (if (null? _%marks176386%_)
                                                           (_%generate-simple176327%_
                                                            _%$%g176337176369%_)
                                                           (_%generate-serialized176328%_
                                                            _%$%g176337176369%_
                                                            _%marks176386%_)))))
                                               (gxc#raise-compile-error
                                                '"Cannot quote non-identifier syntax"
                                                _%$%g176337176369%_)))
                                         _%$%hd176342176364%_)
                                        (_%$%g176335176348%_
                                         _%$%g176336176351%_))))
                                (_%$%g176335176348%_ _%$%g176336176351%_))))
                        (_%$%g176335176348%_ _%$%g176336176351%_)))))
            (_%$%g176334176388%_ _%stx176323%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self176254%_ _%stx176255%_)
        (let* ((_%$%g176257176274%_
                (lambda (_%$%g176258176271%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g176258176271%_)))
               (_%$%g176256176319%_
                (lambda (_%$%g176258176277%_)
                  (if (gx#stx-pair? _%$%g176258176277%_)
                      (let ((_%$%e176261176279%_
                             (gx#stx-e _%$%g176258176277%_)))
                        (let ((_%$%hd176262176282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e176261176279%_)))
                              (_%$%tl176263176284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e176261176279%_))))
                          (if (gx#stx-pair? _%$%tl176263176284%_)
                              (let ((_%$%e176264176287%_
                                     (gx#stx-e _%$%tl176263176284%_)))
                                (let ((_%$%hd176265176290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e176264176287%_)))
                                      (_%$%tl176266176292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e176264176287%_))))
                                  (if (gx#stx-pair? _%$%tl176266176292%_)
                                      (let ((_%$%e176267176295%_
                                             (gx#stx-e _%$%tl176266176292%_)))
                                        (let ((_%$%hd176268176298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e176267176295%_)))
                                              (_%$%tl176269176300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e176267176295%_))))
                                          (if (gx#stx-null?
                                               _%$%tl176269176300%_)
                                              ((lambda (_%$%g176259176303%_
                                                        _%$%g176260176304%_)
                                                 (cons 'define
                                                       (cons (gx#stx-e
                                                              _%$%g176260176304%_)
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%self176254%_
                            _%$%g176259176303%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd176268176298%_
                                               _%$%hd176265176290%_)
                                              (_%$%g176257176274%_
                                               _%$%g176258176277%_))))
                                      (_%$%g176257176274%_
                                       _%$%g176258176277%_))))
                              (_%$%g176257176274%_ _%$%g176258176277%_))))
                      (_%$%g176257176274%_ _%$%g176258176277%_)))))
          (_%$%g176256176319%_ _%stx176255%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self176203%_ _%stx176204%_)
        (let* ((_%$%g176206176216%_
                (lambda (_%$%g176207176213%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g176207176213%_)))
               (_%$%g176205176251%_
                (lambda (_%$%g176207176219%_)
                  (if (gx#stx-pair? _%$%g176207176219%_)
                      (let ((_%$%e176209176221%_
                             (gx#stx-e _%$%g176207176219%_)))
                        (let ((_%$%hd176210176224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e176209176221%_)))
                              (_%$%tl176211176226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e176209176221%_))))
                          ((lambda (_%$%g176208176229%_)
                             (let* ((_%c-body176243%_
                                     (map (lambda (_%$%g176238176240%_)
                                            (gxc#compile-e
                                             _%self176203%_
                                             _%$%g176238176240%_))
                                          _%$%g176208176229%_))
                                    (_%c-body176248%_
                                     (filter (lambda (_%$obj176245%_)
                                               (not (void? _%$obj176245%_)))
                                             _%c-body176243%_)))
                               (cons '%#begin _%c-body176248%_)))
                           _%$%tl176211176226%_)))
                      (_%$%g176206176216%_ _%$%g176207176219%_)))))
          (_%$%g176205176251%_ _%stx176204%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self176108%_ _%stx176109%_)
        (let* ((_%$%g176111176121%_
                (lambda (_%$%g176112176118%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g176112176118%_)))
               (_%$%g176110176200%_
                (lambda (_%$%g176112176124%_)
                  (if (gx#stx-pair? _%$%g176112176124%_)
                      (let ((_%$%e176114176126%_
                             (gx#stx-e _%$%g176112176124%_)))
                        (let ((_%$%hd176115176129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e176114176126%_)))
                              (_%$%tl176116176131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e176114176126%_))))
                          ((lambda (_%$%g176113176134%_)
                             (let* ((_%phi176144%_
                                     (fx1+ (gx#current-expander-phi)))
                                    (_%block176146%_
                                     (gxc#meta-state-begin-phi!
                                      (slot-ref _%self176108%_ 'state)
                                      _%phi176144%_))
                                    (_%compiled176149%_
                                     (call-with-parameters
                                      (lambda ()
                                        (gxc#apply-generate-meta-phi
                                         (cons (gx#datum->syntax '#f '%#begin)
                                               _%$%g176113176134%_)
                                         'state:
                                         (slot-ref _%self176108%_ 'state)))
                                      gx#current-expander-phi
                                      _%phi176144%_))
                                    (_%$%g176152176162%_
                                     (lambda (_%$%g176153176159%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g176153176159%_)))
                                    (_%$%g176151176197%_
                                     (lambda (_%$%g176153176165%_)
                                       (if (gx#stx-pair? _%$%g176153176165%_)
                                           (let ((_%$%e176155176167%_
                                                  (gx#stx-e
                                                   _%$%g176153176165%_)))
                                             (let ((_%$%hd176156176170%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e176155176167%_)))
                                                   (_%$%tl176157176172%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e176155176167%_))))
                                               (if (gx#identifier?
                                                    _%$%hd176156176170%_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _%$%hd176156176170%_)
                                                       ((lambda (_%$%g176154176175%_)
                                                          (let ((_%c-body176192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj176189%_)
                                   (not (void? _%$obj176189%_)))
                                 _%$%g176154176175%_)))
                    (if _%block176146%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block176146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body176192%_))
                        (if (null? _%c-body176192%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body176192%_)))))
                _%$%tl176157176172%_)
               (_%$%g176152176162%_ _%$%g176153176165%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g176152176162%_
                                                    _%$%g176153176165%_))))
                                           (_%$%g176152176162%_
                                            _%$%g176153176165%_)))))
                               (_%$%g176151176197%_ _%compiled176149%_)))
                           _%$%tl176116176131%_)))
                      (_%$%g176111176121%_ _%$%g176112176124%_)))))
          (_%$%g176110176200%_ _%stx176109%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self176039%_ _%stx176040%_)
        (gxc#meta-state-end-phi! (slot-ref _%self176039%_ 'state))
        (let* ((_%$%g176042176056%_
                (lambda (_%$%g176043176053%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g176043176053%_)))
               (_%$%g176041176105%_
                (lambda (_%$%g176043176059%_)
                  (if (gx#stx-pair? _%$%g176043176059%_)
                      (let ((_%$%e176046176061%_
                             (gx#stx-e _%$%g176043176059%_)))
                        (let ((_%$%hd176047176064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e176046176061%_)))
                              (_%$%tl176048176066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e176046176061%_))))
                          (if (gx#stx-pair? _%$%tl176048176066%_)
                              (let ((_%$%e176049176069%_
                                     (gx#stx-e _%$%tl176048176066%_)))
                                (let ((_%$%hd176050176072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e176049176069%_)))
                                      (_%$%tl176051176074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e176049176069%_))))
                                  ((lambda (_%$%g176044176077%_
                                            _%$%g176045176078%_)
                                     (let ((_%key176091%_
                                            (gx#core-identifier-key
                                             _%$%g176045176078%_)))
                                       (if (interned-symbol? _%key176091%_)
                                           '#!void
                                           (gxc#raise-compile-error
                                            '"Cannot compile module with uninterned id"
                                            _%stx176040%_
                                            _%$%g176045176078%_
                                            _%key176091%_))
                                       (let* ((_%ctx176093%_
                                               (gx#syntax-local-e
                                                _%$%g176045176078%_))
                                              (_%code176096%_
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e
                                                   _%self176039%_
                                                   (gx#module-context-code
                                                    _%ctx176093%_)))
                                                gx#current-expander-context
                                                _%ctx176093%_))
                                              (_%rt176098%_
                                               (hash-get
                                                (gxc#current-compile-runtime-sections)
                                                _%ctx176093%_))
                                              (_%loader176100%_
                                               (if _%rt176098%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt176098%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid176102%_
                                               (gx#stx-e _%$%g176045176078%_)))
                                         (gxc#meta-state-end-phi!
                                          (slot-ref _%self176039%_ 'state))
                                         (cons '%#module
                                               (cons _%modid176102%_
                                                     (cons _%code176096%_
                                                           _%loader176100%_))))))
                                   _%$%tl176051176074%_
                                   _%$%hd176050176072%_)))
                              (_%$%g176042176056%_ _%$%g176043176059%_))))
                      (_%$%g176042176056%_ _%$%g176043176059%_)))))
          (_%$%g176041176105%_ _%stx176040%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx176026%_ _%context-chain176027%_)
        (let _%lp176029%_ ((_%ctx176031%_ _%ctx176026%_) (_%path176032%_ '()))
          (let ((_%super176034%_ (gx#phi-context-super _%ctx176031%_)))
            (if (memq _%super176034%_ _%context-chain176027%_)
                (cons* '#f
                       (car (gx#module-context-path _%ctx176031%_))
                       _%path176032%_)
                (if (gx#module-context? _%super176034%_)
                    (_%lp176029%_
                     _%super176034%_
                     (cons (car (gx#module-context-path _%ctx176031%_))
                           _%path176032%_))
                    (cons (make-symbol
                           '":"
                           (gx#expander-context-id _%ctx176031%_))
                          _%path176032%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp176019%_ ((_%ctx176021%_ (gx#current-expander-context))
                           (_%r176022%_ '()))
          (if (gx#module-context? _%ctx176021%_)
              (_%lp176019%_
               (gx#phi-context-super _%ctx176021%_)
               (cons _%ctx176021%_ _%r176022%_))
              _%r176022%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self175784%_ _%stx175785%_)
        (letrec* ((_%context-chain175787%_ (gxc#current-context-chain))
                  (_%make-import-spec175788%_
                   (lambda (_%in175956%_)
                     (let* ((_%$%in175957175969%_ _%in175956%_)
                            (_%$%E175959175972%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%in175957175969%_
                                      '((module-import
                                         (module-export
                                          src-ctx
                                          src-key
                                          src-phi
                                          src-name)
                                         name
                                         phi)))
                               (void)))
                            (_%$%K175960175982%_
                             (lambda (_%phi175975%_
                                      _%name175976%_
                                      _%src-name175977%_
                                      _%src-phi175978%_
                                      _%src-key175979%_
                                      _%src-ctx175980%_)
                               (cons _%phi175975%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name175976%_)
                                           (cons _%src-phi175978%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name175977%_)
                                                       '())))))))
                       (if (gx#module-import? _%$%in175957175969%_)
                           (let ((_%$%e175961175985%_
                                  (gx#&module-import-source
                                   _%$%in175957175969%_)))
                             (if (gx#module-export? _%$%e175961175985%_)
                                 (let* ((_%$%e175964175988%_
                                         (gx#&module-export-context
                                          _%$%e175961175985%_))
                                        (_%src-ctx175991%_ _%$%e175964175988%_)
                                        (_%$%e175965175993%_
                                         (gx#&module-export-key
                                          _%$%e175961175985%_))
                                        (_%src-key175996%_ _%$%e175965175993%_)
                                        (_%$%e175966175998%_
                                         (gx#&module-export-phi
                                          _%$%e175961175985%_))
                                        (_%src-phi176001%_ _%$%e175966175998%_)
                                        (_%$%e175967176003%_
                                         (gx#&module-export-name
                                          _%$%e175961175985%_))
                                        (_%src-name176006%_
                                         _%$%e175967176003%_)
                                        (_%$%e175962176008%_
                                         (gx#&module-import-name
                                          _%$%in175957175969%_))
                                        (_%name176011%_ _%$%e175962176008%_)
                                        (_%$%e175963176013%_
                                         (gx#&module-import-phi
                                          _%$%in175957175969%_))
                                        (_%phi176016%_ _%$%e175963176013%_))
                                   (_%$%K175960175982%_
                                    _%phi176016%_
                                    _%name176011%_
                                    _%src-name176006%_
                                    _%src-phi176001%_
                                    _%src-key175996%_
                                    _%src-ctx175991%_))
                                 (_%$%E175959175972%_)))
                           (_%$%E175959175972%_)))))
                  (_%make-import-path175789%_
                   (lambda (_%ctx175954%_)
                     (gxc#generate-meta-import-path
                      _%ctx175954%_
                      _%context-chain175787%_)))
                  (_%make-import-spec-in175790%_
                   (lambda (_%ctx175951%_ _%in175952%_)
                     (cons 'spec:
                           (cons (_%make-import-path175789%_ _%ctx175951%_)
                                 (reverse _%in175952%_))))))
          (gxc#meta-state-end-phi! (slot-ref _%self175784%_ 'state))
          (let* ((_%$%g175792175802%_
                  (lambda (_%$%g175793175799%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g175793175799%_)))
                 (_%$%g175791175948%_
                  (lambda (_%$%g175793175805%_)
                    (if (gx#stx-pair? _%$%g175793175805%_)
                        (let ((_%$%e175795175807%_
                               (gx#stx-e _%$%g175793175805%_)))
                          (let ((_%$%hd175796175810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e175795175807%_)))
                                (_%$%tl175797175812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e175795175807%_))))
                            ((lambda (_%$%g175794175815%_)
                               (let _%lp175826%_ ((_%rest175828%_
                                                   _%$%g175794175815%_)
                                                  (_%current-src175829%_ '#f)
                                                  (_%current-in175830%_ '())
                                                  (_%r175831%_ '()))
                                 (let* ((_%$%rest175832175840%_ _%rest175828%_)
                                        (_%$%E175835175844%_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _%$%rest175832175840%_
                                                  '([in . rest])
                                                  'else)
                                           (void)))
                                        (_%$%else175834175850%_
                                         (lambda ()
                                           (let ((_%r175848%_
                                                  (if _%current-src175829%_
                                                      (cons (_%make-import-spec-in175790%_
                                                             _%current-src175829%_
                                                             _%current-in175830%_)
                                                            _%r175831%_)
                                                      _%r175831%_)))
                                             (cons '%#import
                                                   (reverse _%r175848%_)))))
                                        (_%$%K175836175936%_
                                         (lambda (_%rest175853%_ _%in175854%_)
                                           (if (gx#module-import? _%in175854%_)
                                               (let* ((_%$%in175856175863%_
                                                       _%in175854%_)
                                                      (_%$%E175858175866%_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _%$%in175856175863%_
                                                                '((module-import
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (module-export src-ctx))))
                 (void)))
              (_%$%K175859175874%_
               (lambda (_%src-ctx175869%_)
                 (if (eq? _%current-src175829%_ _%src-ctx175869%_)
                     (_%lp175826%_
                      _%rest175853%_
                      _%current-src175829%_
                      (cons (_%make-import-spec175788%_ _%in175854%_)
                            _%current-in175830%_)
                      _%r175831%_)
                     (if _%current-src175829%_
                         (_%lp175826%_
                          _%rest175853%_
                          _%src-ctx175869%_
                          (cons (_%make-import-spec175788%_ _%in175854%_) '())
                          (cons (_%make-import-spec-in175790%_
                                 _%current-src175829%_
                                 _%current-in175830%_)
                                _%r175831%_))
                         (_%lp175826%_
                          _%rest175853%_
                          _%src-ctx175869%_
                          (cons (_%make-import-spec175788%_ _%in175854%_) '())
                          _%r175831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#module-import?
                                                      _%$%in175856175863%_)
                                                     (let ((_%$%e175860175877%_
                                                            (gx#&module-import-source
                                                             _%$%in175856175863%_)))
                                                       (if (gx#module-export?
                                                            _%$%e175860175877%_)
                                                           (let* ((_%$%e175861175880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#&module-export-context _%$%e175860175877%_))
                          (_%src-ctx175883%_ _%$%e175861175880%_))
                     (_%$%K175859175874%_ _%src-ctx175883%_))
                   (_%$%E175858175866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E175858175866%_)))
                                               (if (gx#import-set?
                                                    _%in175854%_)
                                                   (let* ((_%phi175886%_
                                                           (gx#import-set-phi
                                                            _%in175854%_))
                                                          (_%src175888%_
                                                           (gx#import-set-source
                                                            _%in175854%_))
                                                          (_%src-in175928%_
                                                           (let* ((_%$%g175889175898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path175789%_ _%src175888%_))
                          (_%$%E175892175902%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g175889175898%_
                                    '([path])
                                    '(path))
                             (void)))
                          (_%$%try-match175891175913%_
                           (lambda ()
                             (let* ((_%$%K175893175908%_
                                     (lambda (_%path175906%_)
                                       (cons 'in: _%path175906%_)))
                                    (_%path175911%_ _%$%g175889175898%_))
                               (_%$%K175893175908%_ _%path175911%_))))
                          (_%$%K175894175918%_
                           (lambda (_%path175916%_) _%path175916%_)))
                     (if (pair? _%$%g175889175898%_)
                         (let ((_%$%hd175895175921%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g175889175898%_)))
                               (_%$%tl175896175923%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g175889175898%_))))
                           (let ((_%path175926%_ _%$%hd175895175921%_))
                             (if (null? _%$%tl175896175923%_)
                                 (_%$%K175894175918%_ _%path175926%_)
                                 (_%$%try-match175891175913%_))))
                         (_%$%try-match175891175913%_))))
                  (_%r175930%_
                   (if _%current-src175829%_
                       (cons (_%make-import-spec-in175790%_
                              _%current-src175829%_
                              _%current-in175830%_)
                             _%r175831%_)
                       _%r175831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp175826%_
                                                      _%rest175853%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi175886%_)
                                                                _%src-in175928%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi175886%_
                                    (cons _%src-in175928%_ '()))))
                    _%r175930%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#module-context?
                                                        _%in175854%_)
                                                       (let ((_%r175934%_
                                                              (if _%current-src175829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in175790%_
                                 _%current-src175829%_
                                 _%current-in175830%_)
                                _%r175831%_)
                          _%r175831%_)))
                 (_%lp175826%_
                  _%rest175853%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path175789%_ _%in175854%_))
                        _%r175934%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%$%rest175832175840%_)
                                       (let ((_%$%hd175837175939%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest175832175840%_)))
                                             (_%$%tl175838175941%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest175832175840%_))))
                                         (let* ((_%in175944%_
                                                 _%$%hd175837175939%_)
                                                (_%rest175946%_
                                                 _%$%tl175838175941%_))
                                           (_%$%K175836175936%_
                                            _%rest175946%_
                                            _%in175944%_)))
                                       (_%$%else175834175850%_)))))
                             _%$%tl175797175812%_)))
                        (_%$%g175792175802%_ _%$%g175793175805%_)))))
            (_%$%g175791175948%_ _%stx175785%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self175594%_ _%stx175595%_)
        (letrec* ((_%context-chain175597%_ (gxc#current-context-chain))
                  (_%make-import-path175598%_
                   (lambda (_%ctx175782%_)
                     (gxc#generate-meta-import-path
                      _%ctx175782%_
                      _%context-chain175597%_))))
          (let* ((_%$%g175600175610%_
                  (lambda (_%$%g175601175607%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g175601175607%_)))
                 (_%$%g175599175779%_
                  (lambda (_%$%g175601175613%_)
                    (if (gx#stx-pair? _%$%g175601175613%_)
                        (let ((_%$%e175603175615%_
                               (gx#stx-e _%$%g175601175613%_)))
                          (let ((_%$%hd175604175618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e175603175615%_)))
                                (_%$%tl175605175620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e175603175615%_))))
                            ((lambda (_%$%g175602175623%_)
                               (let _%lp175634%_ ((_%rest175636%_
                                                   _%$%g175602175623%_)
                                                  (_%r175637%_ '()))
                                 (let* ((_%$%rest175638175646%_ _%rest175636%_)
                                        (_%$%E175641175650%_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _%$%rest175638175646%_
                                                  '([out . rest])
                                                  'else)
                                           (void)))
                                        (_%$%else175640175654%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r175637%_))))
                                        (_%$%K175642175767%_
                                         (lambda (_%rest175657%_ _%out175658%_)
                                           (let* ((_%$%out175659175672%_
                                                   _%out175658%_)
                                                  (_%$%E175662175676%_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _%$%out175659175672%_
                                                            '((module-export
                                                               _
                                                               key
                                                               phi
                                                               name))
                                                            '((export-set
                                                               src
                                                               phi)))
                                                     (void)))
                                                  (_%$%try-match175661175739%_
                                                   (lambda ()
                                                     (let ((_%$%K175663175726%_
                                                            (lambda (_%phi175680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%src175681%_)
                      (let* ((_%out175721%_
                              (if _%src175681%_
                                  (cons 'import:
                                        (cons (let* ((_%$%g175682175691%_
                                                      (_%make-import-path175598%_
                                                       _%src175681%_))
                                                     (_%$%E175685175695%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%g175682175691%_
                                                               '([path])
                                                               '(path))
                                                        (void)))
                                                     (_%$%try-match175684175706%_
                                                      (lambda ()
                                                        (let* ((_%$%K175686175701%_
                                                                (lambda (_%path175699%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'in: _%path175699%_)))
                       (_%path175704%_ _%$%g175682175691%_))
                  (_%$%K175686175701%_ _%path175704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%K175687175711%_
                                                      (lambda (_%path175709%_)
                                                        _%path175709%_)))
                                                (if (pair? _%$%g175682175691%_)
                                                    (let ((_%$%hd175688175714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%g175682175691%_)))
                                                          (_%$%tl175689175716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%g175682175691%_))))
                                                      (let ((_%path175719%_
                                                             _%$%hd175688175714%_))
                                                        (if (null? _%$%tl175689175716%_)
                                                            (_%$%K175687175711%_
                                                             _%path175719%_)
                                                            (_%$%try-match175684175706%_))))
                                                    (_%$%try-match175684175706%_)))
                                              '()))
                                  '#t))
                             (_%out175723%_
                              (if (fxzero? _%phi175680%_)
                                  _%out175721%_
                                  (cons 'phi:
                                        (cons _%phi175680%_
                                              (cons _%out175721%_ '()))))))
                        (_%lp175634%_
                         _%rest175657%_
                         (cons _%out175723%_ _%r175637%_))))))
               (if (gx#export-set? _%$%out175659175672%_)
                   (let* ((_%$%e175664175729%_
                           (gx#&export-set-source _%$%out175659175672%_))
                          (_%src175732%_ _%$%e175664175729%_)
                          (_%$%e175665175734%_
                           (gx#&export-set-phi _%$%out175659175672%_))
                          (_%phi175737%_ _%$%e175665175734%_))
                     (_%$%K175663175726%_ _%phi175737%_ _%src175732%_))
                   (_%$%E175662175676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%K175666175746%_
                                                   (lambda (_%name175742%_
                                                            _%phi175743%_
                                                            _%key175744%_)
                                                     (_%lp175634%_
                                                      _%rest175657%_
                                                      (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%phi175743%_
                                (cons (gxc#generate-runtime-identifier-key
                                       _%key175744%_)
                                      (cons (gxc#generate-runtime-identifier-key
                                             _%name175742%_)
                                            '()))))
                    _%r175637%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#module-export?
                                                  _%$%out175659175672%_)
                                                 (let* ((_%$%e175667175749%_
                                                         (gx#&module-export-context
                                                          _%$%out175659175672%_))
                                                        (_%$%e175668175752%_
                                                         (gx#&module-export-key
                                                          _%$%out175659175672%_))
                                                        (_%key175755%_
                                                         _%$%e175668175752%_)
                                                        (_%$%e175669175757%_
                                                         (gx#&module-export-phi
                                                          _%$%out175659175672%_))
                                                        (_%phi175760%_
                                                         _%$%e175669175757%_)
                                                        (_%$%e175670175762%_
                                                         (gx#&module-export-name
                                                          _%$%out175659175672%_))
                                                        (_%name175765%_
                                                         _%$%e175670175762%_))
                                                   (_%$%K175666175746%_
                                                    _%name175765%_
                                                    _%phi175760%_
                                                    _%key175755%_))
                                                 (_%$%try-match175661175739%_))))))
                                   (if (pair? _%$%rest175638175646%_)
                                       (let ((_%$%hd175643175770%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest175638175646%_)))
                                             (_%$%tl175644175772%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest175638175646%_))))
                                         (let* ((_%out175775%_
                                                 _%$%hd175643175770%_)
                                                (_%rest175777%_
                                                 _%$%tl175644175772%_))
                                           (_%$%K175642175767%_
                                            _%rest175777%_
                                            _%out175775%_)))
                                       (_%$%else175640175654%_)))))
                             _%$%tl175605175620%_)))
                        (_%$%g175600175610%_ _%$%g175601175613%_)))))
            (_%$%g175599175779%_ _%stx175595%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self175555%_ _%stx175556%_)
        (gxc#meta-state-end-phi! (slot-ref _%self175555%_ 'state))
        (let* ((_%$%g175558175568%_
                (lambda (_%$%g175559175565%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g175559175565%_)))
               (_%$%g175557175591%_
                (lambda (_%$%g175559175571%_)
                  (if (gx#stx-pair? _%$%g175559175571%_)
                      (let ((_%$%e175561175573%_
                             (gx#stx-e _%$%g175559175571%_)))
                        (let ((_%$%hd175562175576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e175561175573%_)))
                              (_%$%tl175563175578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e175561175573%_))))
                          ((lambda (_%$%g175560175581%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%$%g175560175581%_)))
                           _%$%tl175563175578%_)))
                      (_%$%g175558175568%_ _%$%g175559175571%_)))))
          (_%$%g175557175591%_ _%stx175556%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self175430%_ _%stx175431%_)
        (letrec ((_%generate1175433%_
                  (lambda (_%id175550%_ _%eid175551%_)
                    (let ((_%eid175553%_ (gx#stx-e _%eid175551%_)))
                      (if (interned-symbol? _%eid175553%_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _%stx175431%_
                           _%eid175553%_))
                      (cons (gxc#generate-runtime-identifier _%id175550%_)
                            (cons _%eid175553%_ '()))))))
          (let* ((_%$%g175435175463%_
                  (lambda (_%$%g175436175460%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g175436175460%_)))
                 (_%$%g175434175547%_
                  (lambda (_%$%g175436175466%_)
                    (if (gx#stx-pair? _%$%g175436175466%_)
                        (let ((_%$%e175439175468%_
                               (gx#stx-e _%$%g175436175466%_)))
                          (let ((_%$%hd175440175471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e175439175468%_)))
                                (_%$%tl175441175473%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e175439175468%_))))
                            (if (gx#stx-pair/null? _%$%tl175441175473%_)
                                (let ((_g183623_
                                       (gx#syntax-split-splice
                                        _%$%tl175441175473%_
                                        '0)))
                                  (begin
                                    (let ((_g183624_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g183623_)
                                                 (##values-length _g183623_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g183624_ 2)))
                                          (error "Context expects 2 values"
                                                 _g183624_)))
                                    (let ((_%$%target175442175476%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g183623_ 0)))
                                          (_%$%tl175444175478%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g183623_ 1))))
                                      (if (gx#stx-null? _%$%tl175444175478%_)
                                          (letrec ((_%$%loop175445175481%_
                                                    (lambda (_%$%hd175443175484%_
                                                             _%$%eid175449175486%_
                                                             _%$%id175450175487%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd175443175484%_)
                                                          (let ((_%$%e175446175489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd175443175484%_)))
                    (let ((_%$%lp-hd175447175492%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e175446175489%_)))
                          (_%$%lp-tl175448175494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e175446175489%_))))
                      (if (gx#stx-pair? _%$%lp-hd175447175492%_)
                          (let ((_%$%e175453175497%_
                                 (gx#stx-e _%$%lp-hd175447175492%_)))
                            (let ((_%$%hd175454175500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e175453175497%_)))
                                  (_%$%tl175455175502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e175453175497%_))))
                              (if (gx#stx-pair? _%$%tl175455175502%_)
                                  (let ((_%$%e175456175505%_
                                         (gx#stx-e _%$%tl175455175502%_)))
                                    (let ((_%$%hd175457175508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e175456175505%_)))
                                          (_%$%tl175458175510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e175456175505%_))))
                                      (if (gx#stx-null? _%$%tl175458175510%_)
                                          (_%$%loop175445175481%_
                                           _%$%lp-tl175448175494%_
                                           (cons _%$%hd175457175508%_
                                                 _%$%eid175449175486%_)
                                           (cons _%$%hd175454175500%_
                                                 _%$%id175450175487%_))
                                          (_%$%g175435175463%_
                                           _%$%g175436175466%_))))
                                  (_%$%g175435175463%_ _%$%g175436175466%_))))
                          (_%$%g175435175463%_ _%$%g175436175466%_))))
                  (let ((_%$%eid175451175513%_ (reverse _%$%eid175449175486%_))
                        (_%$%id175452175514%_ (reverse _%$%id175450175487%_)))
                    ((lambda (_%$%g175437175516%_ _%$%g175438175517%_)
                       (cons '%#extern
                             (map _%generate1175433%_
                                  (foldr (lambda (_%$%g175532175535%_
                                                  _%$%g175533175537%_)
                                           (cons _%$%g175532175535%_
                                                 _%$%g175533175537%_))
                                         '()
                                         _%$%g175438175517%_)
                                  (foldr (lambda (_%$%g175539175542%_
                                                  _%$%g175540175544%_)
                                           (cons _%$%g175539175542%_
                                                 _%$%g175540175544%_))
                                         '()
                                         _%$%g175437175516%_))))
                     _%$%eid175451175513%_
                     _%$%id175452175514%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop175445175481%_
                                             _%$%target175442175476%_
                                             '()
                                             '()))
                                          (_%$%g175435175463%_
                                           _%$%g175436175466%_)))))
                                (_%$%g175435175463%_ _%$%g175436175466%_))))
                        (_%$%g175435175463%_ _%$%g175436175466%_)))))
            (_%$%g175434175547%_ _%stx175431%_)))))
    (define gxc#generate-meta-define-runtime%
      (lambda (_%self175358%_ _%stx175359%_)
        (let* ((_%$%g175361175378%_
                (lambda (_%$%g175362175375%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g175362175375%_)))
               (_%$%g175360175427%_
                (lambda (_%$%g175362175381%_)
                  (if (gx#stx-pair? _%$%g175362175381%_)
                      (let ((_%$%e175365175383%_
                             (gx#stx-e _%$%g175362175381%_)))
                        (let ((_%$%hd175366175386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e175365175383%_)))
                              (_%$%tl175367175388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e175365175383%_))))
                          (if (gx#stx-pair? _%$%tl175367175388%_)
                              (let ((_%$%e175368175391%_
                                     (gx#stx-e _%$%tl175367175388%_)))
                                (let ((_%$%hd175369175394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e175368175391%_)))
                                      (_%$%tl175370175396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e175368175391%_))))
                                  (if (gx#stx-pair? _%$%tl175370175396%_)
                                      (let ((_%$%e175371175399%_
                                             (gx#stx-e _%$%tl175370175396%_)))
                                        (let ((_%$%hd175372175402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175371175399%_)))
                                              (_%$%tl175373175404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175371175399%_))))
                                          (if (gx#stx-null?
                                               _%$%tl175373175404%_)
                                              ((lambda (_%$%g175363175407%_
                                                        _%$%g175364175408%_)
                                                 (let ((_%ident175423%_
                                                        (gxc#generate-runtime-identifier
                                                         _%$%g175364175408%_))
                                                       (_%eid175424%_
                                                        (gx#stx-e
                                                         _%$%g175363175407%_))
                                                       (_%props175425%_
                                                        (gxc#runtime-identifier-properties
                                                         _%$%g175364175408%_)))
                                                   (cons '%#define-runtime
                                                         (cons _%ident175423%_
                                                               (cons _%eid175424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props175425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd175372175402%_
                                               _%$%hd175369175394%_)
                                              (_%$%g175361175378%_
                                               _%$%g175362175381%_))))
                                      (_%$%g175361175378%_
                                       _%$%g175362175381%_))))
                              (_%$%g175361175378%_ _%$%g175362175381%_))))
                      (_%$%g175361175378%_ _%$%g175362175381%_)))))
          (_%$%g175360175427%_ _%stx175359%_))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self175147%_ _%stx175148%_)
        (letrec ((_%generate1175150%_
                  (lambda (_%id175352%_)
                    (let ((_%eid175354%_
                           (gxc#generate-runtime-binding-id _%id175352%_))
                          (_%ident175355%_
                           (gxc#generate-runtime-identifier _%id175352%_))
                          (_%props175356%_
                           (gxc#runtime-identifier-properties _%id175352%_)))
                      (cons '%#define-runtime
                            (cons _%ident175355%_
                                  (cons _%eid175354%_ _%props175356%_))))))
                 (_%generate*175151%_
                  (lambda (_%all175320%_)
                    (let* ((_%$%all175321175329%_ _%all175320%_)
                           (_%$%E175324175333%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%all175321175329%_
                                     '([one])
                                     'else)
                              (void)))
                           (_%$%else175323175337%_
                            (lambda () (cons '%#begin _%all175320%_)))
                           (_%$%K175325175342%_
                            (lambda (_%one175340%_) _%one175340%_)))
                      (if (pair? _%$%all175321175329%_)
                          (let ((_%$%hd175326175345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all175321175329%_)))
                                (_%$%tl175327175347%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all175321175329%_))))
                            (let ((_%one175350%_ _%$%hd175326175345%_))
                              (if (null? _%$%tl175327175347%_)
                                  (_%$%K175325175342%_ _%one175350%_)
                                  (_%$%else175323175337%_))))
                          (_%$%else175323175337%_))))))
          (let* ((_%$%g175153175170%_
                  (lambda (_%$%g175154175167%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g175154175167%_)))
                 (_%$%g175152175317%_
                  (lambda (_%$%g175154175173%_)
                    (if (gx#stx-pair? _%$%g175154175173%_)
                        (let ((_%$%e175157175175%_
                               (gx#stx-e _%$%g175154175173%_)))
                          (let ((_%$%hd175158175178%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e175157175175%_)))
                                (_%$%tl175159175180%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e175157175175%_))))
                            (if (gx#stx-pair? _%$%tl175159175180%_)
                                (let ((_%$%e175160175183%_
                                       (gx#stx-e _%$%tl175159175180%_)))
                                  (let ((_%$%hd175161175186%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e175160175183%_)))
                                        (_%$%tl175162175188%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e175160175183%_))))
                                    (if (gx#stx-pair? _%$%tl175162175188%_)
                                        (let ((_%$%e175163175191%_
                                               (gx#stx-e
                                                _%$%tl175162175188%_)))
                                          (let ((_%$%hd175164175194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e175163175191%_)))
                                                (_%$%tl175165175196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e175163175191%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl175165175196%_)
                                                ((lambda (_%$%g175155175199%_
                                                          _%$%g175156175200%_)
                                                   (let _%lp175216%_ ((_%rest175218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g175156175200%_)
                              (_%r175219%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%$%g175224175241%_
                                                             (lambda (_%$%g175225175238%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%$%g175225175238%_)))
                                                            (_%$%g175223175248%_
                                                             (lambda (_%$%g175225175244%_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%generate*175151%_ (reverse! _%r175219%_))))))
                    (_%$%g175222175264%_
                     (lambda (_%$%g175225175251%_)
                       ((lambda (_%$%g175236175253%_)
                          (if (gx#identifier? _%$%g175236175253%_)
                              (_%generate*175151%_
                               (foldl cons
                                      (cons (_%generate1175150%_
                                             _%$%g175236175253%_)
                                            '())
                                      _%r175219%_))
                              (_%$%g175223175248%_ _%$%g175225175251%_)))
                        _%$%g175225175251%_)))
                    (_%$%g175221175288%_
                     (lambda (_%$%g175225175267%_)
                       (if (gx#stx-pair? _%$%g175225175267%_)
                           (let ((_%$%e175233175269%_
                                  (gx#stx-e _%$%g175225175267%_)))
                             (let ((_%$%hd175234175272%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e175233175269%_)))
                                   (_%$%tl175235175274%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e175233175269%_))))
                               ((lambda (_%$%g175231175277%_
                                         _%$%g175232175278%_)
                                  (_%lp175216%_
                                   _%$%g175231175277%_
                                   (cons (_%generate1175150%_
                                          _%$%g175232175278%_)
                                         _%r175219%_)))
                                _%$%tl175235175274%_
                                _%$%hd175234175272%_)))
                           (_%$%g175222175264%_ _%$%g175225175267%_))))
                    (_%$%g175220175314%_
                     (lambda (_%$%g175225175291%_)
                       (if (gx#stx-pair? _%$%g175225175291%_)
                           (let ((_%$%e175227175293%_
                                  (gx#stx-e _%$%g175225175291%_)))
                             (let ((_%$%hd175228175296%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e175227175293%_)))
                                   (_%$%tl175229175298%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e175227175293%_))))
                               (if (gx#stx-datum? _%$%hd175228175296%_)
                                   (let ((_%$%e175230175301%_
                                          (gx#stx-e _%$%hd175228175296%_)))
                                     (if (equal? _%$%e175230175301%_ '#f)
                                         ((lambda (_%$%g175226175304%_)
                                            (_%lp175216%_
                                             _%$%g175226175304%_
                                             _%r175219%_))
                                          _%$%tl175229175298%_)
                                         (_%$%g175221175288%_
                                          _%$%g175225175291%_)))
                                   (_%$%g175221175288%_ _%$%g175225175291%_))))
                           (_%$%g175221175288%_ _%$%g175225175291%_)))))
               (_%$%g175220175314%_ _%rest175218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%hd175164175194%_
                                                 _%$%hd175161175186%_)
                                                (_%$%g175153175170%_
                                                 _%$%g175154175173%_))))
                                        (_%$%g175153175170%_
                                         _%$%g175154175173%_))))
                                (_%$%g175153175170%_ _%$%g175154175173%_))))
                        (_%$%g175153175170%_ _%$%g175154175173%_)))))
            (_%$%g175152175317%_ _%stx175148%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self175044%_ _%stx175045%_)
        (let* ((_%$%g175047175064%_
                (lambda (_%$%g175048175061%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g175048175061%_)))
               (_%$%g175046175144%_
                (lambda (_%$%g175048175067%_)
                  (if (gx#stx-pair? _%$%g175048175067%_)
                      (let ((_%$%e175051175069%_
                             (gx#stx-e _%$%g175048175067%_)))
                        (let ((_%$%hd175052175072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e175051175069%_)))
                              (_%$%tl175053175074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e175051175069%_))))
                          (if (gx#stx-pair? _%$%tl175053175074%_)
                              (let ((_%$%e175054175077%_
                                     (gx#stx-e _%$%tl175053175074%_)))
                                (let ((_%$%hd175055175080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e175054175077%_)))
                                      (_%$%tl175056175082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e175054175077%_))))
                                  (if (gx#stx-pair? _%$%tl175056175082%_)
                                      (let ((_%$%e175057175085%_
                                             (gx#stx-e _%$%tl175056175082%_)))
                                        (let ((_%$%hd175058175088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e175057175085%_)))
                                              (_%$%tl175059175090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e175057175085%_))))
                                          (if (gx#stx-null?
                                               _%$%tl175059175090%_)
                                              ((lambda (_%$%g175049175093%_
                                                        _%$%g175050175094%_)
                                                 (let* ((_%eid175109%_
                                                         (gxc#generate-runtime-binding-id
                                                          _%$%g175050175094%_))
                                                        (_%phi175111%_
                                                         (fx1+ (gx#current-expander-phi)))
                                                        (_%block175113%_
                                                         (gxc#meta-state-begin-phi!
                                                          (slot-ref
                                                           _%self175044%_
                                                           'state)
                                                          _%phi175111%_)))
                                                   (let* ((_%$%g175116175123%_
                                                           (lambda (_%$%g175117175120%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g175117175120%_)))
                                                          (_%$%g175115175141%_
                                                           (lambda (_%$%g175117175126%_)
                                                             ((lambda (_%$%g175118175128%_)
                                                                (gxc#meta-state-add-phi!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (slot-ref _%self175044%_ 'state)
                         _%phi175111%_
                         (cons (gx#datum->syntax '#f '%#define-runtime)
                               (cons _%$%g175118175128%_
                                     (cons _%$%g175049175093%_ '())))))
                      _%$%g175117175126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g175115175141%_
                                                      _%eid175109%_))
                                                   (if _%block175113%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block175113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%$%g175050175094%_)
                                             (cons _%eid175109%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier
                            _%$%g175050175094%_)
                           (cons _%eid175109%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd175058175088%_
                                               _%$%hd175055175080%_)
                                              (_%$%g175047175064%_
                                               _%$%g175048175067%_))))
                                      (_%$%g175047175064%_
                                       _%$%g175048175067%_))))
                              (_%$%g175047175064%_ _%$%g175048175067%_))))
                      (_%$%g175047175064%_ _%$%g175048175067%_)))))
          (_%$%g175046175144%_ _%stx175045%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self174976%_ _%stx174977%_)
        (let* ((_%$%g174979174996%_
                (lambda (_%$%g174980174993%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g174980174993%_)))
               (_%$%g174978175041%_
                (lambda (_%$%g174980174999%_)
                  (if (gx#stx-pair? _%$%g174980174999%_)
                      (let ((_%$%e174983175001%_
                             (gx#stx-e _%$%g174980174999%_)))
                        (let ((_%$%hd174984175004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e174983175001%_)))
                              (_%$%tl174985175006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e174983175001%_))))
                          (if (gx#stx-pair? _%$%tl174985175006%_)
                              (let ((_%$%e174986175009%_
                                     (gx#stx-e _%$%tl174985175006%_)))
                                (let ((_%$%hd174987175012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e174986175009%_)))
                                      (_%$%tl174988175014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e174986175009%_))))
                                  (if (gx#stx-pair? _%$%tl174988175014%_)
                                      (let ((_%$%e174989175017%_
                                             (gx#stx-e _%$%tl174988175014%_)))
                                        (let ((_%$%hd174990175020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e174989175017%_)))
                                              (_%$%tl174991175022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e174989175017%_))))
                                          (if (gx#stx-null?
                                               _%$%tl174991175022%_)
                                              ((lambda (_%$%g174981175025%_
                                                        _%$%g174982175026%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%$%g174982175026%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g174981175025%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd174990175020%_
                                               _%$%hd174987175012%_)
                                              (_%$%g174979174996%_
                                               _%$%g174980174999%_))))
                                      (_%$%g174979174996%_
                                       _%$%g174980174999%_))))
                              (_%$%g174979174996%_ _%$%g174980174999%_))))
                      (_%$%g174979174996%_ _%$%g174980174999%_)))))
          (_%$%g174978175041%_ _%stx174977%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self174973%_ _%stx174974%_)
        (gxc#meta-state-add-phi!
         (slot-ref _%self174973%_ 'state)
         (gx#current-expander-phi)
         _%stx174974%_)
        (gxc#generate-meta-define-values% _%self174973%_ _%stx174974%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self174970%_ _%stx174971%_)
        (gxc#meta-state-add-phi!
         (slot-ref _%self174970%_ 'state)
         (gx#current-expander-phi)
         _%stx174971%_)
        '#!void))
    (define gxc#meta-state::t
      (make-class-type
       'gxc#meta-state::t
       'meta-state
       (list)
       '(src n open blocks)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gxc#meta-state? (make-class-predicate gxc#meta-state::t))
    (define gxc#make-meta-state
      (lambda _%$args174967%_
        (apply make-instance gxc#meta-state::t _%$args174967%_)))
    (define gxc#meta-state-src
      (make-class-slot-accessor gxc#meta-state::t 'src))
    (define gxc#meta-state-n (make-class-slot-accessor gxc#meta-state::t 'n))
    (define gxc#meta-state-open
      (make-class-slot-accessor gxc#meta-state::t 'open))
    (define gxc#meta-state-blocks
      (make-class-slot-accessor gxc#meta-state::t 'blocks))
    (define gxc#meta-state-src-set!
      (make-class-slot-mutator gxc#meta-state::t 'src))
    (define gxc#meta-state-n-set!
      (make-class-slot-mutator gxc#meta-state::t 'n))
    (define gxc#meta-state-open-set!
      (make-class-slot-mutator gxc#meta-state::t 'open))
    (define gxc#meta-state-blocks-set!
      (make-class-slot-mutator gxc#meta-state::t 'blocks))
    (define gxc#&meta-state-src
      (make-class-slot-unchecked-accessor gxc#meta-state::t 'src))
    (define gxc#&meta-state-n
      (make-class-slot-unchecked-accessor gxc#meta-state::t 'n))
    (define gxc#&meta-state-open
      (make-class-slot-unchecked-accessor gxc#meta-state::t 'open))
    (define gxc#&meta-state-blocks
      (make-class-slot-unchecked-accessor gxc#meta-state::t 'blocks))
    (define gxc#&meta-state-src-set!
      (make-class-slot-unchecked-mutator gxc#meta-state::t 'src))
    (define gxc#&meta-state-n-set!
      (make-class-slot-unchecked-mutator gxc#meta-state::t 'n))
    (define gxc#&meta-state-open-set!
      (make-class-slot-unchecked-mutator gxc#meta-state::t 'open))
    (define gxc#&meta-state-blocks-set!
      (make-class-slot-unchecked-mutator gxc#meta-state::t 'blocks))
    (define gxc#meta-state:::init!
      (lambda (_%self174953%_ _%ctx174954%_)
        (let ((_%self174957%_ _%self174953%_))
          (struct-instance-init!
           _%self174957%_
           (gxc#module-id->path-string (gx#expander-context-id _%ctx174954%_))
           '1
           (make-hash-table-eq)
           '()))))
    (bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f)
    (define gxc#meta-state-block::t
      (make-class-type
       'gxc#meta-state-block::t
       'meta-state-block
       (list)
       '(ctx phi n code)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gxc#meta-state-block?
      (make-class-predicate gxc#meta-state-block::t))
    (define gxc#make-meta-state-block
      (lambda _%$args174828%_
        (apply make-instance gxc#meta-state-block::t _%$args174828%_)))
    (define gxc#meta-state-block-ctx
      (make-class-slot-accessor gxc#meta-state-block::t 'ctx))
    (define gxc#meta-state-block-phi
      (make-class-slot-accessor gxc#meta-state-block::t 'phi))
    (define gxc#meta-state-block-n
      (make-class-slot-accessor gxc#meta-state-block::t 'n))
    (define gxc#meta-state-block-code
      (make-class-slot-accessor gxc#meta-state-block::t 'code))
    (define gxc#meta-state-block-ctx-set!
      (make-class-slot-mutator gxc#meta-state-block::t 'ctx))
    (define gxc#meta-state-block-phi-set!
      (make-class-slot-mutator gxc#meta-state-block::t 'phi))
    (define gxc#meta-state-block-n-set!
      (make-class-slot-mutator gxc#meta-state-block::t 'n))
    (define gxc#meta-state-block-code-set!
      (make-class-slot-mutator gxc#meta-state-block::t 'code))
    (define gxc#&meta-state-block-ctx
      (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'ctx))
    (define gxc#&meta-state-block-phi
      (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'phi))
    (define gxc#&meta-state-block-n
      (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'n))
    (define gxc#&meta-state-block-code
      (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'code))
    (define gxc#&meta-state-block-ctx-set!
      (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'ctx))
    (define gxc#&meta-state-block-phi-set!
      (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'phi))
    (define gxc#&meta-state-block-n-set!
      (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'n))
    (define gxc#&meta-state-block-code-set!
      (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'code))
    (define gxc#meta-state-begin-phi!
      (lambda (_%state174788%_ _%phi174789%_)
        (let* ((_%$%state174790174798%_ _%state174788%_)
               (_%$%E174792174801%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%state174790174798%_
                         '((meta-state src n open)))
                  (void)))
               (_%$%K174793174810%_
                (lambda (_%open174804%_ _%n174805%_ _%src174806%_)
                  (if (hash-get _%open174804%_ _%phi174789%_)
                      '#f
                      (let ((_%block-ref174808%_
                             (string-append
                              _%src174806%_
                              '"~"
                              (number->string _%n174805%_))))
                        (gxc#meta-state-n-set!
                         _%state174788%_
                         (fx1+ _%n174805%_))
                        (hash-put!
                         _%open174804%_
                         _%phi174789%_
                         (gxc#make-meta-state-block
                          (gx#current-expander-context)
                          _%phi174789%_
                          _%n174805%_
                          '()))
                        _%block-ref174808%_)))))
          (if (gxc#meta-state? _%$%state174790174798%_)
              (let* ((_%$%e174794174813%_
                      (gxc#&meta-state-src _%$%state174790174798%_))
                     (_%src174816%_ _%$%e174794174813%_)
                     (_%$%e174795174818%_
                      (gxc#&meta-state-n _%$%state174790174798%_))
                     (_%n174821%_ _%$%e174795174818%_)
                     (_%$%e174796174823%_
                      (gxc#&meta-state-open _%$%state174790174798%_))
                     (_%open174826%_ _%$%e174796174823%_))
                (_%$%K174793174810%_ _%open174826%_ _%n174821%_ _%src174816%_))
              (_%$%E174792174801%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state174782%_ _%phi174783%_ _%stx174784%_)
        (let ((_%block174786%_
               (hash-get (gxc#meta-state-open _%state174782%_) _%phi174783%_)))
          (gxc#meta-state-block-code-set!
           _%block174786%_
           (cons _%stx174784%_ (gxc#meta-state-block-code _%block174786%_))))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state174776%_)
        (gxc#meta-state-blocks-set!
         _%state174776%_
         (hash-fold
          (lambda (_%_174778%_ _%block174779%_ _%r174780%_)
            (cons _%block174779%_ _%r174780%_))
          (gxc#meta-state-blocks _%state174776%_)
          (gxc#meta-state-open _%state174776%_)))
        (gxc#meta-state-open-set! _%state174776%_ (make-hash-table-eq))))
    (define gxc#meta-state-end!
      (lambda (_%state174729%_)
        (gxc#meta-state-end-phi! _%state174729%_)
        (foldl (lambda (_%block174731%_ _%r174732%_)
                 (let* ((_%$%block174733174742%_ _%block174731%_)
                        (_%$%E174735174745%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%$%block174733174742%_
                                  '((meta-state-block ctx phi n code)))
                           (void)))
                        (_%$%K174736174753%_
                         (lambda (_%code174748%_
                                  _%n174749%_
                                  _%phi174750%_
                                  _%ctx174751%_)
                           (if (null? _%code174748%_)
                               _%r174732%_
                               (cons (cons _%ctx174751%_
                                           (cons _%phi174750%_
                                                 (cons _%n174749%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code174748%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r174732%_)))))
                   (if (gxc#meta-state-block? _%$%block174733174742%_)
                       (let* ((_%$%e174737174756%_
                               (gxc#&meta-state-block-ctx
                                _%$%block174733174742%_))
                              (_%ctx174759%_ _%$%e174737174756%_)
                              (_%$%e174738174761%_
                               (gxc#&meta-state-block-phi
                                _%$%block174733174742%_))
                              (_%phi174764%_ _%$%e174738174761%_)
                              (_%$%e174739174766%_
                               (gxc#&meta-state-block-n
                                _%$%block174733174742%_))
                              (_%n174769%_ _%$%e174739174766%_)
                              (_%$%e174740174771%_
                               (gxc#&meta-state-block-code
                                _%$%block174733174742%_))
                              (_%code174774%_ _%$%e174740174771%_))
                         (_%$%K174736174753%_
                          _%code174774%_
                          _%n174769%_
                          _%phi174764%_
                          _%ctx174759%_))
                       (_%$%E174735174745%_))))
               '()
               (gxc#meta-state-blocks _%state174729%_))))
    (define gxc#collect-expression-refs
      (lambda (_%stx174725%_)
        (let ((_%ht174727%_ (make-hash-table-eq)))
          (gxc#apply-collect-expression-refs
           _%stx174725%_
           'table:
           _%ht174727%_)
          _%ht174727%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self174668%_ _%stx174669%_)
        (let* ((_%$%g174671174684%_
                (lambda (_%$%g174672174681%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g174672174681%_)))
               (_%$%g174670174722%_
                (lambda (_%$%g174672174687%_)
                  (if (gx#stx-pair? _%$%g174672174687%_)
                      (let ((_%$%e174674174689%_
                             (gx#stx-e _%$%g174672174687%_)))
                        (let ((_%$%hd174675174692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e174674174689%_)))
                              (_%$%tl174676174694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e174674174689%_))))
                          (if (gx#stx-pair? _%$%tl174676174694%_)
                              (let ((_%$%e174677174697%_
                                     (gx#stx-e _%$%tl174676174694%_)))
                                (let ((_%$%hd174678174700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e174677174697%_)))
                                      (_%$%tl174679174702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e174677174697%_))))
                                  (if (gx#stx-null? _%$%tl174679174702%_)
                                      ((lambda (_%$%g174673174705%_)
                                         (let* ((_%bind174717%_
                                                 (gx#resolve-identifier
                                                  _%$%g174673174705%_))
                                                (_%eid174719%_
                                                 (if _%bind174717%_
                                                     (gx#binding-id
                                                      _%bind174717%_)
                                                     (gx#stx-e
                                                      _%$%g174673174705%_))))
                                           (hash-put!
                                            (slot-ref _%self174668%_ 'table)
                                            _%eid174719%_
                                            _%eid174719%_)))
                                       _%$%hd174678174700%_)
                                      (_%$%g174671174684%_
                                       _%$%g174672174687%_))))
                              (_%$%g174671174684%_ _%$%g174672174687%_))))
                      (_%$%g174671174684%_ _%$%g174672174687%_)))))
          (_%$%g174670174722%_ _%stx174669%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self174595%_ _%stx174596%_)
        (let* ((_%$%g174598174615%_
                (lambda (_%$%g174599174612%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g174599174612%_)))
               (_%$%g174597174665%_
                (lambda (_%$%g174599174618%_)
                  (if (gx#stx-pair? _%$%g174599174618%_)
                      (let ((_%$%e174602174620%_
                             (gx#stx-e _%$%g174599174618%_)))
                        (let ((_%$%hd174603174623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e174602174620%_)))
                              (_%$%tl174604174625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e174602174620%_))))
                          (if (gx#stx-pair? _%$%tl174604174625%_)
                              (let ((_%$%e174605174628%_
                                     (gx#stx-e _%$%tl174604174625%_)))
                                (let ((_%$%hd174606174631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e174605174628%_)))
                                      (_%$%tl174607174633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e174605174628%_))))
                                  (if (gx#stx-pair? _%$%tl174607174633%_)
                                      (let ((_%$%e174608174636%_
                                             (gx#stx-e _%$%tl174607174633%_)))
                                        (let ((_%$%hd174609174639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e174608174636%_)))
                                              (_%$%tl174610174641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e174608174636%_))))
                                          (if (gx#stx-null?
                                               _%$%tl174610174641%_)
                                              ((lambda (_%$%g174600174644%_
                                                        _%$%g174601174645%_)
                                                 (let* ((_%bind174660%_
                                                         (gx#resolve-identifier
                                                          _%$%g174601174645%_))
                                                        (_%eid174662%_
                                                         (if _%bind174660%_
                                                             (gx#binding-id
                                                              _%bind174660%_)
                                                             (gx#stx-e
                                                              _%$%g174601174645%_))))
                                                   (hash-put!
                                                    (slot-ref
                                                     _%self174595%_
                                                     'table)
                                                    _%eid174662%_
                                                    _%eid174662%_)
                                                   (gxc#compile-e
                                                    _%self174595%_
                                                    _%$%g174600174644%_)))
                                               _%$%hd174609174639%_
                                               _%$%hd174606174631%_)
                                              (_%$%g174598174615%_
                                               _%$%g174599174618%_))))
                                      (_%$%g174598174615%_
                                       _%$%g174599174618%_))))
                              (_%$%g174598174615%_ _%$%g174599174618%_))))
                      (_%$%g174598174615%_ _%$%g174599174618%_)))))
          (_%$%g174597174665%_ _%stx174596%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self174552%_ _%stx174553%_)
        (let* ((_%$%g174555174565%_
                (lambda (_%$%g174556174562%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g174556174562%_)))
               (_%$%g174554174592%_
                (lambda (_%$%g174556174568%_)
                  (if (gx#stx-pair? _%$%g174556174568%_)
                      (let ((_%$%e174558174570%_
                             (gx#stx-e _%$%g174556174568%_)))
                        (let ((_%$%hd174559174573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e174558174570%_)))
                              (_%$%tl174560174575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e174558174570%_))))
                          ((lambda (_%$%g174557174578%_)
                             (ormap (lambda (_%$%g174587174589%_)
                                      (gxc#compile-e
                                       _%self174552%_
                                       _%$%g174587174589%_))
                                    _%$%g174557174578%_))
                           _%$%tl174560174575%_)))
                      (_%$%g174555174565%_ _%$%g174556174568%_)))))
          (_%$%g174554174592%_ _%stx174553%_))))
    (define gxc#count-values-single%
      (lambda (_%self174549%_ _%stx174550%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self174417%_ _%stx174418%_)
        (let* ((_%$%g174421174450%_
                (lambda (_%$%g174422174447%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g174422174447%_)))
               (_%$%g174420174457%_
                (lambda (_%$%g174422174453%_) ((lambda () '#f))))
               (_%$%g174419174546%_
                (lambda (_%$%g174422174460%_)
                  (if (gx#stx-pair? _%$%g174422174460%_)
                      (let ((_%$%e174425174462%_
                             (gx#stx-e _%$%g174422174460%_)))
                        (let ((_%$%hd174426174465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e174425174462%_)))
                              (_%$%tl174427174467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e174425174462%_))))
                          (if (gx#stx-pair? _%$%tl174427174467%_)
                              (let ((_%$%e174428174470%_
                                     (gx#stx-e _%$%tl174427174467%_)))
                                (let ((_%$%hd174429174473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e174428174470%_)))
                                      (_%$%tl174430174475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e174428174470%_))))
                                  (if (gx#stx-pair? _%$%hd174429174473%_)
                                      (let ((_%$%e174431174478%_
                                             (gx#stx-e _%$%hd174429174473%_)))
                                        (let ((_%$%hd174432174481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e174431174478%_)))
                                              (_%$%tl174433174483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e174431174478%_))))
                                          (if (gx#identifier?
                                               _%$%hd174432174481%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd174432174481%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl174433174483%_)
                                                      (let ((_%$%e174434174486%_
                                                             (gx#stx-e
                                                              _%$%tl174433174483%_)))
                                                        (let ((_%$%hd174435174489%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e174434174486%_)))
                      (_%$%tl174436174491%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e174434174486%_))))
                  (if (gx#stx-null? _%$%tl174436174491%_)
                      (if (gx#stx-pair/null? _%$%tl174430174475%_)
                          (let ((_g183625_
                                 (gx#syntax-split-splice
                                  _%$%tl174430174475%_
                                  '0)))
                            (begin
                              (let ((_g183626_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g183625_)
                                           (##values-length _g183625_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g183626_ 2)))
                                    (error "Context expects 2 values"
                                           _g183626_)))
                              (let ((_%$%target174437174494%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g183625_ 0)))
                                    (_%$%tl174439174496%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g183625_ 1))))
                                (if (gx#stx-null? _%$%tl174439174496%_)
                                    (letrec ((_%$%loop174440174499%_
                                              (lambda (_%$%hd174438174502%_
                                                       _%$%rand174444174504%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd174438174502%_)
                                                    (let ((_%$%e174441174506%_
                                                           (gx#stx-e
                                                            _%$%hd174438174502%_)))
                                                      (let ((_%$%lp-hd174442174509%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e174441174506%_)))
                    (_%$%lp-tl174443174511%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e174441174506%_))))
                (_%$%loop174440174499%_
                 _%$%lp-tl174443174511%_
                 (cons _%$%lp-hd174442174509%_ _%$%rand174444174504%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%rand174445174514%_
                                                           (reverse _%$%rand174444174504%_)))
                                                      ((lambda (_%$%g174423174516%_
                                                                _%$%g174424174517%_)
                                                         (if (gx#free-identifier=?
                                                              _%$%g174424174517%_
                                                              'values)
                                                             (length (foldr (lambda (_%$%g174538174541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%$%g174539174543%_)
                                      (cons _%$%g174538174541%_
                                            _%$%g174539174543%_))
                                    '()
                                    _%$%g174423174516%_))
                     (_%$%g174420174457%_ _%$%g174422174460%_)))
               _%$%rand174445174514%_
               _%$%hd174435174489%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop174440174499%_
                                       _%$%target174437174494%_
                                       '()))
                                    (_%$%g174420174457%_
                                     _%$%g174422174460%_)))))
                          (_%$%g174420174457%_ _%$%g174422174460%_))
                      (_%$%g174420174457%_ _%$%g174422174460%_))))
              (_%$%g174420174457%_ _%$%g174422174460%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g174420174457%_
                                                   _%$%g174422174460%_))
                                              (_%$%g174420174457%_
                                               _%$%g174422174460%_))))
                                      (_%$%g174420174457%_
                                       _%$%g174422174460%_))))
                              (_%$%g174420174457%_ _%$%g174422174460%_))))
                      (_%$%g174420174457%_ _%$%g174422174460%_)))))
          (_%$%g174419174546%_ _%stx174418%_))))
    (define gxc#count-values-if%
      (lambda (_%self174322%_ _%stx174323%_)
        (let* ((_%$%g174325174346%_
                (lambda (_%$%g174326174343%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g174326174343%_)))
               (_%$%g174324174414%_
                (lambda (_%$%g174326174349%_)
                  (if (gx#stx-pair? _%$%g174326174349%_)
                      (let ((_%$%e174330174351%_
                             (gx#stx-e _%$%g174326174349%_)))
                        (let ((_%$%hd174331174354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e174330174351%_)))
                              (_%$%tl174332174356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e174330174351%_))))
                          (if (gx#stx-pair? _%$%tl174332174356%_)
                              (let ((_%$%e174333174359%_
                                     (gx#stx-e _%$%tl174332174356%_)))
                                (let ((_%$%hd174334174362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e174333174359%_)))
                                      (_%$%tl174335174364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e174333174359%_))))
                                  (if (gx#stx-pair? _%$%tl174335174364%_)
                                      (let ((_%$%e174336174367%_
                                             (gx#stx-e _%$%tl174335174364%_)))
                                        (let ((_%$%hd174337174370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e174336174367%_)))
                                              (_%$%tl174338174372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e174336174367%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl174338174372%_)
                                              (let ((_%$%e174339174375%_
                                                     (gx#stx-e
                                                      _%$%tl174338174372%_)))
                                                (let ((_%$%hd174340174378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e174339174375%_)))
                                                      (_%$%tl174341174380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e174339174375%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl174341174380%_)
                                                      ((lambda (_%$%g174327174383%_
                                                                _%$%g174328174384%_
                                                                _%$%g174329174385%_)
                                                         (let ((_%$%c1174402174404%_
                                                                (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%self174322%_
                         _%$%g174328174384%_)))
                   (if _%$%c1174402174404%_
                       (let* ((_%c1174406%_ _%$%c1174402174404%_)
                              (_%$%c2174407174409%_
                               (gxc#compile-e
                                _%self174322%_
                                _%$%g174327174383%_)))
                         (if _%$%c2174407174409%_
                             (let ((_%c2174411%_ _%$%c2174407174409%_))
                               (if (fx= _%c1174406%_ _%c2174411%_)
                                   _%c1174406%_
                                   '#f))
                             '#f))
                       '#f)))
               _%$%hd174340174378%_
               _%$%hd174337174370%_
               _%$%hd174334174362%_)
              (_%$%g174325174346%_ _%$%g174326174349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g174325174346%_
                                               _%$%g174326174349%_))))
                                      (_%$%g174325174346%_
                                       _%$%g174326174349%_))))
                              (_%$%g174325174346%_ _%$%g174326174349%_))))
                      (_%$%g174325174346%_ _%$%g174326174349%_)))))
          (_%$%g174324174414%_ _%stx174323%_))))))
