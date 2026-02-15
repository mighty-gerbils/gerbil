(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771178565)
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
      (let ((__tmp206206 (list gxc#::void::t))
            (__tmp206205 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp206206
         '()
         __tmp206205
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args204820%_
        (apply make-instance gxc#::collect-bindings::t _%$args204820%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp206207
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
        (__make-atomic-promise __tmp206207)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx204812%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self204815%_
                (let ((__obj206181
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj206181))
               (__tmp206208
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204815%_ _%stx204812%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206208
           gxc#current-compile-method
           _%self204815%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp206210 (list gxc#::void::t))
            (__tmp206209 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp206210
         '(modules)
         __tmp206209
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args204809%_
        (apply make-instance gxc#::lift-modules::t _%$args204809%_)))
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
      (let ((__tmp206211
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
        (__make-atomic-promise __tmp206211)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords204784%_ _%modules204781204785%_ _%stx204786%_)
        (let ((_%modules204789%_
               (if (eq? _%modules204781204785%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules204781204785%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self204791%_
                  (let ((__obj206183
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206183
                       _%modules204789%_
                       '1
                       '#f
                       '#f))
                    __obj206183))
                 (__tmp206212
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204791%_ _%stx204786%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206212
             gxc#current-compile-method
             _%self204791%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords204798%_ . _%args204799%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords204798%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204798%_
                  'modules:
                  absent-value))
               _%args204799%_)))
    (define gxc#apply-lift-modules
      (lambda _%args204782204805%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args204782204805%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp206214 (list)) (__tmp206213 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp206214
         '()
         __tmp206213
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args204777%_
        (apply make-instance gxc#::find-runtime-code::t _%$args204777%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp206215
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
        (__make-atomic-promise __tmp206215)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx204769%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self204772%_
                (let ((__obj206185
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj206185))
               (__tmp206216
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204772%_ _%stx204769%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206216
           gxc#current-compile-method
           _%self204772%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp206218 (list gxc#::false::t))
            (__tmp206217 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp206218
         '()
         __tmp206217
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args204766%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args204766%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp206219
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
        (__make-atomic-promise __tmp206219)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx204758%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self204761%_
                (let ((__obj206187
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj206187))
               (__tmp206220
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204761%_ _%stx204758%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206220
           gxc#current-compile-method
           _%self204761%_))))
    (define gxc#::count-values::t
      (let ((__tmp206222 (list gxc#::false-expression::t))
            (__tmp206221 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp206222
         '()
         __tmp206221
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args204755%_
        (apply make-instance gxc#::count-values::t _%$args204755%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp206223
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
        (__make-atomic-promise __tmp206223)))
    (define gxc#apply-count-values
      (lambda (_%stx204747%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self204750%_
                (let ((__obj206189
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj206189))
               (__tmp206224
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204750%_ _%stx204747%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206224
           gxc#current-compile-method
           _%self204750%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp206225 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp206225
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args204744%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args204744%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp206226
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
        (__make-atomic-promise __tmp206226)))
    (define gxc#::generate-loader::t
      (let ((__tmp206228 (list gxc#::generate-runtime-empty::t))
            (__tmp206227 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp206228
         '()
         __tmp206227
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args204740%_
        (apply make-instance gxc#::generate-loader::t _%$args204740%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp206229
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
        (__make-atomic-promise __tmp206229)))
    (define gxc#apply-generate-loader
      (lambda (_%stx204732%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self204735%_
                (let ((__obj206192
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj206192))
               (__tmp206230
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204735%_ _%stx204732%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206230
           gxc#current-compile-method
           _%self204735%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp206231 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp206231
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args204729%_
        (apply make-instance gxc#::generate-runtime::t _%$args204729%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp206232
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
        (__make-atomic-promise __tmp206232)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx204721%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self204724%_
                (let ((__obj206194
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj206194))
               (__tmp206233
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204724%_ _%stx204721%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206233
           gxc#current-compile-method
           _%self204724%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp206235 (list gxc#::generate-runtime::t))
            (__tmp206234 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp206235
         '()
         __tmp206234
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args204718%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args204718%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp206236
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
        (__make-atomic-promise __tmp206236)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx204710%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self204713%_
                (let ((__obj206196
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj206196))
               (__tmp206237
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204713%_ _%stx204710%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206237
           gxc#current-compile-method
           _%self204713%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp206238 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp206238
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args204707%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args204707%_)))
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
      (let ((__tmp206239
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
        (__make-atomic-promise __tmp206239)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords204682%_ _%table204679204683%_ _%stx204684%_)
        (let ((_%table204687%_
               (if (eq? _%table204679204683%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table204679204683%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self204689%_
                  (let ((__obj206198
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206198
                       _%table204687%_
                       '1
                       '#f
                       '#f))
                    __obj206198))
                 (__tmp206240
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204689%_ _%stx204684%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206240
             gxc#current-compile-method
             _%self204689%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords204696%_ . _%args204697%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords204696%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204696%_
                  'table:
                  absent-value))
               _%args204697%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args204680204703%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args204680204703%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp206242 (list gxc#::void-expression::t))
            (__tmp206241 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp206242
         '(state)
         __tmp206241
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args204675%_
        (apply make-instance gxc#::generate-meta::t _%$args204675%_)))
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
      (let ((__tmp206243
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
        (__make-atomic-promise __tmp206243)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords204650%_ _%state204647204651%_ _%stx204652%_)
        (let ((_%state204655%_
               (if (eq? _%state204647204651%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204647204651%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self204657%_
                  (let ((__obj206200
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206200
                       _%state204655%_
                       '1
                       '#f
                       '#f))
                    __obj206200))
                 (__tmp206244
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204657%_ _%stx204652%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206244
             gxc#current-compile-method
             _%self204657%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords204664%_ . _%args204665%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords204664%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204664%_
                  'state:
                  absent-value))
               _%args204665%_)))
    (define gxc#apply-generate-meta
      (lambda _%args204648204671%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args204648204671%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp206246 (list)) (__tmp206245 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp206246
         '(state)
         __tmp206245
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args204643%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args204643%_)))
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
      (let ((__tmp206247
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
        (__make-atomic-promise __tmp206247)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords204618%_ _%state204615204619%_ _%stx204620%_)
        (let ((_%state204623%_
               (if (eq? _%state204615204619%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204615204619%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self204625%_
                  (let ((__obj206202
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206202
                       _%state204623%_
                       '1
                       '#f
                       '#f))
                    __obj206202))
                 (__tmp206248
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204625%_ _%stx204620%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206248
             gxc#current-compile-method
             _%self204625%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords204632%_ . _%args204633%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords204632%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204632%_
                  'state:
                  absent-value))
               _%args204633%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args204616204639%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args204616204639%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self204544%_ _%stx204545%_)
        (let* ((_%g204547204564%_
                (lambda (_%g204548204561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204548204561%_))))
               (_%g204546204611%_
                (lambda (_%g204548204567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204548204567%_))
                      (let ((_%e204551204569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204548204567%_))))
                        (let ((_%hd204552204572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204551204569%_)))
                              (_%tl204553204574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204551204569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204553204574%_))
                              (let ((_%e204554204577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204553204574%_))))
                                (let ((_%hd204555204580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204554204577%_)))
                                      (_%tl204556204582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204554204577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204556204582%_))
                                      (let ((_%e204557204585%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204556204582%_))))
                                        (let ((_%hd204558204588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204557204585%_)))
                                              (_%tl204559204590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204557204585%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204559204590%_))
                                              ((lambda (_%g204549204593%_
                                                        _%g204550204594%_)
                                                 (let ((__tmp206249
                                                        (lambda (_%bind204609%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind204609%_))
                      (gxc#add-module-binding! _%bind204609%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp206249
                                                    _%g204550204594%_)))
                                               _%hd204558204588%_
                                               _%hd204555204580%_)
                                              (_%g204547204564%_
                                               _%g204548204567%_))))
                                      (_%g204547204564%_ _%g204548204567%_))))
                              (_%g204547204564%_ _%g204548204567%_))))
                      (_%g204547204564%_ _%g204548204567%_)))))
          (_%g204546204611%_ _%stx204545%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self204476%_ _%stx204477%_)
        (let* ((_%g204479204496%_
                (lambda (_%g204480204493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204480204493%_))))
               (_%g204478204541%_
                (lambda (_%g204480204499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204480204499%_))
                      (let ((_%e204483204501%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204480204499%_))))
                        (let ((_%hd204484204504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204483204501%_)))
                              (_%tl204485204506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204483204501%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204485204506%_))
                              (let ((_%e204486204509%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204485204506%_))))
                                (let ((_%hd204487204512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204486204509%_)))
                                      (_%tl204488204514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204486204509%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204488204514%_))
                                      (let ((_%e204489204517%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204488204514%_))))
                                        (let ((_%hd204490204520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204489204517%_)))
                                              (_%tl204491204522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204489204517%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204491204522%_))
                                              ((lambda (_%g204481204525%_
                                                        _%g204482204526%_)
                                                 (gxc#add-module-binding!
                                                  _%g204482204526%_
                                                  '#t))
                                               _%hd204490204520%_
                                               _%hd204487204512%_)
                                              (_%g204479204496%_
                                               _%g204480204499%_))))
                                      (_%g204479204496%_ _%g204480204499%_))))
                              (_%g204479204496%_ _%g204480204499%_))))
                      (_%g204479204496%_ _%g204480204499%_)))))
          (_%g204478204541%_ _%stx204477%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self204418%_ _%stx204419%_)
        (let* ((_%g204421204435%_
                (lambda (_%g204422204432%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204422204432%_))))
               (_%g204420204473%_
                (lambda (_%g204422204438%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204422204438%_))
                      (let ((_%e204425204440%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204422204438%_))))
                        (let ((_%hd204426204443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204425204440%_)))
                              (_%tl204427204445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204425204440%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204427204445%_))
                              (let ((_%e204428204448%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204427204445%_))))
                                (let ((_%hd204429204451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204428204448%_)))
                                      (_%tl204430204453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204428204448%_))))
                                  ((lambda (_%g204423204456%_
                                            _%g204424204457%_)
                                     (let ((_%ctx204470%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g204424204457%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self204418%_
                                           'modules))
                                        (cons _%ctx204470%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self204418%_
                                                        'modules)))))
                                       (let ((__tmp206250
                                              (lambda ()
                                                (let ((__tmp206251
                                                       (##structure-ref
                                                        _%ctx204470%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204418%_
                                                   __tmp206251)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp206250
                                          gx#current-expander-context
                                          _%ctx204470%_))))
                                   _%tl204430204453%_
                                   _%hd204429204451%_)))
                              (_%g204421204435%_ _%g204422204438%_))))
                      (_%g204421204435%_ _%g204422204438%_)))))
          (_%g204420204473%_ _%stx204419%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls204372204374%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls204372204374%_
              (let ((_%decls204376%_ _%decls204372204374%_))
                (let _%lp204378%_ ((_%rest204380%_ _%decls204376%_))
                  (let* ((_%rest204381204389%_ _%rest204380%_)
                         (_%else204383204397%_ (lambda () '#f))
                         (_%K204385204406%_
                          (lambda (_%decls204400%_ _%decl204401%_)
                            (if (equal? _%decl204401%_ '(not safe))
                                '#t
                                (if (equal? _%decl204401%_ '(safe))
                                    '#f
                                    (_%lp204378%_ _%decls204400%_))))))
                    (if (pair? _%rest204381204389%_)
                        (let ((_%hd204386204409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest204381204389%_)))
                              (_%tl204387204411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest204381204389%_))))
                          (let* ((_%decl204414%_ _%hd204386204409%_)
                                 (_%decls204416%_ _%tl204387204411%_))
                            (_%K204385204406%_
                             _%decls204416%_
                             _%decl204414%_)))
                        (_%else204383204397%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id204366%_ _%syntax?204367%_)
        (let ((_%eid204369%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id204366%_))
                '1
                gx#binding::t
                '#f))
              (_%ht204370%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid204369%_))
              '#!void
              (let ((__tmp206252
                     (let ((__tmp206253
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid204369%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp206253 _%syntax?204367%_))))
                (declare (not safe))
                (hash-put! _%ht204370%_ _%eid204369%_ __tmp206252))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self204363%_ _%stx204364%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self204210%_ _%stx204211%_)
        (letrec ((_%simplify204213%_
                  (lambda (_%body204261%_)
                    (let _%lp204263%_ ((_%rest204265%_ _%body204261%_)
                                       (_%r204266%_ '()))
                      (let* ((_%rest204267204275%_ _%rest204265%_)
                             (_%else204269204283%_
                              (lambda () (reverse _%r204266%_)))
                             (_%K204271204351%_
                              (lambda (_%rest204286%_ _%hd204287%_)
                                (let* ((_%hd204288204304%_ _%hd204287%_)
                                       (_%else204292204312%_
                                        (lambda ()
                                          (_%lp204263%_
                                           _%rest204286%_
                                           (cons _%hd204287%_ _%r204266%_)))))
                                  (let ((_%K204300204341%_
                                         (lambda (_%exprs204339%_)
                                           (_%lp204263%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest204286%_
                                               _%exprs204339%_))
                                            _%r204266%_)))
                                        (_%K204295204325%_
                                         (lambda ()
                                           (if (null? _%rest204286%_)
                                               (_%lp204263%_
                                                _%rest204286%_
                                                (cons _%hd204287%_
                                                      _%r204266%_))
                                               (_%lp204263%_
                                                _%rest204286%_
                                                _%r204266%_))))
                                        (_%K204294204317%_
                                         (lambda ()
                                           (if (null? _%rest204286%_)
                                               (_%lp204263%_
                                                _%rest204286%_
                                                (cons _%hd204287%_
                                                      _%r204266%_))
                                               (_%lp204263%_
                                                _%rest204286%_
                                                _%r204266%_)))))
                                    (let ((_%try-match204291204320%_
                                           (lambda ()
                                             (if (symbol? _%hd204288204304%_)
                                                 (_%K204294204317%_)
                                                 (_%else204292204312%_)))))
                                      (if (pair? _%hd204288204304%_)
                                          (let ((_%tl204302204346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd204288204304%_)))
                                                (_%hd204301204344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd204288204304%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd204301204344%_
                                                         'begin))
                                                (let ((_%exprs204349%_
                                                       _%tl204302204346%_))
                                                  (_%K204300204341%_
                                                   _%exprs204349%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd204301204344%_
                                                             'quote))
                                                    (if (pair? _%tl204302204346%_)
                                                        (let ((_%tl204299204333%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl204302204346%_))))
                  (if (null? _%tl204299204333%_)
                      (_%K204295204325%_)
                      (_%try-match204291204320%_)))
                (_%try-match204291204320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match204291204320%_))))
                                          (_%try-match204291204320%_))))))))
                        (if (pair? _%rest204267204275%_)
                            (let ((_%hd204272204354%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest204267204275%_)))
                                  (_%tl204273204356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest204267204275%_))))
                              (let* ((_%hd204359%_ _%hd204272204354%_)
                                     (_%rest204361%_ _%tl204273204356%_))
                                (_%K204271204351%_
                                 _%rest204361%_
                                 _%hd204359%_)))
                            (_%else204269204283%_)))))))
          (let* ((_%g204215204225%_
                  (lambda (_%g204216204222%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g204216204222%_))))
                 (_%g204214204258%_
                  (lambda (_%g204216204228%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g204216204228%_))
                        (let ((_%e204218204230%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g204216204228%_))))
                          (let ((_%hd204219204233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204218204230%_)))
                                (_%tl204220204235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204218204230%_))))
                            ((lambda (_%g204217204238%_)
                               (let* ((_%body204253%_
                                       (map (lambda (_%g204248204250%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204210%_
                                                 _%g204248204250%_)))
                                            _%g204217204238%_))
                                      (_%body204255%_
                                       (_%simplify204213%_ _%body204253%_)))
                                 (if (let ((__tmp206254
                                            (length _%body204255%_)))
                                       (declare (not safe))
                                       (##fx= __tmp206254 '1))
                                     (car _%body204255%_)
                                     (cons 'begin _%body204255%_))))
                             _%tl204220204235%_)))
                        (_%g204215204225%_ _%g204216204228%_)))))
            (_%g204214204258%_ _%stx204211%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self204171%_ _%stx204172%_)
        (let* ((_%g204174204184%_
                (lambda (_%g204175204181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204175204181%_))))
               (_%g204173204207%_
                (lambda (_%g204175204187%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204175204187%_))
                      (let ((_%e204177204189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204175204187%_))))
                        (let ((_%hd204178204192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204177204189%_)))
                              (_%tl204179204194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204177204189%_))))
                          ((lambda (_%g204176204197%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g204176204197%_))))
                           _%tl204179204194%_)))
                      (_%g204174204184%_ _%g204175204187%_)))))
          (_%g204173204207%_ _%stx204172%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self203937%_ _%stx203938%_)
        (let* ((_%__stx204844204845%_ _%stx203938%_)
               (_%g203942203994%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204844204845%_)))))
          (let ((_%__kont204846204847%_
                 (lambda (_%g203944204153%_ _%g203945204154%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self203937%_ _%g203944204153%_))))
                (_%__kont204848204849%_
                 (lambda (_%g203955204101%_
                          _%g203956204102%_
                          _%g203957204103%_)
                   (if (let ((__tmp206255
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g203957204103%_))))
                         (declare (not safe))
                         (##memq __tmp206255 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self203937%_
                          _%g203955204101%_)))))
                (_%__kont204852204853%_
                 (lambda (_%g203979204023%_ _%g203980204024%_)
                   (let ((_%decls204039%_
                          (map gx#syntax->datum _%g203980204024%_)))
                     (let ((__tmp206258
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls204039%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203937%_
                                                   _%g203979204023%_))
                                                '())))))
                           (__tmp206256
                            (let ((__tmp206257
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp206257 _%decls204039%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp206258
                        gxc#current-compile-decls
                        __tmp206256))))))
            (let* ((_%__match204899204900%_
                    (lambda (_%e203958204047%_
                             _%hd203959204050%_
                             _%tl203960204052%_
                             _%e203961204055%_
                             _%hd203962204058%_
                             _%tl203963204060%_
                             _%e203964204063%_
                             _%hd203965204066%_
                             _%tl203966204068%_
                             _%__splice204850204851%_
                             _%target203967204071%_
                             _%tl203969204073%_)
                      (letrec ((_%loop203970204076%_
                                (lambda (_%hd203968204079%_
                                         _%param203974204081%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203968204079%_))
                                      (let ((_%e203971204083%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203968204079%_))))
                                        (let ((_%lp-tl203973204088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203971204083%_)))
                                              (_%lp-hd203972204086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203971204083%_))))
                                          (_%loop203970204076%_
                                           _%lp-tl203973204088%_
                                           (cons _%lp-hd203972204086%_
                                                 _%param203974204081%_))))
                                      (let ((_%param203975204091%_
                                             (reverse _%param203974204081%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203963204060%_))
                                            (let ((_%e203976204093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203963204060%_))))
                                              (let ((_%tl203978204098%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203976204093%_)))
                                                    (_%hd203977204096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203976204093%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203978204098%_))
                                                    (let ((_%g203955204101%_
                                                           _%hd203977204096%_)
                                                          (_%g203956204102%_
                                                           _%param203975204091%_)
                                                          (_%g203957204103%_
                                                           _%hd203965204066%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g203957204103%_))
                       (not (let ((__tmp206259
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g203957204103%_))))
                              (declare (not safe))
                              (##memq __tmp206259 gxc#gambit-annotations))))
                  (_%__kont204848204849%_
                   _%g203955204101%_
                   _%g203956204102%_
                   _%g203957204103%_)
                  (_%__kont204852204853%_
                   _%hd203977204096%_
                   _%hd203962204058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203942203994%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203942203994%_))))))))
                        (_%loop203970204076%_ _%target203967204071%_ '()))))
                   (_%__match204873204874%_
                    (lambda (_%e203946204129%_
                             _%hd203947204132%_
                             _%tl203948204134%_
                             _%e203949204137%_
                             _%hd203950204140%_
                             _%tl203951204142%_
                             _%e203952204145%_
                             _%hd203953204148%_
                             _%tl203954204150%_)
                      (let ((_%g203944204153%_ _%hd203953204148%_)
                            (_%g203945204154%_ _%hd203950204140%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g203945204154%_))
                            (_%__kont204846204847%_
                             _%g203944204153%_
                             _%g203945204154%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203950204140%_))
                                (let ((_%e203964204063%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd203950204140%_))))
                                  (let ((_%tl203966204068%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203964204063%_)))
                                        (_%hd203965204066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203964204063%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl203966204068%_))
                                        (let ((_%__splice204850204851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl203966204068%_
                                                  '0))))
                                          (let ((_%tl203969204073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204850204851%_
                                                    '1)))
                                                (_%target203967204071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204850204851%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203969204073%_))
                                                (_%__match204899204900%_
                                                 _%e203946204129%_
                                                 _%hd203947204132%_
                                                 _%tl203948204134%_
                                                 _%e203949204137%_
                                                 _%hd203950204140%_
                                                 _%tl203951204142%_
                                                 _%e203964204063%_
                                                 _%hd203965204066%_
                                                 _%tl203966204068%_
                                                 _%__splice204850204851%_
                                                 _%target203967204071%_
                                                 _%tl203969204073%_)
                                                (_%__kont204852204853%_
                                                 _%hd203953204148%_
                                                 _%hd203950204140%_))))
                                        (_%__kont204852204853%_
                                         _%hd203953204148%_
                                         _%hd203950204140%_))))
                                (_%__kont204852204853%_
                                 _%hd203953204148%_
                                 _%hd203950204140%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204844204845%_))
                  (let ((_%e203946204129%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204844204845%_))))
                    (let ((_%tl203948204134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203946204129%_)))
                          (_%hd203947204132%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203946204129%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203948204134%_))
                          (let ((_%e203949204137%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203948204134%_))))
                            (let ((_%tl203951204142%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203949204137%_)))
                                  (_%hd203950204140%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203949204137%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203951204142%_))
                                  (let ((_%e203952204145%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl203951204142%_))))
                                    (let ((_%tl203954204150%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203952204145%_)))
                                          (_%hd203953204148%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203952204145%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203954204150%_))
                                          (_%__match204873204874%_
                                           _%e203946204129%_
                                           _%hd203947204132%_
                                           _%tl203948204134%_
                                           _%e203949204137%_
                                           _%hd203950204140%_
                                           _%tl203951204142%_
                                           _%e203952204145%_
                                           _%hd203953204148%_
                                           _%tl203954204150%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203950204140%_))
                                              (let ((_%e203964204063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203950204140%_))))
                                                (let ((_%tl203966204068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203964204063%_)))
                                                      (_%hd203965204066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203964204063%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203966204068%_))
                                                      (let ((_%__splice204850204851%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl203966204068%_
                        '0))))
                (let ((_%tl203969204073%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204850204851%_ '1)))
                      (_%target203967204071%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204850204851%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203969204073%_))
                      (_%__match204899204900%_
                       _%e203946204129%_
                       _%hd203947204132%_
                       _%tl203948204134%_
                       _%e203949204137%_
                       _%hd203950204140%_
                       _%tl203951204142%_
                       _%e203964204063%_
                       _%hd203965204066%_
                       _%tl203966204068%_
                       _%__splice204850204851%_
                       _%target203967204071%_
                       _%tl203969204073%_)
                      (let () (declare (not safe)) (_%g203942203994%_)))))
              (let () (declare (not safe)) (_%g203942203994%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203942203994%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203950204140%_))
                                      (let ((_%e203964204063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203950204140%_))))
                                        (let ((_%tl203966204068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203964204063%_)))
                                              (_%hd203965204066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203964204063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203966204068%_))
                                              (let ((_%__splice204850204851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl203966204068%_
                                                        '0))))
                                                (let ((_%tl203969204073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204850204851%_
                                                          '1)))
                                                      (_%target203967204071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204850204851%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203969204073%_))
                                                      (_%__match204899204900%_
                                                       _%e203946204129%_
                                                       _%hd203947204132%_
                                                       _%tl203948204134%_
                                                       _%e203949204137%_
                                                       _%hd203950204140%_
                                                       _%tl203951204142%_
                                                       _%e203964204063%_
                                                       _%hd203965204066%_
                                                       _%tl203966204068%_
                                                       _%__splice204850204851%_
                                                       _%target203967204071%_
                                                       _%tl203969204073%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203942203994%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203942203994%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203942203994%_))))))
                          (let () (declare (not safe)) (_%g203942203994%_)))))
                  (let () (declare (not safe)) (_%g203942203994%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self203896%_ _%stx203897%_)
        (let* ((_%g203899203909%_
                (lambda (_%g203900203906%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203900203906%_))))
               (_%g203898203934%_
                (lambda (_%g203900203912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203900203912%_))
                      (let ((_%e203902203914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203900203912%_))))
                        (let ((_%hd203903203917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203902203914%_)))
                              (_%tl203904203919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203902203914%_))))
                          ((lambda (_%g203901203922%_)
                             (let ((_%decls203932%_
                                    (map gx#syntax->datum _%g203901203922%_)))
                               (let ((__tmp206260
                                      (let ((__tmp206261
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp206261
                                         _%decls203932%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp206260))
                               (cons 'declare _%decls203932%_)))
                           _%tl203904203919%_)))
                      (_%g203899203909%_ _%g203900203912%_)))))
          (_%g203898203934%_ _%stx203897%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self203643%_ _%stx203644%_)
        (let* ((_%g203646203663%_
                (lambda (_%g203647203660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203647203660%_))))
               (_%g203645203893%_
                (lambda (_%g203647203666%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203647203666%_))
                      (let ((_%e203650203668%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203647203666%_))))
                        (let ((_%hd203651203671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203650203668%_)))
                              (_%tl203652203673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203650203668%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203652203673%_))
                              (let ((_%e203653203676%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203652203673%_))))
                                (let ((_%hd203654203679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203653203676%_)))
                                      (_%tl203655203681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203653203676%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203655203681%_))
                                      (let ((_%e203656203684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203655203681%_))))
                                        (let ((_%hd203657203687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203656203684%_)))
                                              (_%tl203658203689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203656203684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203658203689%_))
                                              ((lambda (_%g203648203692%_
                                                        _%g203649203693%_)
                                                 (let* ((_%__stx204952204953%_
                                                         _%g203649203693%_)
                                                        (_%g203710203724%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx204952204953%_)))))
                                                   (let ((_%__kont204954204955%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self203643%_
                                                               _%g203648203692%_))))
                                                         (_%__kont204956204957%_
                                                          (lambda (_%g203716203856%_)
                                                            (let ((_%eid203865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g203716203856%_))))
                      (let ((_%lambda-expr203866203868%_
                             (gxc#apply-find-lambda-expression
                              _%g203648203692%_)))
                        (if _%lambda-expr203866203868%_
                            (let* ((_%lambda-expr203870%_
                                    _%lambda-expr203866203868%_)
                                   (__tmp206262
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206262
                               _%lambda-expr203870%_
                               _%eid203865%_))
                            '#f))
                      (cons 'define
                            (cons _%eid203865%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self203643%_
                                           _%g203648203692%_))
                                        '()))))))
                 (_%__kont204958204959%_
                  (lambda ()
                    (let* ((_%tmp203731%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body203840%_
                            (let _%lp203733%_ ((_%rest203735%_
                                                _%g203649203693%_)
                                               (_%k203736%_ '0)
                                               (_%r203737%_ '()))
                              (let* ((_%__stx204922204923%_ _%rest203735%_)
                                     (_%g203742203759%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx204922204923%_)))))
                                (let ((_%__kont204924204925%_
                                       (lambda (_%g203744203827%_)
                                         (_%lp203733%_
                                          _%g203744203827%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203736%_ '1))
                                          _%r203737%_)))
                                      (_%__kont204926204927%_
                                       (lambda (_%g203749203800%_
                                                _%g203750203801%_)
                                         (_%lp203733%_
                                          _%g203749203800%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203736%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g203750203801%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp203731%_
                           _%k203736%_
                           _%g203749203800%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r203737%_))))
                                      (_%__kont204928204929%_
                                       (lambda (_%g203754203771%_)
                                         (let ((__tmp206263
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g203754203771%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp203731%_
                                 _%k203736%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp206263
                                            _%r203737%_))))
                                      (_%__kont204930204931%_
                                       (lambda () (reverse _%r203737%_))))
                                  (let ((_%g203740203787%_
                                         (lambda ()
                                           (let ((_%g203754203771%_
                                                  _%__stx204922204923%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g203754203771%_))
                                                 (_%__kont204928204929%_
                                                  _%g203754203771%_)
                                                 (_%__kont204930204931%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx204922204923%_))
                                        (let ((_%e203745203816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx204922204923%_))))
                                          (let ((_%tl203747203821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203745203816%_)))
                                                (_%hd203746203819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203745203816%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd203746203819%_))
                                                (let ((_%e203748203824%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203746203819%_))))
                                                  (if (equal? _%e203748203824%_
                                                              '#f)
                                                      (_%__kont204924204925%_
                                                       _%tl203747203821%_)
                                                      (_%__kont204926204927%_
                                                       _%tl203747203821%_
                                                       _%hd203746203819%_)))
                                                (_%__kont204926204927%_
                                                 _%tl203747203821%_
                                                 _%hd203746203819%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g203740203787%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp203731%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203643%_
                                                       _%g203648203692%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp203731%_
                                         _%g203649203693%_
                                         _%g203648203692%_)
                                        _%body203840%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx204952204953%_))
                                                         (let ((_%e203712203877%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx204952204953%_))))
                   (let ((_%tl203714203882%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e203712203877%_)))
                         (_%hd203713203880%_
                          (let ()
                            (declare (not safe))
                            (##car _%e203712203877%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd203713203880%_))
                         (let ((_%e203715203885%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd203713203880%_))))
                           (if (equal? _%e203715203885%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203714203882%_))
                                   (_%__kont204954204955%_)
                                   (_%__kont204958204959%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203714203882%_))
                                   (_%__kont204956204957%_ _%hd203713203880%_)
                                   (_%__kont204958204959%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl203714203882%_))
                             (_%__kont204956204957%_ _%hd203713203880%_)
                             (_%__kont204958204959%_)))))
                 (_%__kont204958204959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203657203687%_
                                               _%hd203654203679%_)
                                              (_%g203646203663%_
                                               _%g203647203666%_))))
                                      (_%g203646203663%_ _%g203647203666%_))))
                              (_%g203646203663%_ _%g203647203666%_))))
                      (_%g203646203663%_ _%g203647203666%_)))))
          (_%g203645203893%_ _%stx203644%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals203618%_ _%hd203619%_ _%expr203620%_)
        (let ((_%$e203622%_ (gxc#apply-count-values _%expr203620%_)))
          (if _%$e203622%_
              ((lambda (_%count203625%_)
                 (let ((_%len203627%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd203619%_)))
                       (_%cmp203628%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd203619%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len203627%_ '0))
                           (_%cmp203628%_ _%count203625%_ _%len203627%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr203620%_
                          _%hd203619%_)))))
               _%$e203622%_)
              (let* ((_%len203634%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd203619%_)))
                     (_%cmp203636%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd203619%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg203638%_
                      (let ((__tmp206265
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd203619%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp206264 (number->string _%len203634%_)))
                        (declare (not safe))
                        (##string-append __tmp206265 __tmp206264 '" values")))
                     (_%count203640%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd203619%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len203634%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count203640%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals203618%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp203636%_
                                (cons _%count203640%_
                                      (cons _%len203634%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp203636%_
                                                        (cons _%count203640%_
                                                              (cons _%len203634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg203638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count203640%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var203613%_)
        (letrec ((_%generate-inline203615%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var203613%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var203613%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203615%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203615%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var203606%_ _%i203607%_ _%rest203608%_)
        (letrec ((_%generate-inline203610%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i203607%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest203608%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var203606%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var203606%_
                                                      (cons '0 '())))
                                          (cons _%var203606%_ '()))))
                        (cons '##values-ref
                              (cons _%var203606%_ (cons _%i203607%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203610%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203610%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var203600%_ _%i203601%_)
        (if (let () (declare (not safe)) (##fx= _%i203601%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var203600%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var203600%_ '()))
                                  (cons (cons 'list (cons _%var203600%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var203600%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var203600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var203600%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i203601%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var203600%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var203600%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var203600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var203600%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var203600%_ '()))
                                (cons _%i203601%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var203600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i203601%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self203532%_ _%stx203533%_)
        (let* ((_%g203535203552%_
                (lambda (_%g203536203549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203536203549%_))))
               (_%g203534203597%_
                (lambda (_%g203536203555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203536203555%_))
                      (let ((_%e203539203557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203536203555%_))))
                        (let ((_%hd203540203560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203539203557%_)))
                              (_%tl203541203562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203539203557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203541203562%_))
                              (let ((_%e203542203565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203541203562%_))))
                                (let ((_%hd203543203568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203542203565%_)))
                                      (_%tl203544203570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203542203565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203544203570%_))
                                      (let ((_%e203545203573%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203544203570%_))))
                                        (let ((_%hd203546203576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203545203573%_)))
                                              (_%tl203547203578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203545203573%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203547203578%_))
                                              ((lambda (_%g203537203581%_
                                                        _%g203538203582%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self203532%_
                                                  _%g203538203582%_
                                                  _%g203537203581%_))
                                               _%hd203546203576%_
                                               _%hd203543203568%_)
                                              (_%g203535203552%_
                                               _%g203536203555%_))))
                                      (_%g203535203552%_ _%g203536203555%_))))
                              (_%g203535203552%_ _%g203536203555%_))))
                      (_%g203535203552%_ _%g203536203555%_)))))
          (_%g203534203597%_ _%stx203533%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self203491%_ _%hd203492%_ _%body203493%_)
        (let* ((_%hd203495%_ (gxc#generate-runtime-lambda-head _%hd203492%_))
               (_%body203497%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self203491%_ _%body203493%_)))
               (_%body203529%_
                (let* ((_%body203498203506%_ _%body203497%_)
                       (_%else203500203514%_
                        (lambda () (cons _%body203497%_ '())))
                       (_%K203502203519%_
                        (lambda (_%exprs203517%_) _%exprs203517%_)))
                  (if (pair? _%body203498203506%_)
                      (let ((_%hd203503203522%_
                             (let ()
                               (declare (not safe))
                               (##car _%body203498203506%_)))
                            (_%tl203504203524%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body203498203506%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd203503203522%_ 'begin))
                            (let ((_%exprs203527%_ _%tl203504203524%_))
                              (_%K203502203519%_ _%exprs203527%_))
                            (_%else203500203514%_)))
                      (_%else203500203514%_)))))
          (cons 'lambda (cons _%hd203495%_ _%body203529%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd203489%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd203489%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self202046%_ _%stx202047%_)
        (letrec ((_%dispatch-case?202049%_
                  (lambda (_%hd202727%_ _%body202728%_)
                    (let* ((_%form202730%_
                            (cons _%hd202727%_ (cons _%body202728%_ '())))
                           (_%__stx204984204985%_ _%form202730%_)
                           (_%g202735202892%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx204984204985%_)))))
                      (let ((_%__kont204986204987%_
                             (lambda (_%g202737203409%_
                                      _%g202738203410%_
                                      _%g202739203411%_)
                               '#t))
                            (_%__kont204992204993%_
                             (lambda (_%g202782203201%_
                                      _%g202783203202%_
                                      _%g202784203203%_
                                      _%g202785203204%_
                                      _%g202786203205%_
                                      _%g202787203206%_)
                               '#t))
                            (_%__kont204998204999%_
                             (lambda (_%g202848203000%_
                                      _%g202849203001%_
                                      _%g202850203002%_
                                      _%g202851203003%_)
                               '#t))
                            (_%__kont205000205001%_ (lambda () '#f)))
                        (let* ((_%__match205125205126%_
                                (lambda (_%e202852202904%_
                                         _%hd202853202907%_
                                         _%tl202854202909%_
                                         _%e202855202912%_
                                         _%hd202856202915%_
                                         _%tl202857202917%_
                                         _%e202858202920%_
                                         _%hd202859202923%_
                                         _%tl202860202925%_
                                         _%e202861202928%_
                                         _%hd202862202931%_
                                         _%tl202863202933%_
                                         _%e202864202936%_
                                         _%hd202865202939%_
                                         _%tl202866202941%_
                                         _%e202867202944%_
                                         _%hd202868202947%_
                                         _%tl202869202949%_
                                         _%e202870202952%_
                                         _%hd202871202955%_
                                         _%tl202872202957%_
                                         _%e202873202960%_
                                         _%hd202874202963%_
                                         _%tl202875202965%_
                                         _%e202876202968%_
                                         _%hd202877202971%_
                                         _%tl202878202973%_
                                         _%e202879202976%_
                                         _%hd202880202979%_
                                         _%tl202881202981%_
                                         _%e202882202984%_
                                         _%hd202883202987%_
                                         _%tl202884202989%_
                                         _%e202885202992%_
                                         _%hd202886202995%_
                                         _%tl202887202997%_)
                                  (let ((_%g202848203000%_ _%hd202886202995%_)
                                        (_%g202849203001%_ _%hd202877202971%_)
                                        (_%g202850203002%_ _%hd202868202947%_)
                                        (_%g202851203003%_ _%hd202853202907%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g202851203003%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g202850203002%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g202851203003%_
                                                _%g202848203000%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g202849203001%_
                                                     _%g202851203003%_))))
                                        (_%__kont204998204999%_
                                         _%g202848203000%_
                                         _%g202849203001%_
                                         _%g202850203002%_
                                         _%g202851203003%_)
                                        (_%__kont205000205001%_)))))
                               (_%__match205097205098%_
                                (lambda (_%e202852202904%_
                                         _%hd202853202907%_
                                         _%tl202854202909%_
                                         _%e202855202912%_
                                         _%hd202856202915%_
                                         _%tl202857202917%_
                                         _%e202858202920%_
                                         _%hd202859202923%_
                                         _%tl202860202925%_
                                         _%e202861202928%_
                                         _%hd202862202931%_
                                         _%tl202863202933%_
                                         _%e202864202936%_
                                         _%hd202865202939%_
                                         _%tl202866202941%_
                                         _%e202867202944%_
                                         _%hd202868202947%_
                                         _%tl202869202949%_
                                         _%e202870202952%_
                                         _%hd202871202955%_
                                         _%tl202872202957%_
                                         _%e202873202960%_
                                         _%hd202874202963%_
                                         _%tl202875202965%_
                                         _%e202876202968%_
                                         _%hd202877202971%_
                                         _%tl202878202973%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202872202957%_))
                                      (let ((_%e202879202976%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202872202957%_))))
                                        (let ((_%tl202881202981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202879202976%_)))
                                              (_%hd202880202979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202879202976%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd202880202979%_))
                                              (let ((_%e202882202984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202880202979%_))))
                                                (let ((_%tl202884202989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202882202984%_)))
                                                      (_%hd202883202987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202882202984%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd202883202987%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd202883202987%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202884202989%_))
                      (let ((_%e202885202992%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202884202989%_))))
                        (let ((_%tl202887202997%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202885202992%_)))
                              (_%hd202886202995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202885202992%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202887202997%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202881202981%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202857202917%_))
                                      (_%__match205125205126%_
                                       _%e202852202904%_
                                       _%hd202853202907%_
                                       _%tl202854202909%_
                                       _%e202855202912%_
                                       _%hd202856202915%_
                                       _%tl202857202917%_
                                       _%e202858202920%_
                                       _%hd202859202923%_
                                       _%tl202860202925%_
                                       _%e202861202928%_
                                       _%hd202862202931%_
                                       _%tl202863202933%_
                                       _%e202864202936%_
                                       _%hd202865202939%_
                                       _%tl202866202941%_
                                       _%e202867202944%_
                                       _%hd202868202947%_
                                       _%tl202869202949%_
                                       _%e202870202952%_
                                       _%hd202871202955%_
                                       _%tl202872202957%_
                                       _%e202873202960%_
                                       _%hd202874202963%_
                                       _%tl202875202965%_
                                       _%e202876202968%_
                                       _%hd202877202971%_
                                       _%tl202878202973%_
                                       _%e202879202976%_
                                       _%hd202880202979%_
                                       _%tl202881202981%_
                                       _%e202882202984%_
                                       _%hd202883202987%_
                                       _%tl202884202989%_
                                       _%e202885202992%_
                                       _%hd202886202995%_
                                       _%tl202887202997%_)
                                      (_%__kont205000205001%_))
                                  (_%__kont205000205001%_))
                              (_%__kont205000205001%_))))
                      (_%__kont205000205001%_))
                  (_%__kont205000205001%_))
              (_%__kont205000205001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205000205001%_))))
                                      (_%__kont205000205001%_))))
                               (_%__match205027205028%_
                                (lambda (_%e202788203045%_
                                         _%hd202789203048%_
                                         _%tl202790203050%_
                                         _%__splice204994204995%_
                                         _%target202791203053%_
                                         _%tl202793203055%_)
                                  (letrec ((_%loop202794203058%_
                                            (lambda (_%hd202792203061%_
                                                     _%arg202798203063%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202792203061%_))
                                                  (let ((_%e202795203065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202792203061%_))))
                                                    (let ((_%lp-tl202797203070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202795203065%_)))
                                                          (_%lp-hd202796203068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202795203065%_))))
                                                      (_%loop202794203058%_
                                                       _%lp-tl202797203070%_
                                                       (cons _%lp-hd202796203068%_
                                                             _%arg202798203063%_))))
                                                  (let ((_%arg202799203073%_
                                                         (reverse _%arg202798203063%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202790203050%_))
                                                        (let ((_%e202800203075%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202790203050%_))))
                  (let ((_%tl202802203080%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202800203075%_)))
                        (_%hd202801203078%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202800203075%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202801203078%_))
                        (let ((_%e202803203083%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202801203078%_))))
                          (let ((_%tl202805203088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202803203083%_)))
                                (_%hd202804203086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202803203083%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202804203086%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202804203086%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202805203088%_))
                                        (let ((_%e202806203091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202805203088%_))))
                                          (let ((_%tl202808203096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202806203091%_)))
                                                (_%hd202807203094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202806203091%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202807203094%_))
                                                (let ((_%e202809203099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202807203094%_))))
                                                  (let ((_%tl202811203104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202809203099%_)))
                                                        (_%hd202810203102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202809203099%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202810203102%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202810203102%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202811203104%_))
                        (let ((_%e202812203107%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202811203104%_))))
                          (let ((_%tl202814203112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202812203107%_)))
                                (_%hd202813203110%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202812203107%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202814203112%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202808203096%_))
                                    (let ((_%e202815203115%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202808203096%_))))
                                      (let ((_%tl202817203120%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202815203115%_)))
                                            (_%hd202816203118%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202815203115%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202816203118%_))
                                            (let ((_%e202818203123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202816203118%_))))
                                              (let ((_%tl202820203128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202818203123%_)))
                                                    (_%hd202819203126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202818203123%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202819203126%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202819203126%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202820203128%_))
                                                            (let ((_%e202821203131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202820203128%_))))
                      (let ((_%tl202823203136%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202821203131%_)))
                            (_%hd202822203134%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202821203131%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202823203136%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202817203120%_))
                                (if (let ((__tmp206266
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl202817203120%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp206266 '1))
                                    (let ((_%__splice204996204997%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202817203120%_
                                              '1))))
                                      (let ((_%tl202826203141%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204996204997%_
                                                '1)))
                                            (_%target202824203139%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204996204997%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202826203141%_))
                                            (let ((_%e202833203144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202826203141%_))))
                                              (let ((_%tl202835203149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202833203144%_)))
                                                    (_%hd202834203147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202833203144%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd202834203147%_))
                                                    (let ((_%e202836203152%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202834203147%_))))
                                                      (let ((_%tl202838203157%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e202836203152%_)))
                    (_%hd202837203155%_
                     (let () (declare (not safe)) (##car _%e202836203152%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd202837203155%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd202837203155%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202838203157%_))
                            (let ((_%e202839203160%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl202838203157%_))))
                              (let ((_%tl202841203165%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202839203160%_)))
                                    (_%hd202840203163%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202839203160%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202841203165%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202835203149%_))
                                        (letrec ((_%loop202827203168%_
                                                  (lambda (_%hd202825203171%_
                                                           _%xarg202831203173%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202825203171%_))
                                                        (let ((_%e202828203175%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202825203171%_))))
                  (let ((_%lp-tl202830203180%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202828203175%_)))
                        (_%lp-hd202829203178%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202828203175%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202829203178%_))
                        (let ((_%e202842203183%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd202829203178%_))))
                          (let ((_%tl202844203188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202842203183%_)))
                                (_%hd202843203186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202842203183%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202843203186%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd202843203186%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202844203188%_))
                                        (let ((_%e202845203191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202844203188%_))))
                                          (let ((_%tl202847203196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202845203191%_)))
                                                (_%hd202846203194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202845203191%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202847203196%_))
                                                (_%loop202827203168%_
                                                 _%lp-tl202830203180%_
                                                 (cons _%hd202846203194%_
                                                       _%xarg202831203173%_))
                                                (_%__match205097205098%_
                                                 _%e202788203045%_
                                                 _%hd202789203048%_
                                                 _%tl202790203050%_
                                                 _%e202800203075%_
                                                 _%hd202801203078%_
                                                 _%tl202802203080%_
                                                 _%e202803203083%_
                                                 _%hd202804203086%_
                                                 _%tl202805203088%_
                                                 _%e202806203091%_
                                                 _%hd202807203094%_
                                                 _%tl202808203096%_
                                                 _%e202809203099%_
                                                 _%hd202810203102%_
                                                 _%tl202811203104%_
                                                 _%e202812203107%_
                                                 _%hd202813203110%_
                                                 _%tl202814203112%_
                                                 _%e202815203115%_
                                                 _%hd202816203118%_
                                                 _%tl202817203120%_
                                                 _%e202818203123%_
                                                 _%hd202819203126%_
                                                 _%tl202820203128%_
                                                 _%e202821203131%_
                                                 _%hd202822203134%_
                                                 _%tl202823203136%_))))
                                        (_%__match205097205098%_
                                         _%e202788203045%_
                                         _%hd202789203048%_
                                         _%tl202790203050%_
                                         _%e202800203075%_
                                         _%hd202801203078%_
                                         _%tl202802203080%_
                                         _%e202803203083%_
                                         _%hd202804203086%_
                                         _%tl202805203088%_
                                         _%e202806203091%_
                                         _%hd202807203094%_
                                         _%tl202808203096%_
                                         _%e202809203099%_
                                         _%hd202810203102%_
                                         _%tl202811203104%_
                                         _%e202812203107%_
                                         _%hd202813203110%_
                                         _%tl202814203112%_
                                         _%e202815203115%_
                                         _%hd202816203118%_
                                         _%tl202817203120%_
                                         _%e202818203123%_
                                         _%hd202819203126%_
                                         _%tl202820203128%_
                                         _%e202821203131%_
                                         _%hd202822203134%_
                                         _%tl202823203136%_))
                                    (_%__match205097205098%_
                                     _%e202788203045%_
                                     _%hd202789203048%_
                                     _%tl202790203050%_
                                     _%e202800203075%_
                                     _%hd202801203078%_
                                     _%tl202802203080%_
                                     _%e202803203083%_
                                     _%hd202804203086%_
                                     _%tl202805203088%_
                                     _%e202806203091%_
                                     _%hd202807203094%_
                                     _%tl202808203096%_
                                     _%e202809203099%_
                                     _%hd202810203102%_
                                     _%tl202811203104%_
                                     _%e202812203107%_
                                     _%hd202813203110%_
                                     _%tl202814203112%_
                                     _%e202815203115%_
                                     _%hd202816203118%_
                                     _%tl202817203120%_
                                     _%e202818203123%_
                                     _%hd202819203126%_
                                     _%tl202820203128%_
                                     _%e202821203131%_
                                     _%hd202822203134%_
                                     _%tl202823203136%_))
                                (_%__match205097205098%_
                                 _%e202788203045%_
                                 _%hd202789203048%_
                                 _%tl202790203050%_
                                 _%e202800203075%_
                                 _%hd202801203078%_
                                 _%tl202802203080%_
                                 _%e202803203083%_
                                 _%hd202804203086%_
                                 _%tl202805203088%_
                                 _%e202806203091%_
                                 _%hd202807203094%_
                                 _%tl202808203096%_
                                 _%e202809203099%_
                                 _%hd202810203102%_
                                 _%tl202811203104%_
                                 _%e202812203107%_
                                 _%hd202813203110%_
                                 _%tl202814203112%_
                                 _%e202815203115%_
                                 _%hd202816203118%_
                                 _%tl202817203120%_
                                 _%e202818203123%_
                                 _%hd202819203126%_
                                 _%tl202820203128%_
                                 _%e202821203131%_
                                 _%hd202822203134%_
                                 _%tl202823203136%_))))
                        (_%__match205097205098%_
                         _%e202788203045%_
                         _%hd202789203048%_
                         _%tl202790203050%_
                         _%e202800203075%_
                         _%hd202801203078%_
                         _%tl202802203080%_
                         _%e202803203083%_
                         _%hd202804203086%_
                         _%tl202805203088%_
                         _%e202806203091%_
                         _%hd202807203094%_
                         _%tl202808203096%_
                         _%e202809203099%_
                         _%hd202810203102%_
                         _%tl202811203104%_
                         _%e202812203107%_
                         _%hd202813203110%_
                         _%tl202814203112%_
                         _%e202815203115%_
                         _%hd202816203118%_
                         _%tl202817203120%_
                         _%e202818203123%_
                         _%hd202819203126%_
                         _%tl202820203128%_
                         _%e202821203131%_
                         _%hd202822203134%_
                         _%tl202823203136%_))))
                (let ((_%xarg202832203199%_ (reverse _%xarg202831203173%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202802203080%_))
                      (let ((_%g202782203201%_ _%hd202840203163%_)
                            (_%g202783203202%_ _%xarg202832203199%_)
                            (_%g202784203203%_ _%hd202822203134%_)
                            (_%g202785203204%_ _%hd202813203110%_)
                            (_%g202786203205%_ _%tl202793203055%_)
                            (_%g202787203206%_ _%arg202799203073%_))
                        (if (and (let ((__tmp206267
                                        (let ((__tmp206268
                                               (lambda (_%g203249203252%_
                                                        _%g203250203254%_)
                                                 (cons _%g203249203252%_
                                                       _%g203250203254%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206268
                                           '()
                                           _%g202787203206%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp206267))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g202786203205%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g202785203204%_
                                    'apply))
                                 (let ((__tmp206271
                                        (length (let ((__tmp206272
                                                       (lambda (_%g203256203259%_
                                                                _%g203257203261%_)
                                                         (cons _%g203256203259%_
                                                               _%g203257203261%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206272
                                                   '()
                                                   _%g202787203206%_))))
                                       (__tmp206269
                                        (length (let ((__tmp206270
                                                       (lambda (_%g203263203266%_
                                                                _%g203264203268%_)
                                                         (cons _%g203263203266%_
                                                               _%g203264203268%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206270
                                                   '()
                                                   _%g202783203202%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp206271 __tmp206269))
                                 (let ((__tmp206275
                                        (let ((__tmp206276
                                               (lambda (_%g203270203273%_
                                                        _%g203271203275%_)
                                                 (cons _%g203270203273%_
                                                       _%g203271203275%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206276
                                           '()
                                           _%g202787203206%_)))
                                       (__tmp206273
                                        (let ((__tmp206274
                                               (lambda (_%g203277203280%_
                                                        _%g203278203282%_)
                                                 (cons _%g203277203280%_
                                                       _%g203278203282%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206274
                                           '()
                                           _%g202783203202%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp206275
                                    __tmp206273))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g202786203205%_
                                    _%g202782203201%_))
                                 (not (let ((__tmp206280
                                             (lambda (_%g203284203286%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g203284203286%_
                                                  _%g202784203203%_))))
                                            (__tmp206277
                                             (let ((__tmp206279
                                                    (lambda (_%g203288203291%_
                                                             _%g203289203293%_)
                                                      (cons _%g203288203291%_
                                                            _%g203289203293%_)))
                                                   (__tmp206278
                                                    (cons _%g202786203205%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206279
                                                __tmp206278
                                                _%g202787203206%_))))
                                        (declare (not safe))
                                        (__find __tmp206280 __tmp206277))))
                            (_%__kont204992204993%_
                             _%g202782203201%_
                             _%g202783203202%_
                             _%g202784203203%_
                             _%g202785203204%_
                             _%g202786203205%_
                             _%g202787203206%_)
                            (_%__match205097205098%_
                             _%e202788203045%_
                             _%hd202789203048%_
                             _%tl202790203050%_
                             _%e202800203075%_
                             _%hd202801203078%_
                             _%tl202802203080%_
                             _%e202803203083%_
                             _%hd202804203086%_
                             _%tl202805203088%_
                             _%e202806203091%_
                             _%hd202807203094%_
                             _%tl202808203096%_
                             _%e202809203099%_
                             _%hd202810203102%_
                             _%tl202811203104%_
                             _%e202812203107%_
                             _%hd202813203110%_
                             _%tl202814203112%_
                             _%e202815203115%_
                             _%hd202816203118%_
                             _%tl202817203120%_
                             _%e202818203123%_
                             _%hd202819203126%_
                             _%tl202820203128%_
                             _%e202821203131%_
                             _%hd202822203134%_
                             _%tl202823203136%_)))
                      (_%__match205097205098%_
                       _%e202788203045%_
                       _%hd202789203048%_
                       _%tl202790203050%_
                       _%e202800203075%_
                       _%hd202801203078%_
                       _%tl202802203080%_
                       _%e202803203083%_
                       _%hd202804203086%_
                       _%tl202805203088%_
                       _%e202806203091%_
                       _%hd202807203094%_
                       _%tl202808203096%_
                       _%e202809203099%_
                       _%hd202810203102%_
                       _%tl202811203104%_
                       _%e202812203107%_
                       _%hd202813203110%_
                       _%tl202814203112%_
                       _%e202815203115%_
                       _%hd202816203118%_
                       _%tl202817203120%_
                       _%e202818203123%_
                       _%hd202819203126%_
                       _%tl202820203128%_
                       _%e202821203131%_
                       _%hd202822203134%_
                       _%tl202823203136%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202827203168%_
                                           _%target202824203139%_
                                           '()))
                                        (_%__match205097205098%_
                                         _%e202788203045%_
                                         _%hd202789203048%_
                                         _%tl202790203050%_
                                         _%e202800203075%_
                                         _%hd202801203078%_
                                         _%tl202802203080%_
                                         _%e202803203083%_
                                         _%hd202804203086%_
                                         _%tl202805203088%_
                                         _%e202806203091%_
                                         _%hd202807203094%_
                                         _%tl202808203096%_
                                         _%e202809203099%_
                                         _%hd202810203102%_
                                         _%tl202811203104%_
                                         _%e202812203107%_
                                         _%hd202813203110%_
                                         _%tl202814203112%_
                                         _%e202815203115%_
                                         _%hd202816203118%_
                                         _%tl202817203120%_
                                         _%e202818203123%_
                                         _%hd202819203126%_
                                         _%tl202820203128%_
                                         _%e202821203131%_
                                         _%hd202822203134%_
                                         _%tl202823203136%_))
                                    (_%__match205097205098%_
                                     _%e202788203045%_
                                     _%hd202789203048%_
                                     _%tl202790203050%_
                                     _%e202800203075%_
                                     _%hd202801203078%_
                                     _%tl202802203080%_
                                     _%e202803203083%_
                                     _%hd202804203086%_
                                     _%tl202805203088%_
                                     _%e202806203091%_
                                     _%hd202807203094%_
                                     _%tl202808203096%_
                                     _%e202809203099%_
                                     _%hd202810203102%_
                                     _%tl202811203104%_
                                     _%e202812203107%_
                                     _%hd202813203110%_
                                     _%tl202814203112%_
                                     _%e202815203115%_
                                     _%hd202816203118%_
                                     _%tl202817203120%_
                                     _%e202818203123%_
                                     _%hd202819203126%_
                                     _%tl202820203128%_
                                     _%e202821203131%_
                                     _%hd202822203134%_
                                     _%tl202823203136%_))))
                            (_%__match205097205098%_
                             _%e202788203045%_
                             _%hd202789203048%_
                             _%tl202790203050%_
                             _%e202800203075%_
                             _%hd202801203078%_
                             _%tl202802203080%_
                             _%e202803203083%_
                             _%hd202804203086%_
                             _%tl202805203088%_
                             _%e202806203091%_
                             _%hd202807203094%_
                             _%tl202808203096%_
                             _%e202809203099%_
                             _%hd202810203102%_
                             _%tl202811203104%_
                             _%e202812203107%_
                             _%hd202813203110%_
                             _%tl202814203112%_
                             _%e202815203115%_
                             _%hd202816203118%_
                             _%tl202817203120%_
                             _%e202818203123%_
                             _%hd202819203126%_
                             _%tl202820203128%_
                             _%e202821203131%_
                             _%hd202822203134%_
                             _%tl202823203136%_))
                        (_%__match205097205098%_
                         _%e202788203045%_
                         _%hd202789203048%_
                         _%tl202790203050%_
                         _%e202800203075%_
                         _%hd202801203078%_
                         _%tl202802203080%_
                         _%e202803203083%_
                         _%hd202804203086%_
                         _%tl202805203088%_
                         _%e202806203091%_
                         _%hd202807203094%_
                         _%tl202808203096%_
                         _%e202809203099%_
                         _%hd202810203102%_
                         _%tl202811203104%_
                         _%e202812203107%_
                         _%hd202813203110%_
                         _%tl202814203112%_
                         _%e202815203115%_
                         _%hd202816203118%_
                         _%tl202817203120%_
                         _%e202818203123%_
                         _%hd202819203126%_
                         _%tl202820203128%_
                         _%e202821203131%_
                         _%hd202822203134%_
                         _%tl202823203136%_))
                    (_%__match205097205098%_
                     _%e202788203045%_
                     _%hd202789203048%_
                     _%tl202790203050%_
                     _%e202800203075%_
                     _%hd202801203078%_
                     _%tl202802203080%_
                     _%e202803203083%_
                     _%hd202804203086%_
                     _%tl202805203088%_
                     _%e202806203091%_
                     _%hd202807203094%_
                     _%tl202808203096%_
                     _%e202809203099%_
                     _%hd202810203102%_
                     _%tl202811203104%_
                     _%e202812203107%_
                     _%hd202813203110%_
                     _%tl202814203112%_
                     _%e202815203115%_
                     _%hd202816203118%_
                     _%tl202817203120%_
                     _%e202818203123%_
                     _%hd202819203126%_
                     _%tl202820203128%_
                     _%e202821203131%_
                     _%hd202822203134%_
                     _%tl202823203136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match205097205098%_
                                                     _%e202788203045%_
                                                     _%hd202789203048%_
                                                     _%tl202790203050%_
                                                     _%e202800203075%_
                                                     _%hd202801203078%_
                                                     _%tl202802203080%_
                                                     _%e202803203083%_
                                                     _%hd202804203086%_
                                                     _%tl202805203088%_
                                                     _%e202806203091%_
                                                     _%hd202807203094%_
                                                     _%tl202808203096%_
                                                     _%e202809203099%_
                                                     _%hd202810203102%_
                                                     _%tl202811203104%_
                                                     _%e202812203107%_
                                                     _%hd202813203110%_
                                                     _%tl202814203112%_
                                                     _%e202815203115%_
                                                     _%hd202816203118%_
                                                     _%tl202817203120%_
                                                     _%e202818203123%_
                                                     _%hd202819203126%_
                                                     _%tl202820203128%_
                                                     _%e202821203131%_
                                                     _%hd202822203134%_
                                                     _%tl202823203136%_))))
                                            (_%__match205097205098%_
                                             _%e202788203045%_
                                             _%hd202789203048%_
                                             _%tl202790203050%_
                                             _%e202800203075%_
                                             _%hd202801203078%_
                                             _%tl202802203080%_
                                             _%e202803203083%_
                                             _%hd202804203086%_
                                             _%tl202805203088%_
                                             _%e202806203091%_
                                             _%hd202807203094%_
                                             _%tl202808203096%_
                                             _%e202809203099%_
                                             _%hd202810203102%_
                                             _%tl202811203104%_
                                             _%e202812203107%_
                                             _%hd202813203110%_
                                             _%tl202814203112%_
                                             _%e202815203115%_
                                             _%hd202816203118%_
                                             _%tl202817203120%_
                                             _%e202818203123%_
                                             _%hd202819203126%_
                                             _%tl202820203128%_
                                             _%e202821203131%_
                                             _%hd202822203134%_
                                             _%tl202823203136%_))))
                                    (_%__match205097205098%_
                                     _%e202788203045%_
                                     _%hd202789203048%_
                                     _%tl202790203050%_
                                     _%e202800203075%_
                                     _%hd202801203078%_
                                     _%tl202802203080%_
                                     _%e202803203083%_
                                     _%hd202804203086%_
                                     _%tl202805203088%_
                                     _%e202806203091%_
                                     _%hd202807203094%_
                                     _%tl202808203096%_
                                     _%e202809203099%_
                                     _%hd202810203102%_
                                     _%tl202811203104%_
                                     _%e202812203107%_
                                     _%hd202813203110%_
                                     _%tl202814203112%_
                                     _%e202815203115%_
                                     _%hd202816203118%_
                                     _%tl202817203120%_
                                     _%e202818203123%_
                                     _%hd202819203126%_
                                     _%tl202820203128%_
                                     _%e202821203131%_
                                     _%hd202822203134%_
                                     _%tl202823203136%_))
                                (_%__match205097205098%_
                                 _%e202788203045%_
                                 _%hd202789203048%_
                                 _%tl202790203050%_
                                 _%e202800203075%_
                                 _%hd202801203078%_
                                 _%tl202802203080%_
                                 _%e202803203083%_
                                 _%hd202804203086%_
                                 _%tl202805203088%_
                                 _%e202806203091%_
                                 _%hd202807203094%_
                                 _%tl202808203096%_
                                 _%e202809203099%_
                                 _%hd202810203102%_
                                 _%tl202811203104%_
                                 _%e202812203107%_
                                 _%hd202813203110%_
                                 _%tl202814203112%_
                                 _%e202815203115%_
                                 _%hd202816203118%_
                                 _%tl202817203120%_
                                 _%e202818203123%_
                                 _%hd202819203126%_
                                 _%tl202820203128%_
                                 _%e202821203131%_
                                 _%hd202822203134%_
                                 _%tl202823203136%_))
                            (_%__kont205000205001%_))))
                    (_%__kont205000205001%_))
                (_%__kont205000205001%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205000205001%_))))
                                            (_%__kont205000205001%_))))
                                    (_%__kont205000205001%_))
                                (_%__kont205000205001%_))))
                        (_%__kont205000205001%_))
                    (_%__kont205000205001%_))
                (_%__kont205000205001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205000205001%_))))
                                        (_%__kont205000205001%_))
                                    (_%__kont205000205001%_))
                                (_%__kont205000205001%_))))
                        (_%__kont205000205001%_))))
                (_%__kont205000205001%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202794203058%_
                                     _%target202791203053%_
                                     '()))))
                               (_%__match205015205016%_
                                (lambda (_%e202740203301%_
                                         _%hd202741203304%_
                                         _%tl202742203306%_
                                         _%__splice204988204989%_
                                         _%target202743203309%_
                                         _%tl202745203311%_)
                                  (letrec ((_%loop202746203314%_
                                            (lambda (_%hd202744203317%_
                                                     _%arg202750203319%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202744203317%_))
                                                  (let ((_%e202747203321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202744203317%_))))
                                                    (let ((_%lp-tl202749203326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202747203321%_)))
                                                          (_%lp-hd202748203324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202747203321%_))))
                                                      (_%loop202746203314%_
                                                       _%lp-tl202749203326%_
                                                       (cons _%lp-hd202748203324%_
                                                             _%arg202750203319%_))))
                                                  (let ((_%arg202751203329%_
                                                         (reverse _%arg202750203319%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202742203306%_))
                                                        (let ((_%e202752203331%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202742203306%_))))
                  (let ((_%tl202754203336%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202752203331%_)))
                        (_%hd202753203334%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202752203331%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202753203334%_))
                        (let ((_%e202755203339%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202753203334%_))))
                          (let ((_%tl202757203344%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202755203339%_)))
                                (_%hd202756203342%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202755203339%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202756203342%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202756203342%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202757203344%_))
                                        (let ((_%e202758203347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202757203344%_))))
                                          (let ((_%tl202760203352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202758203347%_)))
                                                (_%hd202759203350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202758203347%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202759203350%_))
                                                (let ((_%e202761203355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202759203350%_))))
                                                  (let ((_%tl202763203360%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202761203355%_)))
                                                        (_%hd202762203358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202761203355%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202762203358%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202762203358%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202763203360%_))
                        (let ((_%e202764203363%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202763203360%_))))
                          (let ((_%tl202766203368%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202764203363%_)))
                                (_%hd202765203366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202764203363%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202766203368%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202760203352%_))
                                    (let ((_%__splice204990204991%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202760203352%_
                                              '0))))
                                      (let ((_%tl202769203373%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204990204991%_
                                                '1)))
                                            (_%target202767203371%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice204990204991%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202769203373%_))
                                            (letrec ((_%loop202770203376%_
                                                      (lambda (_%hd202768203379%_
                                                               _%xarg202774203381%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202768203379%_))
                                                            (let ((_%e202771203383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202768203379%_))))
                      (let ((_%lp-tl202773203388%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202771203383%_)))
                            (_%lp-hd202772203386%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202771203383%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202772203386%_))
                            (let ((_%e202776203391%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202772203386%_))))
                              (let ((_%tl202778203396%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202776203391%_)))
                                    (_%hd202777203394%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202776203391%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202777203394%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202777203394%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202778203396%_))
                                            (let ((_%e202779203399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202778203396%_))))
                                              (let ((_%tl202781203404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202779203399%_)))
                                                    (_%hd202780203402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202779203399%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202781203404%_))
                                                    (_%loop202770203376%_
                                                     _%lp-tl202773203388%_
                                                     (cons _%hd202780203402%_
                                                           _%xarg202774203381%_))
                                                    (_%__match205027205028%_
                                                     _%e202740203301%_
                                                     _%hd202741203304%_
                                                     _%tl202742203306%_
                                                     _%__splice204988204989%_
                                                     _%target202743203309%_
                                                     _%tl202745203311%_))))
                                            (_%__match205027205028%_
                                             _%e202740203301%_
                                             _%hd202741203304%_
                                             _%tl202742203306%_
                                             _%__splice204988204989%_
                                             _%target202743203309%_
                                             _%tl202745203311%_))
                                        (_%__match205027205028%_
                                         _%e202740203301%_
                                         _%hd202741203304%_
                                         _%tl202742203306%_
                                         _%__splice204988204989%_
                                         _%target202743203309%_
                                         _%tl202745203311%_))
                                    (_%__match205027205028%_
                                     _%e202740203301%_
                                     _%hd202741203304%_
                                     _%tl202742203306%_
                                     _%__splice204988204989%_
                                     _%target202743203309%_
                                     _%tl202745203311%_))))
                            (_%__match205027205028%_
                             _%e202740203301%_
                             _%hd202741203304%_
                             _%tl202742203306%_
                             _%__splice204988204989%_
                             _%target202743203309%_
                             _%tl202745203311%_))))
                    (let ((_%xarg202775203407%_
                           (reverse _%xarg202774203381%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202754203336%_))
                          (let ((_%g202737203409%_ _%xarg202775203407%_)
                                (_%g202738203410%_ _%hd202765203366%_)
                                (_%g202739203411%_ _%arg202751203329%_))
                            (if (and (let ((__tmp206281
                                            (let ((__tmp206282
                                                   (lambda (_%g203439203442%_
                                                            _%g203440203444%_)
                                                     (cons _%g203439203442%_
                                                           _%g203440203444%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206282
                                               '()
                                               _%g202739203411%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp206281))
                                     (let ((__tmp206285
                                            (length (let ((__tmp206286
                                                           (lambda (_%g203446203449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g203447203451%_)
                     (cons _%g203446203449%_ _%g203447203451%_))))
              (declare (not safe))
              (foldr__0 __tmp206286 '() _%g202739203411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp206283
                                            (length (let ((__tmp206284
                                                           (lambda (_%g203453203456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g203454203458%_)
                     (cons _%g203453203456%_ _%g203454203458%_))))
              (declare (not safe))
              (foldr__0 __tmp206284 '() _%g202737203409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206285 __tmp206283))
                                     (let ((__tmp206289
                                            (let ((__tmp206290
                                                   (lambda (_%g203460203463%_
                                                            _%g203461203465%_)
                                                     (cons _%g203460203463%_
                                                           _%g203461203465%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206290
                                               '()
                                               _%g202739203411%_)))
                                           (__tmp206287
                                            (let ((__tmp206288
                                                   (lambda (_%g203467203470%_
                                                            _%g203468203472%_)
                                                     (cons _%g203467203470%_
                                                           _%g203468203472%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206288
                                               '()
                                               _%g202737203409%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp206289
                                        __tmp206287))
                                     (not (let ((__tmp206293
                                                 (lambda (_%g203474203476%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g203474203476%_
                                                      _%g202738203410%_))))
                                                (__tmp206291
                                                 (let ((__tmp206292
                                                        (lambda (_%g203478203481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g203479203483%_)
                  (cons _%g203478203481%_ _%g203479203483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp206292
                                                    '()
                                                    _%g202739203411%_))))
                                            (declare (not safe))
                                            (__find __tmp206293 __tmp206291))))
                                (_%__kont204986204987%_
                                 _%g202737203409%_
                                 _%g202738203410%_
                                 _%g202739203411%_)
                                (_%__match205027205028%_
                                 _%e202740203301%_
                                 _%hd202741203304%_
                                 _%tl202742203306%_
                                 _%__splice204988204989%_
                                 _%target202743203309%_
                                 _%tl202745203311%_)))
                          (_%__match205027205028%_
                           _%e202740203301%_
                           _%hd202741203304%_
                           _%tl202742203306%_
                           _%__splice204988204989%_
                           _%target202743203309%_
                           _%tl202745203311%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202770203376%_
                                               _%target202767203371%_
                                               '()))
                                            (_%__match205027205028%_
                                             _%e202740203301%_
                                             _%hd202741203304%_
                                             _%tl202742203306%_
                                             _%__splice204988204989%_
                                             _%target202743203309%_
                                             _%tl202745203311%_))))
                                    (_%__match205027205028%_
                                     _%e202740203301%_
                                     _%hd202741203304%_
                                     _%tl202742203306%_
                                     _%__splice204988204989%_
                                     _%target202743203309%_
                                     _%tl202745203311%_))
                                (_%__match205027205028%_
                                 _%e202740203301%_
                                 _%hd202741203304%_
                                 _%tl202742203306%_
                                 _%__splice204988204989%_
                                 _%target202743203309%_
                                 _%tl202745203311%_))))
                        (_%__match205027205028%_
                         _%e202740203301%_
                         _%hd202741203304%_
                         _%tl202742203306%_
                         _%__splice204988204989%_
                         _%target202743203309%_
                         _%tl202745203311%_))
                    (_%__match205027205028%_
                     _%e202740203301%_
                     _%hd202741203304%_
                     _%tl202742203306%_
                     _%__splice204988204989%_
                     _%target202743203309%_
                     _%tl202745203311%_))
                (_%__match205027205028%_
                 _%e202740203301%_
                 _%hd202741203304%_
                 _%tl202742203306%_
                 _%__splice204988204989%_
                 _%target202743203309%_
                 _%tl202745203311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205027205028%_
                                                 _%e202740203301%_
                                                 _%hd202741203304%_
                                                 _%tl202742203306%_
                                                 _%__splice204988204989%_
                                                 _%target202743203309%_
                                                 _%tl202745203311%_))))
                                        (_%__match205027205028%_
                                         _%e202740203301%_
                                         _%hd202741203304%_
                                         _%tl202742203306%_
                                         _%__splice204988204989%_
                                         _%target202743203309%_
                                         _%tl202745203311%_))
                                    (_%__match205027205028%_
                                     _%e202740203301%_
                                     _%hd202741203304%_
                                     _%tl202742203306%_
                                     _%__splice204988204989%_
                                     _%target202743203309%_
                                     _%tl202745203311%_))
                                (_%__match205027205028%_
                                 _%e202740203301%_
                                 _%hd202741203304%_
                                 _%tl202742203306%_
                                 _%__splice204988204989%_
                                 _%target202743203309%_
                                 _%tl202745203311%_))))
                        (_%__match205027205028%_
                         _%e202740203301%_
                         _%hd202741203304%_
                         _%tl202742203306%_
                         _%__splice204988204989%_
                         _%target202743203309%_
                         _%tl202745203311%_))))
                (_%__match205027205028%_
                 _%e202740203301%_
                 _%hd202741203304%_
                 _%tl202742203306%_
                 _%__splice204988204989%_
                 _%target202743203309%_
                 _%tl202745203311%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202746203314%_
                                     _%target202743203309%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx204984204985%_))
                              (let ((_%e202740203301%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx204984204985%_))))
                                (let ((_%tl202742203306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202740203301%_)))
                                      (_%hd202741203304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202740203301%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202741203304%_))
                                      (let ((_%__splice204988204989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202741203304%_
                                                '0))))
                                        (let ((_%tl202745203311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204988204989%_
                                                  '1)))
                                              (_%target202743203309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice204988204989%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202745203311%_))
                                              (_%__match205015205016%_
                                               _%e202740203301%_
                                               _%hd202741203304%_
                                               _%tl202742203306%_
                                               _%__splice204988204989%_
                                               _%target202743203309%_
                                               _%tl202745203311%_)
                                              (_%__match205027205028%_
                                               _%e202740203301%_
                                               _%hd202741203304%_
                                               _%tl202742203306%_
                                               _%__splice204988204989%_
                                               _%target202743203309%_
                                               _%tl202745203311%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202742203306%_))
                                          (let ((_%e202855202912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202742203306%_))))
                                            (let ((_%tl202857202917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202855202912%_)))
                                                  (_%hd202856202915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202855202912%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202856202915%_))
                                                  (let ((_%e202858202920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202856202915%_))))
                                                    (let ((_%tl202860202925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202858202920%_)))
                                                          (_%hd202859202923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202858202920%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202859202923%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202859202923%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202860202925%_))
                          (let ((_%e202861202928%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202860202925%_))))
                            (let ((_%tl202863202933%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202861202928%_)))
                                  (_%hd202862202931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202861202928%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202862202931%_))
                                  (let ((_%e202864202936%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202862202931%_))))
                                    (let ((_%tl202866202941%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202864202936%_)))
                                          (_%hd202865202939%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202864202936%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202865202939%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202865202939%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202866202941%_))
                                                  (let ((_%e202867202944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202866202941%_))))
                                                    (let ((_%tl202869202949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202867202944%_)))
                                                          (_%hd202868202947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202867202944%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202869202949%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202863202933%_))
                      (let ((_%e202870202952%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202863202933%_))))
                        (let ((_%tl202872202957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202870202952%_)))
                              (_%hd202871202955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202870202952%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202871202955%_))
                              (let ((_%e202873202960%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202871202955%_))))
                                (let ((_%tl202875202965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202873202960%_)))
                                      (_%hd202874202963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202873202960%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202874202963%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202874202963%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202875202965%_))
                                              (let ((_%e202876202968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202875202965%_))))
                                                (let ((_%tl202878202973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202876202968%_)))
                                                      (_%hd202877202971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202876202968%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202878202973%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202872202957%_))
                                                          (let ((_%e202879202976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202872202957%_))))
                    (let ((_%tl202881202981%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202879202976%_)))
                          (_%hd202880202979%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202879202976%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd202880202979%_))
                          (let ((_%e202882202984%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202880202979%_))))
                            (let ((_%tl202884202989%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202882202984%_)))
                                  (_%hd202883202987%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202882202984%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd202883202987%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd202883202987%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202884202989%_))
                                          (let ((_%e202885202992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202884202989%_))))
                                            (let ((_%tl202887202997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202885202992%_)))
                                                  (_%hd202886202995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202885202992%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202887202997%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202881202981%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202857202917%_))
                                                          (_%__match205125205126%_
                                                           _%e202740203301%_
                                                           _%hd202741203304%_
                                                           _%tl202742203306%_
                                                           _%e202855202912%_
                                                           _%hd202856202915%_
                                                           _%tl202857202917%_
                                                           _%e202858202920%_
                                                           _%hd202859202923%_
                                                           _%tl202860202925%_
                                                           _%e202861202928%_
                                                           _%hd202862202931%_
                                                           _%tl202863202933%_
                                                           _%e202864202936%_
                                                           _%hd202865202939%_
                                                           _%tl202866202941%_
                                                           _%e202867202944%_
                                                           _%hd202868202947%_
                                                           _%tl202869202949%_
                                                           _%e202870202952%_
                                                           _%hd202871202955%_
                                                           _%tl202872202957%_
                                                           _%e202873202960%_
                                                           _%hd202874202963%_
                                                           _%tl202875202965%_
                                                           _%e202876202968%_
                                                           _%hd202877202971%_
                                                           _%tl202878202973%_
                                                           _%e202879202976%_
                                                           _%hd202880202979%_
                                                           _%tl202881202981%_
                                                           _%e202882202984%_
                                                           _%hd202883202987%_
                                                           _%tl202884202989%_
                                                           _%e202885202992%_
                                                           _%hd202886202995%_
                                                           _%tl202887202997%_)
                                                          (_%__kont205000205001%_))
                                                      (_%__kont205000205001%_))
                                                  (_%__kont205000205001%_))))
                                          (_%__kont205000205001%_))
                                      (_%__kont205000205001%_))
                                  (_%__kont205000205001%_))))
                          (_%__kont205000205001%_))))
                  (_%__kont205000205001%_))
              (_%__kont205000205001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205000205001%_))
                                          (_%__kont205000205001%_))
                                      (_%__kont205000205001%_))))
                              (_%__kont205000205001%_))))
                      (_%__kont205000205001%_))
                  (_%__kont205000205001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205000205001%_))
                                              (_%__kont205000205001%_))
                                          (_%__kont205000205001%_))))
                                  (_%__kont205000205001%_))))
                          (_%__kont205000205001%_))
                      (_%__kont205000205001%_))
                  (_%__kont205000205001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205000205001%_))))
                                          (_%__kont205000205001%_)))))
                              (_%__kont205000205001%_)))))))
                 (_%dispatch-case-e202050%_
                  (lambda (_%hd202197%_ _%body202198%_)
                    (let* ((_%form202200%_
                            (cons _%hd202197%_ (cons _%body202198%_ '())))
                           (_%__stx205128205129%_ _%form202200%_)
                           (_%g202204202328%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205128205129%_)))))
                      (let ((_%__kont205130205131%_
                             (lambda (_%g202206202693%_
                                      _%g202207202694%_
                                      _%g202208202695%_)
                               (let ((__tmp206294
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202207202694%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202046%_
                                  __tmp206294))))
                            (_%__kont205136205137%_
                             (lambda (_%g202251202545%_
                                      _%g202252202546%_
                                      _%g202253202547%_
                                      _%g202254202548%_)
                               (let ((__tmp206295
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202251202545%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202046%_
                                  __tmp206295))))
                            (_%__kont205140205141%_
                             (lambda (_%g202291202413%_
                                      _%g202292202414%_
                                      _%g202293202415%_)
                               (let ((__tmp206296
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202291202413%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202046%_
                                  __tmp206296)))))
                        (let* ((_%__match205237205238%_
                                (lambda (_%e202294202333%_
                                         _%hd202295202336%_
                                         _%tl202296202338%_
                                         _%e202297202341%_
                                         _%hd202298202344%_
                                         _%tl202299202346%_
                                         _%e202300202349%_
                                         _%hd202301202352%_
                                         _%tl202302202354%_
                                         _%e202303202357%_
                                         _%hd202304202360%_
                                         _%tl202305202362%_
                                         _%e202306202365%_
                                         _%hd202307202368%_
                                         _%tl202308202370%_
                                         _%e202309202373%_
                                         _%hd202310202376%_
                                         _%tl202311202378%_
                                         _%e202312202381%_
                                         _%hd202313202384%_
                                         _%tl202314202386%_
                                         _%e202315202389%_
                                         _%hd202316202392%_
                                         _%tl202317202394%_
                                         _%e202318202397%_
                                         _%hd202319202400%_
                                         _%tl202320202402%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202314202386%_))
                                      (let ((_%e202321202405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202314202386%_))))
                                        (let ((_%tl202323202410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202321202405%_)))
                                              (_%hd202322202408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202321202405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202323202410%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202299202346%_))
                                                  (_%__kont205140205141%_
                                                   _%hd202319202400%_
                                                   _%hd202310202376%_
                                                   _%hd202295202336%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202204202328%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202204202328%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202204202328%_)))))
                               (_%__match205167205168%_
                                (lambda (_%e202255202451%_
                                         _%hd202256202454%_
                                         _%tl202257202456%_
                                         _%__splice205138205139%_
                                         _%target202258202459%_
                                         _%tl202260202461%_)
                                  (letrec ((_%loop202261202464%_
                                            (lambda (_%hd202259202467%_
                                                     _%arg202265202469%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202259202467%_))
                                                  (let ((_%e202262202471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202259202467%_))))
                                                    (let ((_%lp-tl202264202476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202262202471%_)))
                                                          (_%lp-hd202263202474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202262202471%_))))
                                                      (_%loop202261202464%_
                                                       _%lp-tl202264202476%_
                                                       (cons _%lp-hd202263202474%_
                                                             _%arg202265202469%_))))
                                                  (let ((_%arg202266202479%_
                                                         (reverse _%arg202265202469%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202257202456%_))
                                                        (let ((_%e202267202481%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202257202456%_))))
                  (let ((_%tl202269202486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202267202481%_)))
                        (_%hd202268202484%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202267202481%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202268202484%_))
                        (let ((_%e202270202489%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202268202484%_))))
                          (let ((_%tl202272202494%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202270202489%_)))
                                (_%hd202271202492%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202270202489%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202271202492%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202271202492%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202272202494%_))
                                        (let ((_%e202273202497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202272202494%_))))
                                          (let ((_%tl202275202502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202273202497%_)))
                                                (_%hd202274202500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202273202497%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202274202500%_))
                                                (let ((_%e202276202505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202274202500%_))))
                                                  (let ((_%tl202278202510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202276202505%_)))
                                                        (_%hd202277202508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202276202505%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202277202508%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202277202508%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202278202510%_))
                        (let ((_%e202279202513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202278202510%_))))
                          (let ((_%tl202281202518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202279202513%_)))
                                (_%hd202280202516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202279202513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202281202518%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202275202502%_))
                                    (let ((_%e202282202521%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202275202502%_))))
                                      (let ((_%tl202284202526%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202282202521%_)))
                                            (_%hd202283202524%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202282202521%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202283202524%_))
                                            (let ((_%e202285202529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202283202524%_))))
                                              (let ((_%tl202287202534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202285202529%_)))
                                                    (_%hd202286202532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202285202529%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202286202532%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202286202532%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202287202534%_))
                                                            (let ((_%e202288202537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202287202534%_))))
                      (let ((_%tl202290202542%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202288202537%_)))
                            (_%hd202289202540%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202288202537%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202290202542%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202269202486%_))
                                (_%__kont205136205137%_
                                 _%hd202289202540%_
                                 _%hd202280202516%_
                                 _%tl202260202461%_
                                 _%arg202266202479%_)
                                (_%__match205237205238%_
                                 _%e202255202451%_
                                 _%hd202256202454%_
                                 _%tl202257202456%_
                                 _%e202267202481%_
                                 _%hd202268202484%_
                                 _%tl202269202486%_
                                 _%e202270202489%_
                                 _%hd202271202492%_
                                 _%tl202272202494%_
                                 _%e202273202497%_
                                 _%hd202274202500%_
                                 _%tl202275202502%_
                                 _%e202276202505%_
                                 _%hd202277202508%_
                                 _%tl202278202510%_
                                 _%e202279202513%_
                                 _%hd202280202516%_
                                 _%tl202281202518%_
                                 _%e202282202521%_
                                 _%hd202283202524%_
                                 _%tl202284202526%_
                                 _%e202285202529%_
                                 _%hd202286202532%_
                                 _%tl202287202534%_
                                 _%e202288202537%_
                                 _%hd202289202540%_
                                 _%tl202290202542%_))
                            (let ()
                              (declare (not safe))
                              (_%g202204202328%_)))))
                    (let () (declare (not safe)) (_%g202204202328%_)))
                (let () (declare (not safe)) (_%g202204202328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202204202328%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202204202328%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202204202328%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202204202328%_)))))
                        (let () (declare (not safe)) (_%g202204202328%_)))
                    (let () (declare (not safe)) (_%g202204202328%_)))
                (let () (declare (not safe)) (_%g202204202328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202204202328%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202204202328%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202204202328%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202204202328%_)))))
                        (let () (declare (not safe)) (_%g202204202328%_)))))
                (let () (declare (not safe)) (_%g202204202328%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202261202464%_
                                     _%target202258202459%_
                                     '()))))
                               (_%__match205155205156%_
                                (lambda (_%e202209202585%_
                                         _%hd202210202588%_
                                         _%tl202211202590%_
                                         _%__splice205132205133%_
                                         _%target202212202593%_
                                         _%tl202214202595%_)
                                  (letrec ((_%loop202215202598%_
                                            (lambda (_%hd202213202601%_
                                                     _%arg202219202603%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202213202601%_))
                                                  (let ((_%e202216202605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202213202601%_))))
                                                    (let ((_%lp-tl202218202610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202216202605%_)))
                                                          (_%lp-hd202217202608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202216202605%_))))
                                                      (_%loop202215202598%_
                                                       _%lp-tl202218202610%_
                                                       (cons _%lp-hd202217202608%_
                                                             _%arg202219202603%_))))
                                                  (let ((_%arg202220202613%_
                                                         (reverse _%arg202219202603%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202211202590%_))
                                                        (let ((_%e202221202615%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202211202590%_))))
                  (let ((_%tl202223202620%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202221202615%_)))
                        (_%hd202222202618%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202221202615%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202222202618%_))
                        (let ((_%e202224202623%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202222202618%_))))
                          (let ((_%tl202226202628%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202224202623%_)))
                                (_%hd202225202626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202224202623%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202225202626%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202225202626%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202226202628%_))
                                        (let ((_%e202227202631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202226202628%_))))
                                          (let ((_%tl202229202636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202227202631%_)))
                                                (_%hd202228202634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202227202631%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202228202634%_))
                                                (let ((_%e202230202639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202228202634%_))))
                                                  (let ((_%tl202232202644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202230202639%_)))
                                                        (_%hd202231202642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202230202639%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202231202642%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202231202642%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202232202644%_))
                        (let ((_%e202233202647%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202232202644%_))))
                          (let ((_%tl202235202652%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202233202647%_)))
                                (_%hd202234202650%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202233202647%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202235202652%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202229202636%_))
                                    (let ((_%__splice205134205135%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202229202636%_
                                              '0))))
                                      (let ((_%tl202238202657%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205134205135%_
                                                '1)))
                                            (_%target202236202655%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205134205135%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202238202657%_))
                                            (letrec ((_%loop202239202660%_
                                                      (lambda (_%hd202237202663%_
                                                               _%xarg202243202665%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202237202663%_))
                                                            (let ((_%e202240202667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202237202663%_))))
                      (let ((_%lp-tl202242202672%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202240202667%_)))
                            (_%lp-hd202241202670%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202240202667%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202241202670%_))
                            (let ((_%e202245202675%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202241202670%_))))
                              (let ((_%tl202247202680%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202245202675%_)))
                                    (_%hd202246202678%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202245202675%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202246202678%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202246202678%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202247202680%_))
                                            (let ((_%e202248202683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202247202680%_))))
                                              (let ((_%tl202250202688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202248202683%_)))
                                                    (_%hd202249202686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202248202683%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202250202688%_))
                                                    (_%loop202239202660%_
                                                     _%lp-tl202242202672%_
                                                     (cons _%hd202249202686%_
                                                           _%xarg202243202665%_))
                                                    (_%__match205167205168%_
                                                     _%e202209202585%_
                                                     _%hd202210202588%_
                                                     _%tl202211202590%_
                                                     _%__splice205132205133%_
                                                     _%target202212202593%_
                                                     _%tl202214202595%_))))
                                            (_%__match205167205168%_
                                             _%e202209202585%_
                                             _%hd202210202588%_
                                             _%tl202211202590%_
                                             _%__splice205132205133%_
                                             _%target202212202593%_
                                             _%tl202214202595%_))
                                        (_%__match205167205168%_
                                         _%e202209202585%_
                                         _%hd202210202588%_
                                         _%tl202211202590%_
                                         _%__splice205132205133%_
                                         _%target202212202593%_
                                         _%tl202214202595%_))
                                    (_%__match205167205168%_
                                     _%e202209202585%_
                                     _%hd202210202588%_
                                     _%tl202211202590%_
                                     _%__splice205132205133%_
                                     _%target202212202593%_
                                     _%tl202214202595%_))))
                            (_%__match205167205168%_
                             _%e202209202585%_
                             _%hd202210202588%_
                             _%tl202211202590%_
                             _%__splice205132205133%_
                             _%target202212202593%_
                             _%tl202214202595%_))))
                    (let ((_%xarg202244202691%_
                           (reverse _%xarg202243202665%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202223202620%_))
                          (_%__kont205130205131%_
                           _%xarg202244202691%_
                           _%hd202234202650%_
                           _%arg202220202613%_)
                          (_%__match205167205168%_
                           _%e202209202585%_
                           _%hd202210202588%_
                           _%tl202211202590%_
                           _%__splice205132205133%_
                           _%target202212202593%_
                           _%tl202214202595%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202239202660%_
                                               _%target202236202655%_
                                               '()))
                                            (_%__match205167205168%_
                                             _%e202209202585%_
                                             _%hd202210202588%_
                                             _%tl202211202590%_
                                             _%__splice205132205133%_
                                             _%target202212202593%_
                                             _%tl202214202595%_))))
                                    (_%__match205167205168%_
                                     _%e202209202585%_
                                     _%hd202210202588%_
                                     _%tl202211202590%_
                                     _%__splice205132205133%_
                                     _%target202212202593%_
                                     _%tl202214202595%_))
                                (_%__match205167205168%_
                                 _%e202209202585%_
                                 _%hd202210202588%_
                                 _%tl202211202590%_
                                 _%__splice205132205133%_
                                 _%target202212202593%_
                                 _%tl202214202595%_))))
                        (_%__match205167205168%_
                         _%e202209202585%_
                         _%hd202210202588%_
                         _%tl202211202590%_
                         _%__splice205132205133%_
                         _%target202212202593%_
                         _%tl202214202595%_))
                    (_%__match205167205168%_
                     _%e202209202585%_
                     _%hd202210202588%_
                     _%tl202211202590%_
                     _%__splice205132205133%_
                     _%target202212202593%_
                     _%tl202214202595%_))
                (_%__match205167205168%_
                 _%e202209202585%_
                 _%hd202210202588%_
                 _%tl202211202590%_
                 _%__splice205132205133%_
                 _%target202212202593%_
                 _%tl202214202595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205167205168%_
                                                 _%e202209202585%_
                                                 _%hd202210202588%_
                                                 _%tl202211202590%_
                                                 _%__splice205132205133%_
                                                 _%target202212202593%_
                                                 _%tl202214202595%_))))
                                        (_%__match205167205168%_
                                         _%e202209202585%_
                                         _%hd202210202588%_
                                         _%tl202211202590%_
                                         _%__splice205132205133%_
                                         _%target202212202593%_
                                         _%tl202214202595%_))
                                    (_%__match205167205168%_
                                     _%e202209202585%_
                                     _%hd202210202588%_
                                     _%tl202211202590%_
                                     _%__splice205132205133%_
                                     _%target202212202593%_
                                     _%tl202214202595%_))
                                (_%__match205167205168%_
                                 _%e202209202585%_
                                 _%hd202210202588%_
                                 _%tl202211202590%_
                                 _%__splice205132205133%_
                                 _%target202212202593%_
                                 _%tl202214202595%_))))
                        (_%__match205167205168%_
                         _%e202209202585%_
                         _%hd202210202588%_
                         _%tl202211202590%_
                         _%__splice205132205133%_
                         _%target202212202593%_
                         _%tl202214202595%_))))
                (_%__match205167205168%_
                 _%e202209202585%_
                 _%hd202210202588%_
                 _%tl202211202590%_
                 _%__splice205132205133%_
                 _%target202212202593%_
                 _%tl202214202595%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202215202598%_
                                     _%target202212202593%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205128205129%_))
                              (let ((_%e202209202585%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205128205129%_))))
                                (let ((_%tl202211202590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202209202585%_)))
                                      (_%hd202210202588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202209202585%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202210202588%_))
                                      (let ((_%__splice205132205133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202210202588%_
                                                '0))))
                                        (let ((_%tl202214202595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205132205133%_
                                                  '1)))
                                              (_%target202212202593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205132205133%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202214202595%_))
                                              (_%__match205155205156%_
                                               _%e202209202585%_
                                               _%hd202210202588%_
                                               _%tl202211202590%_
                                               _%__splice205132205133%_
                                               _%target202212202593%_
                                               _%tl202214202595%_)
                                              (_%__match205167205168%_
                                               _%e202209202585%_
                                               _%hd202210202588%_
                                               _%tl202211202590%_
                                               _%__splice205132205133%_
                                               _%target202212202593%_
                                               _%tl202214202595%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202211202590%_))
                                          (let ((_%e202297202341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202211202590%_))))
                                            (let ((_%tl202299202346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202297202341%_)))
                                                  (_%hd202298202344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202297202341%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202298202344%_))
                                                  (let ((_%e202300202349%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202298202344%_))))
                                                    (let ((_%tl202302202354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202300202349%_)))
                                                          (_%hd202301202352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202300202349%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202301202352%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202301202352%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202302202354%_))
                          (let ((_%e202303202357%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202302202354%_))))
                            (let ((_%tl202305202362%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202303202357%_)))
                                  (_%hd202304202360%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202303202357%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202304202360%_))
                                  (let ((_%e202306202365%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202304202360%_))))
                                    (let ((_%tl202308202370%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202306202365%_)))
                                          (_%hd202307202368%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202306202365%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202307202368%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202307202368%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202308202370%_))
                                                  (let ((_%e202309202373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202308202370%_))))
                                                    (let ((_%tl202311202378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202309202373%_)))
                                                          (_%hd202310202376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202309202373%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202311202378%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202305202362%_))
                      (let ((_%e202312202381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202305202362%_))))
                        (let ((_%tl202314202386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202312202381%_)))
                              (_%hd202313202384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202312202381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202313202384%_))
                              (let ((_%e202315202389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202313202384%_))))
                                (let ((_%tl202317202394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202315202389%_)))
                                      (_%hd202316202392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202315202389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202316202392%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202316202392%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202317202394%_))
                                              (let ((_%e202318202397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202317202394%_))))
                                                (let ((_%tl202320202402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202318202397%_)))
                                                      (_%hd202319202400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202318202397%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202320202402%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202314202386%_))
                                                          (let ((_%e202321202405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202314202386%_))))
                    (let ((_%tl202323202410%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202321202405%_)))
                          (_%hd202322202408%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202321202405%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202323202410%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202299202346%_))
                              (_%__kont205140205141%_
                               _%hd202319202400%_
                               _%hd202310202376%_
                               _%hd202210202588%_)
                              (let ()
                                (declare (not safe))
                                (_%g202204202328%_)))
                          (let () (declare (not safe)) (_%g202204202328%_)))))
                  (let () (declare (not safe)) (_%g202204202328%_)))
              (let () (declare (not safe)) (_%g202204202328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202204202328%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202204202328%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202204202328%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202204202328%_)))))
                      (let () (declare (not safe)) (_%g202204202328%_)))
                  (let () (declare (not safe)) (_%g202204202328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202204202328%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202204202328%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202204202328%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202204202328%_)))))
                          (let () (declare (not safe)) (_%g202204202328%_)))
                      (let () (declare (not safe)) (_%g202204202328%_)))
                  (let () (declare (not safe)) (_%g202204202328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202204202328%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202204202328%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g202204202328%_))))))))
                 (_%generate1202051%_
                  (lambda (_%args202182%_
                           _%arglen202183%_
                           _%hd202184%_
                           _%body202185%_)
                    (let* ((_%len202187%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd202184%_)))
                           (_%condition202192%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd202184%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen202183%_
                                                (cons _%len202187%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen202183%_ (cons _%len202187%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len202187%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen202183%_
                                                    (cons _%len202187%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen202183%_ (cons _%len202187%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch202194%_
                            (if (_%dispatch-case?202049%_
                                 _%hd202184%_
                                 _%body202185%_)
                                (_%dispatch-case-e202050%_
                                 _%hd202184%_
                                 _%body202185%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self202046%_
                                 _%hd202184%_
                                 _%body202185%_))))
                      (cons _%condition202192%_
                            (cons (cons 'apply
                                        (cons _%dispatch202194%_
                                              (cons _%args202182%_ '())))
                                  '()))))))
          (let* ((_%g202053202081%_
                  (lambda (_%g202054202078%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202054202078%_))))
                 (_%g202052202179%_
                  (lambda (_%g202054202084%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202054202084%_))
                        (let ((_%e202057202086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202054202084%_))))
                          (let ((_%hd202058202089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202057202086%_)))
                                (_%tl202059202091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202057202086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202059202091%_))
                                (let ((_g206297_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl202059202091%_
                                          '0))))
                                  (begin
                                    (let ((_g206298_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206297_)
                                                 (##values-length _g206297_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206298_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206298_)))
                                    (let ((_%target202060202094%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206297_ 0)))
                                          (_%tl202062202096%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206297_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202062202096%_))
                                          (letrec ((_%loop202063202099%_
                                                    (lambda (_%hd202061202102%_
                                                             _%body202067202104%_
                                                             _%hd202068202105%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202061202102%_))
                                                          (let ((_%e202064202107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd202061202102%_))))
                    (let ((_%lp-hd202065202110%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202064202107%_)))
                          (_%lp-tl202066202112%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202064202107%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd202065202110%_))
                          (let ((_%e202071202115%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd202065202110%_))))
                            (let ((_%hd202072202118%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202071202115%_)))
                                  (_%tl202073202120%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202071202115%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202073202120%_))
                                  (let ((_%e202074202123%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202073202120%_))))
                                    (let ((_%hd202075202126%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202074202123%_)))
                                          (_%tl202076202128%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202074202123%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202076202128%_))
                                          (_%loop202063202099%_
                                           _%lp-tl202066202112%_
                                           (cons _%hd202075202126%_
                                                 _%body202067202104%_)
                                           (cons _%hd202072202118%_
                                                 _%hd202068202105%_))
                                          (_%g202053202081%_
                                           _%g202054202084%_))))
                                  (_%g202053202081%_ _%g202054202084%_))))
                          (_%g202053202081%_ _%g202054202084%_))))
                  (let ((_%body202069202131%_ (reverse _%body202067202104%_))
                        (_%hd202070202132%_ (reverse _%hd202068202105%_)))
                    ((lambda (_%g202055202134%_ _%g202056202135%_)
                       (let ((_%args202154%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen202155%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name202156%_
                              (let ((_%$e202151%_
                                     (let ((__tmp206299
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp206299 _%stx202047%_))))
                                (if _%$e202151%_
                                    _%$e202151%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args202154%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen202155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args202154%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args202154%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp206303
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name202156%_
                                                                (cons _%args202154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp206300
                                  (map (lambda (_%g202157202160%_
                                                _%g202158202162%_)
                                         (_%generate1202051%_
                                          _%args202154%_
                                          _%arglen202155%_
                                          _%g202157202160%_
                                          _%g202158202162%_))
                                       (let ((__tmp206301
                                              (lambda (_%g202164202167%_
                                                       _%g202165202169%_)
                                                (cons _%g202164202167%_
                                                      _%g202165202169%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206301
                                          '()
                                          _%g202056202135%_))
                                       (let ((__tmp206302
                                              (lambda (_%g202171202174%_
                                                       _%g202172202176%_)
                                                (cons _%g202171202174%_
                                                      _%g202172202176%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206302
                                          '()
                                          _%g202055202134%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp206303 __tmp206300)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body202069202131%_
                     _%hd202070202132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop202063202099%_
                                             _%target202060202094%_
                                             '()
                                             '()))
                                          (_%g202053202081%_
                                           _%g202054202084%_)))))
                                (_%g202053202081%_ _%g202054202084%_))))
                        (_%g202053202081%_ _%g202054202084%_)))))
            (_%g202052202179%_ _%stx202047%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self201283%_ _%stx201284%_ _%compiled-body?201285%_)
        (letrec ((_%generate-simple201287%_
                  (lambda (_%hd202031%_ _%body202032%_)
                    (_%coalesce-boolean201288%_
                     (_%simplify-let201289%_
                      (gxc#generate-runtime-simple-let
                       _%self201283%_
                       'let
                       _%hd202031%_
                       _%body202032%_
                       _%compiled-body?201285%_)))))
                 (_%coalesce-boolean201288%_
                  (lambda (_%code201892%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code201893201919%_ _%code201892%_)
                               (_%else201895201927%_
                                (lambda () _%code201892%_))
                               (_%K201897201964%_
                                (lambda (_%expr2201930%_
                                         _%expr1201931%_
                                         _%id201932%_)
                                  (let* ((_%expr2201933201941%_
                                          _%expr2201930%_)
                                         (_%else201935201949%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1201931%_
                                                        (cons _%expr2201930%_
                                                              '())))))
                                         (_%K201937201954%_
                                          (lambda (_%exprs201952%_)
                                            (cons 'or
                                                  (cons _%expr1201931%_
                                                        _%exprs201952%_)))))
                                    (if (pair? _%expr2201933201941%_)
                                        (let ((_%hd201938201957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2201933201941%_)))
                                              (_%tl201939201959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2201933201941%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201938201957%_ 'or))
                                              (let ((_%exprs201962%_
                                                     _%tl201939201959%_))
                                                (_%K201937201954%_
                                                 _%exprs201962%_))
                                              (_%else201935201949%_)))
                                        (_%else201935201949%_))))))
                          (if (pair? _%code201893201919%_)
                              (let ((_%hd201898201967%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code201893201919%_)))
                                    (_%tl201899201969%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code201893201919%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd201898201967%_ 'let))
                                    (if (pair? _%tl201899201969%_)
                                        (let ((_%hd201900201972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl201899201969%_)))
                                              (_%tl201901201974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl201899201969%_))))
                                          (if (pair? _%hd201900201972%_)
                                              (let ((_%hd201912201977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd201900201972%_)))
                                                    (_%tl201913201979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd201900201972%_))))
                                                (if (pair? _%hd201912201977%_)
                                                    (let ((_%hd201914201982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd201912201977%_)))
                                                          (_%tl201915201984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd201912201977%_))))
                                                      (let ((_%id201987%_
                                                             _%hd201914201982%_))
                                                        (if (pair? _%tl201915201984%_)
                                                            (let ((_%hd201916201989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl201915201984%_)))
                          (_%tl201917201991%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201915201984%_))))
                      (let ((_%expr1201994%_ _%hd201916201989%_))
                        (if (null? _%tl201917201991%_)
                            (if (null? _%tl201913201979%_)
                                (if (pair? _%tl201901201974%_)
                                    (let ((_%hd201902201996%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl201901201974%_)))
                                          (_%tl201903201998%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl201901201974%_))))
                                      (if (pair? _%hd201902201996%_)
                                          (let ((_%hd201904202001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd201902201996%_)))
                                                (_%tl201905202003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd201902201996%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201904202001%_
                                                         'if))
                                                (if (pair? _%tl201905202003%_)
                                                    (let ((_%hd201906202006%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl201905202003%_)))
                                                          (_%tl201907202008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl201905202003%_))))
                                                      (if ((lambda (_%g202010202012%_)
                                                             (eq? _%g202010202012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id201987%_))
                   _%hd201906202006%_)
                  (if (pair? _%tl201907202008%_)
                      (let ((_%hd201908202015%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl201907202008%_)))
                            (_%tl201909202017%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl201907202008%_))))
                        (if ((lambda (_%g202019202021%_)
                               (eq? _%g202019202021%_ _%id201987%_))
                             _%hd201908202015%_)
                            (if (pair? _%tl201909202017%_)
                                (let ((_%hd201910202024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201909202017%_)))
                                      (_%tl201911202026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201909202017%_))))
                                  (let ((_%expr2202029%_ _%hd201910202024%_))
                                    (if (null? _%tl201911202026%_)
                                        (if (null? _%tl201903201998%_)
                                            (_%K201897201964%_
                                             _%expr2202029%_
                                             _%expr1201994%_
                                             _%id201987%_)
                                            (_%else201895201927%_))
                                        (_%else201895201927%_))))
                                (_%else201895201927%_))
                            (_%else201895201927%_)))
                      (_%else201895201927%_))
                  (_%else201895201927%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201895201927%_))
                                                (_%else201895201927%_)))
                                          (_%else201895201927%_)))
                                    (_%else201895201927%_))
                                (_%else201895201927%_))
                            (_%else201895201927%_))))
                    (_%else201895201927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201895201927%_)))
                                              (_%else201895201927%_)))
                                        (_%else201895201927%_))
                                    (_%else201895201927%_)))
                              (_%else201895201927%_)))
                        _%code201892%_)))
                 (_%simplify-let201289%_
                  (lambda (_%code201591%_)
                    (let* ((_%code201592201664%_ _%code201591%_)
                           (_%else201597201672%_ (lambda () _%code201591%_)))
                      (let ((_%K201656201872%_
                             (lambda (_%expr201870%_) _%expr201870%_))
                            (_%K201639201818%_
                             (lambda (_%body201814%_
                                      _%expr201815%_
                                      _%id201816%_)
                               (cons 'let
                                     (cons (cons (cons _%id201816%_
                                                       (cons _%expr201815%_
                                                             '()))
                                                 '())
                                           _%body201814%_))))
                            (_%K201616201742%_
                             (lambda (_%body201736%_
                                      _%expr2201737%_
                                      _%id2201738%_
                                      _%expr1201739%_
                                      _%id1201740%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201740%_
                                                       (cons _%expr1201739%_
                                                             '()))
                                                 (cons (cons _%id2201738%_
                                                             (cons _%expr2201737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body201736%_))))
                            (_%K201599201681%_
                             (lambda (_%body201676%_
                                      _%bind201677%_
                                      _%expr1201678%_
                                      _%id1201679%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201679%_
                                                       (cons _%expr1201678%_
                                                             '()))
                                                 _%bind201677%_)
                                           _%body201676%_)))))
                        (if (pair? _%code201592201664%_)
                            (let ((_%tl201658201877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code201592201664%_)))
                                  (_%hd201657201875%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code201592201664%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd201657201875%_ 'let))
                                  (if (pair? _%tl201658201877%_)
                                      (let ((_%tl201660201882%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl201658201877%_)))
                                            (_%hd201659201880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl201658201877%_))))
                                        (if (null? _%hd201659201880%_)
                                            (if (pair? _%tl201660201882%_)
                                                (let ((_%tl201662201887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl201660201882%_)))
                                                      (_%hd201661201885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl201660201882%_))))
                                                  (if (null? _%tl201662201887%_)
                                                      (let ((_%expr201890%_
                                                             _%hd201661201885%_))
                                                        (_%K201656201872%_
                                                         _%expr201890%_))
                                                      (_%else201597201672%_)))
                                                (_%else201597201672%_))
                                            (if (pair? _%hd201659201880%_)
                                                (let ((_%tl201651201833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd201659201880%_)))
                                                      (_%hd201650201831%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd201659201880%_))))
                                                  (if (pair? _%hd201650201831%_)
                                                      (let ((_%tl201653201838%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd201650201831%_)))
                    (_%hd201652201836%_
                     (let () (declare (not safe)) (##car _%hd201650201831%_))))
                (if (pair? _%tl201653201838%_)
                    (let ((_%tl201655201845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201653201838%_)))
                          (_%hd201654201843%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl201653201838%_))))
                      (if (null? _%tl201655201845%_)
                          (if (null? _%tl201651201833%_)
                              (if (pair? _%tl201660201882%_)
                                  (let ((_%tl201645201852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201660201882%_)))
                                        (_%hd201644201850%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201660201882%_))))
                                    (if (pair? _%hd201644201850%_)
                                        (let ((_%tl201647201857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd201644201850%_)))
                                              (_%hd201646201855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd201644201850%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201646201855%_
                                                       'let))
                                              (if (pair? _%tl201647201857%_)
                                                  (let ((_%tl201649201862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201647201857%_)))
                                                        (_%hd201648201860%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201647201857%_))))
                                                    (if (null? _%hd201648201860%_)
                                                        (if (null? _%tl201645201852%_)
                                                            (let ((_%id201841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd201652201836%_)
                          (_%expr201848%_ _%hd201654201843%_)
                          (_%body201865%_ _%tl201649201862%_))
                      (_%K201639201818%_
                       _%body201865%_
                       _%expr201848%_
                       _%id201841%_))
                    (_%else201597201672%_))
                (if (pair? _%hd201648201860%_)
                    (let ((_%tl201628201791%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd201648201860%_)))
                          (_%hd201627201789%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd201648201860%_))))
                      (if (pair? _%hd201627201789%_)
                          (let ((_%tl201630201796%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd201627201789%_)))
                                (_%hd201629201794%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd201627201789%_))))
                            (if (pair? _%tl201630201796%_)
                                (let ((_%tl201632201803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201630201796%_)))
                                      (_%hd201631201801%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201630201796%_))))
                                  (if (null? _%tl201632201803%_)
                                      (if (null? _%tl201628201791%_)
                                          (if (null? _%tl201645201852%_)
                                              (let ((_%id1201765%_
                                                     _%hd201652201836%_)
                                                    (_%expr1201772%_
                                                     _%hd201654201843%_)
                                                    (_%id2201799%_
                                                     _%hd201629201794%_)
                                                    (_%expr2201806%_
                                                     _%hd201631201801%_)
                                                    (_%body201808%_
                                                     _%tl201649201862%_))
                                                (_%K201616201742%_
                                                 _%body201808%_
                                                 _%expr2201806%_
                                                 _%id2201799%_
                                                 _%expr1201772%_
                                                 _%id1201765%_))
                                              (_%else201597201672%_))
                                          (_%else201597201672%_))
                                      (_%else201597201672%_)))
                                (_%else201597201672%_)))
                          (_%else201597201672%_)))
                    (_%else201597201672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201597201672%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd201646201855%_
                                                           'let*))
                                                  (if (pair? _%tl201647201857%_)
                                                      (let ((_%tl201609201725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl201647201857%_)))
                    (_%hd201608201723%_
                     (let () (declare (not safe)) (##car _%tl201647201857%_))))
                (if (null? _%tl201645201852%_)
                    (let ((_%id1201704%_ _%hd201652201836%_)
                          (_%expr1201711%_ _%hd201654201843%_)
                          (_%bind201728%_ _%hd201608201723%_)
                          (_%body201730%_ _%tl201609201725%_))
                      (_%K201599201681%_
                       _%body201730%_
                       _%bind201728%_
                       _%expr1201711%_
                       _%id1201704%_))
                    (_%else201597201672%_)))
              (_%else201597201672%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201597201672%_))))
                                        (_%else201597201672%_)))
                                  (_%else201597201672%_))
                              (_%else201597201672%_))
                          (_%else201597201672%_)))
                    (_%else201597201672%_)))
              (_%else201597201672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else201597201672%_))))
                                      (_%else201597201672%_))
                                  (_%else201597201672%_)))
                            (_%else201597201672%_))))))
                 (_%generate-values201290%_
                  (lambda (_%hd201404%_ _%body201405%_)
                    (let _%lp201407%_ ((_%rest201409%_ _%hd201404%_)
                                       (_%bind201410%_ '())
                                       (_%check201411%_ '())
                                       (_%post201412%_ '()))
                      (let* ((_%__stx205457205458%_ _%rest201409%_)
                             (_%g201415201426%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205457205458%_)))))
                        (let ((_%__kont205459205460%_
                               (lambda (_%g201417201453%_ _%g201418201454%_)
                                 (let* ((_%__stx205413205414%_
                                         _%g201418201454%_)
                                        (_%g201469201494%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205413205414%_)))))
                                   (let ((_%__kont205415205416%_
                                          (lambda (_%g201471201567%_
                                                   _%g201472201568%_)
                                            (let ((_%eid201582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201472201568%_)))
                                                  (_%expr201583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201283%_
                                                      _%g201471201567%_))))
                                              (_%lp201407%_
                                               _%g201417201453%_
                                               (cons (cons _%eid201582%_
                                                           (cons _%expr201583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201410%_)
                                               _%check201411%_
                                               _%post201412%_))))
                                         (_%__kont205417205418%_
                                          (lambda (_%g201482201515%_
                                                   _%g201483201516%_)
                                            (let* ((_%vals201529%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201531%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201529%_
                                                     _%g201483201516%_
                                                     _%g201482201515%_))
                                                   (_%refs201533%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201529%_
                                                     _%g201483201516%_))
                                                   (_%expr201535%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201283%_
                                                       _%g201482201515%_))))
                                              (_%lp201407%_
                                               _%g201417201453%_
                                               (cons (cons _%vals201529%_
                                                           (cons _%expr201535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201410%_)
                                               (cons _%check-values201531%_
                                                     _%check201411%_)
                                               (cons _%refs201533%_
                                                     _%post201412%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205413205414%_))
                                         (let ((_%e201473201543%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205413205414%_))))
                                           (let ((_%tl201475201548%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201473201543%_)))
                                                 (_%hd201474201546%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201473201543%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201474201546%_))
                                                 (let ((_%e201476201551%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201474201546%_))))
                                                   (let ((_%tl201478201556%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201476201551%_)))
                                                         (_%hd201477201554%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201476201551%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201478201556%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201475201548%_))
                     (let ((_%e201479201559%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201475201548%_))))
                       (let ((_%tl201481201564%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201479201559%_)))
                             (_%hd201480201562%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201479201559%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201481201564%_))
                             (_%__kont205415205416%_
                              _%hd201480201562%_
                              _%hd201477201554%_)
                             (let ()
                               (declare (not safe))
                               (_%g201469201494%_)))))
                     (let () (declare (not safe)) (_%g201469201494%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201475201548%_))
                     (let ((_%e201487201507%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201475201548%_))))
                       (let ((_%tl201489201512%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201487201507%_)))
                             (_%hd201488201510%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201487201507%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201489201512%_))
                             (_%__kont205417205418%_
                              _%hd201488201510%_
                              _%hd201474201546%_)
                             (let ()
                               (declare (not safe))
                               (_%g201469201494%_)))))
                     (let () (declare (not safe)) (_%g201469201494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201475201548%_))
                                                     (let ((_%e201487201507%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201475201548%_))))
                                                       (let ((_%tl201489201512%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201487201507%_)))
                     (_%hd201488201510%_
                      (let () (declare (not safe)) (##car _%e201487201507%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201489201512%_))
                     (_%__kont205417205418%_
                      _%hd201488201510%_
                      _%hd201474201546%_)
                     (let () (declare (not safe)) (_%g201469201494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201469201494%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201469201494%_)))))))
                              (_%__kont205461205462%_
                               (lambda ()
                                 (let* ((_%body201433%_
                                         (if _%compiled-body?201285%_
                                             _%body201405%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201283%_
                                                _%body201405%_))))
                                        (_%body201435%_
                                         (_%generate-values-post201291%_
                                          _%post201412%_
                                          _%body201433%_))
                                        (_%body201437%_
                                         (_%generate-values-check201292%_
                                          _%check201411%_
                                          _%body201435%_)))
                                   (cons 'let
                                         (cons (reverse _%bind201410%_)
                                               (cons _%body201437%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205457205458%_))
                              (let ((_%e201419201445%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205457205458%_))))
                                (let ((_%tl201421201450%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201419201445%_)))
                                      (_%hd201420201448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201419201445%_))))
                                  (_%__kont205459205460%_
                                   _%tl201421201450%_
                                   _%hd201420201448%_)))
                              (_%__kont205461205462%_)))))))
                 (_%generate-values-post201291%_
                  (lambda (_%post201363%_ _%body201364%_)
                    (let _%lp201366%_ ((_%rest201368%_ _%post201363%_)
                                       (_%body201369%_ _%body201364%_))
                      (let* ((_%rest201370201378%_ _%rest201368%_)
                             (_%else201372201386%_ (lambda () _%body201369%_))
                             (_%K201374201392%_
                              (lambda (_%rest201389%_ _%bind201390%_)
                                (_%lp201366%_
                                 _%rest201389%_
                                 (cons 'let
                                       (cons _%bind201390%_
                                             (cons _%body201369%_ '())))))))
                        (if (pair? _%rest201370201378%_)
                            (let ((_%hd201375201395%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201370201378%_)))
                                  (_%tl201376201397%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201370201378%_))))
                              (let* ((_%bind201400%_ _%hd201375201395%_)
                                     (_%rest201402%_ _%tl201376201397%_))
                                (_%K201374201392%_
                                 _%rest201402%_
                                 _%bind201400%_)))
                            (_%else201372201386%_))))))
                 (_%generate-values-check201292%_
                  (lambda (_%check201360%_ _%body201361%_)
                    (cons 'begin
                          (let ((__tmp206305 (cons _%body201361%_ '()))
                                (__tmp206304 (reverse _%check201360%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206305 __tmp206304))))))
          (let* ((_%g201294201311%_
                  (lambda (_%g201295201308%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201295201308%_))))
                 (_%g201293201357%_
                  (lambda (_%g201295201314%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201295201314%_))
                        (let ((_%e201298201316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201295201314%_))))
                          (let ((_%hd201299201319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201298201316%_)))
                                (_%tl201300201321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201298201316%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201300201321%_))
                                (let ((_%e201301201324%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201300201321%_))))
                                  (let ((_%hd201302201327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201301201324%_)))
                                        (_%tl201303201329%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201301201324%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201303201329%_))
                                        (let ((_%e201304201332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201303201329%_))))
                                          (let ((_%hd201305201335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201304201332%_)))
                                                (_%tl201306201337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201304201332%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201306201337%_))
                                                ((lambda (_%g201296201340%_
                                                          _%g201297201341%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201297201341%_)
                                                       (_%generate-simple201287%_
                                                        _%g201297201341%_
                                                        _%g201296201340%_)
                                                       (_%generate-values201290%_
                                                        _%g201297201341%_
                                                        _%g201296201340%_)))
                                                 _%hd201305201335%_
                                                 _%hd201302201327%_)
                                                (_%g201294201311%_
                                                 _%g201295201314%_))))
                                        (_%g201294201311%_
                                         _%g201295201314%_))))
                                (_%g201294201311%_ _%g201295201314%_))))
                        (_%g201294201311%_ _%g201295201314%_)))))
            (_%g201293201357%_ _%stx201284%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self202037%_ _%stx202038%_)
        (let ((_%compiled-body?202040%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self202037%_
           _%stx202038%_
           _%compiled-body?202040%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g206306_
        (let ((_g206307_ (let () (declare (not safe)) (##length _g206306_))))
          (cond ((let () (declare (not safe)) (##fx= _g206307_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g206306_))
                ((let () (declare (not safe)) (##fx= _g206307_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g206306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g206306_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals201177%_ _%hd201178%_)
        (let _%lp201180%_ ((_%rest201182%_ _%hd201178%_)
                           (_%k201183%_ '0)
                           (_%r201184%_ '()))
          (let* ((_%__stx205471205472%_ _%rest201182%_)
                 (_%g201189201206%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205471205472%_)))))
            (let ((_%__kont205473205474%_
                   (lambda (_%g201191201269%_)
                     (_%lp201180%_
                      _%g201191201269%_
                      (let () (declare (not safe)) (##fx+ _%k201183%_ '1))
                      _%r201184%_)))
                  (_%__kont205475205476%_
                   (lambda (_%g201196201242%_ _%g201197201243%_)
                     (_%lp201180%_
                      _%g201196201242%_
                      (let () (declare (not safe)) (##fx+ _%k201183%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g201197201243%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals201177%_
                                         _%k201183%_
                                         _%g201196201242%_)
                                        '()))
                            _%r201184%_))))
                  (_%__kont205477205478%_
                   (lambda (_%g201201201218%_)
                     (let ((__tmp206308
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g201201201218%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals201177%_
                                               _%k201183%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp206308 _%r201184%_))))
                  (_%__kont205479205480%_ (lambda () (reverse _%r201184%_))))
              (let ((_%g201187201229%_
                     (lambda ()
                       (let ((_%g201201201218%_ _%__stx205471205472%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g201201201218%_))
                             (_%__kont205477205478%_ _%g201201201218%_)
                             (_%__kont205479205480%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx205471205472%_))
                    (let ((_%e201192201258%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx205471205472%_))))
                      (let ((_%tl201194201263%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201192201258%_)))
                            (_%hd201193201261%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201192201258%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd201193201261%_))
                            (let ((_%e201195201266%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd201193201261%_))))
                              (if (equal? _%e201195201266%_ '#f)
                                  (_%__kont205473205474%_ _%tl201194201263%_)
                                  (_%__kont205475205476%_
                                   _%tl201194201263%_
                                   _%hd201193201261%_)))
                            (_%__kont205475205476%_
                             _%tl201194201263%_
                             _%hd201193201261%_))))
                    (let () (declare (not safe)) (_%g201187201229%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self200856%_ _%stx200857%_ _%compiled-body?200858%_)
        (letrec ((_%generate-simple200860%_
                  (lambda (_%hd201162%_ _%body201163%_)
                    (gxc#generate-runtime-simple-let
                     _%self200856%_
                     'letrec
                     _%hd201162%_
                     _%body201163%_
                     _%compiled-body?200858%_)))
                 (_%generate-values200861%_
                  (lambda (_%hd200941%_ _%body200942%_)
                    (let _%lp200944%_ ((_%rest200946%_ _%hd200941%_)
                                       (_%bind200947%_ '())
                                       (_%check200948%_ '())
                                       (_%post200949%_ '()))
                      (let* ((_%__stx205545205546%_ _%rest200946%_)
                             (_%g200952200963%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205545205546%_)))))
                        (let ((_%__kont205547205548%_
                               (lambda (_%g200954200990%_ _%g200955200991%_)
                                 (let* ((_%__stx205501205502%_
                                         _%g200955200991%_)
                                        (_%g201006201031%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205501205502%_)))))
                                   (let ((_%__kont205503205504%_
                                          (lambda (_%g201008201138%_
                                                   _%g201009201139%_)
                                            (let ((_%eid201153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201009201139%_)))
                                                  (_%expr201154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200856%_
                                                      _%g201008201138%_))))
                                              (_%lp200944%_
                                               _%g200954200990%_
                                               (cons (cons _%eid201153%_
                                                           (cons _%expr201154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200947%_)
                                               _%check200948%_
                                               _%post200949%_))))
                                         (_%__kont205505205506%_
                                          (lambda (_%g201019201052%_
                                                   _%g201020201053%_)
                                            (let* ((_%vals201066%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201068%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201066%_
                                                     _%g201020201053%_
                                                     _%g201019201052%_))
                                                   (_%refs201070%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201066%_
                                                     _%g201020201053%_))
                                                   (_%expr201072%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200856%_
                                                       _%g201019201052%_))))
                                              (_%lp200944%_
                                               _%g200954200990%_
                                               (let ((__tmp206310
                                                      (cons (cons _%vals201066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr201072%_ '()))
                    _%bind200947%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp206309
                                                      (map (lambda (_%e201074201076%_)
                                                             (let* ((_%e201074201078201087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e201074201076%_)
                            (_%E201080201091%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e201074201078201087%_
                                        '([eid _])))
                               '#!void))
                            (_%K201081201096%_
                             (lambda (_%eid201094%_)
                               (cons _%eid201094%_ (cons '#!void '())))))
                       (if (pair? _%e201074201078201087%_)
                           (let ((_%hd201082201099%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201074201078201087%_)))
                                 (_%tl201083201101%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201074201078201087%_))))
                             (let ((_%eid201104%_ _%hd201082201099%_))
                               (if (pair? _%tl201083201101%_)
                                   (let ((_%tl201085201106%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl201083201101%_))))
                                     (if (null? _%tl201085201106%_)
                                         (_%K201081201096%_ _%eid201104%_)
                                         (_%E201080201091%_)))
                                   (_%E201080201091%_))))
                           (_%E201080201091%_))))
                   _%refs201070%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp206310
                                                  __tmp206309))
                                               (cons _%check-values201068%_
                                                     _%check200948%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs201070%_
                                                  _%post200949%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205501205502%_))
                                         (let ((_%e201010201114%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205501205502%_))))
                                           (let ((_%tl201012201119%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201010201114%_)))
                                                 (_%hd201011201117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201010201114%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201011201117%_))
                                                 (let ((_%e201013201122%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201011201117%_))))
                                                   (let ((_%tl201015201127%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201013201122%_)))
                                                         (_%hd201014201125%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201013201122%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201015201127%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201012201119%_))
                     (let ((_%e201016201130%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201012201119%_))))
                       (let ((_%tl201018201135%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201016201130%_)))
                             (_%hd201017201133%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201016201130%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201018201135%_))
                             (_%__kont205503205504%_
                              _%hd201017201133%_
                              _%hd201014201125%_)
                             (let ()
                               (declare (not safe))
                               (_%g201006201031%_)))))
                     (let () (declare (not safe)) (_%g201006201031%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201012201119%_))
                     (let ((_%e201024201044%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201012201119%_))))
                       (let ((_%tl201026201049%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201024201044%_)))
                             (_%hd201025201047%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201024201044%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201026201049%_))
                             (_%__kont205505205506%_
                              _%hd201025201047%_
                              _%hd201011201117%_)
                             (let ()
                               (declare (not safe))
                               (_%g201006201031%_)))))
                     (let () (declare (not safe)) (_%g201006201031%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201012201119%_))
                                                     (let ((_%e201024201044%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201012201119%_))))
                                                       (let ((_%tl201026201049%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201024201044%_)))
                     (_%hd201025201047%_
                      (let () (declare (not safe)) (##car _%e201024201044%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201026201049%_))
                     (_%__kont205505205506%_
                      _%hd201025201047%_
                      _%hd201011201117%_)
                     (let () (declare (not safe)) (_%g201006201031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201006201031%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201006201031%_)))))))
                              (_%__kont205549205550%_
                               (lambda ()
                                 (let* ((_%body200970%_
                                         (if _%compiled-body?200858%_
                                             _%body200942%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200856%_
                                                _%body200942%_))))
                                        (_%body200972%_
                                         (_%generate-values-post200863%_
                                          _%post200949%_
                                          _%body200970%_))
                                        (_%body200974%_
                                         (_%generate-values-check200862%_
                                          _%check200948%_
                                          _%body200972%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind200947%_)
                                               (cons _%body200974%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205545205546%_))
                              (let ((_%e200956200982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205545205546%_))))
                                (let ((_%tl200958200987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200956200982%_)))
                                      (_%hd200957200985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200956200982%_))))
                                  (_%__kont205547205548%_
                                   _%tl200958200987%_
                                   _%hd200957200985%_)))
                              (_%__kont205549205550%_)))))))
                 (_%generate-values-check200862%_
                  (lambda (_%check200938%_ _%body200939%_)
                    (cons 'begin
                          (let ((__tmp206312 (cons _%body200939%_ '()))
                                (__tmp206311 (reverse _%check200938%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206312 __tmp206311)))))
                 (_%generate-values-post200863%_
                  (lambda (_%post200931%_ _%body200932%_)
                    (cons 'begin
                          (let ((__tmp206316 (cons _%body200932%_ '()))
                                (__tmp206313
                                 (let ((__tmp206315
                                        (lambda (_%g200933200935%_)
                                          (cons 'set! _%g200933200935%_)))
                                       (__tmp206314 (reverse _%post200931%_)))
                                   (declare (not safe))
                                   (##map __tmp206315 __tmp206314))))
                            (declare (not safe))
                            (foldr__0 cons __tmp206316 __tmp206313))))))
          (let* ((_%g200865200882%_
                  (lambda (_%g200866200879%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200866200879%_))))
                 (_%g200864200928%_
                  (lambda (_%g200866200885%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200866200885%_))
                        (let ((_%e200869200887%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200866200885%_))))
                          (let ((_%hd200870200890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200869200887%_)))
                                (_%tl200871200892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200869200887%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200871200892%_))
                                (let ((_%e200872200895%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200871200892%_))))
                                  (let ((_%hd200873200898%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200872200895%_)))
                                        (_%tl200874200900%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200872200895%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200874200900%_))
                                        (let ((_%e200875200903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200874200900%_))))
                                          (let ((_%hd200876200906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200875200903%_)))
                                                (_%tl200877200908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200875200903%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200877200908%_))
                                                ((lambda (_%g200867200911%_
                                                          _%g200868200912%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200868200912%_)
                                                       (_%generate-simple200860%_
                                                        _%g200868200912%_
                                                        _%g200867200911%_)
                                                       (_%generate-values200861%_
                                                        _%g200868200912%_
                                                        _%g200867200911%_)))
                                                 _%hd200876200906%_
                                                 _%hd200873200898%_)
                                                (_%g200865200882%_
                                                 _%g200866200885%_))))
                                        (_%g200865200882%_
                                         _%g200866200885%_))))
                                (_%g200865200882%_ _%g200866200885%_))))
                        (_%g200865200882%_ _%g200866200885%_)))))
            (_%g200864200928%_ _%stx200857%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self201168%_ _%stx201169%_)
        (let ((_%compiled-body?201171%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self201168%_
           _%stx201169%_
           _%compiled-body?201171%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g206317_
        (let ((_g206318_ (let () (declare (not safe)) (##length _g206317_))))
          (cond ((let () (declare (not safe)) (##fx= _g206318_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g206317_))
                ((let () (declare (not safe)) (##fx= _g206318_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g206317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g206317_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self200437%_ _%stx200438%_)
        (letrec ((_%generate-values200440%_
                  (lambda (_%hd200683%_ _%body200684%_)
                    (let _%lp200686%_ ((_%rest200688%_ _%hd200683%_)
                                       (_%bind200689%_ '()))
                      (let* ((_%rest200690200698%_ _%rest200688%_)
                             (_%else200692200709%_
                              (lambda ()
                                (let ((_%bind200706%_ (reverse _%bind200689%_))
                                      (_%body200707%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self200437%_
                                          _%body200684%_))))
                                  (cons 'letrec*
                                        (cons _%bind200706%_
                                              (cons _%body200707%_ '()))))))
                             (_%K200694200843%_
                              (lambda (_%rest200712%_ _%hd-bind200713%_)
                                (let* ((_%__stx205559205560%_
                                        _%hd-bind200713%_)
                                       (_%g200716200741%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205559205560%_)))))
                                  (let ((_%__kont205561205562%_
                                         (lambda (_%g200718200822%_
                                                  _%g200719200823%_)
                                           (let ((_%eid200837%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g200719200823%_)))
                                                 (_%expr200838%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self200437%_
                                                     _%g200718200822%_))))
                                             (_%lp200686%_
                                              _%rest200712%_
                                              (cons (cons _%eid200837%_
                                                          (cons _%expr200838%_
                                                                '()))
                                                    _%bind200689%_)))))
                                        (_%__kont205563205564%_
                                         (lambda (_%g200729200762%_
                                                  _%g200730200763%_)
                                           (let* ((_%vals200782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp200784%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values200786%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp200784%_
                                                    _%g200730200763%_
                                                    _%g200729200762%_))
                                                  (_%refs200788%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals200782%_
                                                    _%g200730200763%_))
                                                  (_%expr200790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200437%_
                                                      _%g200729200762%_))))
                                             (_%lp200686%_
                                              _%rest200712%_
                                              (let ((__tmp206319
                                                     (cons (cons _%vals200782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp200784%_
                                                       (cons _%expr200790%_
                                                             '()))
                                                 '())
                                           (cons _%check-values200786%_
                                                 (cons _%tmp200784%_ '()))))
                               '()))
                   _%bind200689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp206319
                                                 _%refs200788%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205559205560%_))
                                        (let ((_%e200720200798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205559205560%_))))
                                          (let ((_%tl200722200803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200720200798%_)))
                                                (_%hd200721200801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200720200798%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200721200801%_))
                                                (let ((_%e200723200806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200721200801%_))))
                                                  (let ((_%tl200725200811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200723200806%_)))
                                                        (_%hd200724200809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200723200806%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200725200811%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200722200803%_))
                                                            (let ((_%e200726200814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200722200803%_))))
                      (let ((_%tl200728200819%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200726200814%_)))
                            (_%hd200727200817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200726200814%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200728200819%_))
                            (_%__kont205561205562%_
                             _%hd200727200817%_
                             _%hd200724200809%_)
                            (let ()
                              (declare (not safe))
                              (_%g200716200741%_)))))
                    (let () (declare (not safe)) (_%g200716200741%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200722200803%_))
                    (let ((_%e200734200754%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200722200803%_))))
                      (let ((_%tl200736200759%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200734200754%_)))
                            (_%hd200735200757%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200734200754%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200736200759%_))
                            (_%__kont205563205564%_
                             _%hd200735200757%_
                             _%hd200721200801%_)
                            (let ()
                              (declare (not safe))
                              (_%g200716200741%_)))))
                    (let () (declare (not safe)) (_%g200716200741%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200722200803%_))
                                                    (let ((_%e200734200754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200722200803%_))))
                                                      (let ((_%tl200736200759%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200734200754%_)))
                    (_%hd200735200757%_
                     (let () (declare (not safe)) (##car _%e200734200754%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200736200759%_))
                    (_%__kont205563205564%_
                     _%hd200735200757%_
                     _%hd200721200801%_)
                    (let () (declare (not safe)) (_%g200716200741%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200716200741%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200716200741%_))))))))
                        (if (pair? _%rest200690200698%_)
                            (let ((_%hd200695200846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200690200698%_)))
                                  (_%tl200696200848%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200690200698%_))))
                              (let* ((_%hd-bind200851%_ _%hd200695200846%_)
                                     (_%rest200853%_ _%tl200696200848%_))
                                (_%K200694200843%_
                                 _%rest200853%_
                                 _%hd-bind200851%_)))
                            (_%else200692200709%_))))))
                 (_%generate-letrec?200441%_
                  (lambda (_%hd200573%_)
                    (let _%lp200575%_ ((_%rest200577%_ _%hd200573%_))
                      (let* ((_%rest200578200586%_ _%rest200577%_)
                             (_%else200580200594%_ (lambda () '#t))
                             (_%K200582200671%_
                              (lambda (_%rest200597%_ _%hd-bind200598%_)
                                (let* ((_%g200600200617%_
                                        (lambda (_%g200601200614%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g200601200614%_))))
                                       (_%g200599200668%_
                                        (lambda (_%g200601200620%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g200601200620%_))
                                              (let ((_%e200604200622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g200601200620%_))))
                                                (let ((_%hd200605200625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200604200622%_)))
                                                      (_%tl200606200627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200604200622%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd200605200625%_))
                                                      (let ((_%e200607200630%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd200605200625%_))))
                (let ((_%hd200608200633%_
                       (let () (declare (not safe)) (##car _%e200607200630%_)))
                      (_%tl200609200635%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200607200630%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200609200635%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200606200627%_))
                          (let ((_%e200610200638%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200606200627%_))))
                            (let ((_%hd200611200641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200610200638%_)))
                                  (_%tl200612200643%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200610200638%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200612200643%_))
                                  ((lambda (_%g200602200646%_
                                            _%g200603200647%_)
                                     (if (_%is-lambda-expr?200442%_
                                          _%g200602200646%_)
                                         (_%lp200575%_ _%rest200597%_)
                                         '#f))
                                   _%hd200611200641%_
                                   _%hd200608200633%_)
                                  (_%g200600200617%_ _%g200601200620%_))))
                          (_%g200600200617%_ _%g200601200620%_))
                      (_%g200600200617%_ _%g200601200620%_))))
              (_%g200600200617%_ _%g200601200620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200600200617%_
                                               _%g200601200620%_)))))
                                  (_%g200599200668%_ _%hd-bind200598%_)))))
                        (if (pair? _%rest200578200586%_)
                            (let ((_%hd200583200674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200578200586%_)))
                                  (_%tl200584200676%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200578200586%_))))
                              (let* ((_%hd-bind200679%_ _%hd200583200674%_)
                                     (_%rest200681%_ _%tl200584200676%_))
                                (_%K200582200671%_
                                 _%rest200681%_
                                 _%hd-bind200679%_)))
                            (_%else200580200594%_))))))
                 (_%is-lambda-expr?200442%_
                  (lambda (_%expr200510%_)
                    (let* ((_%__stx205603205604%_ _%expr200510%_)
                           (_%g200513200527%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205603205604%_)))))
                      (let ((_%__kont205605205606%_
                             (lambda (_%g200515200555%_ _%g200516200556%_)
                               '#t))
                            (_%__kont205607205608%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx205603205604%_))
                            (let ((_%e200517200539%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx205603205604%_))))
                              (let ((_%tl200519200544%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200517200539%_)))
                                    (_%hd200518200542%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200517200539%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200518200542%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd200518200542%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200519200544%_))
                                            (let ((_%e200520200547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200519200544%_))))
                                              (let ((_%tl200522200552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200520200547%_)))
                                                    (_%hd200521200550%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200520200547%_))))
                                                (_%__kont205605205606%_
                                                 _%tl200522200552%_
                                                 _%hd200521200550%_)))
                                            (_%__kont205607205608%_))
                                        (_%__kont205607205608%_))
                                    (_%__kont205607205608%_))))
                            (_%__kont205607205608%_)))))))
          (let* ((_%g200444200461%_
                  (lambda (_%g200445200458%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200445200458%_))))
                 (_%g200443200507%_
                  (lambda (_%g200445200464%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200445200464%_))
                        (let ((_%e200448200466%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200445200464%_))))
                          (let ((_%hd200449200469%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200448200466%_)))
                                (_%tl200450200471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200448200466%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200450200471%_))
                                (let ((_%e200451200474%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200450200471%_))))
                                  (let ((_%hd200452200477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200451200474%_)))
                                        (_%tl200453200479%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200451200474%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200453200479%_))
                                        (let ((_%e200454200482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200453200479%_))))
                                          (let ((_%hd200455200485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200454200482%_)))
                                                (_%tl200456200487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200454200482%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200456200487%_))
                                                ((lambda (_%g200446200490%_
                                                          _%g200447200491%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200447200491%_)
                                                       (if (_%generate-letrec?200441%_
                                                            _%g200447200491%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self200437%_
                                                            'letrec
                                                            _%g200447200491%_
                                                            _%g200446200490%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self200437%_
                                                            'letrec*
                                                            _%g200447200491%_
                                                            _%g200446200490%_
                                                            '#f))
                                                       (_%generate-values200440%_
                                                        _%g200447200491%_
                                                        _%g200446200490%_)))
                                                 _%hd200455200485%_
                                                 _%hd200452200477%_)
                                                (_%g200444200461%_
                                                 _%g200445200464%_))))
                                        (_%g200444200461%_
                                         _%g200445200464%_))))
                                (_%g200444200461%_ _%g200445200464%_))))
                        (_%g200444200461%_ _%g200445200464%_)))))
            (_%g200443200507%_ _%stx200438%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd200374%_)
        (let _%lp200376%_ ((_%rest200378%_ _%hd200374%_))
          (let* ((_%rest200379200395%_ _%rest200378%_)
                 (_%else200382200403%_ (lambda () '#f)))
            (let ((_%K200385200416%_
                   (lambda (_%rest200414%_) (_%lp200376%_ _%rest200414%_)))
                  (_%K200384200408%_ (lambda () '#t)))
              (let ((_%try-match200381200411%_
                     (lambda ()
                       (if (null? _%rest200379200395%_)
                           (_%K200384200408%_)
                           (_%else200382200403%_)))))
                (if (pair? _%rest200379200395%_)
                    (let ((_%tl200387200421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200379200395%_)))
                          (_%hd200386200419%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200379200395%_))))
                      (if (pair? _%hd200386200419%_)
                          (let ((_%tl200389200426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd200386200419%_)))
                                (_%hd200388200424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd200386200419%_))))
                            (if (pair? _%hd200388200424%_)
                                (let ((_%tl200393200429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200388200424%_))))
                                  (if (null? _%tl200393200429%_)
                                      (if (pair? _%tl200389200426%_)
                                          (let ((_%tl200391200432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl200389200426%_))))
                                            (if (null? _%tl200391200432%_)
                                                (let ((_%rest200435%_
                                                       _%tl200387200421%_))
                                                  (_%lp200376%_
                                                   _%rest200435%_))
                                                (_%else200382200403%_)))
                                          (_%else200382200403%_))
                                      (_%else200382200403%_)))
                                (_%else200382200403%_)))
                          (_%else200382200403%_)))
                    (_%try-match200381200411%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self200286%_
               _%form200287%_
               _%hd200288%_
               _%body200289%_
               _%compiled-body?200290%_)
        (letrec ((_%generate1200292%_
                  (lambda (_%bind200331%_)
                    (let* ((_%bind200332200343%_ _%bind200331%_)
                           (_%E200334200346%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind200332200343%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K200335200352%_
                            (lambda (_%expr200349%_ _%id200350%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id200350%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self200286%_
                                             _%expr200349%_))
                                          '())))))
                      (if (pair? _%bind200332200343%_)
                          (let ((_%hd200336200355%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind200332200343%_)))
                                (_%tl200337200357%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind200332200343%_))))
                            (if (pair? _%hd200336200355%_)
                                (let ((_%hd200340200360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd200336200355%_)))
                                      (_%tl200341200362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200336200355%_))))
                                  (let ((_%id200365%_ _%hd200340200360%_))
                                    (if (null? _%tl200341200362%_)
                                        (if (pair? _%tl200337200357%_)
                                            (let ((_%hd200338200367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl200337200357%_)))
                                                  (_%tl200339200369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl200337200357%_))))
                                              (let ((_%expr200372%_
                                                     _%hd200338200367%_))
                                                (if (null? _%tl200339200369%_)
                                                    (_%K200335200352%_
                                                     _%expr200372%_
                                                     _%id200365%_)
                                                    (_%E200334200346%_))))
                                            (_%E200334200346%_))
                                        (_%E200334200346%_))))
                                (_%E200334200346%_)))
                          (_%E200334200346%_))))))
          (let* ((_%bind200294%_ (map _%generate1200292%_ _%hd200288%_))
                 (_%body200296%_
                  (if _%compiled-body?200290%_
                      _%body200289%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self200286%_ _%body200289%_))))
                 (_%body200328%_
                  (let* ((_%body200297200305%_ _%body200296%_)
                         (_%else200299200313%_
                          (lambda () (cons _%body200296%_ '())))
                         (_%K200301200318%_
                          (lambda (_%exprs200316%_) _%exprs200316%_)))
                    (if (pair? _%body200297200305%_)
                        (let ((_%hd200302200321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body200297200305%_)))
                              (_%tl200303200323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body200297200305%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd200302200321%_ 'begin))
                              (let ((_%exprs200326%_ _%tl200303200323%_))
                                (_%K200301200318%_ _%exprs200326%_))
                              (_%else200299200313%_)))
                        (_%else200299200313%_)))))
            (cons _%form200287%_ (cons _%bind200294%_ _%body200328%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self200186%_ _%stx200187%_)
        (letrec ((_%generate1200189%_
                  (lambda (_%datum200241%_)
                    (if (or (null? _%datum200241%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum200241%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum200241%_))
                            (eof-object? _%datum200241%_))
                        _%datum200241%_
                        (if (uninterned-symbol? _%datum200241%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum200241%_
                               '#t))
                            (if (pair? _%datum200241%_)
                                (cons (_%generate1200189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum200241%_)))
                                      (_%generate1200189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum200241%_))))
                                (if (box? _%datum200241%_)
                                    (box (_%generate1200189%_
                                          (unbox _%datum200241%_)))
                                    (if (vector? _%datum200241%_)
                                        (vector-map
                                         _%generate1200189%_
                                         _%datum200241%_)
                                        (if (or (s8vector? _%datum200241%_)
                                                (u8vector? _%datum200241%_)
                                                (s16vector? _%datum200241%_)
                                                (u16vector? _%datum200241%_)
                                                (s32vector? _%datum200241%_)
                                                (u32vector? _%datum200241%_)
                                                (s64vector? _%datum200241%_)
                                                (u64vector? _%datum200241%_)
                                                (f32vector? _%datum200241%_)
                                                (f64vector? _%datum200241%_))
                                            _%datum200241%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx200187%_)))))))))))
          (let* ((_%g200191200204%_
                  (lambda (_%g200192200201%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200192200201%_))))
                 (_%g200190200238%_
                  (lambda (_%g200192200207%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200192200207%_))
                        (let ((_%e200194200209%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200192200207%_))))
                          (let ((_%hd200195200212%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200194200209%_)))
                                (_%tl200196200214%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200194200209%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200196200214%_))
                                (let ((_%e200197200217%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200196200214%_))))
                                  (let ((_%hd200198200220%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200197200217%_)))
                                        (_%tl200199200222%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200197200217%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200199200222%_))
                                        ((lambda (_%g200193200225%_)
                                           (cons 'quote
                                                 (cons (_%generate1200189%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g200193200225%_)))
                                                       '())))
                                         _%hd200198200220%_)
                                        (_%g200191200204%_
                                         _%g200192200207%_))))
                                (_%g200191200204%_ _%g200192200207%_))))
                        (_%g200191200204%_ _%g200192200207%_)))))
            (_%g200190200238%_ _%stx200187%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self199633%_ _%stx199634%_)
        (letrec ((_%compile-call199636%_
                  (lambda (_%rator199923%_ _%rands199924%_)
                    (let ((_%rator199930%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199633%_
                              _%rator199923%_)))
                          (_%rands199931%_
                           (map (lambda (_%g199925199927%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self199633%_
                                     _%g199925199927%_)))
                                _%rands199924%_)))
                      (let* ((_%__stx205650205651%_ _%rator199930%_)
                             (_%g199934199986%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205650205651%_)))))
                        (let ((_%__kont205652205653%_
                               (lambda (_%g199936200106%_
                                        _%g199937200107%_
                                        _%g199938200108%_
                                        _%g199939200109%_)
                                 (if (let ((__tmp206322
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands199931%_)))
                                           (__tmp206320
                                            (length (let ((__tmp206321
                                                           (lambda (_%g200145200148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g200146200150%_)
                     (cons _%g200145200148%_ _%g200146200150%_))))
              (declare (not safe))
              (foldr__0 __tmp206321 '() _%g199938200108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206322 __tmp206320))
                                     (let* ((_%id200153%_ _%g199939200109%_)
                                            (_%args200162%_
                                             (let ((__tmp206323
                                                    (lambda (_%g200154200157%_
                                                             _%g200155200159%_)
                                                      (cons _%g200154200157%_
                                                            _%g200155200159%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206323
                                                '()
                                                _%g199938200108%_)))
                                            (_%body200171%_
                                             (let ((__tmp206324
                                                    (lambda (_%g200163200166%_
                                                             _%g200164200168%_)
                                                      (cons _%g200163200166%_
                                                            _%g200164200168%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206324
                                                '()
                                                _%g199937200107%_)))
                                            (_%init200173%_
                                             (map list
                                                  _%args200162%_
                                                  _%rands199931%_)))
                                       (cons 'let
                                             (cons _%id200153%_
                                                   (cons _%init200173%_
                                                         _%body200171%_))))
                                     (let ((__tmp206325
                                            (let ((__tmp206326
                                                   (lambda (_%g200175200178%_
                                                            _%g200176200180%_)
                                                     (cons _%g200175200178%_
                                                           _%g200176200180%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206326
                                               '()
                                               _%g199938200108%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx199634%_
                                        __tmp206325
                                        _%rands199931%_)))))
                              (_%__kont205658205659%_
                               (lambda ()
                                 (cons _%rator199930%_ _%rands199931%_))))
                          (let ((_%__match205717205718%_
                                 (lambda (_%e199940199998%_
                                          _%hd199941200001%_
                                          _%tl199942200003%_
                                          _%e199943200006%_
                                          _%hd199944200009%_
                                          _%tl199945200011%_
                                          _%e199946200014%_
                                          _%hd199947200017%_
                                          _%tl199948200019%_
                                          _%e199949200022%_
                                          _%hd199950200025%_
                                          _%tl199951200027%_
                                          _%e199952200030%_
                                          _%hd199953200033%_
                                          _%tl199954200035%_
                                          _%e199955200038%_
                                          _%hd199956200041%_
                                          _%tl199957200043%_
                                          _%e199958200046%_
                                          _%hd199959200049%_
                                          _%tl199960200051%_
                                          _%__splice205654205655%_
                                          _%target199961200054%_
                                          _%tl199963200056%_)
                                   (letrec ((_%loop199964200059%_
                                             (lambda (_%hd199962200062%_
                                                      _%arg199968200064%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd199962200062%_))
                                                   (let ((_%e199965200066%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd199962200062%_))))
                                                     (let ((_%lp-tl199967200071%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199965200066%_)))
                                                           (_%lp-hd199966200069%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199965200066%_))))
                                                       (_%loop199964200059%_
                                                        _%lp-tl199967200071%_
                                                        (cons _%lp-hd199966200069%_
                                                              _%arg199968200064%_))))
                                                   (let ((_%arg199969200074%_
                                                          (reverse _%arg199968200064%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl199960200051%_))
                                                         (let ((_%__splice205656205657%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl199960200051%_
                           '0))))
                   (let ((_%tl199972200078%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205656205657%_ '1)))
                         (_%target199970200076%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205656205657%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl199972200078%_))
                         (letrec ((_%loop199973200081%_
                                   (lambda (_%hd199971200084%_
                                            _%body199977200086%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd199971200084%_))
                                         (let ((_%e199974200088%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd199971200084%_))))
                                           (let ((_%lp-tl199976200093%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199974200088%_)))
                                                 (_%lp-hd199975200091%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199974200088%_))))
                                             (_%loop199973200081%_
                                              _%lp-tl199976200093%_
                                              (cons _%lp-hd199975200091%_
                                                    _%body199977200086%_))))
                                         (let ((_%body199978200096%_
                                                (reverse _%body199977200086%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199954200035%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199948200019%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199945200011%_))
                                                       (let ((_%e199979200098%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl199945200011%_))))
                 (let ((_%tl199981200103%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199979200098%_)))
                       (_%hd199980200101%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199979200098%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199981200103%_))
                       (let ((_%g199936200106%_ _%hd199980200101%_)
                             (_%g199937200107%_ _%body199978200096%_)
                             (_%g199938200108%_ _%arg199969200074%_)
                             (_%g199939200109%_ _%hd199950200025%_))
                         (if (eq? _%g199939200109%_ _%g199936200106%_)
                             (_%__kont205652205653%_
                              _%g199936200106%_
                              _%g199937200107%_
                              _%g199938200108%_
                              _%g199939200109%_)
                             (_%__kont205658205659%_)))
                       (_%__kont205658205659%_))))
               (_%__kont205658205659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205658205659%_))
                                               (_%__kont205658205659%_)))))))
                           (_%loop199973200081%_ _%target199970200076%_ '()))
                         (_%__kont205658205659%_))))
                 (_%__kont205658205659%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop199964200059%_
                                      _%target199961200054%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205650205651%_))
                                (let ((_%e199940199998%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205650205651%_))))
                                  (let ((_%tl199942200003%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199940199998%_)))
                                        (_%hd199941200001%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199940199998%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199941200001%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd199941200001%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199942200003%_))
                                                (let ((_%e199943200006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199942200003%_))))
                                                  (let ((_%tl199945200011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199943200006%_)))
                                                        (_%hd199944200009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199943200006%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199944200009%_))
                                                        (let ((_%e199946200014%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199944200009%_))))
                  (let ((_%tl199948200019%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199946200014%_)))
                        (_%hd199947200017%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199946200014%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199947200017%_))
                        (let ((_%e199949200022%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199947200017%_))))
                          (let ((_%tl199951200027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199949200022%_)))
                                (_%hd199950200025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199949200022%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199951200027%_))
                                (let ((_%e199952200030%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199951200027%_))))
                                  (let ((_%tl199954200035%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199952200030%_)))
                                        (_%hd199953200033%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199952200030%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199953200033%_))
                                        (let ((_%e199955200038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199953200033%_))))
                                          (let ((_%tl199957200043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199955200038%_)))
                                                (_%hd199956200041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199955200038%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199956200041%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd199956200041%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199957200043%_))
                                                        (let ((_%e199958200046%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199957200043%_))))
                  (let ((_%tl199960200051%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199958200046%_)))
                        (_%hd199959200049%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199958200046%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd199959200049%_))
                        (let ((_%__splice205654205655%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd199959200049%_
                                  '0))))
                          (let ((_%tl199963200056%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice205654205655%_ '1)))
                                (_%target199961200054%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice205654205655%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199963200056%_))
                                (_%__match205717205718%_
                                 _%e199940199998%_
                                 _%hd199941200001%_
                                 _%tl199942200003%_
                                 _%e199943200006%_
                                 _%hd199944200009%_
                                 _%tl199945200011%_
                                 _%e199946200014%_
                                 _%hd199947200017%_
                                 _%tl199948200019%_
                                 _%e199949200022%_
                                 _%hd199950200025%_
                                 _%tl199951200027%_
                                 _%e199952200030%_
                                 _%hd199953200033%_
                                 _%tl199954200035%_
                                 _%e199955200038%_
                                 _%hd199956200041%_
                                 _%tl199957200043%_
                                 _%e199958200046%_
                                 _%hd199959200049%_
                                 _%tl199960200051%_
                                 _%__splice205654205655%_
                                 _%target199961200054%_
                                 _%tl199963200056%_)
                                (_%__kont205658205659%_))))
                        (_%__kont205658205659%_))))
                (_%__kont205658205659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205658205659%_))
                                                (_%__kont205658205659%_))))
                                        (_%__kont205658205659%_))))
                                (_%__kont205658205659%_))))
                        (_%__kont205658205659%_))))
                (_%__kont205658205659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205658205659%_))
                                            (_%__kont205658205659%_))
                                        (_%__kont205658205659%_))))
                                (_%__kont205658205659%_)))))))))
          (let* ((_%g199638199661%_
                  (lambda (_%g199639199658%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199639199658%_))))
                 (_%g199637199920%_
                  (lambda (_%g199639199664%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199639199664%_))
                        (let ((_%e199642199666%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199639199664%_))))
                          (let ((_%hd199643199669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199642199666%_)))
                                (_%tl199644199671%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199642199666%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199644199671%_))
                                (let ((_%e199645199674%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199644199671%_))))
                                  (let ((_%hd199646199677%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199645199674%_)))
                                        (_%tl199647199679%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199645199674%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl199647199679%_))
                                        (let ((_g206327_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl199647199679%_
                                                  '0))))
                                          (begin
                                            (let ((_g206328_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g206327_)
                                                         (##values-length
                                                          _g206327_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g206328_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g206328_)))
                                            (let ((_%target199648199682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206327_
                                                      0)))
                                                  (_%tl199650199684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206327_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199650199684%_))
                                                  (letrec ((_%loop199651199687%_
                                                            (lambda (_%hd199649199690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand199655199692%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199649199690%_))
                          (let ((_%e199652199694%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199649199690%_))))
                            (let ((_%lp-hd199653199697%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199652199694%_)))
                                  (_%lp-tl199654199699%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199652199694%_))))
                              (_%loop199651199687%_
                               _%lp-tl199654199699%_
                               (cons _%lp-hd199653199697%_
                                     _%rand199655199692%_))))
                          (let ((_%rand199656199702%_
                                 (reverse _%rand199655199692%_)))
                            ((lambda (_%g199640199704%_ _%g199641199705%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call199636%_
                                    _%g199641199705%_
                                    (let ((__tmp206329
                                           (lambda (_%g199722199725%_
                                                    _%g199723199727%_)
                                             (cons _%g199722199725%_
                                                   _%g199723199727%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp206329
                                       '()
                                       _%g199640199704%_)))
                                   (let* ((_%__stx205766205767%_
                                           _%g199641199705%_)
                                          (_%g199731199743%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx205766205767%_)))))
                                     (let ((_%__kont205768205769%_
                                            (lambda ()
                                              (let ((_%f199780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self199633%_
                                                        _%g199641199705%_))))
                                                (if (and (let ((__tmp206330
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f199780%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp206330))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f199780%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp199782%_ ((_%rest199785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp206332
                                                (lambda (_%g199902199905%_
                                                         _%g199903199907%_)
                                                  (cons _%g199902199905%_
                                                        _%g199903199907%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp206332
                                            '()
                                            _%g199640199704%_))))
                               (_%bind199787%_ '())
                               (_%args199788%_ '()))
              (let* ((_%rest199789199797%_ _%rest199785%_)
                     (_%else199791199805%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind199787%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f199780%_
                                                      _%args199788%_)
                                                '()))))))
                     (_%K199793199891%_
                      (lambda (_%rest199808%_ _%e199809%_)
                        (let* ((_%__stx205720205721%_ _%e199809%_)
                               (_%g199814199832%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx205720205721%_)))))
                          (let ((_%__kont205722205723%_
                                 (lambda ()
                                   (_%lp199782%_
                                    _%rest199808%_
                                    _%bind199787%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199809%_))
                                          _%args199788%_))))
                                (_%__kont205724205725%_
                                 (lambda ()
                                   (_%lp199782%_
                                    _%rest199808%_
                                    _%bind199787%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199809%_))
                                          _%args199788%_))))
                                (_%__kont205726205727%_
                                 (lambda ()
                                   (let ((_%tmp199839%_
                                          (let ((__tmp206331
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp206331))))
                                     (_%lp199782%_
                                      _%rest199808%_
                                      (cons (cons _%tmp199839%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199809%_))
                                                        '()))
                                            _%bind199787%_)
                                      (cons _%tmp199839%_ _%args199788%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205720205721%_))
                                (let ((_%e199816199870%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205720205721%_))))
                                  (let ((_%tl199818199875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199816199870%_)))
                                        (_%hd199817199873%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199816199870%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199817199873%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd199817199873%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199818199875%_))
                                                (let ((_%e199819199878%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199818199875%_))))
                                                  (let ((_%tl199821199883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199819199878%_)))
                                                        (_%hd199820199881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199819199878%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199821199883%_))
                                                        (_%__kont205722205723%_)
                                                        (_%__kont205726205727%_))))
                                                (_%__kont205726205727%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd199817199873%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199818199875%_))
                                                    (let ((_%e199825199855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199818199875%_))))
                                                      (let ((_%tl199827199860%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199825199855%_)))
                    (_%hd199826199858%_
                     (let () (declare (not safe)) (##car _%e199825199855%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199827199860%_))
                    (_%__kont205724205725%_)
                    (_%__kont205726205727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205726205727%_))
                                                (_%__kont205726205727%_)))
                                        (_%__kont205726205727%_))))
                                (_%__kont205726205727%_)))))))
                (if (pair? _%rest199789199797%_)
                    (let ((_%hd199794199894%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199789199797%_)))
                          (_%tl199795199896%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199789199797%_))))
                      (let* ((_%e199899%_ _%hd199794199894%_)
                             (_%rest199901%_ _%tl199795199896%_))
                        (_%K199793199891%_ _%rest199901%_ _%e199899%_)))
                    (_%else199791199805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call199636%_
                                                     _%g199641199705%_
                                                     (let ((__tmp206333
                                                            (lambda (_%g199909199912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g199910199914%_)
                      (cons _%g199909199912%_ _%g199910199914%_))))
               (declare (not safe))
               (foldr__0 __tmp206333 '() _%g199640199704%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont205770205771%_
                                            (lambda ()
                                              (_%compile-call199636%_
                                               _%g199641199705%_
                                               (let ((__tmp206334
                                                      (lambda (_%g199749199752%_
                                                               _%g199750199754%_)
                                                        (cons _%g199749199752%_
                                                              _%g199750199754%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp206334
                                                  '()
                                                  _%g199640199704%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx205766205767%_))
                                           (let ((_%e199733199762%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx205766205767%_))))
                                             (let ((_%tl199735199767%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199733199762%_)))
                                                   (_%hd199734199765%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199733199762%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd199734199765%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd199734199765%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199735199767%_))
                                                           (let ((_%e199736199770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199735199767%_))))
                     (let ((_%tl199738199775%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199736199770%_)))
                           (_%hd199737199773%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199736199770%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199738199775%_))
                           (_%__kont205768205769%_)
                           (_%__kont205770205771%_))))
                   (_%__kont205770205771%_))
               (_%__kont205770205771%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205770205771%_))))
                                           (_%__kont205770205771%_))))))
                             _%rand199656199702%_
                             _%hd199646199677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop199651199687%_
                                                     _%target199648199682%_
                                                     '()))
                                                  (_%g199638199661%_
                                                   _%g199639199664%_)))))
                                        (_%g199638199661%_
                                         _%g199639199664%_))))
                                (_%g199638199661%_ _%g199639199664%_))))
                        (_%g199638199661%_ _%g199639199664%_)))))
            (_%g199637199920%_ _%stx199634%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self199378%_ _%stx199379%_)
        (let* ((_%__stx205838205839%_ _%stx199379%_)
               (_%g199382199411%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205838205839%_)))))
          (let ((_%__kont205840205841%_
                 (lambda (_%g199384199477%_ _%g199385199478%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self199378%_
                        _%stx199379%_)
                       (let ((_%f199500%_
                              (let ((__tmp206335
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g199385199478%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self199378%_
                                 __tmp206335))))
                         (let _%lp199502%_ ((_%rest199505%_
                                             (reverse (let ((__tmp206337
                                                             (lambda (_%g199622199625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g199623199627%_)
                       (cons _%g199622199625%_ _%g199623199627%_))))
                (declare (not safe))
                (foldr__0 __tmp206337 '() _%g199384199477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind199507%_ '())
                                            (_%args199508%_ '()))
                           (let* ((_%rest199509199517%_ _%rest199505%_)
                                  (_%else199511199525%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind199507%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f199500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args199508%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K199513199611%_
                                   (lambda (_%rest199528%_ _%e199529%_)
                                     (let* ((_%__stx205792205793%_ _%e199529%_)
                                            (_%g199534199552%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx205792205793%_)))))
                                       (let ((_%__kont205794205795%_
                                              (lambda ()
                                                (_%lp199502%_
                                                 _%rest199528%_
                                                 _%bind199507%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199529%_))
                                                       _%args199508%_))))
                                             (_%__kont205796205797%_
                                              (lambda ()
                                                (_%lp199502%_
                                                 _%rest199528%_
                                                 _%bind199507%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199529%_))
                                                       _%args199508%_))))
                                             (_%__kont205798205799%_
                                              (lambda ()
                                                (let ((_%tmp199559%_
                                                       (let ((__tmp206336
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp206336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp199502%_
                                                   _%rest199528%_
                                                   (cons (cons _%tmp199559%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e199529%_))
                             '()))
                 _%bind199507%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp199559%_
                                                         _%args199508%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx205792205793%_))
                                             (let ((_%e199536199590%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx205792205793%_))))
                                               (let ((_%tl199538199595%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199536199590%_)))
                                                     (_%hd199537199593%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199536199590%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd199537199593%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd199537199593%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199538199595%_))
                     (let ((_%e199539199598%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199538199595%_))))
                       (let ((_%tl199541199603%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199539199598%_)))
                             (_%hd199540199601%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199539199598%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199541199603%_))
                             (_%__kont205794205795%_)
                             (_%__kont205798205799%_))))
                     (_%__kont205798205799%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd199537199593%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199538199595%_))
                         (let ((_%e199545199575%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl199538199595%_))))
                           (let ((_%tl199547199580%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199545199575%_)))
                                 (_%hd199546199578%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199545199575%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199547199580%_))
                                 (_%__kont205796205797%_)
                                 (_%__kont205798205799%_))))
                         (_%__kont205798205799%_))
                     (_%__kont205798205799%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205798205799%_))))
                                             (_%__kont205798205799%_)))))))
                             (if (pair? _%rest199509199517%_)
                                 (let ((_%hd199514199614%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199509199517%_)))
                                       (_%tl199515199616%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199509199517%_))))
                                   (let* ((_%e199619%_ _%hd199514199614%_)
                                          (_%rest199621%_ _%tl199515199616%_))
                                     (_%K199513199611%_
                                      _%rest199621%_
                                      _%e199619%_)))
                                 (_%else199511199525%_))))))))
                (_%__kont205844205845%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self199378%_ _%stx199379%_))))
            (let ((_%__match205883205884%_
                   (lambda (_%e199386199423%_
                            _%hd199387199426%_
                            _%tl199388199428%_
                            _%e199389199431%_
                            _%hd199390199434%_
                            _%tl199391199436%_
                            _%e199392199439%_
                            _%hd199393199442%_
                            _%tl199394199444%_
                            _%e199395199447%_
                            _%hd199396199450%_
                            _%tl199397199452%_
                            _%__splice205842205843%_
                            _%target199398199455%_
                            _%tl199400199457%_)
                     (letrec ((_%loop199401199460%_
                               (lambda (_%hd199399199463%_
                                        _%rand199405199465%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199399199463%_))
                                     (let ((_%e199402199467%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd199399199463%_))))
                                       (let ((_%lp-tl199404199472%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199402199467%_)))
                                             (_%lp-hd199403199470%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199402199467%_))))
                                         (_%loop199401199460%_
                                          _%lp-tl199404199472%_
                                          (cons _%lp-hd199403199470%_
                                                _%rand199405199465%_))))
                                     (let ((_%rand199406199475%_
                                            (reverse _%rand199405199465%_)))
                                       (_%__kont205840205841%_
                                        _%rand199406199475%_
                                        _%hd199396199450%_))))))
                       (_%loop199401199460%_ _%target199398199455%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205838205839%_))
                  (let ((_%e199386199423%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205838205839%_))))
                    (let ((_%tl199388199428%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199386199423%_)))
                          (_%hd199387199426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199386199423%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199388199428%_))
                          (let ((_%e199389199431%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199388199428%_))))
                            (let ((_%tl199391199436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199389199431%_)))
                                  (_%hd199390199434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199389199431%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199390199434%_))
                                  (let ((_%e199392199439%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199390199434%_))))
                                    (let ((_%tl199394199444%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199392199439%_)))
                                          (_%hd199393199442%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199392199439%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199393199442%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199393199442%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199394199444%_))
                                                  (let ((_%e199395199447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199394199444%_))))
                                                    (let ((_%tl199397199452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199395199447%_)))
                                                          (_%hd199396199450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199395199447%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199397199452%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl199391199436%_))
                      (let ((_%__splice205842205843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl199391199436%_
                                '0))))
                        (let ((_%tl199400199457%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205842205843%_ '1)))
                              (_%target199398199455%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205842205843%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199400199457%_))
                              (_%__match205883205884%_
                               _%e199386199423%_
                               _%hd199387199426%_
                               _%tl199388199428%_
                               _%e199389199431%_
                               _%hd199390199434%_
                               _%tl199391199436%_
                               _%e199392199439%_
                               _%hd199393199442%_
                               _%tl199394199444%_
                               _%e199395199447%_
                               _%hd199396199450%_
                               _%tl199397199452%_
                               _%__splice205842205843%_
                               _%target199398199455%_
                               _%tl199400199457%_)
                              (_%__kont205844205845%_))))
                      (_%__kont205844205845%_))
                  (_%__kont205844205845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205844205845%_))
                                              (_%__kont205844205845%_))
                                          (_%__kont205844205845%_))))
                                  (_%__kont205844205845%_))))
                          (_%__kont205844205845%_))))
                  (_%__kont205844205845%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self199190%_ _%stx199191%_)
        (letrec ((_%simplify199193%_
                  (lambda (_%code199278%_)
                    (let* ((_%code199279199297%_ _%code199278%_)
                           (_%else199281199305%_ (lambda () _%code199278%_))
                           (_%K199283199341%_
                            (lambda (_%expr199308%_ _%test199309%_)
                              (let* ((_%expr199310199318%_ _%expr199308%_)
                                     (_%else199312199326%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test199309%_
                                                    (cons _%expr199308%_
                                                          '())))))
                                     (_%K199314199331%_
                                      (lambda (_%exprs199329%_)
                                        (cons 'and
                                              (cons _%test199309%_
                                                    _%exprs199329%_)))))
                                (if (pair? _%expr199310199318%_)
                                    (let ((_%hd199315199334%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr199310199318%_)))
                                          (_%tl199316199336%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr199310199318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd199315199334%_ 'and))
                                          (let ((_%exprs199339%_
                                                 _%tl199316199336%_))
                                            (_%K199314199331%_
                                             _%exprs199339%_))
                                          (_%else199312199326%_)))
                                    (_%else199312199326%_))))))
                      (if (pair? _%code199279199297%_)
                          (let ((_%hd199284199344%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code199279199297%_)))
                                (_%tl199285199346%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code199279199297%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd199284199344%_ 'if))
                                (if (pair? _%tl199285199346%_)
                                    (let ((_%hd199286199349%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl199285199346%_)))
                                          (_%tl199287199351%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl199285199346%_))))
                                      (let ((_%test199354%_
                                             _%hd199286199349%_))
                                        (if (pair? _%tl199287199351%_)
                                            (let ((_%hd199288199356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199287199351%_)))
                                                  (_%tl199289199358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199287199351%_))))
                                              (let ((_%expr199361%_
                                                     _%hd199288199356%_))
                                                (if (pair? _%tl199289199358%_)
                                                    (let ((_%hd199290199363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl199289199358%_)))
                                                          (_%tl199291199365%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl199289199358%_))))
                                                      (if (pair? _%hd199290199363%_)
                                                          (let ((_%hd199292199368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd199290199363%_)))
                        (_%tl199293199370%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd199290199363%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd199292199368%_ 'quote))
                        (if (pair? _%tl199293199370%_)
                            (let ((_%hd199294199373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl199293199370%_)))
                                  (_%tl199295199375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl199293199370%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd199294199373%_ '#f))
                                  (if (null? _%tl199295199375%_)
                                      (if (null? _%tl199291199365%_)
                                          (_%K199283199341%_
                                           _%expr199361%_
                                           _%test199354%_)
                                          (_%else199281199305%_))
                                      (_%else199281199305%_))
                                  (_%else199281199305%_)))
                            (_%else199281199305%_))
                        (_%else199281199305%_)))
                  (_%else199281199305%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199281199305%_))))
                                            (_%else199281199305%_))))
                                    (_%else199281199305%_))
                                (_%else199281199305%_)))
                          (_%else199281199305%_))))))
          (let* ((_%g199195199216%_
                  (lambda (_%g199196199213%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199196199213%_))))
                 (_%g199194199275%_
                  (lambda (_%g199196199219%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199196199219%_))
                        (let ((_%e199200199221%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199196199219%_))))
                          (let ((_%hd199201199224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199200199221%_)))
                                (_%tl199202199226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199200199221%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199202199226%_))
                                (let ((_%e199203199229%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199202199226%_))))
                                  (let ((_%hd199204199232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199203199229%_)))
                                        (_%tl199205199234%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199203199229%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199205199234%_))
                                        (let ((_%e199206199237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199205199234%_))))
                                          (let ((_%hd199207199240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199206199237%_)))
                                                (_%tl199208199242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199206199237%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199208199242%_))
                                                (let ((_%e199209199245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199208199242%_))))
                                                  (let ((_%hd199210199248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199209199245%_)))
                                                        (_%tl199211199250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199209199245%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199211199250%_))
                                                        ((lambda (_%g199197199253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g199198199254%_
                          _%g199199199255%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify199193%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self199190%_
                                       _%g199199199255%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199190%_
                                             _%g199198199254%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self199190%_
                                                   _%g199197199253%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp206338
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199190%_
                                               _%g199199199255%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp206338
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199190%_
                                            _%g199198199254%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199190%_
                                                  _%g199197199253%_))
                                               '()))))))
                 _%hd199210199248%_
                 _%hd199207199240%_
                 _%hd199204199232%_)
                (_%g199195199216%_ _%g199196199219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199195199216%_
                                                 _%g199196199219%_))))
                                        (_%g199195199216%_
                                         _%g199196199219%_))))
                                (_%g199195199216%_ _%g199196199219%_))))
                        (_%g199195199216%_ _%g199196199219%_)))))
            (_%g199194199275%_ _%stx199191%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self199138%_ _%stx199139%_)
        (let* ((_%g199141199154%_
                (lambda (_%g199142199151%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199142199151%_))))
               (_%g199140199187%_
                (lambda (_%g199142199157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199142199157%_))
                      (let ((_%e199144199159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199142199157%_))))
                        (let ((_%hd199145199162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199144199159%_)))
                              (_%tl199146199164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199144199159%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199146199164%_))
                              (let ((_%e199147199167%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199146199164%_))))
                                (let ((_%hd199148199170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199147199167%_)))
                                      (_%tl199149199172%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199147199167%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199149199172%_))
                                      ((lambda (_%g199143199175%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g199143199175%_)))
                                       _%hd199148199170%_)
                                      (_%g199141199154%_ _%g199142199157%_))))
                              (_%g199141199154%_ _%g199142199157%_))))
                      (_%g199141199154%_ _%g199142199157%_)))))
          (_%g199140199187%_ _%stx199139%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self199070%_ _%stx199071%_)
        (let* ((_%g199073199090%_
                (lambda (_%g199074199087%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199074199087%_))))
               (_%g199072199135%_
                (lambda (_%g199074199093%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199074199093%_))
                      (let ((_%e199077199095%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199074199093%_))))
                        (let ((_%hd199078199098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199077199095%_)))
                              (_%tl199079199100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199077199095%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199079199100%_))
                              (let ((_%e199080199103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199079199100%_))))
                                (let ((_%hd199081199106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199080199103%_)))
                                      (_%tl199082199108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199080199103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199082199108%_))
                                      (let ((_%e199083199111%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199082199108%_))))
                                        (let ((_%hd199084199114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199083199111%_)))
                                              (_%tl199085199116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199083199111%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199085199116%_))
                                              ((lambda (_%g199075199119%_
                                                        _%g199076199120%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g199076199120%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199070%_
                              _%g199075199119%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199084199114%_
                                               _%hd199081199106%_)
                                              (_%g199073199090%_
                                               _%g199074199093%_))))
                                      (_%g199073199090%_ _%g199074199093%_))))
                              (_%g199073199090%_ _%g199074199093%_))))
                      (_%g199073199090%_ _%g199074199093%_)))))
          (_%g199072199135%_ _%stx199071%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self198881%_ _%stx198882%_)
        (let* ((_%g198884198901%_
                (lambda (_%g198885198898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198885198898%_))))
               (_%g198883199067%_
                (lambda (_%g198885198904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198885198904%_))
                      (let ((_%e198888198906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198885198904%_))))
                        (let ((_%hd198889198909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198888198906%_)))
                              (_%tl198890198911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198888198906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198890198911%_))
                              (let ((_%e198891198914%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198890198911%_))))
                                (let ((_%hd198892198917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198891198914%_)))
                                      (_%tl198893198919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198891198914%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198893198919%_))
                                      (let ((_%e198894198922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198893198919%_))))
                                        (let ((_%hd198895198925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198894198922%_)))
                                              (_%tl198896198927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198894198922%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198896198927%_))
                                              ((lambda (_%g198886198930%_
                                                        _%g198887198931%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198881%_ _%g198886198930%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198881%_
                                  _%g198887198931%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198946%_ ((_%rest198949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198887198931%_
                                       (cons _%g198886198930%_ '())))
                                (_%bind198951%_ '())
                                (_%args198952%_ '()))
               (let* ((_%rest198953198961%_ _%rest198949%_)
                      (_%else198955198969%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198951%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args198952%_)
                                                 '()))))))
                      (_%K198957199055%_
                       (lambda (_%rest198972%_ _%e198973%_)
                         (let* ((_%__stx205886205887%_ _%e198973%_)
                                (_%g198978198996%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205886205887%_)))))
                           (let ((_%__kont205888205889%_
                                  (lambda ()
                                    (_%lp198946%_
                                     _%rest198972%_
                                     _%bind198951%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198973%_))
                                           _%args198952%_))))
                                 (_%__kont205890205891%_
                                  (lambda ()
                                    (_%lp198946%_
                                     _%rest198972%_
                                     _%bind198951%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198973%_))
                                           _%args198952%_))))
                                 (_%__kont205892205893%_
                                  (lambda ()
                                    (let ((_%tmp199003%_
                                           (let ((__tmp206339
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206339))))
                                      (_%lp198946%_
                                       _%rest198972%_
                                       (cons (cons _%tmp199003%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198973%_))
                                                         '()))
                                             _%bind198951%_)
                                       (cons _%tmp199003%_ _%args198952%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205886205887%_))
                                 (let ((_%e198980199034%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205886205887%_))))
                                   (let ((_%tl198982199039%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198980199034%_)))
                                         (_%hd198981199037%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198980199034%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198981199037%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198981199037%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198982199039%_))
                                                 (let ((_%e198983199042%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198982199039%_))))
                                                   (let ((_%tl198985199047%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198983199042%_)))
                                                         (_%hd198984199045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198983199042%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198985199047%_))
                                                         (_%__kont205888205889%_)
                                                         (_%__kont205892205893%_))))
                                                 (_%__kont205892205893%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198981199037%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198982199039%_))
                                                     (let ((_%e198989199019%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198982199039%_))))
                                                       (let ((_%tl198991199024%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198989199019%_)))
                     (_%hd198990199022%_
                      (let () (declare (not safe)) (##car _%e198989199019%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198991199024%_))
                     (_%__kont205890205891%_)
                     (_%__kont205892205893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205892205893%_))
                                                 (_%__kont205892205893%_)))
                                         (_%__kont205892205893%_))))
                                 (_%__kont205892205893%_)))))))
                 (if (pair? _%rest198953198961%_)
                     (let ((_%hd198958199058%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198953198961%_)))
                           (_%tl198959199060%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198953198961%_))))
                       (let* ((_%e199063%_ _%hd198958199058%_)
                              (_%rest199065%_ _%tl198959199060%_))
                         (_%K198957199055%_ _%rest199065%_ _%e199063%_)))
                     (_%else198955198969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198895198925%_
                                               _%hd198892198917%_)
                                              (_%g198884198901%_
                                               _%g198885198904%_))))
                                      (_%g198884198901%_ _%g198885198904%_))))
                              (_%g198884198901%_ _%g198885198904%_))))
                      (_%g198884198901%_ _%g198885198904%_)))))
          (_%g198883199067%_ _%stx198882%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self198692%_ _%stx198693%_)
        (let* ((_%g198695198712%_
                (lambda (_%g198696198709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198696198709%_))))
               (_%g198694198878%_
                (lambda (_%g198696198715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198696198715%_))
                      (let ((_%e198699198717%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198696198715%_))))
                        (let ((_%hd198700198720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198699198717%_)))
                              (_%tl198701198722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198699198717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198701198722%_))
                              (let ((_%e198702198725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198701198722%_))))
                                (let ((_%hd198703198728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198702198725%_)))
                                      (_%tl198704198730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198702198725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198704198730%_))
                                      (let ((_%e198705198733%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198704198730%_))))
                                        (let ((_%hd198706198736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198705198733%_)))
                                              (_%tl198707198738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198705198733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198707198738%_))
                                              ((lambda (_%g198697198741%_
                                                        _%g198698198742%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198692%_ _%g198697198741%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198692%_
                                  _%g198698198742%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198757%_ ((_%rest198760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198698198742%_
                                       (cons _%g198697198741%_ '())))
                                (_%bind198762%_ '())
                                (_%args198763%_ '()))
               (let* ((_%rest198764198772%_ _%rest198760%_)
                      (_%else198766198780%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198762%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args198763%_)
                                                 '()))))))
                      (_%K198768198866%_
                       (lambda (_%rest198783%_ _%e198784%_)
                         (let* ((_%__stx205932205933%_ _%e198784%_)
                                (_%g198789198807%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205932205933%_)))))
                           (let ((_%__kont205934205935%_
                                  (lambda ()
                                    (_%lp198757%_
                                     _%rest198783%_
                                     _%bind198762%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198784%_))
                                           _%args198763%_))))
                                 (_%__kont205936205937%_
                                  (lambda ()
                                    (_%lp198757%_
                                     _%rest198783%_
                                     _%bind198762%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198784%_))
                                           _%args198763%_))))
                                 (_%__kont205938205939%_
                                  (lambda ()
                                    (let ((_%tmp198814%_
                                           (let ((__tmp206340
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206340))))
                                      (_%lp198757%_
                                       _%rest198783%_
                                       (cons (cons _%tmp198814%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198784%_))
                                                         '()))
                                             _%bind198762%_)
                                       (cons _%tmp198814%_ _%args198763%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205932205933%_))
                                 (let ((_%e198791198845%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205932205933%_))))
                                   (let ((_%tl198793198850%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198791198845%_)))
                                         (_%hd198792198848%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198791198845%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198792198848%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198792198848%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198793198850%_))
                                                 (let ((_%e198794198853%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198793198850%_))))
                                                   (let ((_%tl198796198858%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198794198853%_)))
                                                         (_%hd198795198856%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198794198853%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198796198858%_))
                                                         (_%__kont205934205935%_)
                                                         (_%__kont205938205939%_))))
                                                 (_%__kont205938205939%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198792198848%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198793198850%_))
                                                     (let ((_%e198800198830%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198793198850%_))))
                                                       (let ((_%tl198802198835%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198800198830%_)))
                     (_%hd198801198833%_
                      (let () (declare (not safe)) (##car _%e198800198830%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198802198835%_))
                     (_%__kont205936205937%_)
                     (_%__kont205938205939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205938205939%_))
                                                 (_%__kont205938205939%_)))
                                         (_%__kont205938205939%_))))
                                 (_%__kont205938205939%_)))))))
                 (if (pair? _%rest198764198772%_)
                     (let ((_%hd198769198869%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198764198772%_)))
                           (_%tl198770198871%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198764198772%_))))
                       (let* ((_%e198874%_ _%hd198769198869%_)
                              (_%rest198876%_ _%tl198770198871%_))
                         (_%K198768198866%_ _%rest198876%_ _%e198874%_)))
                     (_%else198766198780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198706198736%_
                                               _%hd198703198728%_)
                                              (_%g198695198712%_
                                               _%g198696198715%_))))
                                      (_%g198695198712%_ _%g198696198715%_))))
                              (_%g198695198712%_ _%g198696198715%_))))
                      (_%g198695198712%_ _%g198696198715%_)))))
          (_%g198694198878%_ _%stx198693%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self198608%_ _%stx198609%_)
        (let* ((_%g198611198632%_
                (lambda (_%g198612198629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198612198629%_))))
               (_%g198610198689%_
                (lambda (_%g198612198635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198612198635%_))
                      (let ((_%e198616198637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198612198635%_))))
                        (let ((_%hd198617198640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198616198637%_)))
                              (_%tl198618198642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198616198637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198618198642%_))
                              (let ((_%e198619198645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198618198642%_))))
                                (let ((_%hd198620198648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198619198645%_)))
                                      (_%tl198621198650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198619198645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198621198650%_))
                                      (let ((_%e198622198653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198621198650%_))))
                                        (let ((_%hd198623198656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198622198653%_)))
                                              (_%tl198624198658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198622198653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198624198658%_))
                                              (let ((_%e198625198661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198624198658%_))))
                                                (let ((_%hd198626198664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198625198661%_)))
                                                      (_%tl198627198666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198625198661%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198627198666%_))
                                                      ((lambda (_%g198613198669%_
                                                                _%g198614198670%_
                                                                _%g198615198671%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198608%_
                                _%g198613198669%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198608%_
                                      _%g198614198670%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198608%_
                                            _%g198615198671%_))
                                         (cons ''#f '()))))))
               _%hd198626198664%_
               _%hd198623198656%_
               _%hd198620198648%_)
              (_%g198611198632%_ _%g198612198635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198611198632%_
                                               _%g198612198635%_))))
                                      (_%g198611198632%_ _%g198612198635%_))))
                              (_%g198611198632%_ _%g198612198635%_))))
                      (_%g198611198632%_ _%g198612198635%_)))))
          (_%g198610198689%_ _%stx198609%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self198508%_ _%stx198509%_)
        (let* ((_%g198511198536%_
                (lambda (_%g198512198533%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198512198533%_))))
               (_%g198510198605%_
                (lambda (_%g198512198539%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198512198539%_))
                      (let ((_%e198517198541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198512198539%_))))
                        (let ((_%hd198518198544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198517198541%_)))
                              (_%tl198519198546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198517198541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198519198546%_))
                              (let ((_%e198520198549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198519198546%_))))
                                (let ((_%hd198521198552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198520198549%_)))
                                      (_%tl198522198554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198520198549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198522198554%_))
                                      (let ((_%e198523198557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198522198554%_))))
                                        (let ((_%hd198524198560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198523198557%_)))
                                              (_%tl198525198562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198523198557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198525198562%_))
                                              (let ((_%e198526198565%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198525198562%_))))
                                                (let ((_%hd198527198568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198526198565%_)))
                                                      (_%tl198528198570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198526198565%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198528198570%_))
                                                      (let ((_%e198529198573%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198528198570%_))))
                (let ((_%hd198530198576%_
                       (let () (declare (not safe)) (##car _%e198529198573%_)))
                      (_%tl198531198578%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198529198573%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198531198578%_))
                      ((lambda (_%g198513198581%_
                                _%g198514198582%_
                                _%g198515198583%_
                                _%g198516198584%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198508%_
                                        _%g198514198582%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198508%_
                                              _%g198513198581%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198508%_
                                                    _%g198515198583%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198508%_
                                                          _%g198516198584%_))
                                                       (cons ''#f '())))))))
                       _%hd198530198576%_
                       _%hd198527198568%_
                       _%hd198524198560%_
                       _%hd198521198552%_)
                      (_%g198511198536%_ _%g198512198539%_))))
              (_%g198511198536%_ _%g198512198539%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198511198536%_
                                               _%g198512198539%_))))
                                      (_%g198511198536%_ _%g198512198539%_))))
                              (_%g198511198536%_ _%g198512198539%_))))
                      (_%g198511198536%_ _%g198512198539%_)))))
          (_%g198510198605%_ _%stx198509%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self198424%_ _%stx198425%_)
        (let* ((_%g198427198448%_
                (lambda (_%g198428198445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198428198445%_))))
               (_%g198426198505%_
                (lambda (_%g198428198451%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198428198451%_))
                      (let ((_%e198432198453%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198428198451%_))))
                        (let ((_%hd198433198456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198432198453%_)))
                              (_%tl198434198458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198432198453%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198434198458%_))
                              (let ((_%e198435198461%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198434198458%_))))
                                (let ((_%hd198436198464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198435198461%_)))
                                      (_%tl198437198466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198435198461%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198437198466%_))
                                      (let ((_%e198438198469%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198437198466%_))))
                                        (let ((_%hd198439198472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198438198469%_)))
                                              (_%tl198440198474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198438198469%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198440198474%_))
                                              (let ((_%e198441198477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198440198474%_))))
                                                (let ((_%hd198442198480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198441198477%_)))
                                                      (_%tl198443198482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198441198477%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198443198482%_))
                                                      ((lambda (_%g198429198485%_
                                                                _%g198430198486%_
                                                                _%g198431198487%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198424%_
                                _%g198429198485%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198424%_
                                      _%g198430198486%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198424%_
                                            _%g198431198487%_))
                                         (cons ''#f '()))))))
               _%hd198442198480%_
               _%hd198439198472%_
               _%hd198436198464%_)
              (_%g198427198448%_ _%g198428198451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198427198448%_
                                               _%g198428198451%_))))
                                      (_%g198427198448%_ _%g198428198451%_))))
                              (_%g198427198448%_ _%g198428198451%_))))
                      (_%g198427198448%_ _%g198428198451%_)))))
          (_%g198426198505%_ _%stx198425%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self198324%_ _%stx198325%_)
        (let* ((_%g198327198352%_
                (lambda (_%g198328198349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198328198349%_))))
               (_%g198326198421%_
                (lambda (_%g198328198355%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198328198355%_))
                      (let ((_%e198333198357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198328198355%_))))
                        (let ((_%hd198334198360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198333198357%_)))
                              (_%tl198335198362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198333198357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198335198362%_))
                              (let ((_%e198336198365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198335198362%_))))
                                (let ((_%hd198337198368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198336198365%_)))
                                      (_%tl198338198370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198336198365%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198338198370%_))
                                      (let ((_%e198339198373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198338198370%_))))
                                        (let ((_%hd198340198376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198339198373%_)))
                                              (_%tl198341198378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198339198373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198341198378%_))
                                              (let ((_%e198342198381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198341198378%_))))
                                                (let ((_%hd198343198384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198342198381%_)))
                                                      (_%tl198344198386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198342198381%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198344198386%_))
                                                      (let ((_%e198345198389%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198344198386%_))))
                (let ((_%hd198346198392%_
                       (let () (declare (not safe)) (##car _%e198345198389%_)))
                      (_%tl198347198394%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198345198389%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198347198394%_))
                      ((lambda (_%g198329198397%_
                                _%g198330198398%_
                                _%g198331198399%_
                                _%g198332198400%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198324%_
                                        _%g198330198398%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198324%_
                                              _%g198329198397%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198324%_
                                                    _%g198331198399%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198324%_
                                                          _%g198332198400%_))
                                                       (cons ''#f '())))))))
                       _%hd198346198392%_
                       _%hd198343198384%_
                       _%hd198340198376%_
                       _%hd198337198368%_)
                      (_%g198327198352%_ _%g198328198355%_))))
              (_%g198327198352%_ _%g198328198355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198327198352%_
                                               _%g198328198355%_))))
                                      (_%g198327198352%_ _%g198328198355%_))))
                              (_%g198327198352%_ _%g198328198355%_))))
                      (_%g198327198352%_ _%g198328198355%_)))))
          (_%g198326198421%_ _%stx198325%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self198119%_ _%stx198120%_)
        (let* ((_%g198122198143%_
                (lambda (_%g198123198140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198123198140%_))))
               (_%g198121198321%_
                (lambda (_%g198123198146%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198123198146%_))
                      (let ((_%e198127198148%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198123198146%_))))
                        (let ((_%hd198128198151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198127198148%_)))
                              (_%tl198129198153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198127198148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198129198153%_))
                              (let ((_%e198130198156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198129198153%_))))
                                (let ((_%hd198131198159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198130198156%_)))
                                      (_%tl198132198161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198130198156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198132198161%_))
                                      (let ((_%e198133198164%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198132198161%_))))
                                        (let ((_%hd198134198167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198133198164%_)))
                                              (_%tl198135198169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198133198164%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198135198169%_))
                                              (let ((_%e198136198172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198135198169%_))))
                                                (let ((_%hd198137198175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198136198172%_)))
                                                      (_%tl198138198177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198136198172%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198138198177%_))
                                                      ((lambda (_%g198124198180%_
                                                                _%g198125198181%_
                                                                _%g198126198182%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self198119%_
                                    _%g198124198180%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198119%_
                                          _%g198125198181%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp198200%_ ((_%rest198203%_
                                         (cons _%g198125198181%_
                                               (cons _%g198124198180%_ '())))
                                        (_%bind198205%_ '())
                                        (_%args198206%_ '()))
                       (let* ((_%rest198207198215%_ _%rest198203%_)
                              (_%else198209198223%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind198205%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp206341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp206341 _%args198206%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K198211198309%_
                               (lambda (_%rest198226%_ _%e198227%_)
                                 (let* ((_%__stx205978205979%_ _%e198227%_)
                                        (_%g198232198250%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205978205979%_)))))
                                   (let ((_%__kont205980205981%_
                                          (lambda ()
                                            (_%lp198200%_
                                             _%rest198226%_
                                             _%bind198205%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198227%_))
                                                   _%args198206%_))))
                                         (_%__kont205982205983%_
                                          (lambda ()
                                            (_%lp198200%_
                                             _%rest198226%_
                                             _%bind198205%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198227%_))
                                                   _%args198206%_))))
                                         (_%__kont205984205985%_
                                          (lambda ()
                                            (let ((_%tmp198257%_
                                                   (let ((__tmp206342
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp206342))))
                                              (_%lp198200%_
                                               _%rest198226%_
                                               (cons (cons _%tmp198257%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e198227%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind198205%_)
                                               (cons _%tmp198257%_
                                                     _%args198206%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205978205979%_))
                                         (let ((_%e198234198288%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205978205979%_))))
                                           (let ((_%tl198236198293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198234198288%_)))
                                                 (_%hd198235198291%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198234198288%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd198235198291%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd198235198291%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl198236198293%_))
                                                         (let ((_%e198237198296%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl198236198293%_))))
                   (let ((_%tl198239198301%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198237198296%_)))
                         (_%hd198238198299%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198237198296%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198239198301%_))
                         (_%__kont205980205981%_)
                         (_%__kont205984205985%_))))
                 (_%__kont205984205985%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd198235198291%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198236198293%_))
                     (let ((_%e198243198273%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198236198293%_))))
                       (let ((_%tl198245198278%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198243198273%_)))
                             (_%hd198244198276%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198243198273%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198245198278%_))
                             (_%__kont205982205983%_)
                             (_%__kont205984205985%_))))
                     (_%__kont205984205985%_))
                 (_%__kont205984205985%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont205984205985%_))))
                                         (_%__kont205984205985%_)))))))
                         (if (pair? _%rest198207198215%_)
                             (let ((_%hd198212198312%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest198207198215%_)))
                                   (_%tl198213198314%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest198207198215%_))))
                               (let* ((_%e198317%_ _%hd198212198312%_)
                                      (_%rest198319%_ _%tl198213198314%_))
                                 (_%K198211198309%_
                                  _%rest198319%_
                                  _%e198317%_)))
                             (_%else198209198223%_))))))
               _%hd198137198175%_
               _%hd198134198167%_
               _%hd198131198159%_)
              (_%g198122198143%_ _%g198123198146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198122198143%_
                                               _%g198123198146%_))))
                                      (_%g198122198143%_ _%g198123198146%_))))
                              (_%g198122198143%_ _%g198123198146%_))))
                      (_%g198122198143%_ _%g198123198146%_)))))
          (_%g198121198321%_ _%stx198120%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self197898%_ _%stx197899%_)
        (let* ((_%g197901197926%_
                (lambda (_%g197902197923%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197902197923%_))))
               (_%g197900198116%_
                (lambda (_%g197902197929%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197902197929%_))
                      (let ((_%e197907197931%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197902197929%_))))
                        (let ((_%hd197908197934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197907197931%_)))
                              (_%tl197909197936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197907197931%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197909197936%_))
                              (let ((_%e197910197939%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197909197936%_))))
                                (let ((_%hd197911197942%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197910197939%_)))
                                      (_%tl197912197944%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197910197939%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197912197944%_))
                                      (let ((_%e197913197947%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197912197944%_))))
                                        (let ((_%hd197914197950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197913197947%_)))
                                              (_%tl197915197952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197913197947%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197915197952%_))
                                              (let ((_%e197916197955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197915197952%_))))
                                                (let ((_%hd197917197958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197916197955%_)))
                                                      (_%tl197918197960%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197916197955%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197918197960%_))
                                                      (let ((_%e197919197963%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197918197960%_))))
                (let ((_%hd197920197966%_
                       (let () (declare (not safe)) (##car _%e197919197963%_)))
                      (_%tl197921197968%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197919197963%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197921197968%_))
                      ((lambda (_%g197903197971%_
                                _%g197904197972%_
                                _%g197905197973%_
                                _%g197906197974%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197898%_
                                            _%g197904197972%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197898%_
                                                  _%g197903197971%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self197898%_
                                                        _%g197905197973%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp197995%_ ((_%rest197998%_
                                                 (cons _%g197905197973%_
                                                       (cons _%g197903197971%_
                                                             (cons _%g197904197972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind198000%_ '())
                                                (_%args198001%_ '()))
                               (let* ((_%rest198002198010%_ _%rest197998%_)
                                      (_%else198004198018%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind198000%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp206343 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp206343 _%args198001%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K198006198104%_
                                       (lambda (_%rest198021%_ _%e198022%_)
                                         (let* ((_%__stx206024206025%_
                                                 _%e198022%_)
                                                (_%g198027198045%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx206024206025%_)))))
                                           (let ((_%__kont206026206027%_
                                                  (lambda ()
                                                    (_%lp197995%_
                                                     _%rest198021%_
                                                     _%bind198000%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198022%_))
                                                           _%args198001%_))))
                                                 (_%__kont206028206029%_
                                                  (lambda ()
                                                    (_%lp197995%_
                                                     _%rest198021%_
                                                     _%bind198000%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198022%_))
                                                           _%args198001%_))))
                                                 (_%__kont206030206031%_
                                                  (lambda ()
                                                    (let ((_%tmp198052%_
                                                           (let ((__tmp206344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp206344))))
              (_%lp197995%_
               _%rest198021%_
               (cons (cons _%tmp198052%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e198022%_))
                                 '()))
                     _%bind198000%_)
               (cons _%tmp198052%_ _%args198001%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx206024206025%_))
                                                 (let ((_%e198029198083%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx206024206025%_))))
                                                   (let ((_%tl198031198088%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198029198083%_)))
                                                         (_%hd198030198086%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198029198083%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd198030198086%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd198030198086%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl198031198088%_))
                         (let ((_%e198032198091%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl198031198088%_))))
                           (let ((_%tl198034198096%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198032198091%_)))
                                 (_%hd198033198094%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198032198091%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl198034198096%_))
                                 (_%__kont206026206027%_)
                                 (_%__kont206030206031%_))))
                         (_%__kont206030206031%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd198030198086%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl198031198088%_))
                             (let ((_%e198038198068%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl198031198088%_))))
                               (let ((_%tl198040198073%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e198038198068%_)))
                                     (_%hd198039198071%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e198038198068%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl198040198073%_))
                                     (_%__kont206028206029%_)
                                     (_%__kont206030206031%_))))
                             (_%__kont206030206031%_))
                         (_%__kont206030206031%_)))
                 (_%__kont206030206031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206030206031%_)))))))
                                 (if (pair? _%rest198002198010%_)
                                     (let ((_%hd198007198107%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest198002198010%_)))
                                           (_%tl198008198109%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest198002198010%_))))
                                       (let* ((_%e198112%_ _%hd198007198107%_)
                                              (_%rest198114%_
                                               _%tl198008198109%_))
                                         (_%K198006198104%_
                                          _%rest198114%_
                                          _%e198112%_)))
                                     (_%else198004198018%_))))))
                       _%hd197920197966%_
                       _%hd197917197958%_
                       _%hd197914197950%_
                       _%hd197911197942%_)
                      (_%g197901197926%_ _%g197902197929%_))))
              (_%g197901197926%_ _%g197902197929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197901197926%_
                                               _%g197902197929%_))))
                                      (_%g197901197926%_ _%g197902197929%_))))
                              (_%g197901197926%_ _%g197902197929%_))))
                      (_%g197901197926%_ _%g197902197929%_)))))
          (_%g197900198116%_ _%stx197899%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self197737%_ _%stx197738%_)
        (letrec ((_%import-set-template197740%_
                  (lambda (_%in197843%_ _%phi197844%_)
                    (let ((_%iphi197846%_
                           (fx+ _%phi197844%_
                                (##direct-structure-ref
                                 _%in197843%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports197847%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in197843%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp197849%_ ((_%rest197851%_ _%imports197847%_)
                                         (_%r197852%_ '()))
                        (let* ((_%rest197853197861%_ _%rest197851%_)
                               (_%else197855197869%_ (lambda () _%r197852%_))
                               (_%K197857197886%_
                                (lambda (_%rest197872%_ _%in197873%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in197873%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi197846%_))
                                          (_%lp197849%_
                                           _%rest197872%_
                                           (cons _%in197873%_ _%r197852%_))
                                          (_%lp197849%_
                                           _%rest197872%_
                                           _%r197852%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in197873%_
                                             'gx#module-import::t))
                                          (let ((_%iphi197877%_
                                                 (fx+ _%phi197844%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in197873%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi197877%_))
                                                (_%lp197849%_
                                                 _%rest197872%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in197873%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r197852%_))
                                                (_%lp197849%_
                                                 _%rest197872%_
                                                 _%r197852%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in197873%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi197880%_
                                                     (fx+ _%iphi197846%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in197873%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi197880%_))
                                                    (_%lp197849%_
                                                     _%rest197872%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197873%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r197852%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi197880%_))
                                                        (_%lp197849%_
                                                         _%rest197872%_
                                                         (let ((__tmp206345
                                                                (_%import-set-template197740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in197873%_
                         _%iphi197846%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r197852%_ __tmp206345)))
                (_%lp197849%_ _%rest197872%_ _%r197852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp197849%_
                                               _%rest197872%_
                                               _%r197852%_)))))))
                          (if (pair? _%rest197853197861%_)
                              (let ((_%hd197858197889%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest197853197861%_)))
                                    (_%tl197859197891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest197853197861%_))))
                                (let* ((_%in197894%_ _%hd197858197889%_)
                                       (_%rest197896%_ _%tl197859197891%_))
                                  (_%K197857197886%_
                                   _%rest197896%_
                                   _%in197894%_)))
                              (_%else197855197869%_))))))))
          (let* ((_%g197742197752%_
                  (lambda (_%g197743197749%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197743197749%_))))
                 (_%g197741197840%_
                  (lambda (_%g197743197755%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197743197755%_))
                        (let ((_%e197745197757%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197743197755%_))))
                          (let ((_%hd197746197760%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197745197757%_)))
                                (_%tl197747197762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197745197757%_))))
                            ((lambda (_%g197744197765%_)
                               (let ((_%ht197776%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp197778%_ ((_%rest197780%_
                                                     _%g197744197765%_)
                                                    (_%loads197781%_ '()))
                                   (letrec ((_%K197783%_
                                             (lambda (_%ctx197833%_
                                                      _%rest197834%_)
                                               (let ((_%id197836%_
                                                      (##structure-ref
                                                       _%ctx197833%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht197776%_
                                                        _%id197836%_))
                                                     (_%lp197778%_
                                                      _%rest197834%_
                                                      _%loads197781%_)
                                                     (let ((_%rt197838%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id197836%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht197776%_
                                                          _%id197836%_
                                                          _%rt197838%_))
                                                       (_%lp197778%_
                                                        _%rest197834%_
                                                        (cons _%rt197838%_
                                                              _%loads197781%_))))))))
                                     (let* ((_%rest197784197792%_
                                             _%rest197780%_)
                                            (_%else197786197804%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp206347
                                                            (lambda (_%g197799197801%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197799197801%_)))
                   (__tmp206346 (reverse _%loads197781%_)))
               (declare (not safe))
               (##map __tmp206347 __tmp206346)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K197788197821%_
                                             (lambda (_%rest197807%_
                                                      _%in197808%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in197808%_
                                                      'gx#module-context::t))
                                                   (_%K197783%_
                                                    _%in197808%_
                                                    _%rest197807%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in197808%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in197808%_
                               '3
                               '#f
                               '#f)))
                   (_%K197783%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in197808%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest197807%_)
                   (_%lp197778%_ _%rest197807%_ _%loads197781%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in197808%_
                      'gx#import-set::t))
                   (let ((_%phi197813%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197808%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi197813%_)
                         (_%K197783%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197808%_
                             '1
                             '#f
                             '#f))
                          _%rest197807%_)
                         (if (fxpositive? _%phi197813%_)
                             (let ((_%deps197817%_
                                    (_%import-set-template197740%_
                                     _%in197808%_
                                     '0)))
                               (_%lp197778%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest197807%_
                                   _%deps197817%_))
                                _%loads197781%_))
                             (_%lp197778%_ _%rest197807%_ _%loads197781%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx197738%_
                      _%in197808%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest197784197792%_)
                                           (let ((_%hd197789197824%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest197784197792%_)))
                                                 (_%tl197790197826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest197784197792%_))))
                                             (let* ((_%in197829%_
                                                     _%hd197789197824%_)
                                                    (_%rest197831%_
                                                     _%tl197790197826%_))
                                               (_%K197788197821%_
                                                _%rest197831%_
                                                _%in197829%_)))
                                           (_%else197786197804%_)))))))
                             _%tl197747197762%_)))
                        (_%g197742197752%_ _%g197743197755%_)))))
            (_%g197741197840%_ _%stx197738%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self197551%_ _%stx197552%_)
        (letrec ((_%add-lift!197554%_
                  (lambda (_%expr197735%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr197735%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote197555%_
                  (lambda (_%id197732%_ _%marks197733%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id197732%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks197733%_
                                                        '()))))))))
                 (_%generate-simple197556%_
                  (lambda (_%stxq197727%_)
                    (let ((_%gid197729%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid197730%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq197727%_))))
                      (_%add-lift!197554%_
                       (cons 'define
                             (cons _%gid197729%_
                                   (cons (_%generate-syntax-quote197555%_
                                          _%qid197730%_
                                          ''())
                                         '()))))
                      (let ((__tmp206348
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206348 _%stxq197727%_ _%gid197729%_))
                      _%gid197729%_)))
                 (_%generate-serialized197557%_
                  (lambda (_%stxq197717%_ _%marks197718%_)
                    (let* ((_%mark-refs197720%_
                            (map _%generate-mark197558%_ _%marks197718%_))
                           (_%gid197722%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid197724%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq197717%_))))
                      (_%add-lift!197554%_
                       (cons 'define
                             (cons _%gid197722%_
                                   (cons (_%generate-syntax-quote197555%_
                                          _%qid197724%_
                                          (cons 'list _%mark-refs197720%_))
                                         '()))))
                      (let ((__tmp206349
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206349 _%stxq197717%_ _%gid197722%_))
                      _%gid197722%_)))
                 (_%generate-mark197558%_
                  (lambda (_%mark197702%_)
                    (let ((_%$e197704%_
                           (let ((__tmp206350
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp206350 _%mark197702%_))))
                      (if _%$e197704%_
                          _%$e197704%_
                          (let* ((_%gid197708%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr197710%_
                                  (_%serialize-mark197559%_ _%mark197702%_))
                                 (_%ctx197712%_
                                  (let ((__tmp206351
                                         (##structure-ref
                                          _%mark197702%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp206351)))
                                 (_%ctx-ref197714%_
                                  (if (eq? _%ctx197712%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref197560%_
                                                               _%ctx197712%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp206352
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206352
                               _%mark197702%_
                               _%gid197708%_))
                            (_%add-lift!197554%_
                             (cons 'define
                                   (cons _%gid197708%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr197710%_ '()))
                   (cons _%ctx-ref197714%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid197708%_)))))
                 (_%serialize-mark197559%_
                  (lambda (_%mark197650%_)
                    (letrec ((_%quote-e197652%_
                              (lambda (_%sym197700%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym197700%_))
                                    _%sym197700%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym197700%_))))))
                      (let* ((_%mark197653197662%_ _%mark197650%_)
                             (_%E197655197665%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark197653197662%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K197656197677%_
                              (lambda (_%trace197668%_
                                       _%phi197669%_
                                       _%ctx197670%_
                                       _%subst197671%_)
                                (let ((_%subs197673%_
                                       (if _%subst197671%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst197671%_))
                                           '())))
                                  (cons _%phi197669%_
                                        (let ((__tmp206353
                                               (lambda (_%pair197675%_)
                                                 (cons (_%quote-e197652%_
                                                        (car _%pair197675%_))
                                                       (_%quote-e197652%_
                                                        (cdr _%pair197675%_))))))
                                          (declare (not safe))
                                          (##map __tmp206353
                                                 _%subs197673%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark197653197662%_
                               'gx#expander-mark::t))
                            (let* ((_%e197657197680%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197653197662%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst197683%_ _%e197657197680%_)
                                   (_%e197658197685%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197653197662%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx197688%_ _%e197658197685%_)
                                   (_%e197659197690%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197653197662%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi197693%_ _%e197659197690%_)
                                   (_%e197660197695%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197653197662%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace197698%_ _%e197660197695%_))
                              (_%K197656197677%_
                               _%trace197698%_
                               _%phi197693%_
                               _%ctx197688%_
                               _%subst197683%_))
                            (_%E197655197665%_))))))
                 (_%context-ref197560%_
                  (lambda (_%ctx197637%_)
                    (if (let ((__tmp206354
                               (##structure-ref
                                _%ctx197637%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp206354
                           'gx#module-context::t))
                        (let ((_%ctx-ref197639%_
                               (_%context-ref-nested197562%_ _%ctx197637%_))
                              (_%ctx-origin197640%_
                               (_%context-ref-origin197561%_ _%ctx197637%_))
                              (_%origin197641%_
                               (_%context-ref-origin197561%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin197641%_ _%ctx-origin197640%_)
                              (let ((_%ref197643%_
                                     (_%context-ref-nested197562%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp197645%_ ((_%ref197647%_
                                                    (cdr _%ref197643%_))
                                                   (_%ctx-ref197648%_
                                                    (cdr _%ctx-ref197639%_)))
                                  (if (and (pair? _%ref197647%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref197647%_))
                                                (car _%ctx-ref197648%_)))
                                      (_%lp197645%_
                                       (cdr _%ref197647%_)
                                       (cdr _%ctx-ref197648%_))
                                      (cons '#f _%ctx-ref197648%_))))
                              _%ctx-ref197639%_))
                        (let ((__tmp206355
                               (##structure-ref
                                _%ctx197637%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp206355)))))
                 (_%context-ref-origin197561%_
                  (lambda (_%ctx197629%_)
                    (let _%lp197631%_ ((_%ctx197633%_ _%ctx197629%_))
                      (let ((_%super197635%_
                             (##structure-ref
                              _%ctx197633%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197635%_
                               'gx#module-context::t))
                            (_%lp197631%_ _%super197635%_)
                            _%ctx197633%_)))))
                 (_%context-ref-nested197562%_
                  (lambda (_%ctx197620%_)
                    (let _%lp197622%_ ((_%ctx197624%_ _%ctx197620%_)
                                       (_%r197625%_ '()))
                      (let ((_%super197627%_
                             (##structure-ref
                              _%ctx197624%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197627%_
                               'gx#module-context::t))
                            (_%lp197622%_
                             _%super197627%_
                             (cons (car (##structure-ref
                                         _%ctx197624%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r197625%_))
                            (cons (let ((__tmp206356
                                         (##structure-ref
                                          _%ctx197624%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp206356))
                                  _%r197625%_)))))))
          (let* ((_%g197564197577%_
                  (lambda (_%g197565197574%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197565197574%_))))
                 (_%g197563197617%_
                  (lambda (_%g197565197580%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197565197580%_))
                        (let ((_%e197567197582%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197565197580%_))))
                          (let ((_%hd197568197585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197567197582%_)))
                                (_%tl197569197587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197567197582%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197569197587%_))
                                (let ((_%e197570197590%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197569197587%_))))
                                  (let ((_%hd197571197593%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197570197590%_)))
                                        (_%tl197572197595%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197570197590%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197572197595%_))
                                        ((lambda (_%g197566197598%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g197566197598%_))
                                               (let ((_%$e197611%_
                                                      (let ((__tmp206357
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp206357 _%g197566197598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e197611%_
                                                     _%$e197611%_
                                                     (let ((_%marks197615%_
                                                            (##direct-structure-ref
                                                             _%g197566197598%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks197615%_)
                                                           (_%generate-simple197556%_
                                                            _%g197566197598%_)
                                                           (_%generate-serialized197557%_
                                                            _%g197566197598%_
                                                            _%marks197615%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g197566197598%_))))
                                         _%hd197571197593%_)
                                        (_%g197564197577%_
                                         _%g197565197580%_))))
                                (_%g197564197577%_ _%g197565197580%_))))
                        (_%g197564197577%_ _%g197565197580%_)))))
            (_%g197563197617%_ _%stx197552%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self197483%_ _%stx197484%_)
        (let* ((_%g197486197503%_
                (lambda (_%g197487197500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197487197500%_))))
               (_%g197485197548%_
                (lambda (_%g197487197506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197487197506%_))
                      (let ((_%e197490197508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197487197506%_))))
                        (let ((_%hd197491197511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197490197508%_)))
                              (_%tl197492197513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197490197508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197492197513%_))
                              (let ((_%e197493197516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197492197513%_))))
                                (let ((_%hd197494197519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197493197516%_)))
                                      (_%tl197495197521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197493197516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197495197521%_))
                                      (let ((_%e197496197524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197495197521%_))))
                                        (let ((_%hd197497197527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197496197524%_)))
                                              (_%tl197498197529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197496197524%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197498197529%_))
                                              ((lambda (_%g197488197532%_
                                                        _%g197489197533%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g197489197533%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self197483%_
                              _%g197488197532%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197497197527%_
                                               _%hd197494197519%_)
                                              (_%g197486197503%_
                                               _%g197487197506%_))))
                                      (_%g197486197503%_ _%g197487197506%_))))
                              (_%g197486197503%_ _%g197487197506%_))))
                      (_%g197486197503%_ _%g197487197506%_)))))
          (_%g197485197548%_ _%stx197484%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self197432%_ _%stx197433%_)
        (let* ((_%g197435197445%_
                (lambda (_%g197436197442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197436197442%_))))
               (_%g197434197480%_
                (lambda (_%g197436197448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197436197448%_))
                      (let ((_%e197438197450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197436197448%_))))
                        (let ((_%hd197439197453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197438197450%_)))
                              (_%tl197440197455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197438197450%_))))
                          ((lambda (_%g197437197458%_)
                             (let* ((_%c-body197472%_
                                     (map (lambda (_%g197467197469%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197432%_
                                               _%g197467197469%_)))
                                          _%g197437197458%_))
                                    (_%c-body197477%_
                                     (let ((__tmp206358
                                            (lambda (_%$obj197474%_)
                                              (not (eq? _%$obj197474%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp206358
                                        _%c-body197472%_))))
                               (cons '%#begin _%c-body197477%_)))
                           _%tl197440197455%_)))
                      (_%g197435197445%_ _%g197436197448%_)))))
          (_%g197434197480%_ _%stx197433%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self197337%_ _%stx197338%_)
        (let* ((_%g197340197350%_
                (lambda (_%g197341197347%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197341197347%_))))
               (_%g197339197429%_
                (lambda (_%g197341197353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197341197353%_))
                      (let ((_%e197343197355%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197341197353%_))))
                        (let ((_%hd197344197358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197343197355%_)))
                              (_%tl197345197360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197343197355%_))))
                          ((lambda (_%g197342197363%_)
                             (let* ((_%phi197373%_
                                     (let ((__tmp206359
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp206359 '1)))
                                    (_%block197375%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self197337%_ 'state))
                                      _%phi197373%_))
                                    (_%compiled197378%_
                                     (let ((__tmp206360
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self197337%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g197342197363%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp206360
                                        gx#current-expander-phi
                                        _%phi197373%_)))
                                    (_%g197381197391%_
                                     (lambda (_%g197382197388%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g197382197388%_))))
                                    (_%g197380197426%_
                                     (lambda (_%g197382197394%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g197382197394%_))
                                           (let ((_%e197384197396%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g197382197394%_))))
                                             (let ((_%hd197385197399%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197384197396%_)))
                                                   (_%tl197386197401%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197384197396%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd197385197399%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd197385197399%_))
                                                       ((lambda (_%g197383197404%_)
                                                          (let ((_%c-body197421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj197418%_)
                                   (not (eq? _%$obj197418%_ '#!void)))
                                 _%g197383197404%_)))
                    (if _%block197375%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block197375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body197421%_))
                        (if (null? _%c-body197421%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body197421%_)))))
                _%tl197386197401%_)
               (_%g197381197391%_ _%g197382197394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g197381197391%_
                                                    _%g197382197394%_))))
                                           (_%g197381197391%_
                                            _%g197382197394%_)))))
                               (_%g197380197426%_ _%compiled197378%_)))
                           _%tl197345197360%_)))
                      (_%g197340197350%_ _%g197341197353%_)))))
          (_%g197339197429%_ _%stx197338%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self197268%_ _%stx197269%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197268%_ 'state)))
        (let* ((_%g197271197285%_
                (lambda (_%g197272197282%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197272197282%_))))
               (_%g197270197334%_
                (lambda (_%g197272197288%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197272197288%_))
                      (let ((_%e197275197290%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197272197288%_))))
                        (let ((_%hd197276197293%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197275197290%_)))
                              (_%tl197277197295%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197275197290%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197277197295%_))
                              (let ((_%e197278197298%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197277197295%_))))
                                (let ((_%hd197279197301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197278197298%_)))
                                      (_%tl197280197303%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197278197298%_))))
                                  ((lambda (_%g197273197306%_
                                            _%g197274197307%_)
                                     (let ((_%key197320%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g197274197307%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key197320%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx197269%_
                                              _%g197274197307%_
                                              _%key197320%_)))
                                       (let* ((_%ctx197322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g197274197307%_)))
                                              (_%code197325%_
                                               (let ((__tmp206361
                                                      (lambda ()
                                                        (let ((__tmp206362
                                                               (##structure-ref
                                                                _%ctx197322%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self197268%_
                                                           __tmp206362)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp206361
                                                  gx#current-expander-context
                                                  _%ctx197322%_)))
                                              (_%rt197327%_
                                               (let ((__tmp206363
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp206363
                                                  _%ctx197322%_)))
                                              (_%loader197329%_
                                               (if _%rt197327%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt197327%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid197331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g197274197307%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self197268%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid197331%_
                                                     (cons _%code197325%_
                                                           _%loader197329%_))))))
                                   _%tl197280197303%_
                                   _%hd197279197301%_)))
                              (_%g197271197285%_ _%g197272197288%_))))
                      (_%g197271197285%_ _%g197272197288%_)))))
          (_%g197270197334%_ _%stx197269%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx197255%_ _%context-chain197256%_)
        (let _%lp197258%_ ((_%ctx197260%_ _%ctx197255%_) (_%path197261%_ '()))
          (let ((_%super197263%_
                 (##structure-ref _%ctx197260%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super197263%_ _%context-chain197256%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx197260%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path197261%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super197263%_
                       'gx#module-context::t))
                    (_%lp197258%_
                     _%super197263%_
                     (cons (car (##structure-ref
                                 _%ctx197260%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path197261%_))
                    (cons (let ((__tmp206364
                                 (##structure-ref
                                  _%ctx197260%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp206364))
                          _%path197261%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp197248%_ ((_%ctx197250%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r197251%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx197250%_ 'gx#module-context::t))
              (_%lp197248%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx197250%_ '3 '#f '#f))
               (cons _%ctx197250%_ _%r197251%_))
              _%r197251%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self197013%_ _%stx197014%_)
        (letrec* ((_%context-chain197016%_ (gxc#current-context-chain))
                  (_%make-import-spec197017%_
                   (lambda (_%in197185%_)
                     (let* ((_%in197186197198%_ _%in197185%_)
                            (_%E197188197201%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in197186197198%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K197189197211%_
                             (lambda (_%phi197204%_
                                      _%name197205%_
                                      _%src-name197206%_
                                      _%src-phi197207%_
                                      _%src-key197208%_
                                      _%src-ctx197209%_)
                               (cons _%phi197204%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name197205%_))
                                           (cons _%src-phi197207%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name197206%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in197186197198%_
                              'gx#module-import::t))
                           (let ((_%e197190197214%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in197186197198%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e197190197214%_
                                    'gx#module-export::t))
                                 (let* ((_%e197193197217%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197190197214%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx197220%_ _%e197193197217%_)
                                        (_%e197194197222%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197190197214%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key197225%_ _%e197194197222%_)
                                        (_%e197195197227%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197190197214%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi197230%_ _%e197195197227%_)
                                        (_%e197196197232%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197190197214%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name197235%_ _%e197196197232%_)
                                        (_%e197191197237%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197186197198%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name197240%_ _%e197191197237%_)
                                        (_%e197192197242%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197186197198%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi197245%_ _%e197192197242%_))
                                   (_%K197189197211%_
                                    _%phi197245%_
                                    _%name197240%_
                                    _%src-name197235%_
                                    _%src-phi197230%_
                                    _%src-key197225%_
                                    _%src-ctx197220%_))
                                 (_%E197188197201%_)))
                           (_%E197188197201%_)))))
                  (_%make-import-path197018%_
                   (lambda (_%ctx197183%_)
                     (gxc#generate-meta-import-path
                      _%ctx197183%_
                      _%context-chain197016%_)))
                  (_%make-import-spec-in197019%_
                   (lambda (_%ctx197180%_ _%in197181%_)
                     (cons 'spec:
                           (cons (_%make-import-path197018%_ _%ctx197180%_)
                                 (reverse _%in197181%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self197013%_ 'state)))
          (let* ((_%g197021197031%_
                  (lambda (_%g197022197028%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197022197028%_))))
                 (_%g197020197177%_
                  (lambda (_%g197022197034%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197022197034%_))
                        (let ((_%e197024197036%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197022197034%_))))
                          (let ((_%hd197025197039%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197024197036%_)))
                                (_%tl197026197041%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197024197036%_))))
                            ((lambda (_%g197023197044%_)
                               (let _%lp197055%_ ((_%rest197057%_
                                                   _%g197023197044%_)
                                                  (_%current-src197058%_ '#f)
                                                  (_%current-in197059%_ '())
                                                  (_%r197060%_ '()))
                                 (let* ((_%rest197061197069%_ _%rest197057%_)
                                        (_%else197063197079%_
                                         (lambda ()
                                           (let ((_%r197077%_
                                                  (if _%current-src197058%_
                                                      (cons (_%make-import-spec-in197019%_
                                                             _%current-src197058%_
                                                             _%current-in197059%_)
                                                            _%r197060%_)
                                                      _%r197060%_)))
                                             (cons '%#import
                                                   (reverse _%r197077%_)))))
                                        (_%K197065197165%_
                                         (lambda (_%rest197082%_ _%in197083%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in197083%_
                                                  'gx#module-import::t))
                                               (let* ((_%in197085197092%_
                                                       _%in197083%_)
                                                      (_%E197087197095%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in197085197092%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K197088197103%_
               (lambda (_%src-ctx197098%_)
                 (if (eq? _%current-src197058%_ _%src-ctx197098%_)
                     (_%lp197055%_
                      _%rest197082%_
                      _%current-src197058%_
                      (cons (_%make-import-spec197017%_ _%in197083%_)
                            _%current-in197059%_)
                      _%r197060%_)
                     (if _%current-src197058%_
                         (_%lp197055%_
                          _%rest197082%_
                          _%src-ctx197098%_
                          (cons (_%make-import-spec197017%_ _%in197083%_) '())
                          (cons (_%make-import-spec-in197019%_
                                 _%current-src197058%_
                                 _%current-in197059%_)
                                _%r197060%_))
                         (_%lp197055%_
                          _%rest197082%_
                          _%src-ctx197098%_
                          (cons (_%make-import-spec197017%_ _%in197083%_) '())
                          _%r197060%_)))))
              (_%e197089197106%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in197085197092%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e197089197106%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197090197109%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e197089197106%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx197112%_ _%e197090197109%_))
               (_%K197088197103%_ _%src-ctx197112%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E197087197095%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in197083%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi197115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197083%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src197117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197083%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in197157%_
                                                           (let* ((_%g197118197127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path197018%_ _%src197117%_))
                          (_%E197121197131%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g197118197127%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K197123197147%_
                            (lambda (_%path197145%_) _%path197145%_))
                           (_%K197122197137%_
                            (lambda (_%path197135%_)
                              (cons 'in: _%path197135%_))))
                       (if (pair? _%g197118197127%_)
                           (let ((_%tl197125197152%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g197118197127%_)))
                                 (_%hd197124197150%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g197118197127%_))))
                             (if (null? _%tl197125197152%_)
                                 (let ((_%path197155%_ _%hd197124197150%_))
                                   (_%K197123197147%_ _%path197155%_))
                                 (let ((_%path197140%_ _%g197118197127%_))
                                   (_%K197122197137%_ _%path197140%_))))
                           (let ((_%path197140%_ _%g197118197127%_))
                             (_%K197122197137%_ _%path197140%_))))))
                  (_%r197159%_
                   (if _%current-src197058%_
                       (cons (_%make-import-spec-in197019%_
                              _%current-src197058%_
                              _%current-in197059%_)
                             _%r197060%_)
                       _%r197060%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp197055%_
                                                      _%rest197082%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi197115%_)
                                                                _%src-in197157%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi197115%_
                                    (cons _%src-in197157%_ '()))))
                    _%r197159%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in197083%_
                                                          'gx#module-context::t))
                                                       (let ((_%r197163%_
                                                              (if _%current-src197058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in197019%_
                                 _%current-src197058%_
                                 _%current-in197059%_)
                                _%r197060%_)
                          _%r197060%_)))
                 (_%lp197055%_
                  _%rest197082%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path197018%_ _%in197083%_))
                        _%r197163%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest197061197069%_)
                                       (let ((_%hd197066197168%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197061197069%_)))
                                             (_%tl197067197170%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197061197069%_))))
                                         (let* ((_%in197173%_
                                                 _%hd197066197168%_)
                                                (_%rest197175%_
                                                 _%tl197067197170%_))
                                           (_%K197065197165%_
                                            _%rest197175%_
                                            _%in197173%_)))
                                       (_%else197063197079%_)))))
                             _%tl197026197041%_)))
                        (_%g197021197031%_ _%g197022197034%_)))))
            (_%g197020197177%_ _%stx197014%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self196823%_ _%stx196824%_)
        (letrec* ((_%context-chain196826%_ (gxc#current-context-chain))
                  (_%make-import-path196827%_
                   (lambda (_%ctx197011%_)
                     (gxc#generate-meta-import-path
                      _%ctx197011%_
                      _%context-chain196826%_))))
          (let* ((_%g196829196839%_
                  (lambda (_%g196830196836%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196830196836%_))))
                 (_%g196828197008%_
                  (lambda (_%g196830196842%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196830196842%_))
                        (let ((_%e196832196844%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196830196842%_))))
                          (let ((_%hd196833196847%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196832196844%_)))
                                (_%tl196834196849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196832196844%_))))
                            ((lambda (_%g196831196852%_)
                               (let _%lp196863%_ ((_%rest196865%_
                                                   _%g196831196852%_)
                                                  (_%r196866%_ '()))
                                 (let* ((_%rest196867196875%_ _%rest196865%_)
                                        (_%else196869196883%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r196866%_))))
                                        (_%K196871196996%_
                                         (lambda (_%rest196886%_ _%out196887%_)
                                           (let* ((_%out196888196901%_
                                                   _%out196887%_)
                                                  (_%E196891196905%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out196888196901%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K196895196975%_
                                                    (lambda (_%name196971%_
                                                             _%phi196972%_
                                                             _%key196973%_)
                                                      (_%lp196863%_
                                                       _%rest196886%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi196972%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key196973%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name196971%_))
                                             '()))))
                     _%r196866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K196892196955%_
                                                    (lambda (_%phi196909%_
                                                             _%src196910%_)
                                                      (let* ((_%out196950%_
                                                              (if _%src196910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g196911196920%_
                                              (_%make-import-path196827%_
                                               _%src196910%_))
                                             (_%E196914196924%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g196911196920%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K196916196940%_
                                               (lambda (_%path196938%_)
                                                 _%path196938%_))
                                              (_%K196915196930%_
                                               (lambda (_%path196928%_)
                                                 (cons 'in: _%path196928%_))))
                                          (if (pair? _%g196911196920%_)
                                              (let ((_%tl196918196945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g196911196920%_)))
                                                    (_%hd196917196943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g196911196920%_))))
                                                (if (null? _%tl196918196945%_)
                                                    (let ((_%path196948%_
                                                           _%hd196917196943%_))
                                                      (_%K196916196940%_
                                                       _%path196948%_))
                                                    (let ((_%path196933%_
                                                           _%g196911196920%_))
                                                      (_%K196915196930%_
                                                       _%path196933%_))))
                                              (let ((_%path196933%_
                                                     _%g196911196920%_))
                                                (_%K196915196930%_
                                                 _%path196933%_)))))
                                      '()))
                          '#t))
                     (_%out196952%_
                      (if (fxzero? _%phi196909%_)
                          _%out196950%_
                          (cons 'phi:
                                (cons _%phi196909%_
                                      (cons _%out196950%_ '()))))))
                (_%lp196863%_
                 _%rest196886%_
                 (cons _%out196952%_ _%r196866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match196890196968%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out196888196901%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e196893196958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196888196901%_
                               '1
                               '#f
                               '#f)))
                           (_%e196894196963%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196888196901%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src196961%_ _%e196893196958%_)
                            (_%phi196966%_ _%e196894196963%_))
                        (_%K196892196955%_ _%phi196966%_ _%src196961%_)))
                    (_%E196891196905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out196888196901%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196896196978%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out196888196901%_
                        '1
                        '#f
                        '#f)))
                    (_%e196897196981%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196888196901%_
                        '2
                        '#f
                        '#f)))
                    (_%e196898196986%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196888196901%_
                        '3
                        '#f
                        '#f)))
                    (_%e196899196991%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196888196901%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key196984%_ _%e196897196981%_)
                     (_%phi196989%_ _%e196898196986%_)
                     (_%name196994%_ _%e196899196991%_))
                 (_%K196895196975%_
                  _%name196994%_
                  _%phi196989%_
                  _%key196984%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match196890196968%_))))))))
                                   (if (pair? _%rest196867196875%_)
                                       (let ((_%hd196872196999%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest196867196875%_)))
                                             (_%tl196873197001%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest196867196875%_))))
                                         (let* ((_%out197004%_
                                                 _%hd196872196999%_)
                                                (_%rest197006%_
                                                 _%tl196873197001%_))
                                           (_%K196871196996%_
                                            _%rest197006%_
                                            _%out197004%_)))
                                       (_%else196869196883%_)))))
                             _%tl196834196849%_)))
                        (_%g196829196839%_ _%g196830196842%_)))))
            (_%g196828197008%_ _%stx196824%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self196784%_ _%stx196785%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196784%_ 'state)))
        (let* ((_%g196787196797%_
                (lambda (_%g196788196794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196788196794%_))))
               (_%g196786196820%_
                (lambda (_%g196788196800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196788196800%_))
                      (let ((_%e196790196802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196788196800%_))))
                        (let ((_%hd196791196805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196790196802%_)))
                              (_%tl196792196807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196790196802%_))))
                          ((lambda (_%g196789196810%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g196789196810%_)))
                           _%tl196792196807%_)))
                      (_%g196787196797%_ _%g196788196800%_)))))
          (_%g196786196820%_ _%stx196785%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self196659%_ _%stx196660%_)
        (letrec ((_%generate1196662%_
                  (lambda (_%id196779%_ _%eid196780%_)
                    (let ((_%eid196782%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid196780%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid196782%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx196660%_
                             _%eid196782%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id196779%_))
                            (cons _%eid196782%_ '()))))))
          (let* ((_%g196664196692%_
                  (lambda (_%g196665196689%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196665196689%_))))
                 (_%g196663196776%_
                  (lambda (_%g196665196695%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196665196695%_))
                        (let ((_%e196668196697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196665196695%_))))
                          (let ((_%hd196669196700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196668196697%_)))
                                (_%tl196670196702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196668196697%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl196670196702%_))
                                (let ((_g206365_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl196670196702%_
                                          '0))))
                                  (begin
                                    (let ((_g206366_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206365_)
                                                 (##values-length _g206365_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206366_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206366_)))
                                    (let ((_%target196671196705%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206365_ 0)))
                                          (_%tl196673196707%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206365_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196673196707%_))
                                          (letrec ((_%loop196674196710%_
                                                    (lambda (_%hd196672196713%_
                                                             _%eid196678196715%_
                                                             _%id196679196716%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd196672196713%_))
                                                          (let ((_%e196675196718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd196672196713%_))))
                    (let ((_%lp-hd196676196721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196675196718%_)))
                          (_%lp-tl196677196723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196675196718%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd196676196721%_))
                          (let ((_%e196682196726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd196676196721%_))))
                            (let ((_%hd196683196729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196682196726%_)))
                                  (_%tl196684196731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196682196726%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196684196731%_))
                                  (let ((_%e196685196734%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196684196731%_))))
                                    (let ((_%hd196686196737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196685196734%_)))
                                          (_%tl196687196739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196685196734%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196687196739%_))
                                          (_%loop196674196710%_
                                           _%lp-tl196677196723%_
                                           (cons _%hd196686196737%_
                                                 _%eid196678196715%_)
                                           (cons _%hd196683196729%_
                                                 _%id196679196716%_))
                                          (_%g196664196692%_
                                           _%g196665196695%_))))
                                  (_%g196664196692%_ _%g196665196695%_))))
                          (_%g196664196692%_ _%g196665196695%_))))
                  (let ((_%eid196680196742%_ (reverse _%eid196678196715%_))
                        (_%id196681196743%_ (reverse _%id196679196716%_)))
                    ((lambda (_%g196666196745%_ _%g196667196746%_)
                       (cons '%#extern
                             (map _%generate1196662%_
                                  (let ((__tmp206367
                                         (lambda (_%g196761196764%_
                                                  _%g196762196766%_)
                                           (cons _%g196761196764%_
                                                 _%g196762196766%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206367
                                     '()
                                     _%g196667196746%_))
                                  (let ((__tmp206368
                                         (lambda (_%g196768196771%_
                                                  _%g196769196773%_)
                                           (cons _%g196768196771%_
                                                 _%g196769196773%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206368
                                     '()
                                     _%g196666196745%_)))))
                     _%eid196680196742%_
                     _%id196681196743%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop196674196710%_
                                             _%target196671196705%_
                                             '()
                                             '()))
                                          (_%g196664196692%_
                                           _%g196665196695%_)))))
                                (_%g196664196692%_ _%g196665196695%_))))
                        (_%g196664196692%_ _%g196665196695%_)))))
            (_%g196663196776%_ _%stx196660%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self196448%_ _%stx196449%_)
        (letrec ((_%generate1196451%_
                  (lambda (_%id196653%_)
                    (let ((_%eid196655%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id196653%_)))
                          (_%ident196656%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id196653%_)))
                          (_%props196657%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id196653%_))))
                      (cons '%#define-runtime
                            (cons _%ident196656%_
                                  (cons _%eid196655%_ _%props196657%_))))))
                 (_%generate*196452%_
                  (lambda (_%all196621%_)
                    (let* ((_%all196622196630%_ _%all196621%_)
                           (_%else196624196638%_
                            (lambda () (cons '%#begin _%all196621%_)))
                           (_%K196626196643%_
                            (lambda (_%one196641%_) _%one196641%_)))
                      (if (pair? _%all196622196630%_)
                          (let ((_%hd196627196646%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all196622196630%_)))
                                (_%tl196628196648%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all196622196630%_))))
                            (let ((_%one196651%_ _%hd196627196646%_))
                              (if (null? _%tl196628196648%_)
                                  (_%K196626196643%_ _%one196651%_)
                                  (_%else196624196638%_))))
                          (_%else196624196638%_))))))
          (let* ((_%g196454196471%_
                  (lambda (_%g196455196468%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196455196468%_))))
                 (_%g196453196618%_
                  (lambda (_%g196455196474%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196455196474%_))
                        (let ((_%e196458196476%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196455196474%_))))
                          (let ((_%hd196459196479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196458196476%_)))
                                (_%tl196460196481%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196458196476%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196460196481%_))
                                (let ((_%e196461196484%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196460196481%_))))
                                  (let ((_%hd196462196487%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196461196484%_)))
                                        (_%tl196463196489%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196461196484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196463196489%_))
                                        (let ((_%e196464196492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196463196489%_))))
                                          (let ((_%hd196465196495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196464196492%_)))
                                                (_%tl196466196497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196464196492%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196466196497%_))
                                                ((lambda (_%g196456196500%_
                                                          _%g196457196501%_)
                                                   (let _%lp196517%_ ((_%rest196519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g196457196501%_)
                              (_%r196520%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx206103206104%_
                                                             _%rest196519%_)
                                                            (_%g196525196542%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx206103206104%_)))))
               (let ((_%__kont206105206106%_
                      (lambda (_%g196527196605%_)
                        (_%lp196517%_ _%g196527196605%_ _%r196520%_)))
                     (_%__kont206107206108%_
                      (lambda (_%g196532196578%_ _%g196533196579%_)
                        (_%lp196517%_
                         _%g196532196578%_
                         (cons (_%generate1196451%_ _%g196533196579%_)
                               _%r196520%_))))
                     (_%__kont206109206110%_
                      (lambda (_%g196537196554%_)
                        (_%generate*196452%_
                         (let ((__tmp206369
                                (cons (_%generate1196451%_ _%g196537196554%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp206369 _%r196520%_)))))
                     (_%__kont206111206112%_
                      (lambda ()
                        (_%generate*196452%_ (reverse! _%r196520%_)))))
                 (let ((_%g196523196565%_
                        (lambda ()
                          (let ((_%g196537196554%_ _%__stx206103206104%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g196537196554%_))
                                (_%__kont206109206110%_ _%g196537196554%_)
                                (_%__kont206111206112%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx206103206104%_))
                       (let ((_%e196528196594%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx206103206104%_))))
                         (let ((_%tl196530196599%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e196528196594%_)))
                               (_%hd196529196597%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e196528196594%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd196529196597%_))
                               (let ((_%e196531196602%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd196529196597%_))))
                                 (if (equal? _%e196531196602%_ '#f)
                                     (_%__kont206105206106%_
                                      _%tl196530196599%_)
                                     (_%__kont206107206108%_
                                      _%tl196530196599%_
                                      _%hd196529196597%_)))
                               (_%__kont206107206108%_
                                _%tl196530196599%_
                                _%hd196529196597%_))))
                       (let () (declare (not safe)) (_%g196523196565%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd196465196495%_
                                                 _%hd196462196487%_)
                                                (_%g196454196471%_
                                                 _%g196455196474%_))))
                                        (_%g196454196471%_
                                         _%g196455196474%_))))
                                (_%g196454196471%_ _%g196455196474%_))))
                        (_%g196454196471%_ _%g196455196474%_)))))
            (_%g196453196618%_ _%stx196449%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self196345%_ _%stx196346%_)
        (let* ((_%g196348196365%_
                (lambda (_%g196349196362%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196349196362%_))))
               (_%g196347196445%_
                (lambda (_%g196349196368%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196349196368%_))
                      (let ((_%e196352196370%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196349196368%_))))
                        (let ((_%hd196353196373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196352196370%_)))
                              (_%tl196354196375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196352196370%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196354196375%_))
                              (let ((_%e196355196378%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196354196375%_))))
                                (let ((_%hd196356196381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196355196378%_)))
                                      (_%tl196357196383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196355196378%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196357196383%_))
                                      (let ((_%e196358196386%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196357196383%_))))
                                        (let ((_%hd196359196389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196358196386%_)))
                                              (_%tl196360196391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196358196386%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196360196391%_))
                                              ((lambda (_%g196350196394%_
                                                        _%g196351196395%_)
                                                 (let* ((_%eid196410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g196351196395%_)))
                                                        (_%phi196412%_
                                                         (let ((__tmp206370
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp206370 '1)))
                (_%block196414%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self196345%_ 'state))
                  _%phi196412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g196417196424%_
                                                           (lambda (_%g196418196421%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g196418196421%_))))
                  (_%g196416196442%_
                   (lambda (_%g196418196427%_)
                     ((lambda (_%g196419196429%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self196345%_ 'state))
                         _%phi196412%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g196419196429%_
                                     (cons _%g196350196394%_ '())))))
                      _%g196418196427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196416196442%_
                                                      _%eid196410%_))
                                                   (if _%block196414%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block196414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g196351196395%_))
                                             (cons _%eid196410%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196351196395%_))
                           (cons _%eid196410%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196359196389%_
                                               _%hd196356196381%_)
                                              (_%g196348196365%_
                                               _%g196349196368%_))))
                                      (_%g196348196365%_ _%g196349196368%_))))
                              (_%g196348196365%_ _%g196349196368%_))))
                      (_%g196348196365%_ _%g196349196368%_)))))
          (_%g196347196445%_ _%stx196346%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self196277%_ _%stx196278%_)
        (let* ((_%g196280196297%_
                (lambda (_%g196281196294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196281196294%_))))
               (_%g196279196342%_
                (lambda (_%g196281196300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196281196300%_))
                      (let ((_%e196284196302%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196281196300%_))))
                        (let ((_%hd196285196305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196284196302%_)))
                              (_%tl196286196307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196284196302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196286196307%_))
                              (let ((_%e196287196310%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196286196307%_))))
                                (let ((_%hd196288196313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196287196310%_)))
                                      (_%tl196289196315%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196287196310%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196289196315%_))
                                      (let ((_%e196290196318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196289196315%_))))
                                        (let ((_%hd196291196321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196290196318%_)))
                                              (_%tl196292196323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196290196318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196292196323%_))
                                              ((lambda (_%g196282196326%_
                                                        _%g196283196327%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g196283196327%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196282196326%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196291196321%_
                                               _%hd196288196313%_)
                                              (_%g196280196297%_
                                               _%g196281196300%_))))
                                      (_%g196280196297%_ _%g196281196300%_))))
                              (_%g196280196297%_ _%g196281196300%_))))
                      (_%g196280196297%_ _%g196281196300%_)))))
          (_%g196279196342%_ _%stx196278%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self196274%_ _%stx196275%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196274%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196275%_)
        (gxc#generate-meta-define-values% _%self196274%_ _%stx196275%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self196271%_ _%stx196272%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196271%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196272%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp206372 (list)) (__tmp206371 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp206372
         '(src n open blocks)
         __tmp206371
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args196268%_
        (apply make-instance gxc#meta-state::t _%$args196268%_)))
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
      (lambda (_%self196254%_ _%ctx196255%_)
        (let ((_%self196258%_ _%self196254%_))
          (if (let ((__tmp206373
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196258%_))))
                (declare (not safe))
                (##fx< '4 __tmp206373))
              (begin
                (let ((__tmp206374
                       (let ((__tmp206375
                              (##structure-ref
                               _%ctx196255%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp206375))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196258%_
                   __tmp206374
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196258%_ '1 '2 '#f '#f))
                (let ((__tmp206376
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196258%_
                   __tmp206376
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196258%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp206377
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196258%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self196258%_
                       '4
                       __tmp206377))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp206379 (list)) (__tmp206378 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp206379
         '(ctx phi n code)
         __tmp206378
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args196129%_
        (apply make-instance gxc#meta-state-block::t _%$args196129%_)))
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
      (lambda (_%state196089%_ _%phi196090%_)
        (let* ((_%state196091196099%_ _%state196089%_)
               (_%E196093196102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state196091196099%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K196094196111%_
                (lambda (_%open196105%_ _%n196106%_ _%src196107%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open196105%_ _%phi196090%_))
                      '#f
                      (let ((_%block-ref196109%_
                             (let ((__tmp206380 (number->string _%n196106%_)))
                               (declare (not safe))
                               (##string-append
                                _%src196107%_
                                '"~"
                                __tmp206380))))
                        (##structure-set!
                         _%state196089%_
                         (let () (declare (not safe)) (##fx+ _%n196106%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp206381
                               (let ((__tmp206382
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp206382
                                  _%phi196090%_
                                  _%n196106%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open196105%_ _%phi196090%_ __tmp206381))
                        _%block-ref196109%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state196091196099%_
                 'gxc#meta-state::t))
              (let* ((_%e196095196114%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196091196099%_
                         '1
                         '#f
                         '#f)))
                     (_%src196117%_ _%e196095196114%_)
                     (_%e196096196119%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196091196099%_
                         '2
                         '#f
                         '#f)))
                     (_%n196122%_ _%e196096196119%_)
                     (_%e196097196124%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196091196099%_
                         '3
                         '#f
                         '#f)))
                     (_%open196127%_ _%e196097196124%_))
                (_%K196094196111%_ _%open196127%_ _%n196122%_ _%src196117%_))
              (_%E196093196102%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state196083%_ _%phi196084%_ _%stx196085%_)
        (let ((_%block196087%_
               (let ((__tmp206383
                      (##structure-ref
                       _%state196083%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp206383 _%phi196084%_))))
          (##structure-set!
           _%block196087%_
           (cons _%stx196085%_
                 (##structure-ref
                  _%block196087%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state196077%_)
        (##structure-set!
         _%state196077%_
         (let ((__tmp206386
                (lambda (_%_196079%_ _%block196080%_ _%r196081%_)
                  (cons _%block196080%_ _%r196081%_)))
               (__tmp206385
                (##structure-ref _%state196077%_ '4 gxc#meta-state::t '#f))
               (__tmp206384
                (##structure-ref _%state196077%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp206386 __tmp206385 __tmp206384))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state196077%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state196030%_)
        (gxc#meta-state-end-phi! _%state196030%_)
        (let ((__tmp206388
               (lambda (_%block196032%_ _%r196033%_)
                 (let* ((_%block196034196043%_ _%block196032%_)
                        (_%E196036196046%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block196034196043%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K196037196054%_
                         (lambda (_%code196049%_
                                  _%n196050%_
                                  _%phi196051%_
                                  _%ctx196052%_)
                           (if (null? _%code196049%_)
                               _%r196033%_
                               (cons (cons _%ctx196052%_
                                           (cons _%phi196051%_
                                                 (cons _%n196050%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code196049%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r196033%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block196034196043%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e196038196057%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196034196043%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx196060%_ _%e196038196057%_)
                              (_%e196039196062%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196034196043%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi196065%_ _%e196039196062%_)
                              (_%e196040196067%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196034196043%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n196070%_ _%e196040196067%_)
                              (_%e196041196072%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196034196043%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code196075%_ _%e196041196072%_))
                         (_%K196037196054%_
                          _%code196075%_
                          _%n196070%_
                          _%phi196065%_
                          _%ctx196060%_))
                       (_%E196036196046%_)))))
              (__tmp206387
               (##structure-ref _%state196030%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp206388 '() __tmp206387))))
    (define gxc#collect-expression-refs
      (lambda (_%stx196026%_)
        (let ((_%ht196028%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht196028%_ _%stx196026%_)
          _%ht196028%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self195969%_ _%stx195970%_)
        (let* ((_%g195972195985%_
                (lambda (_%g195973195982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195973195982%_))))
               (_%g195971196023%_
                (lambda (_%g195973195988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195973195988%_))
                      (let ((_%e195975195990%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195973195988%_))))
                        (let ((_%hd195976195993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195975195990%_)))
                              (_%tl195977195995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195975195990%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195977195995%_))
                              (let ((_%e195978195998%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195977195995%_))))
                                (let ((_%hd195979196001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195978195998%_)))
                                      (_%tl195980196003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195978195998%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195980196003%_))
                                      ((lambda (_%g195974196006%_)
                                         (let* ((_%bind196018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g195974196006%_)))
                                                (_%eid196020%_
                                                 (if _%bind196018%_
                                                     (##structure-ref
                                                      _%bind196018%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g195974196006%_))))
                                                (__tmp206389
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self195969%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp206389
                                            _%eid196020%_
                                            _%eid196020%_)))
                                       _%hd195979196001%_)
                                      (_%g195972195985%_ _%g195973195988%_))))
                              (_%g195972195985%_ _%g195973195988%_))))
                      (_%g195972195985%_ _%g195973195988%_)))))
          (_%g195971196023%_ _%stx195970%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self195896%_ _%stx195897%_)
        (let* ((_%g195899195916%_
                (lambda (_%g195900195913%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195900195913%_))))
               (_%g195898195966%_
                (lambda (_%g195900195919%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195900195919%_))
                      (let ((_%e195903195921%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195900195919%_))))
                        (let ((_%hd195904195924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195903195921%_)))
                              (_%tl195905195926%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195903195921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195905195926%_))
                              (let ((_%e195906195929%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195905195926%_))))
                                (let ((_%hd195907195932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195906195929%_)))
                                      (_%tl195908195934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195906195929%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195908195934%_))
                                      (let ((_%e195909195937%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195908195934%_))))
                                        (let ((_%hd195910195940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195909195937%_)))
                                              (_%tl195911195942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195909195937%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195911195942%_))
                                              ((lambda (_%g195901195945%_
                                                        _%g195902195946%_)
                                                 (let* ((_%bind195961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g195902195946%_)))
                                                        (_%eid195963%_
                                                         (if _%bind195961%_
                                                             (##structure-ref
                                                              _%bind195961%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g195902195946%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp206390
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self195896%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp206390
                                                      _%eid195963%_
                                                      _%eid195963%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self195896%_
                                                      _%g195901195945%_))))
                                               _%hd195910195940%_
                                               _%hd195907195932%_)
                                              (_%g195899195916%_
                                               _%g195900195919%_))))
                                      (_%g195899195916%_ _%g195900195919%_))))
                              (_%g195899195916%_ _%g195900195919%_))))
                      (_%g195899195916%_ _%g195900195919%_)))))
          (_%g195898195966%_ _%stx195897%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self195853%_ _%stx195854%_)
        (let* ((_%g195856195866%_
                (lambda (_%g195857195863%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195857195863%_))))
               (_%g195855195893%_
                (lambda (_%g195857195869%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195857195869%_))
                      (let ((_%e195859195871%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195857195869%_))))
                        (let ((_%hd195860195874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195859195871%_)))
                              (_%tl195861195876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195859195871%_))))
                          ((lambda (_%g195858195879%_)
                             (let ((__tmp206391
                                    (lambda (_%g195888195890%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self195853%_
                                         _%g195888195890%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp206391 _%g195858195879%_)))
                           _%tl195861195876%_)))
                      (_%g195856195866%_ _%g195857195869%_)))))
          (_%g195855195893%_ _%stx195854%_))))
    (define gxc#count-values-single%
      (lambda (_%self195850%_ _%stx195851%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self195718%_ _%stx195719%_)
        (let* ((_%__stx206133206134%_ _%stx195719%_)
               (_%g195722195751%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206133206134%_)))))
          (let ((_%__kont206135206136%_
                 (lambda (_%g195724195817%_ _%g195725195818%_)
                   (length (let ((__tmp206392
                                  (lambda (_%g195839195842%_ _%g195840195844%_)
                                    (cons _%g195839195842%_
                                          _%g195840195844%_))))
                             (declare (not safe))
                             (foldr__0 __tmp206392 '() _%g195724195817%_)))))
                (_%__kont206139206140%_ (lambda () '#f)))
            (let ((_%__match206178206179%_
                   (lambda (_%e195726195763%_
                            _%hd195727195766%_
                            _%tl195728195768%_
                            _%e195729195771%_
                            _%hd195730195774%_
                            _%tl195731195776%_
                            _%e195732195779%_
                            _%hd195733195782%_
                            _%tl195734195784%_
                            _%e195735195787%_
                            _%hd195736195790%_
                            _%tl195737195792%_
                            _%__splice206137206138%_
                            _%target195738195795%_
                            _%tl195740195797%_)
                     (letrec ((_%loop195741195800%_
                               (lambda (_%hd195739195803%_
                                        _%rand195745195805%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195739195803%_))
                                     (let ((_%e195742195807%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195739195803%_))))
                                       (let ((_%lp-tl195744195812%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195742195807%_)))
                                             (_%lp-hd195743195810%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195742195807%_))))
                                         (_%loop195741195800%_
                                          _%lp-tl195744195812%_
                                          (cons _%lp-hd195743195810%_
                                                _%rand195745195805%_))))
                                     (let ((_%rand195746195815%_
                                            (reverse _%rand195745195805%_)))
                                       (let ((_%g195724195817%_
                                              _%rand195746195815%_)
                                             (_%g195725195818%_
                                              _%hd195736195790%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g195725195818%_
                                                'values))
                                             (_%__kont206135206136%_
                                              _%g195724195817%_
                                              _%g195725195818%_)
                                             (_%__kont206139206140%_))))))))
                       (_%loop195741195800%_ _%target195738195795%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206133206134%_))
                  (let ((_%e195726195763%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206133206134%_))))
                    (let ((_%tl195728195768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195726195763%_)))
                          (_%hd195727195766%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195726195763%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195728195768%_))
                          (let ((_%e195729195771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195728195768%_))))
                            (let ((_%tl195731195776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195729195771%_)))
                                  (_%hd195730195774%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195729195771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195730195774%_))
                                  (let ((_%e195732195779%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195730195774%_))))
                                    (let ((_%tl195734195784%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195732195779%_)))
                                          (_%hd195733195782%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195732195779%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195733195782%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195733195782%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195734195784%_))
                                                  (let ((_%e195735195787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195734195784%_))))
                                                    (let ((_%tl195737195792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195735195787%_)))
                                                          (_%hd195736195790%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195735195787%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195737195792%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195731195776%_))
                      (let ((_%__splice206137206138%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195731195776%_
                                '0))))
                        (let ((_%tl195740195797%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206137206138%_ '1)))
                              (_%target195738195795%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206137206138%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195740195797%_))
                              (_%__match206178206179%_
                               _%e195726195763%_
                               _%hd195727195766%_
                               _%tl195728195768%_
                               _%e195729195771%_
                               _%hd195730195774%_
                               _%tl195731195776%_
                               _%e195732195779%_
                               _%hd195733195782%_
                               _%tl195734195784%_
                               _%e195735195787%_
                               _%hd195736195790%_
                               _%tl195737195792%_
                               _%__splice206137206138%_
                               _%target195738195795%_
                               _%tl195740195797%_)
                              (_%__kont206139206140%_))))
                      (_%__kont206139206140%_))
                  (_%__kont206139206140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206139206140%_))
                                              (_%__kont206139206140%_))
                                          (_%__kont206139206140%_))))
                                  (_%__kont206139206140%_))))
                          (_%__kont206139206140%_))))
                  (_%__kont206139206140%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self195623%_ _%stx195624%_)
        (let* ((_%g195626195647%_
                (lambda (_%g195627195644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195627195644%_))))
               (_%g195625195715%_
                (lambda (_%g195627195650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195627195650%_))
                      (let ((_%e195631195652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195627195650%_))))
                        (let ((_%hd195632195655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195631195652%_)))
                              (_%tl195633195657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195631195652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195633195657%_))
                              (let ((_%e195634195660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195633195657%_))))
                                (let ((_%hd195635195663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195634195660%_)))
                                      (_%tl195636195665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195634195660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195636195665%_))
                                      (let ((_%e195637195668%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195636195665%_))))
                                        (let ((_%hd195638195671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195637195668%_)))
                                              (_%tl195639195673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195637195668%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195639195673%_))
                                              (let ((_%e195640195676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195639195673%_))))
                                                (let ((_%hd195641195679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195640195676%_)))
                                                      (_%tl195642195681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195640195676%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195642195681%_))
                                                      ((lambda (_%g195628195684%_
                                                                _%g195629195685%_
                                                                _%g195630195686%_)
                                                         (let ((_%c1195703195705%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self195623%_
                           _%g195629195685%_))))
                   (if _%c1195703195705%_
                       (let* ((_%c1195707%_ _%c1195703195705%_)
                              (_%c2195708195710%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195623%_
                                  _%g195628195684%_))))
                         (if _%c2195708195710%_
                             (let ((_%c2195712%_ _%c2195708195710%_))
                               (if (fx= _%c1195707%_ _%c2195712%_)
                                   _%c1195707%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd195641195679%_
               _%hd195638195671%_
               _%hd195635195663%_)
              (_%g195626195647%_ _%g195627195650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195626195647%_
                                               _%g195627195650%_))))
                                      (_%g195626195647%_ _%g195627195650%_))))
                              (_%g195626195647%_ _%g195627195650%_))))
                      (_%g195626195647%_ _%g195627195650%_)))))
          (_%g195625195715%_ _%stx195624%_))))))
