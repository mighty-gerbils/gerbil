(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710699091)
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
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e112507_
                  (lambda (_id112509_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112509_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112507_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp113865 (list gxc#::void::t))
            (__tmp113863
             (let ((__tmp113864
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113864 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp113865
         '()
         __tmp113863
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112503_
        (apply make-instance gxc#::collect-bindings::t _$args112503_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp113866
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
                 (seal-class! gxc#::collect-bindings::t)))))
        (declare (not safe))
        (make-promise __tmp113866)))
    (define gxc#apply-collect-bindings
      (lambda (_stx112495_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112498_
                (let ((__obj113839
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj113839))
               (__tmp113867
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112498_ _stx112495_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113867
           gxc#current-compile-method
           _self112498_))))
    (define gxc#::lift-modules::t
      (let ((__tmp113870 (list gxc#::void::t))
            (__tmp113868
             (let ((__tmp113869
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113869 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp113870
         '(modules)
         __tmp113868
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112492_
        (apply make-instance gxc#::lift-modules::t _$args112492_)))
    (define gxc#::lift-modules-modules
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-bind-methods!
      (let ((__tmp113871
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
                 (seal-class! gxc#::lift-modules::t)))))
        (declare (not safe))
        (make-promise __tmp113871)))
    (define gxc#apply-lift-modules__%
      (lambda (_g113872_ _modules112463112466_ _stx112468_)
        (let ((_modules112471_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112463112466_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112463112466_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112473_
                  (let ((__obj113841
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113841
                       _modules112471_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj113841))
                 (__tmp113873
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112473_ _stx112468_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113873
             gxc#current-compile-method
             _self112473_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112462112480_ . _args112482_)
        (apply gxc#apply-lift-modules__%
               _keys112462112480_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112462112480_
                  'modules:
                  absent-value))
               _args112482_)))
    (define gxc#apply-lift-modules
      (lambda _args112464112488_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112464112488_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp113876 (list))
            (__tmp113874
             (let ((__tmp113875
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113875 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp113876
         '()
         __tmp113874
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112458_
        (apply make-instance gxc#::find-runtime-code::t _$args112458_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp113877
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
                 (seal-class! gxc#::find-runtime-code::t)))))
        (declare (not safe))
        (make-promise __tmp113877)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx112450_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112453_
                (let ((__obj113843
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj113843))
               (__tmp113878
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112453_ _stx112450_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113878
           gxc#current-compile-method
           _self112453_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp113881 (list gxc#::false::t))
            (__tmp113879
             (let ((__tmp113880
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113880 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp113881
         '()
         __tmp113879
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112447_
        (apply make-instance gxc#::find-lambda-expression::t _$args112447_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp113882
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
                 (seal-class! gxc#::find-lambda-expression::t)))))
        (declare (not safe))
        (make-promise __tmp113882)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx112439_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112442_
                (let ((__obj113845
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj113845))
               (__tmp113883
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112442_ _stx112439_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113883
           gxc#current-compile-method
           _self112442_))))
    (define gxc#::count-values::t
      (let ((__tmp113886 (list gxc#::false-expression::t))
            (__tmp113884
             (let ((__tmp113885
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113885 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp113886
         '()
         __tmp113884
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112436_
        (apply make-instance gxc#::count-values::t _$args112436_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp113887
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
                 (seal-class! gxc#::count-values::t)))))
        (declare (not safe))
        (make-promise __tmp113887)))
    (define gxc#apply-count-values
      (lambda (_stx112428_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112431_
                (let ((__obj113847
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj113847))
               (__tmp113888
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112431_ _stx112428_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113888
           gxc#current-compile-method
           _self112431_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp113889 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp113889
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112425_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112425_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp113890
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
        (make-promise __tmp113890)))
    (define gxc#::generate-loader::t
      (let ((__tmp113893 (list gxc#::generate-runtime-empty::t))
            (__tmp113891
             (let ((__tmp113892
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113892 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp113893
         '()
         __tmp113891
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112421_
        (apply make-instance gxc#::generate-loader::t _$args112421_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp113894
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
                 (seal-class! gxc#::generate-loader::t)))))
        (declare (not safe))
        (make-promise __tmp113894)))
    (define gxc#apply-generate-loader
      (lambda (_stx112413_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112416_
                (let ((__obj113850
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj113850))
               (__tmp113895
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112416_ _stx112413_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113895
           gxc#current-compile-method
           _self112416_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp113896 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp113896
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112410_
        (apply make-instance gxc#::generate-runtime::t _$args112410_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp113897
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
        (make-promise __tmp113897)))
    (define gxc#apply-generate-runtime
      (lambda (_stx112402_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112405_
                (let ((__obj113852
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj113852))
               (__tmp113898
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112405_ _stx112402_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113898
           gxc#current-compile-method
           _self112405_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp113901 (list gxc#::generate-runtime::t))
            (__tmp113899
             (let ((__tmp113900
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113900 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp113901
         '()
         __tmp113899
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112399_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112399_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp113902
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
                 (seal-class! gxc#::generate-runtime-phi::t)))))
        (declare (not safe))
        (make-promise __tmp113902)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx112391_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112394_
                (let ((__obj113854
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj113854))
               (__tmp113903
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112394_ _stx112391_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113903
           gxc#current-compile-method
           _self112394_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp113904 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp113904
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112388_
        (apply make-instance gxc#::collect-expression-refs::t _$args112388_)))
    (define gxc#::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-expression-refs::t 'table)))
    (define gxc#::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-expression-refs::t 'table)))
    (define gxc#&::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#&::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#::collect-expression-refs-bind-methods!
      (let ((__tmp113905
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
        (make-promise __tmp113905)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_g113906_ _table112359112362_ _stx112364_)
        (let ((_table112367_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112359112362_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112359112362_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112369_
                  (let ((__obj113856
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113856
                       _table112367_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj113856))
                 (__tmp113907
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112369_ _stx112364_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113907
             gxc#current-compile-method
             _self112369_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112358112376_ . _args112378_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112358112376_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112358112376_ 'table: absent-value))
               _args112378_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112360112384_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112360112384_)))
    (define gxc#::generate-meta::t
      (let ((__tmp113910 (list gxc#::void-expression::t))
            (__tmp113908
             (let ((__tmp113909
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113909 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp113910
         '(state)
         __tmp113908
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112354_
        (apply make-instance gxc#::generate-meta::t _$args112354_)))
    (define gxc#::generate-meta-state
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-bind-methods!
      (let ((__tmp113911
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
                 (seal-class! gxc#::generate-meta::t)))))
        (declare (not safe))
        (make-promise __tmp113911)))
    (define gxc#apply-generate-meta__%
      (lambda (_g113912_ _state112325112328_ _stx112330_)
        (let ((_state112333_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112325112328_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112325112328_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112335_
                  (let ((__obj113858
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113858
                       _state112333_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj113858))
                 (__tmp113913
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112335_ _stx112330_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113913
             gxc#current-compile-method
             _self112335_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112324112342_ . _args112344_)
        (apply gxc#apply-generate-meta__%
               _keys112324112342_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112324112342_ 'state: absent-value))
               _args112344_)))
    (define gxc#apply-generate-meta
      (lambda _args112326112350_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112326112350_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp113916 (list))
            (__tmp113914
             (let ((__tmp113915
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113915 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp113916
         '(state)
         __tmp113914
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112320_
        (apply make-instance gxc#::generate-meta-phi::t _$args112320_)))
    (define gxc#::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::generate-meta-phi::t 'state)))
    (define gxc#::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::generate-meta-phi::t 'state)))
    (define gxc#&::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#&::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::generate-meta-phi::t 'state)))
    (define gxc#::generate-meta-phi-bind-methods!
      (let ((__tmp113917
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
                 (seal-class! gxc#::generate-meta-phi::t)))))
        (declare (not safe))
        (make-promise __tmp113917)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_g113918_ _state112291112294_ _stx112296_)
        (let ((_state112299_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112291112294_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112291112294_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112301_
                  (let ((__obj113860
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113860
                       _state112299_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj113860))
                 (__tmp113919
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112301_ _stx112296_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113919
             gxc#current-compile-method
             _self112301_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112290112308_ . _args112310_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112290112308_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112290112308_ 'state: absent-value))
               _args112310_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112292112316_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112292112316_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112219_ _stx112220_)
        (let* ((_g112222112239_
                (lambda (_g112223112236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112223112236_))))
               (_g112221112286_
                (lambda (_g112223112242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112223112242_))
                      (let ((_e112228112244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112223112242_))))
                        (let ((_hd112227112247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112228112244_)))
                              (_tl112226112249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112228112244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112226112249_))
                              (let ((_e112231112252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112226112249_))))
                                (let ((_hd112230112255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112231112252_)))
                                      (_tl112229112257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112231112252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112229112257_))
                                      (let ((_e112234112260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112229112257_))))
                                        (let ((_hd112233112263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112234112260_)))
                                              (_tl112232112265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112234112260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112232112265_))
                                              ((lambda (_L112268_ _L112269_)
                                                 (let ((__tmp113920
                                                        (lambda (_bind112284_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112284_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112284_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp113920
                                                    _L112269_)))
                                               _hd112233112263_
                                               _hd112230112255_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112222112239_
                                                 _g112223112242_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112222112239_ _g112223112242_)))))
                              (let ()
                                (declare (not safe))
                                (_g112222112239_ _g112223112242_)))))
                      (let ()
                        (declare (not safe))
                        (_g112222112239_ _g112223112242_))))))
          (declare (not safe))
          (_g112221112286_ _stx112220_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112151_ _stx112152_)
        (let* ((_g112154112171_
                (lambda (_g112155112168_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112155112168_))))
               (_g112153112216_
                (lambda (_g112155112174_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112155112174_))
                      (let ((_e112160112176_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112155112174_))))
                        (let ((_hd112159112179_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112160112176_)))
                              (_tl112158112181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112160112176_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112158112181_))
                              (let ((_e112163112184_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112158112181_))))
                                (let ((_hd112162112187_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112163112184_)))
                                      (_tl112161112189_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112163112184_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112161112189_))
                                      (let ((_e112166112192_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112161112189_))))
                                        (let ((_hd112165112195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112166112192_)))
                                              (_tl112164112197_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112166112192_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112164112197_))
                                              ((lambda (_L112200_ _L112201_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112201_
                                                    '#t)))
                                               _hd112165112195_
                                               _hd112162112187_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112154112171_
                                                 _g112155112174_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112154112171_ _g112155112174_)))))
                              (let ()
                                (declare (not safe))
                                (_g112154112171_ _g112155112174_)))))
                      (let ()
                        (declare (not safe))
                        (_g112154112171_ _g112155112174_))))))
          (declare (not safe))
          (_g112153112216_ _stx112152_))))
    (define gxc#lift-modules-module%
      (lambda (_self112093_ _stx112094_)
        (let* ((_g112096112110_
                (lambda (_g112097112107_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112097112107_))))
               (_g112095112148_
                (lambda (_g112097112113_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112097112113_))
                      (let ((_e112102112115_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112097112113_))))
                        (let ((_hd112101112118_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112102112115_)))
                              (_tl112100112120_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112102112115_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112100112120_))
                              (let ((_e112105112123_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112100112120_))))
                                (let ((_hd112104112126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112105112123_)))
                                      (_tl112103112128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112105112123_))))
                                  ((lambda (_L112131_ _L112132_)
                                     (let ((_ctx112145_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112132_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112093_ 'modules))
                                        (let ((__tmp113921
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112093_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112145_ __tmp113921)))
                                       (let ((__tmp113922
                                              (lambda ()
                                                (let ((__tmp113923
                                                       (##structure-ref
                                                        _ctx112145_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112093_
                                                   __tmp113923)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp113922
                                          gx#current-expander-context
                                          _ctx112145_))))
                                   _tl112103112128_
                                   _hd112104112126_)))
                              (let ()
                                (declare (not safe))
                                (_g112096112110_ _g112097112113_)))))
                      (let ()
                        (declare (not safe))
                        (_g112096112110_ _g112097112113_))))))
          (declare (not safe))
          (_g112095112148_ _stx112094_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112049112051_ (gxc#current-compile-decls)))
          (if _decls112049112051_
              (let ((_decls112054_ _decls112049112051_))
                (let _lp112056_ ((_rest112058_ _decls112054_))
                  (let* ((_rest112059112067_ _rest112058_)
                         (_else112061112075_ (lambda () '#f))
                         (_K112063112081_
                          (lambda (_decls112078_ _decl112079_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112079_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112079_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112056_ _decls112078_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112059112067_))
                        (let ((_hd112064112084_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112059112067_)))
                              (_tl112065112086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112059112067_))))
                          (let* ((_decl112089_ _hd112064112084_)
                                 (_decls112091_ _tl112065112086_))
                            (declare (not safe))
                            (_K112063112081_ _decls112091_ _decl112089_)))
                        (let () (declare (not safe)) (_else112061112075_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112043_ _syntax?112044_)
        (let ((_eid112046_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112043_))
                '1
                gx#binding::t
                '#f))
              (_ht112047_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _eid112046_))
              '#!void
              (let ((__tmp113924
                     (let ((__tmp113925
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112046_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp113925 _syntax?112044_))))
                (declare (not safe))
                (hash-put! _ht112047_ _eid112046_ __tmp113924))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112036_ _id2112037_)
        (letrec ((_symbol-e112039_
                  (lambda (_id112041_)
                    (if (let () (declare (not safe)) (symbol? _id112041_))
                        _id112041_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112041_))))))
          (let ((__tmp113927
                 (let () (declare (not safe)) (_symbol-e112039_ _id1112036_)))
                (__tmp113926
                 (let () (declare (not safe)) (_symbol-e112039_ _id2112037_))))
            (declare (not safe))
            (eq? __tmp113927 __tmp113926)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112014_)
        (let ((_$e112016_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112014_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112014_))
                   '#f)))
          (if _$e112016_
              ((lambda (_bind112019_)
                 (let ((_eid112021_
                        (##structure-ref _bind112019_ '1 gx#binding::t '#f))
                       (_ht112022_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _eid112021_))
                       _eid112021_
                       (let ((_$e112024_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112022_ _eid112021_))))
                         (if _$e112024_
                             (values _$e112024_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112019_
                                    'gx#local-binding::t))
                                 (let ((_gid112027_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112021_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112022_
                                      _eid112021_
                                      _gid112027_))
                                   _gid112027_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112019_
                                        'gx#module-binding::t))
                                     (let ((_gid112034_
                                            (let ((_$e112029_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112019_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112029_
                                                  ((lambda (_ns112032_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112032_
                                                        '"#"
                                                        _eid112021_)))
                                                   _$e112029_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112021_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112022_
                                          _eid112021_
                                          _gid112034_))
                                       _gid112034_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112014_
                                        _eid112021_
                                        _bind112019_)))))))))
               _$e112016_)
              (if (let ((__tmp113928
                         (let () (declare (not safe)) (gx#stx-e _id112014_))))
                    (declare (not safe))
                    (interned-symbol? __tmp113928))
                  (let () (declare (not safe)) (gx#stx-e _id112014_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112014_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112012_)
        (if (let () (declare (not safe)) (gx#identifier? _id112012_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112012_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym111992_ _quote?111993_)
        (let* ((_ht111995_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e111997_
                (let ()
                  (declare (not safe))
                  (hash-get _ht111995_ _sym111992_))))
          (if _$e111997_
              (values _$e111997_)
              (let ((_g112000_
                     (if _quote?111993_
                         (let ((__tmp113929 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym111992_
                            '"__"
                            __tmp113929))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym111992_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht111995_ _sym111992_ _g112000_))
                _g112000_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112005_)
        (let ((_quote?112007_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112005_
           _quote?112007_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g113931_
        (let ((_g113930_ (let () (declare (not safe)) (##length _g113931_))))
          (cond ((let () (declare (not safe)) (##fx= _g113930_ 1))
                 (apply (lambda (_sym112005_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112005_)))
                        _g113931_))
                ((let () (declare (not safe)) (##fx= _g113930_ 2))
                 (apply (lambda (_sym112009_ _quote?112010_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112009_
                             _quote?112010_)))
                        _g113931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g113931_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id111989_)
        (let ((__tmp113932
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id111989_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp113932))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key111949_)
        (if (let () (declare (not safe)) (interned-symbol? _key111949_))
            _key111949_
            (if (uninterned-symbol? _key111949_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key111949_))
                (let* ((_key111950111957_ _key111949_)
                       (_E111952111961_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key111950111957_))))
                       (_K111953111977_
                        (lambda (_mark111964_ _eid111965_)
                          (let ((_$e111967_
                                 (##structure-ref
                                  _mark111964_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e111967_
                                ((lambda (_ht111970_)
                                   (let ((_$e111972_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht111970_
                                             _eid111965_))))
                                     (if _$e111972_
                                         ((lambda (_id111975_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _id111975_))
                                                _id111975_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id111975_))))
                                          _$e111972_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid111965_)))))
                                 _$e111967_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid111965_)))))))
                  (if (let () (declare (not safe)) (##pair? _key111950111957_))
                      (let ((_hd111954111980_
                             (let ()
                               (declare (not safe))
                               (##car _key111950111957_)))
                            (_tl111955111982_
                             (let ()
                               (declare (not safe))
                               (##cdr _key111950111957_))))
                        (let* ((_eid111985_ _hd111954111980_)
                               (_mark111987_ _tl111955111982_))
                          (declare (not safe))
                          (_K111953111977_ _mark111987_ _eid111985_)))
                      (let () (declare (not safe)) (_E111952111961_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top111936_)
        (if _top111936_
            (let ((_ns111938_
                   (##structure-ref
                    (let ((__tmp113934 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp113934))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi111939_ (gx#current-expander-phi)))
              (if _ns111938_
                  (if (fxpositive? _phi111939_)
                      (let ((__tmp113940 (number->string _phi111939_))
                            (__tmp113939 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns111938_
                         '"["
                         __tmp113940
                         '"]#_"
                         __tmp113939
                         '"_"))
                      (let ((__tmp113938 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns111938_ '"#_" __tmp113938 '"_")))
                  (if (fxpositive? _phi111939_)
                      (let ((__tmp113937 (number->string _phi111939_))
                            (__tmp113936 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp113937
                         '"]#_"
                         __tmp113936
                         '"_"))
                      (let ((__tmp113935 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp113935 '"_")))))
            (let ((__tmp113933 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp113933 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top111945_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top111945_))))
    (define gxc#generate-runtime-temporary
      (lambda _g113942_
        (let ((_g113941_ (let () (declare (not safe)) (##length _g113942_))))
          (cond ((let () (declare (not safe)) (##fx= _g113941_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g113942_))
                ((let () (declare (not safe)) (##fx= _g113941_ 1))
                 (apply (lambda (_top111947_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top111947_)))
                        _g113942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g113942_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self111932_ _stx111933_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self111779_ _stx111780_)
        (letrec ((_simplify111782_
                  (lambda (_body111830_)
                    (let _lp111832_ ((_rest111834_ _body111830_)
                                     (_r111835_ '()))
                      (let* ((_rest111836111844_ _rest111834_)
                             (_else111838111852_
                              (lambda () (reverse _r111835_)))
                             (_K111840111920_
                              (lambda (_rest111855_ _hd111856_)
                                (let* ((_hd111857111873_ _hd111856_)
                                       (_else111861111881_
                                        (lambda ()
                                          (let ((__tmp113943
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd111856_
                                                         _r111835_))))
                                            (declare (not safe))
                                            (_lp111832_
                                             _rest111855_
                                             __tmp113943)))))
                                  (let ((_K111869111910_
                                         (lambda (_exprs111908_)
                                           (let ((__tmp113944
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest111855_
                                                            _exprs111908_))))
                                             (declare (not safe))
                                             (_lp111832_
                                              __tmp113944
                                              _r111835_))))
                                        (_K111864111894_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest111855_))
                                               (let ((__tmp113945
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd111856_
                                                              _r111835_))))
                                                 (declare (not safe))
                                                 (_lp111832_
                                                  _rest111855_
                                                  __tmp113945))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp111832_
                                                  _rest111855_
                                                  _r111835_)))))
                                        (_K111863111886_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest111855_))
                                               (let ((__tmp113946
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd111856_
                                                              _r111835_))))
                                                 (declare (not safe))
                                                 (_lp111832_
                                                  _rest111855_
                                                  __tmp113946))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp111832_
                                                  _rest111855_
                                                  _r111835_))))))
                                    (let ((_try-match111860111889_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd111857111873_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K111863111886_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else111861111881_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd111857111873_))
                                          (let ((_tl111871111915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd111857111873_)))
                                                (_hd111870111913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd111857111873_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd111870111913_
                                                         'begin))
                                                (let ((_exprs111918_
                                                       _tl111871111915_))
                                                  (declare (not safe))
                                                  (_K111869111910_
                                                   _exprs111918_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd111870111913_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl111871111915_))
                                                        (let ((_tl111868111902_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl111871111915_))))
                  (if (let () (declare (not safe)) (##null? _tl111868111902_))
                      (let () (declare (not safe)) (_K111864111894_))
                      (let () (declare (not safe)) (_try-match111860111889_))))
                (let () (declare (not safe)) (_try-match111860111889_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match111860111889_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match111860111889_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest111836111844_))
                            (let ((_hd111841111923_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest111836111844_)))
                                  (_tl111842111925_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest111836111844_))))
                              (let* ((_hd111928_ _hd111841111923_)
                                     (_rest111930_ _tl111842111925_))
                                (declare (not safe))
                                (_K111840111920_ _rest111930_ _hd111928_)))
                            (let ()
                              (declare (not safe))
                              (_else111838111852_))))))))
          (let* ((_g111784111794_
                  (lambda (_g111785111791_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g111785111791_))))
                 (_g111783111827_
                  (lambda (_g111785111797_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g111785111797_))
                        (let ((_e111789111799_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g111785111797_))))
                          (let ((_hd111788111802_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e111789111799_)))
                                (_tl111787111804_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e111789111799_))))
                            ((lambda (_L111807_)
                               (let* ((_body111822_
                                       (map (lambda (_g111817111819_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self111779_
                                                 _g111817111819_)))
                                            _L111807_))
                                      (_body111824_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify111782_ _body111822_))))
                                 (if (fx= (length _body111824_) '1)
                                     (car _body111824_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body111824_)))))
                             _tl111787111804_)))
                        (let ()
                          (declare (not safe))
                          (_g111784111794_ _g111785111797_))))))
            (declare (not safe))
            (_g111783111827_ _stx111780_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self111740_ _stx111741_)
        (let* ((_g111743111753_
                (lambda (_g111744111750_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111744111750_))))
               (_g111742111776_
                (lambda (_g111744111756_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111744111756_))
                      (let ((_e111748111758_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111744111756_))))
                        (let ((_hd111747111761_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111748111758_)))
                              (_tl111746111763_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111748111758_))))
                          ((lambda (_L111766_)
                             (let ((__tmp113947
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L111766_))))
                               (declare (not safe))
                               (cons 'begin __tmp113947)))
                           _tl111746111763_)))
                      (let ()
                        (declare (not safe))
                        (_g111743111753_ _g111744111756_))))))
          (declare (not safe))
          (_g111742111776_ _stx111741_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111504_ _stx111505_)
        (let* ((___stx112532112533_ _stx111505_)
               (_g111509111561_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112532112533_)))))
          (let ((___kont112534112535_
                 (lambda (_L111722_ _L111723_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111504_ _L111722_))))
                (___kont112536112537_
                 (lambda (_L111670_ _L111671_ _L111672_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111504_ _L111670_))))
                (___kont112540112541_
                 (lambda (_L111590_ _L111591_)
                   (let ((_decls111606_ (map gx#syntax->datum _L111591_)))
                     (let ((__tmp113950
                            (lambda ()
                              (let ((__tmp113951
                                     (let ((__tmp113954
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111606_)))
                                           (__tmp113952
                                            (let ((__tmp113953
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111504_
                                                      _L111590_))))
                                              (declare (not safe))
                                              (cons __tmp113953 '()))))
                                       (declare (not safe))
                                       (cons __tmp113954 __tmp113952))))
                                (declare (not safe))
                                (cons 'begin __tmp113951))))
                           (__tmp113948
                            (let ((__tmp113949 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp113949 _decls111606_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp113950
                        gxc#current-compile-decls
                        __tmp113948))))))
            (let* ((___match112587112588_
                    (lambda (_e111527111614_
                             _hd111526111617_
                             _tl111525111619_
                             _e111530111622_
                             _hd111529111625_
                             _tl111528111627_
                             _e111533111630_
                             _hd111532111633_
                             _tl111531111635_
                             ___splice112538112539_
                             _target111534111638_
                             _tl111536111640_)
                      (letrec ((_loop111537111643_
                                (lambda (_hd111535111646_ _param111541111648_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111535111646_))
                                      (let ((_e111538111651_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111535111646_))))
                                        (let ((_lp-tl111540111656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111538111651_)))
                                              (_lp-hd111539111654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111538111651_))))
                                          (let ((__tmp113956
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111539111654_
                                                         _param111541111648_))))
                                            (declare (not safe))
                                            (_loop111537111643_
                                             _lp-tl111540111656_
                                             __tmp113956))))
                                      (let ((_param111542111659_
                                             (reverse _param111541111648_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111528111627_))
                                            (let ((_e111545111662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111528111627_))))
                                              (let ((_tl111543111667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111545111662_)))
                                                    (_hd111544111665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111545111662_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111543111667_))
                                                    (let ((_L111670_
                                                           _hd111544111665_)
                                                          (_L111671_
                                                           _param111542111659_)
                                                          (_L111672_
                                                           _hd111532111633_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L111672_))
                       (let ((__tmp113955
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L111672_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp113955)))
                  (___kont112536112537_ _L111670_ _L111671_ _L111672_)
                  (___kont112540112541_ _hd111544111665_ _hd111529111625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111509111561_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111509111561_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111537111643_ _target111534111638_ '())))))
                   (___match112561112562_
                    (lambda (_e111515111698_
                             _hd111514111701_
                             _tl111513111703_
                             _e111518111706_
                             _hd111517111709_
                             _tl111516111711_
                             _e111521111714_
                             _hd111520111717_
                             _tl111519111719_)
                      (let ((_L111722_ _hd111520111717_)
                            (_L111723_ _hd111517111709_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L111723_))
                            (___kont112534112535_ _L111722_ _L111723_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111517111709_))
                                (let ((_e111533111630_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111517111709_))))
                                  (let ((_tl111531111635_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111533111630_)))
                                        (_hd111532111633_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111533111630_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111531111635_))
                                        (let ((___splice112538112539_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111531111635_
                                                  '0))))
                                          (let ((_tl111536111640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112538112539_
                                                    '1)))
                                                (_target111534111638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112538112539_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111536111640_))
                                                (___match112587112588_
                                                 _e111515111698_
                                                 _hd111514111701_
                                                 _tl111513111703_
                                                 _e111518111706_
                                                 _hd111517111709_
                                                 _tl111516111711_
                                                 _e111533111630_
                                                 _hd111532111633_
                                                 _tl111531111635_
                                                 ___splice112538112539_
                                                 _target111534111638_
                                                 _tl111536111640_)
                                                (___kont112540112541_
                                                 _hd111520111717_
                                                 _hd111517111709_))))
                                        (___kont112540112541_
                                         _hd111520111717_
                                         _hd111517111709_))))
                                (___kont112540112541_
                                 _hd111520111717_
                                 _hd111517111709_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112532112533_))
                  (let ((_e111515111698_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112532112533_))))
                    (let ((_tl111513111703_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111515111698_)))
                          (_hd111514111701_
                           (let ()
                             (declare (not safe))
                             (##car _e111515111698_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111513111703_))
                          (let ((_e111518111706_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111513111703_))))
                            (let ((_tl111516111711_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111518111706_)))
                                  (_hd111517111709_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111518111706_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111516111711_))
                                  (let ((_e111521111714_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111516111711_))))
                                    (let ((_tl111519111719_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111521111714_)))
                                          (_hd111520111717_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111521111714_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111519111719_))
                                          (___match112561112562_
                                           _e111515111698_
                                           _hd111514111701_
                                           _tl111513111703_
                                           _e111518111706_
                                           _hd111517111709_
                                           _tl111516111711_
                                           _e111521111714_
                                           _hd111520111717_
                                           _tl111519111719_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111517111709_))
                                              (let ((_e111533111630_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111517111709_))))
                                                (let ((_tl111531111635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111533111630_)))
                                                      (_hd111532111633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111533111630_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111531111635_))
                                                      (let ((___splice112538112539_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111531111635_ '0))))
                (let ((_tl111536111640_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112538112539_ '1)))
                      (_target111534111638_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112538112539_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111536111640_))
                      (___match112587112588_
                       _e111515111698_
                       _hd111514111701_
                       _tl111513111703_
                       _e111518111706_
                       _hd111517111709_
                       _tl111516111711_
                       _e111533111630_
                       _hd111532111633_
                       _tl111531111635_
                       ___splice112538112539_
                       _target111534111638_
                       _tl111536111640_)
                      (let () (declare (not safe)) (_g111509111561_)))))
              (let () (declare (not safe)) (_g111509111561_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111509111561_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111517111709_))
                                      (let ((_e111533111630_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111517111709_))))
                                        (let ((_tl111531111635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111533111630_)))
                                              (_hd111532111633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111533111630_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111531111635_))
                                              (let ((___splice112538112539_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111531111635_
                                                        '0))))
                                                (let ((_tl111536111640_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112538112539_
                                                          '1)))
                                                      (_target111534111638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112538112539_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111536111640_))
                                                      (___match112587112588_
                                                       _e111515111698_
                                                       _hd111514111701_
                                                       _tl111513111703_
                                                       _e111518111706_
                                                       _hd111517111709_
                                                       _tl111516111711_
                                                       _e111533111630_
                                                       _hd111532111633_
                                                       _tl111531111635_
                                                       ___splice112538112539_
                                                       _target111534111638_
                                                       _tl111536111640_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111509111561_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111509111561_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111509111561_))))))
                          (let () (declare (not safe)) (_g111509111561_)))))
                  (let () (declare (not safe)) (_g111509111561_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111463_ _stx111464_)
        (let* ((_g111466111476_
                (lambda (_g111467111473_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111467111473_))))
               (_g111465111501_
                (lambda (_g111467111479_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111467111479_))
                      (let ((_e111471111481_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111467111479_))))
                        (let ((_hd111470111484_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111471111481_)))
                              (_tl111469111486_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111471111481_))))
                          ((lambda (_L111489_)
                             (let ((_decls111499_
                                    (map gx#syntax->datum _L111489_)))
                               (gxc#current-compile-decls
                                (let ((__tmp113957
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp113957 _decls111499_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111499_))))
                           _tl111469111486_)))
                      (let ()
                        (declare (not safe))
                        (_g111466111476_ _g111467111479_))))))
          (declare (not safe))
          (_g111465111501_ _stx111464_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111209_ _stx111210_)
        (let* ((_g111212111229_
                (lambda (_g111213111226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111213111226_))))
               (_g111211111460_
                (lambda (_g111213111232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111213111232_))
                      (let ((_e111218111234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111213111232_))))
                        (let ((_hd111217111237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111218111234_)))
                              (_tl111216111239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111218111234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111216111239_))
                              (let ((_e111221111242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111216111239_))))
                                (let ((_hd111220111245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111221111242_)))
                                      (_tl111219111247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111221111242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111219111247_))
                                      (let ((_e111224111250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111219111247_))))
                                        (let ((_hd111223111253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111224111250_)))
                                              (_tl111222111255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111224111250_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111222111255_))
                                              ((lambda (_L111258_ _L111259_)
                                                 (let* ((___stx112640112641_
                                                         _L111259_)
                                                        (_g111276111290_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx112640112641_)))))
                                                   (let ((___kont112642112643_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111209_
                                                               _L111258_))))
                                                         (___kont112644112645_
                                                          (lambda (_L111422_)
                                                            (let ((_eid111431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111422_))))
                      (let ((_lambda-expr111432111434_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111258_))))
                        (if _lambda-expr111432111434_
                            (let* ((_lambda-expr111437_
                                    _lambda-expr111432111434_)
                                   (__tmp113958
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp113958
                               _lambda-expr111437_
                               _eid111431_))
                            '#f))
                      (let ((__tmp113959
                             (let ((__tmp113960
                                    (let ((__tmp113961
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111209_
                                              _L111258_))))
                                      (declare (not safe))
                                      (cons __tmp113961 '()))))
                               (declare (not safe))
                               (cons _eid111431_ __tmp113960))))
                        (declare (not safe))
                        (cons 'define __tmp113959)))))
                 (___kont112646112647_
                  (lambda ()
                    (let* ((_tmp111297_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111406_
                            (let _lp111299_ ((_rest111301_ _L111259_)
                                             (_k111302_ '0)
                                             (_r111303_ '()))
                              (let* ((___stx112610112611_ _rest111301_)
                                     (_g111308111325_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112610112611_)))))
                                (let ((___kont112612112613_
                                       (lambda (_L111393_)
                                         (let ((__tmp113962
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111302_ '1))))
                                           (declare (not safe))
                                           (_lp111299_
                                            _L111393_
                                            __tmp113962
                                            _r111303_))))
                                      (___kont112614112615_
                                       (lambda (_L111366_ _L111367_)
                                         (let ((__tmp113969
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111302_ '1)))
                                               (__tmp113963
                                                (let ((__tmp113964
                                                       (let ((__tmp113965
                                                              (let ((__tmp113968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111367_)))
                            (__tmp113966
                             (let ((__tmp113967
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111297_
                                       _k111302_
                                       _L111366_))))
                               (declare (not safe))
                               (cons __tmp113967 '()))))
                        (declare (not safe))
                        (cons __tmp113968 __tmp113966))))
                 (declare (not safe))
                 (cons 'define __tmp113965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113964
                                                        _r111303_))))
                                           (declare (not safe))
                                           (_lp111299_
                                            _L111366_
                                            __tmp113969
                                            __tmp113963))))
                                      (___kont112616112617_
                                       (lambda (_L111337_)
                                         (let ((__tmp113970
                                                (let ((__tmp113971
                                                       (let ((__tmp113972
                                                              (let ((__tmp113975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111337_)))
                            (__tmp113973
                             (let ((__tmp113974
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111297_
                                       _k111302_))))
                               (declare (not safe))
                               (cons __tmp113974 '()))))
                        (declare (not safe))
                        (cons __tmp113975 __tmp113973))))
                 (declare (not safe))
                 (cons 'define __tmp113972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113971 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp113970
                                                   _r111303_))))
                                      (___kont112618112619_
                                       (lambda () (reverse _r111303_))))
                                  (let ((_g111306111353_
                                         (lambda ()
                                           (let ((_L111337_
                                                  ___stx112610112611_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111337_))
                                                 (___kont112616112617_
                                                  _L111337_)
                                                 (___kont112618112619_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112610112611_))
                                        (let ((_e111313111382_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112610112611_))))
                                          (let ((_tl111311111387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111313111382_)))
                                                (_hd111312111385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111313111382_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111312111385_))
                                                (let ((_e111314111390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111312111385_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111314111390_
                                                                '#f))
                                                      (___kont112612112613_
                                                       _tl111311111387_)
                                                      (___kont112614112615_
                                                       _tl111311111387_
                                                       _hd111312111385_)))
                                                (___kont112614112615_
                                                 _tl111311111387_
                                                 _hd111312111385_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111306111353_)))))))))
                      (let ((__tmp113976
                             (let ((__tmp113979
                                    (let ((__tmp113980
                                           (let ((__tmp113981
                                                  (let ((__tmp113982
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111209_
                                                            _L111258_))))
                                                    (declare (not safe))
                                                    (cons __tmp113982 '()))))
                                             (declare (not safe))
                                             (cons _tmp111297_ __tmp113981))))
                                      (declare (not safe))
                                      (cons 'define __tmp113980)))
                                   (__tmp113977
                                    (let ((__tmp113978
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111297_
                                              _L111259_
                                              _L111258_))))
                                      (declare (not safe))
                                      (cons __tmp113978 _body111406_))))
                               (declare (not safe))
                               (cons __tmp113979 __tmp113977))))
                        (declare (not safe))
                        (cons 'begin __tmp113976))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx112640112641_))
                                                         (let ((_e111280111444_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx112640112641_))))
                   (let ((_tl111278111449_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111280111444_)))
                         (_hd111279111447_
                          (let ()
                            (declare (not safe))
                            (##car _e111280111444_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111279111447_))
                         (let ((_e111281111452_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111279111447_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111281111452_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111278111449_))
                                   (___kont112642112643_)
                                   (___kont112646112647_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111278111449_))
                                   (___kont112644112645_ _hd111279111447_)
                                   (___kont112646112647_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111278111449_))
                             (___kont112644112645_ _hd111279111447_)
                             (___kont112646112647_)))))
                 (___kont112646112647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111223111253_
                                               _hd111220111245_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111212111229_
                                                 _g111213111232_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111212111229_ _g111213111232_)))))
                              (let ()
                                (declare (not safe))
                                (_g111212111229_ _g111213111232_)))))
                      (let ()
                        (declare (not safe))
                        (_g111212111229_ _g111213111232_))))))
          (declare (not safe))
          (_g111211111460_ _stx111210_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111185_ _hd111186_ _expr111187_)
        (let ((_$e111189_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111187_))))
          (if _$e111189_
              ((lambda (_count111192_)
                 (let ((_len111194_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111186_)))
                       (_cmp111195_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111186_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111194_ '0)
                           (_cmp111195_ _count111192_ _len111194_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111187_
                          _hd111186_)))))
               _$e111189_)
              (let* ((_len111200_
                      (let () (declare (not safe)) (gx#stx-length _hd111186_)))
                     (_cmp111202_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111186_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111204_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111186_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111200_)
                       '" values"))
                     (_count111206_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114006
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111186_))))
                           (declare (not safe))
                           (not __tmp114006))
                         (fx= _len111200_ '0))
                    '#!void
                    (let ((__tmp113983
                           (let ((__tmp114002
                                  (let ((__tmp114003
                                         (let ((__tmp114004
                                                (let ((__tmp114005
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111185_))))
                                                  (declare (not safe))
                                                  (cons __tmp114005 '()))))
                                           (declare (not safe))
                                           (cons _count111206_ __tmp114004))))
                                    (declare (not safe))
                                    (cons __tmp114003 '())))
                                 (__tmp113984
                                  (let ((__tmp113985
                                         (let ((__tmp113986
                                                (let ((__tmp113991
                                                       (let ((__tmp113992
                                                              (let ((__tmp113993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114000
                                        (let ((__tmp114001
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111200_ '()))))
                                          (declare (not safe))
                                          (cons _count111206_ __tmp114001))))
                                   (declare (not safe))
                                   (cons _cmp111202_ __tmp114000))
                                 (let ((__tmp113994
                                        (let ((__tmp113995
                                               (let ((__tmp113996
                                                      (let ((__tmp113997
                                                             (let ((__tmp113998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113999
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111200_ '()))))
                              (declare (not safe))
                              (cons _count111206_ __tmp113999))))
                       (declare (not safe))
                       (cons _cmp111202_ __tmp113998))))
                (declare (not safe))
                (cons __tmp113997 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp113996))))
                                          (declare (not safe))
                                          (cons '() __tmp113995))))
                                   (declare (not safe))
                                   (cons 'let __tmp113994)))))
                        (declare (not safe))
                        (cons __tmp113993 '()))))
                 (declare (not safe))
                 (cons 'not __tmp113992)))
              (__tmp113987
               (let ((__tmp113988
                      (let ((__tmp113989
                             (let ((__tmp113990
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111206_ '()))))
                               (declare (not safe))
                               (cons _errmsg111204_ __tmp113990))))
                        (declare (not safe))
                        (cons 'error __tmp113989))))
                 (declare (not safe))
                 (cons __tmp113988 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113991
                                                        __tmp113987))))
                                           (declare (not safe))
                                           (cons 'if __tmp113986))))
                                    (declare (not safe))
                                    (cons __tmp113985 '()))))
                             (declare (not safe))
                             (cons __tmp114002 __tmp113984))))
                      (declare (not safe))
                      (cons 'let __tmp113983))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111180_)
        (letrec ((_generate-inline111182_
                  (lambda ()
                    (let ((__tmp114007
                           (let ((__tmp114012
                                  (let ((__tmp114013
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111180_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114013)))
                                 (__tmp114008
                                  (let ((__tmp114010
                                         (let ((__tmp114011
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111180_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114011)))
                                        (__tmp114009
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114010 __tmp114009))))
                             (declare (not safe))
                             (cons __tmp114012 __tmp114008))))
                      (declare (not safe))
                      (cons 'if __tmp114007)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111182_))
              (let ((__tmp114014
                     (let ((__tmp114015
                            (let ((__tmp114016
                                   (let ((__tmp114017
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111182_))))
                                     (declare (not safe))
                                     (cons __tmp114017 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114016))))
                       (declare (not safe))
                       (cons '() __tmp114015))))
                (declare (not safe))
                (cons 'let __tmp114014))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111173_ _i111174_ _rest111175_)
        (letrec ((_generate-inline111177_
                  (lambda ()
                    (if (and (fx= _i111174_ '0)
                             (let ((__tmp114028
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111175_))))
                               (declare (not safe))
                               (not __tmp114028)))
                        (let ((__tmp114020
                               (let ((__tmp114026
                                      (let ((__tmp114027
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111173_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114027)))
                                     (__tmp114021
                                      (let ((__tmp114023
                                             (let ((__tmp114024
                                                    (let ((__tmp114025
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111173_
                                                            __tmp114025))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114024)))
                                            (__tmp114022
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111173_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114023 __tmp114022))))
                                 (declare (not safe))
                                 (cons __tmp114026 __tmp114021))))
                          (declare (not safe))
                          (cons 'if __tmp114020))
                        (let ((__tmp114018
                               (let ((__tmp114019
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111174_ '()))))
                                 (declare (not safe))
                                 (cons _var111173_ __tmp114019))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114018))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111177_))
              (let ((__tmp114029
                     (let ((__tmp114030
                            (let ((__tmp114031
                                   (let ((__tmp114032
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111177_))))
                                     (declare (not safe))
                                     (cons __tmp114032 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114031))))
                       (declare (not safe))
                       (cons '() __tmp114030))))
                (declare (not safe))
                (cons 'let __tmp114029))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111170_ _i111171_)
        (if (fx= _i111171_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114080
                       (let ((__tmp114087
                              (let ((__tmp114088
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111170_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114088)))
                             (__tmp114081
                              (let ((__tmp114085
                                     (let ((__tmp114086
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111170_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114086)))
                                    (__tmp114082
                                     (let ((__tmp114083
                                            (let ((__tmp114084
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111170_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114084))))
                                       (declare (not safe))
                                       (cons __tmp114083 '()))))
                                (declare (not safe))
                                (cons __tmp114085 __tmp114082))))
                         (declare (not safe))
                         (cons __tmp114087 __tmp114081))))
                  (declare (not safe))
                  (cons 'if __tmp114080))
                (let ((__tmp114067
                       (let ((__tmp114068
                              (let ((__tmp114069
                                     (let ((__tmp114070
                                            (let ((__tmp114071
                                                   (let ((__tmp114078
                                                          (let ((__tmp114079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111170_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114079)))
                 (__tmp114072
                  (let ((__tmp114076
                         (let ((__tmp114077
                                (let ()
                                  (declare (not safe))
                                  (cons _var111170_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114077)))
                        (__tmp114073
                         (let ((__tmp114074
                                (let ((__tmp114075
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111170_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114075))))
                           (declare (not safe))
                           (cons __tmp114074 '()))))
                    (declare (not safe))
                    (cons __tmp114076 __tmp114073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114078
                                                           __tmp114072))))
                                              (declare (not safe))
                                              (cons 'if __tmp114071))))
                                       (declare (not safe))
                                       (cons __tmp114070 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114069))))
                         (declare (not safe))
                         (cons '() __tmp114068))))
                  (declare (not safe))
                  (cons 'let __tmp114067)))
            (if (fx= _i111171_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114058
                           (let ((__tmp114065
                                  (let ((__tmp114066
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111170_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114066)))
                                 (__tmp114059
                                  (let ((__tmp114061
                                         (let ((__tmp114062
                                                (let ((__tmp114063
                                                       (let ((__tmp114064
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111170_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114063 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114062)))
                                        (__tmp114060
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114061 __tmp114060))))
                             (declare (not safe))
                             (cons __tmp114065 __tmp114059))))
                      (declare (not safe))
                      (cons 'if __tmp114058))
                    (let ((__tmp114045
                           (let ((__tmp114046
                                  (let ((__tmp114047
                                         (let ((__tmp114048
                                                (let ((__tmp114049
                                                       (let ((__tmp114056
                                                              (let ((__tmp114057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111170_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114057)))
                     (__tmp114050
                      (let ((__tmp114052
                             (let ((__tmp114053
                                    (let ((__tmp114054
                                           (let ((__tmp114055
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111170_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114055))))
                                      (declare (not safe))
                                      (cons __tmp114054 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114053)))
                            (__tmp114051
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114052 __tmp114051))))
                 (declare (not safe))
                 (cons __tmp114056 __tmp114050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114049))))
                                           (declare (not safe))
                                           (cons __tmp114048 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114047))))
                             (declare (not safe))
                             (cons '() __tmp114046))))
                      (declare (not safe))
                      (cons 'let __tmp114045)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114041
                           (let ((__tmp114043
                                  (let ((__tmp114044
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111170_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114044)))
                                 (__tmp114042
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111171_ '()))))
                             (declare (not safe))
                             (cons __tmp114043 __tmp114042))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114041))
                    (let ((__tmp114033
                           (let ((__tmp114034
                                  (let ((__tmp114035
                                         (let ((__tmp114036
                                                (let ((__tmp114037
                                                       (let ((__tmp114039
                                                              (let ((__tmp114040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111170_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114040)))
                     (__tmp114038
                      (let () (declare (not safe)) (cons _i111171_ '()))))
                 (declare (not safe))
                 (cons __tmp114039 __tmp114038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114037))))
                                           (declare (not safe))
                                           (cons __tmp114036 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114035))))
                             (declare (not safe))
                             (cons '() __tmp114034))))
                      (declare (not safe))
                      (cons 'let __tmp114033)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111102_ _stx111103_)
        (let* ((_g111105111122_
                (lambda (_g111106111119_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111106111119_))))
               (_g111104111167_
                (lambda (_g111106111125_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111106111125_))
                      (let ((_e111111111127_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111106111125_))))
                        (let ((_hd111110111130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111111111127_)))
                              (_tl111109111132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111111111127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111109111132_))
                              (let ((_e111114111135_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111109111132_))))
                                (let ((_hd111113111138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111114111135_)))
                                      (_tl111112111140_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111114111135_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111112111140_))
                                      (let ((_e111117111143_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111112111140_))))
                                        (let ((_hd111116111146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111117111143_)))
                                              (_tl111115111148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111117111143_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111115111148_))
                                              ((lambda (_L111151_ _L111152_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111102_
                                                    _L111152_
                                                    _L111151_)))
                                               _hd111116111146_
                                               _hd111113111138_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111105111122_
                                                 _g111106111125_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111105111122_ _g111106111125_)))))
                              (let ()
                                (declare (not safe))
                                (_g111105111122_ _g111106111125_)))))
                      (let ()
                        (declare (not safe))
                        (_g111105111122_ _g111106111125_))))))
          (declare (not safe))
          (_g111104111167_ _stx111103_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111061_ _hd111062_ _body111063_)
        (let* ((_hd111065_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111062_)))
               (_body111067_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111061_ _body111063_)))
               (_body111099_
                (let* ((_body111068111076_ _body111067_)
                       (_else111070111084_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111067_ '()))))
                       (_K111072111089_
                        (lambda (_exprs111087_) _exprs111087_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111068111076_))
                      (let ((_hd111073111092_
                             (let ()
                               (declare (not safe))
                               (##car _body111068111076_)))
                            (_tl111074111094_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111068111076_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111073111092_ 'begin))
                            (let ((_exprs111097_ _tl111074111094_))
                              (declare (not safe))
                              (_K111072111089_ _exprs111097_))
                            (let ()
                              (declare (not safe))
                              (_else111070111084_))))
                      (let () (declare (not safe)) (_else111070111084_))))))
          (let ((__tmp114089
                 (let () (declare (not safe)) (cons _hd111065_ _body111099_))))
            (declare (not safe))
            (cons 'lambda __tmp114089)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111059_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111059_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109601_ _stx109602_)
        (letrec ((_dispatch-case?109604_
                  (lambda (_hd110289_ _body110290_)
                    (let* ((_form110292_
                            (let ((__tmp114090
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110290_ '()))))
                              (declare (not safe))
                              (cons _hd110289_ __tmp114090)))
                           (___stx112672112673_ _form110292_)
                           (_g110297110454_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx112672112673_)))))
                      (let ((___kont112674112675_
                             (lambda (_L110979_ _L110980_ _L110981_) '#t))
                            (___kont112680112681_
                             (lambda (_L110767_
                                      _L110768_
                                      _L110769_
                                      _L110770_
                                      _L110771_
                                      _L110772_)
                               '#t))
                            (___kont112686112687_
                             (lambda (_L110562_ _L110563_ _L110564_ _L110565_)
                               '#t))
                            (___kont112688112689_ (lambda () '#f)))
                        (let* ((___match112813112814_
                                (lambda (_e110416110466_
                                         _hd110415110469_
                                         _tl110414110471_
                                         _e110419110474_
                                         _hd110418110477_
                                         _tl110417110479_
                                         _e110422110482_
                                         _hd110421110485_
                                         _tl110420110487_
                                         _e110425110490_
                                         _hd110424110493_
                                         _tl110423110495_
                                         _e110428110498_
                                         _hd110427110501_
                                         _tl110426110503_
                                         _e110431110506_
                                         _hd110430110509_
                                         _tl110429110511_
                                         _e110434110514_
                                         _hd110433110517_
                                         _tl110432110519_
                                         _e110437110522_
                                         _hd110436110525_
                                         _tl110435110527_
                                         _e110440110530_
                                         _hd110439110533_
                                         _tl110438110535_
                                         _e110443110538_
                                         _hd110442110541_
                                         _tl110441110543_
                                         _e110446110546_
                                         _hd110445110549_
                                         _tl110444110551_
                                         _e110449110554_
                                         _hd110448110557_
                                         _tl110447110559_)
                                  (let ((_L110562_ _hd110448110557_)
                                        (_L110563_ _hd110439110533_)
                                        (_L110564_ _hd110430110509_)
                                        (_L110565_ _hd110415110469_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110565_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110564_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110565_
                                                _L110562_))
                                             (let ((__tmp114091
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110563_
                                                       _L110565_))))
                                               (declare (not safe))
                                               (not __tmp114091)))
                                        (___kont112686112687_
                                         _L110562_
                                         _L110563_
                                         _L110564_
                                         _L110565_)
                                        (___kont112688112689_)))))
                               (___match112785112786_
                                (lambda (_e110416110466_
                                         _hd110415110469_
                                         _tl110414110471_
                                         _e110419110474_
                                         _hd110418110477_
                                         _tl110417110479_
                                         _e110422110482_
                                         _hd110421110485_
                                         _tl110420110487_
                                         _e110425110490_
                                         _hd110424110493_
                                         _tl110423110495_
                                         _e110428110498_
                                         _hd110427110501_
                                         _tl110426110503_
                                         _e110431110506_
                                         _hd110430110509_
                                         _tl110429110511_
                                         _e110434110514_
                                         _hd110433110517_
                                         _tl110432110519_
                                         _e110437110522_
                                         _hd110436110525_
                                         _tl110435110527_
                                         _e110440110530_
                                         _hd110439110533_
                                         _tl110438110535_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110432110519_))
                                      (let ((_e110443110538_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110432110519_))))
                                        (let ((_tl110441110543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110443110538_)))
                                              (_hd110442110541_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110443110538_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110442110541_))
                                              (let ((_e110446110546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110442110541_))))
                                                (let ((_tl110444110551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110446110546_)))
                                                      (_hd110445110549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110446110546_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110445110549_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110445110549_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110444110551_))
                      (let ((_e110449110554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110444110551_))))
                        (let ((_tl110447110559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110449110554_)))
                              (_hd110448110557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110449110554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110447110559_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110441110543_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110417110479_))
                                      (___match112813112814_
                                       _e110416110466_
                                       _hd110415110469_
                                       _tl110414110471_
                                       _e110419110474_
                                       _hd110418110477_
                                       _tl110417110479_
                                       _e110422110482_
                                       _hd110421110485_
                                       _tl110420110487_
                                       _e110425110490_
                                       _hd110424110493_
                                       _tl110423110495_
                                       _e110428110498_
                                       _hd110427110501_
                                       _tl110426110503_
                                       _e110431110506_
                                       _hd110430110509_
                                       _tl110429110511_
                                       _e110434110514_
                                       _hd110433110517_
                                       _tl110432110519_
                                       _e110437110522_
                                       _hd110436110525_
                                       _tl110435110527_
                                       _e110440110530_
                                       _hd110439110533_
                                       _tl110438110535_
                                       _e110443110538_
                                       _hd110442110541_
                                       _tl110441110543_
                                       _e110446110546_
                                       _hd110445110549_
                                       _tl110444110551_
                                       _e110449110554_
                                       _hd110448110557_
                                       _tl110447110559_)
                                      (___kont112688112689_))
                                  (___kont112688112689_))
                              (___kont112688112689_))))
                      (___kont112688112689_))
                  (___kont112688112689_))
              (___kont112688112689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112688112689_))))
                                      (___kont112688112689_))))
                               (___match112715112716_
                                (lambda (_e110352110607_
                                         _hd110351110610_
                                         _tl110350110612_
                                         ___splice112682112683_
                                         _target110353110615_
                                         _tl110355110617_)
                                  (letrec ((_loop110356110620_
                                            (lambda (_hd110354110623_
                                                     _arg110360110625_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110354110623_))
                                                  (let ((_e110357110628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110354110623_))))
                                                    (let ((_lp-tl110359110633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110357110628_)))
                                                          (_lp-hd110358110631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110357110628_))))
                                                      (let ((__tmp114106
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110358110631_ _arg110360110625_))))
                (declare (not safe))
                (_loop110356110620_ _lp-tl110359110633_ __tmp114106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110361110636_
                                                         (reverse _arg110360110625_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110350110612_))
                                                        (let ((_e110364110639_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110350110612_))))
                  (let ((_tl110362110644_
                         (let () (declare (not safe)) (##cdr _e110364110639_)))
                        (_hd110363110642_
                         (let ()
                           (declare (not safe))
                           (##car _e110364110639_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110363110642_))
                        (let ((_e110367110647_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110363110642_))))
                          (let ((_tl110365110652_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110367110647_)))
                                (_hd110366110650_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110367110647_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110366110650_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110366110650_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110365110652_))
                                        (let ((_e110370110655_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110365110652_))))
                                          (let ((_tl110368110660_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110370110655_)))
                                                (_hd110369110658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110370110655_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110369110658_))
                                                (let ((_e110373110663_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110369110658_))))
                                                  (let ((_tl110371110668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110373110663_)))
                                                        (_hd110372110666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110373110663_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110372110666_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110372110666_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110371110668_))
                        (let ((_e110376110671_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110371110668_))))
                          (let ((_tl110374110676_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110376110671_)))
                                (_hd110375110674_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110376110671_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110374110676_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110368110660_))
                                    (let ((_e110379110679_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110368110660_))))
                                      (let ((_tl110377110684_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110379110679_)))
                                            (_hd110378110682_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110379110679_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110378110682_))
                                            (let ((_e110382110687_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110378110682_))))
                                              (let ((_tl110380110692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110382110687_)))
                                                    (_hd110381110690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110382110687_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110381110690_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110381110690_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110380110692_))
                                                            (let ((_e110385110695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110380110692_))))
                      (let ((_tl110383110700_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110385110695_)))
                            (_hd110384110698_
                             (let ()
                               (declare (not safe))
                               (##car _e110385110695_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110383110700_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110377110684_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110377110684_))
                                          '1)
                                    (let ((___splice112684112685_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110377110684_
                                              '1))))
                                      (let ((_tl110388110705_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112684112685_
                                                '1)))
                                            (_target110386110703_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112684112685_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110388110705_))
                                            (let ((_e110397110708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110388110705_))))
                                              (let ((_tl110395110713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110397110708_)))
                                                    (_hd110396110711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110397110708_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110396110711_))
                                                    (let ((_e110400110716_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110396110711_))))
                                                      (let ((_tl110398110721_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110400110716_)))
                    (_hd110399110719_
                     (let () (declare (not safe)) (##car _e110400110716_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110399110719_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110399110719_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110398110721_))
                            (let ((_e110403110724_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110398110721_))))
                              (let ((_tl110401110729_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110403110724_)))
                                    (_hd110402110727_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110403110724_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110401110729_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110395110713_))
                                        (letrec ((_loop110389110732_
                                                  (lambda (_hd110387110735_
                                                           _xarg110393110737_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110387110735_))
                                                        (let ((_e110390110740_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110387110735_))))
                  (let ((_lp-tl110392110745_
                         (let () (declare (not safe)) (##cdr _e110390110740_)))
                        (_lp-hd110391110743_
                         (let ()
                           (declare (not safe))
                           (##car _e110390110740_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110391110743_))
                        (let ((_e110406110748_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110391110743_))))
                          (let ((_tl110404110753_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110406110748_)))
                                (_hd110405110751_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110406110748_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110405110751_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110405110751_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110404110753_))
                                        (let ((_e110409110756_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110404110753_))))
                                          (let ((_tl110407110761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110409110756_)))
                                                (_hd110408110759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110409110756_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110407110761_))
                                                (let ((__tmp114105
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110408110759_
                                                               _xarg110393110737_))))
                                                  (declare (not safe))
                                                  (_loop110389110732_
                                                   _lp-tl110392110745_
                                                   __tmp114105))
                                                (___match112785112786_
                                                 _e110352110607_
                                                 _hd110351110610_
                                                 _tl110350110612_
                                                 _e110364110639_
                                                 _hd110363110642_
                                                 _tl110362110644_
                                                 _e110367110647_
                                                 _hd110366110650_
                                                 _tl110365110652_
                                                 _e110370110655_
                                                 _hd110369110658_
                                                 _tl110368110660_
                                                 _e110373110663_
                                                 _hd110372110666_
                                                 _tl110371110668_
                                                 _e110376110671_
                                                 _hd110375110674_
                                                 _tl110374110676_
                                                 _e110379110679_
                                                 _hd110378110682_
                                                 _tl110377110684_
                                                 _e110382110687_
                                                 _hd110381110690_
                                                 _tl110380110692_
                                                 _e110385110695_
                                                 _hd110384110698_
                                                 _tl110383110700_))))
                                        (___match112785112786_
                                         _e110352110607_
                                         _hd110351110610_
                                         _tl110350110612_
                                         _e110364110639_
                                         _hd110363110642_
                                         _tl110362110644_
                                         _e110367110647_
                                         _hd110366110650_
                                         _tl110365110652_
                                         _e110370110655_
                                         _hd110369110658_
                                         _tl110368110660_
                                         _e110373110663_
                                         _hd110372110666_
                                         _tl110371110668_
                                         _e110376110671_
                                         _hd110375110674_
                                         _tl110374110676_
                                         _e110379110679_
                                         _hd110378110682_
                                         _tl110377110684_
                                         _e110382110687_
                                         _hd110381110690_
                                         _tl110380110692_
                                         _e110385110695_
                                         _hd110384110698_
                                         _tl110383110700_))
                                    (___match112785112786_
                                     _e110352110607_
                                     _hd110351110610_
                                     _tl110350110612_
                                     _e110364110639_
                                     _hd110363110642_
                                     _tl110362110644_
                                     _e110367110647_
                                     _hd110366110650_
                                     _tl110365110652_
                                     _e110370110655_
                                     _hd110369110658_
                                     _tl110368110660_
                                     _e110373110663_
                                     _hd110372110666_
                                     _tl110371110668_
                                     _e110376110671_
                                     _hd110375110674_
                                     _tl110374110676_
                                     _e110379110679_
                                     _hd110378110682_
                                     _tl110377110684_
                                     _e110382110687_
                                     _hd110381110690_
                                     _tl110380110692_
                                     _e110385110695_
                                     _hd110384110698_
                                     _tl110383110700_))
                                (___match112785112786_
                                 _e110352110607_
                                 _hd110351110610_
                                 _tl110350110612_
                                 _e110364110639_
                                 _hd110363110642_
                                 _tl110362110644_
                                 _e110367110647_
                                 _hd110366110650_
                                 _tl110365110652_
                                 _e110370110655_
                                 _hd110369110658_
                                 _tl110368110660_
                                 _e110373110663_
                                 _hd110372110666_
                                 _tl110371110668_
                                 _e110376110671_
                                 _hd110375110674_
                                 _tl110374110676_
                                 _e110379110679_
                                 _hd110378110682_
                                 _tl110377110684_
                                 _e110382110687_
                                 _hd110381110690_
                                 _tl110380110692_
                                 _e110385110695_
                                 _hd110384110698_
                                 _tl110383110700_))))
                        (___match112785112786_
                         _e110352110607_
                         _hd110351110610_
                         _tl110350110612_
                         _e110364110639_
                         _hd110363110642_
                         _tl110362110644_
                         _e110367110647_
                         _hd110366110650_
                         _tl110365110652_
                         _e110370110655_
                         _hd110369110658_
                         _tl110368110660_
                         _e110373110663_
                         _hd110372110666_
                         _tl110371110668_
                         _e110376110671_
                         _hd110375110674_
                         _tl110374110676_
                         _e110379110679_
                         _hd110378110682_
                         _tl110377110684_
                         _e110382110687_
                         _hd110381110690_
                         _tl110380110692_
                         _e110385110695_
                         _hd110384110698_
                         _tl110383110700_))))
                (let ((_xarg110394110764_ (reverse _xarg110393110737_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110362110644_))
                      (let ((_L110767_ _hd110402110727_)
                            (_L110768_ _xarg110394110764_)
                            (_L110769_ _hd110384110698_)
                            (_L110770_ _hd110375110674_)
                            (_L110771_ _tl110355110617_)
                            (_L110772_ _arg110361110636_))
                        (if (and (let ((__tmp114103
                                        (let ((__tmp114104
                                               (lambda (_g110815110818_
                                                        _g110816110820_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110815110818_
                                                         _g110816110820_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114104 '() _L110772_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114103))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L110771_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L110770_ 'apply))
                                 (fx= (length (let ((__tmp114101
                                                     (lambda (_g110822110825_
                                                              _g110823110827_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110822110825_
                                                               _g110823110827_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114101
                                                        '()
                                                        _L110772_)))
                                      (length (let ((__tmp114102
                                                     (lambda (_g110829110832_
                                                              _g110830110834_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110829110832_
                                                               _g110830110834_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114102
                                                        '()
                                                        _L110768_))))
                                 (let ((__tmp114099
                                        (let ((__tmp114100
                                               (lambda (_g110836110839_
                                                        _g110837110841_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110836110839_
                                                         _g110837110841_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114100 '() _L110772_)))
                                       (__tmp114097
                                        (let ((__tmp114098
                                               (lambda (_g110843110846_
                                                        _g110844110848_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110843110846_
                                                         _g110844110848_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114098 '() _L110768_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114099
                                            __tmp114097))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L110771_ _L110767_))
                                 (let ((__tmp114092
                                        (let ((__tmp114096
                                               (lambda (_g110850110852_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g110850110852_
                                                    _L110769_))))
                                              (__tmp114093
                                               (let ((__tmp114095
                                                      (lambda (_g110854110857_
                                                               _g110855110859_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g110854110857_
                                                                _g110855110859_))))
                                                     (__tmp114094
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L110771_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114095
                                                         __tmp114094
                                                         _L110772_))))
                                          (declare (not safe))
                                          (find __tmp114096 __tmp114093))))
                                   (declare (not safe))
                                   (not __tmp114092)))
                            (___kont112680112681_
                             _L110767_
                             _L110768_
                             _L110769_
                             _L110770_
                             _L110771_
                             _L110772_)
                            (___match112785112786_
                             _e110352110607_
                             _hd110351110610_
                             _tl110350110612_
                             _e110364110639_
                             _hd110363110642_
                             _tl110362110644_
                             _e110367110647_
                             _hd110366110650_
                             _tl110365110652_
                             _e110370110655_
                             _hd110369110658_
                             _tl110368110660_
                             _e110373110663_
                             _hd110372110666_
                             _tl110371110668_
                             _e110376110671_
                             _hd110375110674_
                             _tl110374110676_
                             _e110379110679_
                             _hd110378110682_
                             _tl110377110684_
                             _e110382110687_
                             _hd110381110690_
                             _tl110380110692_
                             _e110385110695_
                             _hd110384110698_
                             _tl110383110700_)))
                      (___match112785112786_
                       _e110352110607_
                       _hd110351110610_
                       _tl110350110612_
                       _e110364110639_
                       _hd110363110642_
                       _tl110362110644_
                       _e110367110647_
                       _hd110366110650_
                       _tl110365110652_
                       _e110370110655_
                       _hd110369110658_
                       _tl110368110660_
                       _e110373110663_
                       _hd110372110666_
                       _tl110371110668_
                       _e110376110671_
                       _hd110375110674_
                       _tl110374110676_
                       _e110379110679_
                       _hd110378110682_
                       _tl110377110684_
                       _e110382110687_
                       _hd110381110690_
                       _tl110380110692_
                       _e110385110695_
                       _hd110384110698_
                       _tl110383110700_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110389110732_
                                             _target110386110703_
                                             '())))
                                        (___match112785112786_
                                         _e110352110607_
                                         _hd110351110610_
                                         _tl110350110612_
                                         _e110364110639_
                                         _hd110363110642_
                                         _tl110362110644_
                                         _e110367110647_
                                         _hd110366110650_
                                         _tl110365110652_
                                         _e110370110655_
                                         _hd110369110658_
                                         _tl110368110660_
                                         _e110373110663_
                                         _hd110372110666_
                                         _tl110371110668_
                                         _e110376110671_
                                         _hd110375110674_
                                         _tl110374110676_
                                         _e110379110679_
                                         _hd110378110682_
                                         _tl110377110684_
                                         _e110382110687_
                                         _hd110381110690_
                                         _tl110380110692_
                                         _e110385110695_
                                         _hd110384110698_
                                         _tl110383110700_))
                                    (___match112785112786_
                                     _e110352110607_
                                     _hd110351110610_
                                     _tl110350110612_
                                     _e110364110639_
                                     _hd110363110642_
                                     _tl110362110644_
                                     _e110367110647_
                                     _hd110366110650_
                                     _tl110365110652_
                                     _e110370110655_
                                     _hd110369110658_
                                     _tl110368110660_
                                     _e110373110663_
                                     _hd110372110666_
                                     _tl110371110668_
                                     _e110376110671_
                                     _hd110375110674_
                                     _tl110374110676_
                                     _e110379110679_
                                     _hd110378110682_
                                     _tl110377110684_
                                     _e110382110687_
                                     _hd110381110690_
                                     _tl110380110692_
                                     _e110385110695_
                                     _hd110384110698_
                                     _tl110383110700_))))
                            (___match112785112786_
                             _e110352110607_
                             _hd110351110610_
                             _tl110350110612_
                             _e110364110639_
                             _hd110363110642_
                             _tl110362110644_
                             _e110367110647_
                             _hd110366110650_
                             _tl110365110652_
                             _e110370110655_
                             _hd110369110658_
                             _tl110368110660_
                             _e110373110663_
                             _hd110372110666_
                             _tl110371110668_
                             _e110376110671_
                             _hd110375110674_
                             _tl110374110676_
                             _e110379110679_
                             _hd110378110682_
                             _tl110377110684_
                             _e110382110687_
                             _hd110381110690_
                             _tl110380110692_
                             _e110385110695_
                             _hd110384110698_
                             _tl110383110700_))
                        (___match112785112786_
                         _e110352110607_
                         _hd110351110610_
                         _tl110350110612_
                         _e110364110639_
                         _hd110363110642_
                         _tl110362110644_
                         _e110367110647_
                         _hd110366110650_
                         _tl110365110652_
                         _e110370110655_
                         _hd110369110658_
                         _tl110368110660_
                         _e110373110663_
                         _hd110372110666_
                         _tl110371110668_
                         _e110376110671_
                         _hd110375110674_
                         _tl110374110676_
                         _e110379110679_
                         _hd110378110682_
                         _tl110377110684_
                         _e110382110687_
                         _hd110381110690_
                         _tl110380110692_
                         _e110385110695_
                         _hd110384110698_
                         _tl110383110700_))
                    (___match112785112786_
                     _e110352110607_
                     _hd110351110610_
                     _tl110350110612_
                     _e110364110639_
                     _hd110363110642_
                     _tl110362110644_
                     _e110367110647_
                     _hd110366110650_
                     _tl110365110652_
                     _e110370110655_
                     _hd110369110658_
                     _tl110368110660_
                     _e110373110663_
                     _hd110372110666_
                     _tl110371110668_
                     _e110376110671_
                     _hd110375110674_
                     _tl110374110676_
                     _e110379110679_
                     _hd110378110682_
                     _tl110377110684_
                     _e110382110687_
                     _hd110381110690_
                     _tl110380110692_
                     _e110385110695_
                     _hd110384110698_
                     _tl110383110700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112785112786_
                                                     _e110352110607_
                                                     _hd110351110610_
                                                     _tl110350110612_
                                                     _e110364110639_
                                                     _hd110363110642_
                                                     _tl110362110644_
                                                     _e110367110647_
                                                     _hd110366110650_
                                                     _tl110365110652_
                                                     _e110370110655_
                                                     _hd110369110658_
                                                     _tl110368110660_
                                                     _e110373110663_
                                                     _hd110372110666_
                                                     _tl110371110668_
                                                     _e110376110671_
                                                     _hd110375110674_
                                                     _tl110374110676_
                                                     _e110379110679_
                                                     _hd110378110682_
                                                     _tl110377110684_
                                                     _e110382110687_
                                                     _hd110381110690_
                                                     _tl110380110692_
                                                     _e110385110695_
                                                     _hd110384110698_
                                                     _tl110383110700_))))
                                            (___match112785112786_
                                             _e110352110607_
                                             _hd110351110610_
                                             _tl110350110612_
                                             _e110364110639_
                                             _hd110363110642_
                                             _tl110362110644_
                                             _e110367110647_
                                             _hd110366110650_
                                             _tl110365110652_
                                             _e110370110655_
                                             _hd110369110658_
                                             _tl110368110660_
                                             _e110373110663_
                                             _hd110372110666_
                                             _tl110371110668_
                                             _e110376110671_
                                             _hd110375110674_
                                             _tl110374110676_
                                             _e110379110679_
                                             _hd110378110682_
                                             _tl110377110684_
                                             _e110382110687_
                                             _hd110381110690_
                                             _tl110380110692_
                                             _e110385110695_
                                             _hd110384110698_
                                             _tl110383110700_))))
                                    (___match112785112786_
                                     _e110352110607_
                                     _hd110351110610_
                                     _tl110350110612_
                                     _e110364110639_
                                     _hd110363110642_
                                     _tl110362110644_
                                     _e110367110647_
                                     _hd110366110650_
                                     _tl110365110652_
                                     _e110370110655_
                                     _hd110369110658_
                                     _tl110368110660_
                                     _e110373110663_
                                     _hd110372110666_
                                     _tl110371110668_
                                     _e110376110671_
                                     _hd110375110674_
                                     _tl110374110676_
                                     _e110379110679_
                                     _hd110378110682_
                                     _tl110377110684_
                                     _e110382110687_
                                     _hd110381110690_
                                     _tl110380110692_
                                     _e110385110695_
                                     _hd110384110698_
                                     _tl110383110700_))
                                (___match112785112786_
                                 _e110352110607_
                                 _hd110351110610_
                                 _tl110350110612_
                                 _e110364110639_
                                 _hd110363110642_
                                 _tl110362110644_
                                 _e110367110647_
                                 _hd110366110650_
                                 _tl110365110652_
                                 _e110370110655_
                                 _hd110369110658_
                                 _tl110368110660_
                                 _e110373110663_
                                 _hd110372110666_
                                 _tl110371110668_
                                 _e110376110671_
                                 _hd110375110674_
                                 _tl110374110676_
                                 _e110379110679_
                                 _hd110378110682_
                                 _tl110377110684_
                                 _e110382110687_
                                 _hd110381110690_
                                 _tl110380110692_
                                 _e110385110695_
                                 _hd110384110698_
                                 _tl110383110700_))
                            (___kont112688112689_))))
                    (___kont112688112689_))
                (___kont112688112689_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont112688112689_))))
                                            (___kont112688112689_))))
                                    (___kont112688112689_))
                                (___kont112688112689_))))
                        (___kont112688112689_))
                    (___kont112688112689_))
                (___kont112688112689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont112688112689_))))
                                        (___kont112688112689_))
                                    (___kont112688112689_))
                                (___kont112688112689_))))
                        (___kont112688112689_))))
                (___kont112688112689_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110356110620_
                                       _target110353110615_
                                       '())))))
                               (___match112703112704_
                                (lambda (_e110304110867_
                                         _hd110303110870_
                                         _tl110302110872_
                                         ___splice112676112677_
                                         _target110305110875_
                                         _tl110307110877_)
                                  (letrec ((_loop110308110880_
                                            (lambda (_hd110306110883_
                                                     _arg110312110885_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110306110883_))
                                                  (let ((_e110309110888_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110306110883_))))
                                                    (let ((_lp-tl110311110893_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110309110888_)))
                                                          (_lp-hd110310110891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110309110888_))))
                                                      (let ((__tmp114120
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110310110891_ _arg110312110885_))))
                (declare (not safe))
                (_loop110308110880_ _lp-tl110311110893_ __tmp114120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110313110896_
                                                         (reverse _arg110312110885_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110302110872_))
                                                        (let ((_e110316110899_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110302110872_))))
                  (let ((_tl110314110904_
                         (let () (declare (not safe)) (##cdr _e110316110899_)))
                        (_hd110315110902_
                         (let ()
                           (declare (not safe))
                           (##car _e110316110899_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110315110902_))
                        (let ((_e110319110907_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110315110902_))))
                          (let ((_tl110317110912_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110319110907_)))
                                (_hd110318110910_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110319110907_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110318110910_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110318110910_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110317110912_))
                                        (let ((_e110322110915_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110317110912_))))
                                          (let ((_tl110320110920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110322110915_)))
                                                (_hd110321110918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110322110915_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110321110918_))
                                                (let ((_e110325110923_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110321110918_))))
                                                  (let ((_tl110323110928_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110325110923_)))
                                                        (_hd110324110926_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110325110923_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110324110926_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110324110926_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110323110928_))
                        (let ((_e110328110931_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110323110928_))))
                          (let ((_tl110326110936_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110328110931_)))
                                (_hd110327110934_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110328110931_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110326110936_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110320110920_))
                                    (let ((___splice112678112679_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110320110920_
                                              '0))))
                                      (let ((_tl110331110941_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112678112679_
                                                '1)))
                                            (_target110329110939_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112678112679_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110331110941_))
                                            (letrec ((_loop110332110944_
                                                      (lambda (_hd110330110947_
                                                               _xarg110336110949_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110330110947_))
                                                            (let ((_e110333110952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110330110947_))))
                      (let ((_lp-tl110335110957_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110333110952_)))
                            (_lp-hd110334110955_
                             (let ()
                               (declare (not safe))
                               (##car _e110333110952_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110334110955_))
                            (let ((_e110340110960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110334110955_))))
                              (let ((_tl110338110965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110340110960_)))
                                    (_hd110339110963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110340110960_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110339110963_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110339110963_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110338110965_))
                                            (let ((_e110343110968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110338110965_))))
                                              (let ((_tl110341110973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110343110968_)))
                                                    (_hd110342110971_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110343110968_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110341110973_))
                                                    (let ((__tmp114119
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110342110971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110336110949_))))
              (declare (not safe))
              (_loop110332110944_ _lp-tl110335110957_ __tmp114119))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112715112716_
                                                     _e110304110867_
                                                     _hd110303110870_
                                                     _tl110302110872_
                                                     ___splice112676112677_
                                                     _target110305110875_
                                                     _tl110307110877_))))
                                            (___match112715112716_
                                             _e110304110867_
                                             _hd110303110870_
                                             _tl110302110872_
                                             ___splice112676112677_
                                             _target110305110875_
                                             _tl110307110877_))
                                        (___match112715112716_
                                         _e110304110867_
                                         _hd110303110870_
                                         _tl110302110872_
                                         ___splice112676112677_
                                         _target110305110875_
                                         _tl110307110877_))
                                    (___match112715112716_
                                     _e110304110867_
                                     _hd110303110870_
                                     _tl110302110872_
                                     ___splice112676112677_
                                     _target110305110875_
                                     _tl110307110877_))))
                            (___match112715112716_
                             _e110304110867_
                             _hd110303110870_
                             _tl110302110872_
                             ___splice112676112677_
                             _target110305110875_
                             _tl110307110877_))))
                    (let ((_xarg110337110976_ (reverse _xarg110336110949_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110314110904_))
                          (let ((_L110979_ _xarg110337110976_)
                                (_L110980_ _hd110327110934_)
                                (_L110981_ _arg110313110896_))
                            (if (and (let ((__tmp114117
                                            (let ((__tmp114118
                                                   (lambda (_g111009111012_
                                                            _g111010111014_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111009111012_
                                                             _g111010111014_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114118
                                                      '()
                                                      _L110981_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114117))
                                     (fx= (length (let ((__tmp114115
                                                         (lambda (_g111016111019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111017111021_)
                   (let ()
                     (declare (not safe))
                     (cons _g111016111019_ _g111017111021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114115
                                                            '()
                                                            _L110981_)))
                                          (length (let ((__tmp114116
                                                         (lambda (_g111023111026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111024111028_)
                   (let ()
                     (declare (not safe))
                     (cons _g111023111026_ _g111024111028_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114116
                                                            '()
                                                            _L110979_))))
                                     (let ((__tmp114113
                                            (let ((__tmp114114
                                                   (lambda (_g111030111033_
                                                            _g111031111035_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111030111033_
                                                             _g111031111035_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114114
                                                      '()
                                                      _L110981_)))
                                           (__tmp114111
                                            (let ((__tmp114112
                                                   (lambda (_g111037111040_
                                                            _g111038111042_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111037111040_
                                                             _g111038111042_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114112
                                                      '()
                                                      _L110979_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114113
                                                __tmp114111))
                                     (let ((__tmp114107
                                            (let ((__tmp114110
                                                   (lambda (_g111044111046_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111044111046_
                                                        _L110980_))))
                                                  (__tmp114108
                                                   (let ((__tmp114109
                                                          (lambda (_g111048111051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111049111053_)
                    (let ()
                      (declare (not safe))
                      (cons _g111048111051_ _g111049111053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114109
                                                             '()
                                                             _L110981_))))
                                              (declare (not safe))
                                              (find __tmp114110 __tmp114108))))
                                       (declare (not safe))
                                       (not __tmp114107)))
                                (___kont112674112675_
                                 _L110979_
                                 _L110980_
                                 _L110981_)
                                (___match112715112716_
                                 _e110304110867_
                                 _hd110303110870_
                                 _tl110302110872_
                                 ___splice112676112677_
                                 _target110305110875_
                                 _tl110307110877_)))
                          (___match112715112716_
                           _e110304110867_
                           _hd110303110870_
                           _tl110302110872_
                           ___splice112676112677_
                           _target110305110875_
                           _tl110307110877_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110332110944_
                                                 _target110329110939_
                                                 '())))
                                            (___match112715112716_
                                             _e110304110867_
                                             _hd110303110870_
                                             _tl110302110872_
                                             ___splice112676112677_
                                             _target110305110875_
                                             _tl110307110877_))))
                                    (___match112715112716_
                                     _e110304110867_
                                     _hd110303110870_
                                     _tl110302110872_
                                     ___splice112676112677_
                                     _target110305110875_
                                     _tl110307110877_))
                                (___match112715112716_
                                 _e110304110867_
                                 _hd110303110870_
                                 _tl110302110872_
                                 ___splice112676112677_
                                 _target110305110875_
                                 _tl110307110877_))))
                        (___match112715112716_
                         _e110304110867_
                         _hd110303110870_
                         _tl110302110872_
                         ___splice112676112677_
                         _target110305110875_
                         _tl110307110877_))
                    (___match112715112716_
                     _e110304110867_
                     _hd110303110870_
                     _tl110302110872_
                     ___splice112676112677_
                     _target110305110875_
                     _tl110307110877_))
                (___match112715112716_
                 _e110304110867_
                 _hd110303110870_
                 _tl110302110872_
                 ___splice112676112677_
                 _target110305110875_
                 _tl110307110877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match112715112716_
                                                 _e110304110867_
                                                 _hd110303110870_
                                                 _tl110302110872_
                                                 ___splice112676112677_
                                                 _target110305110875_
                                                 _tl110307110877_))))
                                        (___match112715112716_
                                         _e110304110867_
                                         _hd110303110870_
                                         _tl110302110872_
                                         ___splice112676112677_
                                         _target110305110875_
                                         _tl110307110877_))
                                    (___match112715112716_
                                     _e110304110867_
                                     _hd110303110870_
                                     _tl110302110872_
                                     ___splice112676112677_
                                     _target110305110875_
                                     _tl110307110877_))
                                (___match112715112716_
                                 _e110304110867_
                                 _hd110303110870_
                                 _tl110302110872_
                                 ___splice112676112677_
                                 _target110305110875_
                                 _tl110307110877_))))
                        (___match112715112716_
                         _e110304110867_
                         _hd110303110870_
                         _tl110302110872_
                         ___splice112676112677_
                         _target110305110875_
                         _tl110307110877_))))
                (___match112715112716_
                 _e110304110867_
                 _hd110303110870_
                 _tl110302110872_
                 ___splice112676112677_
                 _target110305110875_
                 _tl110307110877_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110308110880_
                                       _target110305110875_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx112672112673_))
                              (let ((_e110304110867_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx112672112673_))))
                                (let ((_tl110302110872_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110304110867_)))
                                      (_hd110303110870_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110304110867_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110303110870_))
                                      (let ((___splice112676112677_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110303110870_
                                                '0))))
                                        (let ((_tl110307110877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112676112677_
                                                  '1)))
                                              (_target110305110875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112676112677_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110307110877_))
                                              (___match112703112704_
                                               _e110304110867_
                                               _hd110303110870_
                                               _tl110302110872_
                                               ___splice112676112677_
                                               _target110305110875_
                                               _tl110307110877_)
                                              (___match112715112716_
                                               _e110304110867_
                                               _hd110303110870_
                                               _tl110302110872_
                                               ___splice112676112677_
                                               _target110305110875_
                                               _tl110307110877_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110302110872_))
                                          (let ((_e110419110474_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110302110872_))))
                                            (let ((_tl110417110479_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110419110474_)))
                                                  (_hd110418110477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110419110474_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110418110477_))
                                                  (let ((_e110422110482_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110418110477_))))
                                                    (let ((_tl110420110487_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110422110482_)))
                                                          (_hd110421110485_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110422110482_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110421110485_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110421110485_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110420110487_))
                          (let ((_e110425110490_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110420110487_))))
                            (let ((_tl110423110495_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110425110490_)))
                                  (_hd110424110493_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110425110490_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110424110493_))
                                  (let ((_e110428110498_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110424110493_))))
                                    (let ((_tl110426110503_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110428110498_)))
                                          (_hd110427110501_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110428110498_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110427110501_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110427110501_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110426110503_))
                                                  (let ((_e110431110506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110426110503_))))
                                                    (let ((_tl110429110511_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110431110506_)))
                                                          (_hd110430110509_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110431110506_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110429110511_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110423110495_))
                      (let ((_e110434110514_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110423110495_))))
                        (let ((_tl110432110519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110434110514_)))
                              (_hd110433110517_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110434110514_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110433110517_))
                              (let ((_e110437110522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110433110517_))))
                                (let ((_tl110435110527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110437110522_)))
                                      (_hd110436110525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110437110522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110436110525_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110436110525_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110435110527_))
                                              (let ((_e110440110530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110435110527_))))
                                                (let ((_tl110438110535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110440110530_)))
                                                      (_hd110439110533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110440110530_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110438110535_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110432110519_))
                                                          (let ((_e110443110538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110432110519_))))
                    (let ((_tl110441110543_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110443110538_)))
                          (_hd110442110541_
                           (let ()
                             (declare (not safe))
                             (##car _e110443110538_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110442110541_))
                          (let ((_e110446110546_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110442110541_))))
                            (let ((_tl110444110551_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110446110546_)))
                                  (_hd110445110549_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110446110546_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110445110549_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110445110549_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110444110551_))
                                          (let ((_e110449110554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110444110551_))))
                                            (let ((_tl110447110559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110449110554_)))
                                                  (_hd110448110557_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110449110554_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110447110559_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110441110543_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110417110479_))
                                                          (___match112813112814_
                                                           _e110304110867_
                                                           _hd110303110870_
                                                           _tl110302110872_
                                                           _e110419110474_
                                                           _hd110418110477_
                                                           _tl110417110479_
                                                           _e110422110482_
                                                           _hd110421110485_
                                                           _tl110420110487_
                                                           _e110425110490_
                                                           _hd110424110493_
                                                           _tl110423110495_
                                                           _e110428110498_
                                                           _hd110427110501_
                                                           _tl110426110503_
                                                           _e110431110506_
                                                           _hd110430110509_
                                                           _tl110429110511_
                                                           _e110434110514_
                                                           _hd110433110517_
                                                           _tl110432110519_
                                                           _e110437110522_
                                                           _hd110436110525_
                                                           _tl110435110527_
                                                           _e110440110530_
                                                           _hd110439110533_
                                                           _tl110438110535_
                                                           _e110443110538_
                                                           _hd110442110541_
                                                           _tl110441110543_
                                                           _e110446110546_
                                                           _hd110445110549_
                                                           _tl110444110551_
                                                           _e110449110554_
                                                           _hd110448110557_
                                                           _tl110447110559_)
                                                          (___kont112688112689_))
                                                      (___kont112688112689_))
                                                  (___kont112688112689_))))
                                          (___kont112688112689_))
                                      (___kont112688112689_))
                                  (___kont112688112689_))))
                          (___kont112688112689_))))
                  (___kont112688112689_))
              (___kont112688112689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112688112689_))
                                          (___kont112688112689_))
                                      (___kont112688112689_))))
                              (___kont112688112689_))))
                      (___kont112688112689_))
                  (___kont112688112689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112688112689_))
                                              (___kont112688112689_))
                                          (___kont112688112689_))))
                                  (___kont112688112689_))))
                          (___kont112688112689_))
                      (___kont112688112689_))
                  (___kont112688112689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112688112689_))))
                                          (___kont112688112689_)))))
                              (___kont112688112689_)))))))
                 (_dispatch-case-e109605_
                  (lambda (_hd109753_ _body109754_)
                    (let* ((_form109756_
                            (let ((__tmp114121
                                   (let ()
                                     (declare (not safe))
                                     (cons _body109754_ '()))))
                              (declare (not safe))
                              (cons _hd109753_ __tmp114121)))
                           (___stx112816112817_ _form109756_)
                           (_g109760109884_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx112816112817_)))))
                      (let ((___kont112818112819_
                             (lambda (_L110255_ _L110256_ _L110257_)
                               (let ((__tmp114122
                                      (let ((__tmp114124
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114123
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110256_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114124 __tmp114123))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109601_ __tmp114122))))
                            (___kont112824112825_
                             (lambda (_L110103_ _L110104_ _L110105_ _L110106_)
                               (let ((__tmp114125
                                      (let ((__tmp114127
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114126
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110103_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114127 __tmp114126))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109601_ __tmp114125))))
                            (___kont112828112829_
                             (lambda (_L109969_ _L109970_ _L109971_)
                               (let ((__tmp114128
                                      (let ((__tmp114130
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114129
                                             (let ()
                                               (declare (not safe))
                                               (cons _L109969_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114130 __tmp114129))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109601_
                                  __tmp114128)))))
                        (let* ((___match112925112926_
                                (lambda (_e109852109889_
                                         _hd109851109892_
                                         _tl109850109894_
                                         _e109855109897_
                                         _hd109854109900_
                                         _tl109853109902_
                                         _e109858109905_
                                         _hd109857109908_
                                         _tl109856109910_
                                         _e109861109913_
                                         _hd109860109916_
                                         _tl109859109918_
                                         _e109864109921_
                                         _hd109863109924_
                                         _tl109862109926_
                                         _e109867109929_
                                         _hd109866109932_
                                         _tl109865109934_
                                         _e109870109937_
                                         _hd109869109940_
                                         _tl109868109942_
                                         _e109873109945_
                                         _hd109872109948_
                                         _tl109871109950_
                                         _e109876109953_
                                         _hd109875109956_
                                         _tl109874109958_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109868109942_))
                                      (let ((_e109879109961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109868109942_))))
                                        (let ((_tl109877109966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109879109961_)))
                                              (_hd109878109964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109879109961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109877109966_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl109853109902_))
                                                  (___kont112828112829_
                                                   _hd109875109956_
                                                   _hd109866109932_
                                                   _hd109851109892_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109760109884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g109760109884_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109760109884_)))))
                               (___match112855112856_
                                (lambda (_e109813110007_
                                         _hd109812110010_
                                         _tl109811110012_
                                         ___splice112826112827_
                                         _target109814110015_
                                         _tl109816110017_)
                                  (letrec ((_loop109817110020_
                                            (lambda (_hd109815110023_
                                                     _arg109821110025_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109815110023_))
                                                  (let ((_e109818110028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109815110023_))))
                                                    (let ((_lp-tl109820110033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109818110028_)))
                                                          (_lp-hd109819110031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109818110028_))))
                                                      (let ((__tmp114131
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109819110031_ _arg109821110025_))))
                (declare (not safe))
                (_loop109817110020_ _lp-tl109820110033_ __tmp114131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109822110036_
                                                         (reverse _arg109821110025_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109811110012_))
                                                        (let ((_e109825110039_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109811110012_))))
                  (let ((_tl109823110044_
                         (let () (declare (not safe)) (##cdr _e109825110039_)))
                        (_hd109824110042_
                         (let ()
                           (declare (not safe))
                           (##car _e109825110039_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109824110042_))
                        (let ((_e109828110047_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109824110042_))))
                          (let ((_tl109826110052_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109828110047_)))
                                (_hd109827110050_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109828110047_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109827110050_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109827110050_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109826110052_))
                                        (let ((_e109831110055_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109826110052_))))
                                          (let ((_tl109829110060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109831110055_)))
                                                (_hd109830110058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109831110055_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109830110058_))
                                                (let ((_e109834110063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109830110058_))))
                                                  (let ((_tl109832110068_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109834110063_)))
                                                        (_hd109833110066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109834110063_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109833110066_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109833110066_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109832110068_))
                        (let ((_e109837110071_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109832110068_))))
                          (let ((_tl109835110076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109837110071_)))
                                (_hd109836110074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109837110071_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109835110076_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl109829110060_))
                                    (let ((_e109840110079_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl109829110060_))))
                                      (let ((_tl109838110084_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e109840110079_)))
                                            (_hd109839110082_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e109840110079_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd109839110082_))
                                            (let ((_e109843110087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd109839110082_))))
                                              (let ((_tl109841110092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109843110087_)))
                                                    (_hd109842110090_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109843110087_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd109842110090_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd109842110090_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl109841110092_))
                                                            (let ((_e109846110095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl109841110092_))))
                      (let ((_tl109844110100_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109846110095_)))
                            (_hd109845110098_
                             (let ()
                               (declare (not safe))
                               (##car _e109846110095_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl109844110100_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109823110044_))
                                (___kont112824112825_
                                 _hd109845110098_
                                 _hd109836110074_
                                 _tl109816110017_
                                 _arg109822110036_)
                                (___match112925112926_
                                 _e109813110007_
                                 _hd109812110010_
                                 _tl109811110012_
                                 _e109825110039_
                                 _hd109824110042_
                                 _tl109823110044_
                                 _e109828110047_
                                 _hd109827110050_
                                 _tl109826110052_
                                 _e109831110055_
                                 _hd109830110058_
                                 _tl109829110060_
                                 _e109834110063_
                                 _hd109833110066_
                                 _tl109832110068_
                                 _e109837110071_
                                 _hd109836110074_
                                 _tl109835110076_
                                 _e109840110079_
                                 _hd109839110082_
                                 _tl109838110084_
                                 _e109843110087_
                                 _hd109842110090_
                                 _tl109841110092_
                                 _e109846110095_
                                 _hd109845110098_
                                 _tl109844110100_))
                            (let () (declare (not safe)) (_g109760109884_)))))
                    (let () (declare (not safe)) (_g109760109884_)))
                (let () (declare (not safe)) (_g109760109884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g109760109884_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g109760109884_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g109760109884_)))
                                (let ()
                                  (declare (not safe))
                                  (_g109760109884_)))))
                        (let () (declare (not safe)) (_g109760109884_)))
                    (let () (declare (not safe)) (_g109760109884_)))
                (let () (declare (not safe)) (_g109760109884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109760109884_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109760109884_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g109760109884_)))
                                (let ()
                                  (declare (not safe))
                                  (_g109760109884_)))))
                        (let () (declare (not safe)) (_g109760109884_)))))
                (let () (declare (not safe)) (_g109760109884_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109817110020_
                                       _target109814110015_
                                       '())))))
                               (___match112843112844_
                                (lambda (_e109767110143_
                                         _hd109766110146_
                                         _tl109765110148_
                                         ___splice112820112821_
                                         _target109768110151_
                                         _tl109770110153_)
                                  (letrec ((_loop109771110156_
                                            (lambda (_hd109769110159_
                                                     _arg109775110161_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109769110159_))
                                                  (let ((_e109772110164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109769110159_))))
                                                    (let ((_lp-tl109774110169_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109772110164_)))
                                                          (_lp-hd109773110167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109772110164_))))
                                                      (let ((__tmp114133
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109773110167_ _arg109775110161_))))
                (declare (not safe))
                (_loop109771110156_ _lp-tl109774110169_ __tmp114133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109776110172_
                                                         (reverse _arg109775110161_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109765110148_))
                                                        (let ((_e109779110175_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109765110148_))))
                  (let ((_tl109777110180_
                         (let () (declare (not safe)) (##cdr _e109779110175_)))
                        (_hd109778110178_
                         (let ()
                           (declare (not safe))
                           (##car _e109779110175_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109778110178_))
                        (let ((_e109782110183_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109778110178_))))
                          (let ((_tl109780110188_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109782110183_)))
                                (_hd109781110186_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109782110183_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109781110186_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109781110186_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109780110188_))
                                        (let ((_e109785110191_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109780110188_))))
                                          (let ((_tl109783110196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109785110191_)))
                                                (_hd109784110194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109785110191_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109784110194_))
                                                (let ((_e109788110199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109784110194_))))
                                                  (let ((_tl109786110204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109788110199_)))
                                                        (_hd109787110202_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109788110199_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109787110202_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109787110202_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109786110204_))
                        (let ((_e109791110207_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109786110204_))))
                          (let ((_tl109789110212_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109791110207_)))
                                (_hd109790110210_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109791110207_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109789110212_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl109783110196_))
                                    (let ((___splice112822112823_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl109783110196_
                                              '0))))
                                      (let ((_tl109794110217_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112822112823_
                                                '1)))
                                            (_target109792110215_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112822112823_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl109794110217_))
                                            (letrec ((_loop109795110220_
                                                      (lambda (_hd109793110223_
                                                               _xarg109799110225_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd109793110223_))
                                                            (let ((_e109796110228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd109793110223_))))
                      (let ((_lp-tl109798110233_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109796110228_)))
                            (_lp-hd109797110231_
                             (let ()
                               (declare (not safe))
                               (##car _e109796110228_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd109797110231_))
                            (let ((_e109803110236_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd109797110231_))))
                              (let ((_tl109801110241_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e109803110236_)))
                                    (_hd109802110239_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e109803110236_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd109802110239_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd109802110239_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl109801110241_))
                                            (let ((_e109806110244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl109801110241_))))
                                              (let ((_tl109804110249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109806110244_)))
                                                    (_hd109805110247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109806110244_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl109804110249_))
                                                    (let ((__tmp114132
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd109805110247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg109799110225_))))
              (declare (not safe))
              (_loop109795110220_ _lp-tl109798110233_ __tmp114132))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112855112856_
                                                     _e109767110143_
                                                     _hd109766110146_
                                                     _tl109765110148_
                                                     ___splice112820112821_
                                                     _target109768110151_
                                                     _tl109770110153_))))
                                            (___match112855112856_
                                             _e109767110143_
                                             _hd109766110146_
                                             _tl109765110148_
                                             ___splice112820112821_
                                             _target109768110151_
                                             _tl109770110153_))
                                        (___match112855112856_
                                         _e109767110143_
                                         _hd109766110146_
                                         _tl109765110148_
                                         ___splice112820112821_
                                         _target109768110151_
                                         _tl109770110153_))
                                    (___match112855112856_
                                     _e109767110143_
                                     _hd109766110146_
                                     _tl109765110148_
                                     ___splice112820112821_
                                     _target109768110151_
                                     _tl109770110153_))))
                            (___match112855112856_
                             _e109767110143_
                             _hd109766110146_
                             _tl109765110148_
                             ___splice112820112821_
                             _target109768110151_
                             _tl109770110153_))))
                    (let ((_xarg109800110252_ (reverse _xarg109799110225_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl109777110180_))
                          (___kont112818112819_
                           _xarg109800110252_
                           _hd109790110210_
                           _arg109776110172_)
                          (___match112855112856_
                           _e109767110143_
                           _hd109766110146_
                           _tl109765110148_
                           ___splice112820112821_
                           _target109768110151_
                           _tl109770110153_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop109795110220_
                                                 _target109792110215_
                                                 '())))
                                            (___match112855112856_
                                             _e109767110143_
                                             _hd109766110146_
                                             _tl109765110148_
                                             ___splice112820112821_
                                             _target109768110151_
                                             _tl109770110153_))))
                                    (___match112855112856_
                                     _e109767110143_
                                     _hd109766110146_
                                     _tl109765110148_
                                     ___splice112820112821_
                                     _target109768110151_
                                     _tl109770110153_))
                                (___match112855112856_
                                 _e109767110143_
                                 _hd109766110146_
                                 _tl109765110148_
                                 ___splice112820112821_
                                 _target109768110151_
                                 _tl109770110153_))))
                        (___match112855112856_
                         _e109767110143_
                         _hd109766110146_
                         _tl109765110148_
                         ___splice112820112821_
                         _target109768110151_
                         _tl109770110153_))
                    (___match112855112856_
                     _e109767110143_
                     _hd109766110146_
                     _tl109765110148_
                     ___splice112820112821_
                     _target109768110151_
                     _tl109770110153_))
                (___match112855112856_
                 _e109767110143_
                 _hd109766110146_
                 _tl109765110148_
                 ___splice112820112821_
                 _target109768110151_
                 _tl109770110153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match112855112856_
                                                 _e109767110143_
                                                 _hd109766110146_
                                                 _tl109765110148_
                                                 ___splice112820112821_
                                                 _target109768110151_
                                                 _tl109770110153_))))
                                        (___match112855112856_
                                         _e109767110143_
                                         _hd109766110146_
                                         _tl109765110148_
                                         ___splice112820112821_
                                         _target109768110151_
                                         _tl109770110153_))
                                    (___match112855112856_
                                     _e109767110143_
                                     _hd109766110146_
                                     _tl109765110148_
                                     ___splice112820112821_
                                     _target109768110151_
                                     _tl109770110153_))
                                (___match112855112856_
                                 _e109767110143_
                                 _hd109766110146_
                                 _tl109765110148_
                                 ___splice112820112821_
                                 _target109768110151_
                                 _tl109770110153_))))
                        (___match112855112856_
                         _e109767110143_
                         _hd109766110146_
                         _tl109765110148_
                         ___splice112820112821_
                         _target109768110151_
                         _tl109770110153_))))
                (___match112855112856_
                 _e109767110143_
                 _hd109766110146_
                 _tl109765110148_
                 ___splice112820112821_
                 _target109768110151_
                 _tl109770110153_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109771110156_
                                       _target109768110151_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx112816112817_))
                              (let ((_e109767110143_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx112816112817_))))
                                (let ((_tl109765110148_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109767110143_)))
                                      (_hd109766110146_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109767110143_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd109766110146_))
                                      (let ((___splice112820112821_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd109766110146_
                                                '0))))
                                        (let ((_tl109770110153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112820112821_
                                                  '1)))
                                              (_target109768110151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112820112821_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109770110153_))
                                              (___match112843112844_
                                               _e109767110143_
                                               _hd109766110146_
                                               _tl109765110148_
                                               ___splice112820112821_
                                               _target109768110151_
                                               _tl109770110153_)
                                              (___match112855112856_
                                               _e109767110143_
                                               _hd109766110146_
                                               _tl109765110148_
                                               ___splice112820112821_
                                               _target109768110151_
                                               _tl109770110153_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl109765110148_))
                                          (let ((_e109855109897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl109765110148_))))
                                            (let ((_tl109853109902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109855109897_)))
                                                  (_hd109854109900_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109855109897_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109854109900_))
                                                  (let ((_e109858109905_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109854109900_))))
                                                    (let ((_tl109856109910_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109858109905_)))
                                                          (_hd109857109908_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109858109905_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd109857109908_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd109857109908_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl109856109910_))
                          (let ((_e109861109913_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl109856109910_))))
                            (let ((_tl109859109918_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109861109913_)))
                                  (_hd109860109916_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109861109913_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd109860109916_))
                                  (let ((_e109864109921_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd109860109916_))))
                                    (let ((_tl109862109926_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109864109921_)))
                                          (_hd109863109924_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109864109921_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd109863109924_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd109863109924_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl109862109926_))
                                                  (let ((_e109867109929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl109862109926_))))
                                                    (let ((_tl109865109934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109867109929_)))
                                                          (_hd109866109932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109867109929_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109865109934_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109859109918_))
                      (let ((_e109870109937_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109859109918_))))
                        (let ((_tl109868109942_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109870109937_)))
                              (_hd109869109940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109870109937_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd109869109940_))
                              (let ((_e109873109945_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd109869109940_))))
                                (let ((_tl109871109950_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109873109945_)))
                                      (_hd109872109948_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109873109945_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd109872109948_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd109872109948_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl109871109950_))
                                              (let ((_e109876109953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl109871109950_))))
                                                (let ((_tl109874109958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109876109953_)))
                                                      (_hd109875109956_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109876109953_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109874109958_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl109868109942_))
                                                          (let ((_e109879109961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl109868109942_))))
                    (let ((_tl109877109966_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109879109961_)))
                          (_hd109878109964_
                           (let ()
                             (declare (not safe))
                             (##car _e109879109961_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl109877109966_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl109853109902_))
                              (___kont112828112829_
                               _hd109875109956_
                               _hd109866109932_
                               _hd109766110146_)
                              (let () (declare (not safe)) (_g109760109884_)))
                          (let () (declare (not safe)) (_g109760109884_)))))
                  (let () (declare (not safe)) (_g109760109884_)))
              (let () (declare (not safe)) (_g109760109884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g109760109884_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g109760109884_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g109760109884_)))))
                              (let ()
                                (declare (not safe))
                                (_g109760109884_)))))
                      (let () (declare (not safe)) (_g109760109884_)))
                  (let () (declare (not safe)) (_g109760109884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109760109884_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g109760109884_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g109760109884_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109760109884_)))))
                          (let () (declare (not safe)) (_g109760109884_)))
                      (let () (declare (not safe)) (_g109760109884_)))
                  (let () (declare (not safe)) (_g109760109884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109760109884_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g109760109884_))))))
                              (let ()
                                (declare (not safe))
                                (_g109760109884_))))))))
                 (_generate1109606_
                  (lambda (_args109741_ _arglen109742_ _hd109743_ _body109744_)
                    (let* ((_len109746_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd109743_)))
                           (_condition109748_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd109743_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114148
                                           (let ((__tmp114149
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len109746_ '()))))
                                             (declare (not safe))
                                             (cons _arglen109742_
                                                   __tmp114149))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114148))
                                    (let ((__tmp114142
                                           (let ((__tmp114143
                                                  (let ((__tmp114144
                                                         (let ((__tmp114145
                                                                (let ((__tmp114146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114147
                                      (let ()
                                        (declare (not safe))
                                        (cons _len109746_ '()))))
                                 (declare (not safe))
                                 (cons _arglen109742_ __tmp114147))))
                          (declare (not safe))
                          (cons '##fx= __tmp114146))))
                   (declare (not safe))
                   (cons __tmp114145 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114144))))
                                             (declare (not safe))
                                             (cons '() __tmp114143))))
                                      (declare (not safe))
                                      (cons 'let __tmp114142)))
                                (if (> _len109746_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114140
                                               (let ((__tmp114141
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len109746_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen109742_
                                                       __tmp114141))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114140))
                                        (let ((__tmp114134
                                               (let ((__tmp114135
                                                      (let ((__tmp114136
                                                             (let ((__tmp114137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114138
                                   (let ((__tmp114139
                                          (let ()
                                            (declare (not safe))
                                            (cons _len109746_ '()))))
                                     (declare (not safe))
                                     (cons _arglen109742_ __tmp114139))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114138))))
                       (declare (not safe))
                       (cons __tmp114137 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114135))))
                                          (declare (not safe))
                                          (cons 'let __tmp114134)))
                                    '#t)))
                           (_dispatch109750_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109604_
                                   _hd109743_
                                   _body109744_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109605_
                                   _hd109743_
                                   _body109744_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109601_
                                   _hd109743_
                                   _body109744_)))))
                      (let ((__tmp114150
                             (let ((__tmp114151
                                    (let ((__tmp114152
                                           (let ((__tmp114153
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args109741_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch109750_
                                                   __tmp114153))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114152))))
                               (declare (not safe))
                               (cons __tmp114151 '()))))
                        (declare (not safe))
                        (cons _condition109748_ __tmp114150))))))
          (let* ((_g109608109636_
                  (lambda (_g109609109633_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109609109633_))))
                 (_g109607109738_
                  (lambda (_g109609109639_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109609109639_))
                        (let ((_e109614109641_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109609109639_))))
                          (let ((_hd109613109644_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109614109641_)))
                                (_tl109612109646_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109614109641_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109612109646_))
                                (let ((_g114154_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109612109646_
                                          '0))))
                                  (begin
                                    (let ((_g114155_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114154_)
                                                 (##vector-length _g114154_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114155_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114155_)))
                                    (let ((_target109615109649_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114154_ 0)))
                                          (_tl109617109651_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114154_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109617109651_))
                                          (letrec ((_loop109618109654_
                                                    (lambda (_hd109616109657_
                                                             _body109622109659_
                                                             _hd109623109661_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109616109657_))
                                                          (let ((_e109619109664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109616109657_))))
                    (let ((_lp-hd109620109667_
                           (let ()
                             (declare (not safe))
                             (##car _e109619109664_)))
                          (_lp-tl109621109669_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109619109664_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109620109667_))
                          (let ((_e109628109672_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109620109667_))))
                            (let ((_hd109627109675_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109628109672_)))
                                  (_tl109626109677_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109628109672_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109626109677_))
                                  (let ((_e109631109680_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109626109677_))))
                                    (let ((_hd109630109683_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109631109680_)))
                                          (_tl109629109685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109631109680_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109629109685_))
                                          (let ((__tmp114184
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109630109683_
                                                         _body109622109659_)))
                                                (__tmp114183
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109627109675_
                                                         _hd109623109661_))))
                                            (declare (not safe))
                                            (_loop109618109654_
                                             _lp-tl109621109669_
                                             __tmp114184
                                             __tmp114183))
                                          (let ()
                                            (declare (not safe))
                                            (_g109608109636_
                                             _g109609109639_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109608109636_ _g109609109639_)))))
                          (let ()
                            (declare (not safe))
                            (_g109608109636_ _g109609109639_)))))
                  (let ((_body109624109688_ (reverse _body109622109659_))
                        (_hd109625109690_ (reverse _hd109623109661_)))
                    ((lambda (_L109693_ _L109694_)
                       (let ((_args109713_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen109714_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name109715_
                              (let ((_$e109710_
                                     (let ((__tmp114156
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114156 _stx109602_))))
                                (if _$e109710_
                                    _$e109710_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114157
                                (let ((__tmp114158
                                       (let ((__tmp114159
                                              (let ((__tmp114160
                                                     (let ((__tmp114173
                                                            (let ((__tmp114174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114175
                                  (let ((__tmp114176
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114182
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109713_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114182))
                                             (let ((__tmp114177
                                                    (let ((__tmp114178
                                                           (let ((__tmp114179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114180
                                 (let ((__tmp114181
                                        (let ()
                                          (declare (not safe))
                                          (cons _args109713_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114181))))
                            (declare (not safe))
                            (cons __tmp114180 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114179))))
              (declare (not safe))
              (cons '() __tmp114178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114177)))))
                                    (declare (not safe))
                                    (cons __tmp114176 '()))))
                             (declare (not safe))
                             (cons _arglen109714_ __tmp114175))))
                      (declare (not safe))
                      (cons __tmp114174 '())))
                   (__tmp114161
                    (let ((__tmp114162
                           (let ((__tmp114163
                                  (let ((__tmp114167
                                         (let ((__tmp114168
                                                (let ((__tmp114169
                                                       (let ((__tmp114170
                                                              (let ((__tmp114171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114172
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109713_ '()))))
                               (declare (not safe))
                               (cons _name109715_ __tmp114172))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114171))))
                 (declare (not safe))
                 (cons __tmp114170 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114169))))
                                           (declare (not safe))
                                           (cons __tmp114168 '())))
                                        (__tmp114164
                                         (map (lambda (_g109716109719_
                                                       _g109717109721_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109606_
                                                   _args109713_
                                                   _arglen109714_
                                                   _g109716109719_
                                                   _g109717109721_)))
                                              (let ((__tmp114165
                                                     (lambda (_g109723109726_
                                                              _g109724109728_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109723109726_
                                                               _g109724109728_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114165
                                                        '()
                                                        _L109694_))
                                              (let ((__tmp114166
                                                     (lambda (_g109730109733_
                                                              _g109731109735_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109730109733_
                                                               _g109731109735_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114166
                                                        '()
                                                        _L109693_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114167 __tmp114164))))
                             (declare (not safe))
                             (cons 'cond __tmp114163))))
                      (declare (not safe))
                      (cons __tmp114162 '()))))
               (declare (not safe))
               (cons __tmp114173 __tmp114161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114160))))
                                         (declare (not safe))
                                         (cons __tmp114159 '()))))
                                  (declare (not safe))
                                  (cons _args109713_ __tmp114158))))
                           (declare (not safe))
                           (cons 'lambda __tmp114157))))
                     _body109624109688_
                     _hd109625109690_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109618109654_
                                               _target109615109649_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109608109636_
                                             _g109609109639_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109608109636_ _g109609109639_)))))
                        (let ()
                          (declare (not safe))
                          (_g109608109636_ _g109609109639_))))))
            (declare (not safe))
            (_g109607109738_ _stx109602_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self108872_ _stx108873_ _compiled-body?108874_)
        (letrec ((_generate-simple108876_
                  (lambda (_hd109586_ _body109587_)
                    (let ((__tmp114185
                           (let ((__tmp114186
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self108872_
                                     'let
                                     _hd109586_
                                     _body109587_
                                     _compiled-body?108874_))))
                             (declare (not safe))
                             (_coalesce-let*108878_ __tmp114186))))
                      (declare (not safe))
                      (_coalesce-boolean108877_ __tmp114185))))
                 (_coalesce-boolean108877_
                  (lambda (_code109447_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109448109474_ _code109447_)
                               (_else109450109482_ (lambda () _code109447_))
                               (_K109452109519_
                                (lambda (_expr2109485_
                                         _expr1109486_
                                         _id109487_)
                                  (let* ((_expr2109488109496_ _expr2109485_)
                                         (_else109490109504_
                                          (lambda ()
                                            (let ((__tmp114187
                                                   (let ((__tmp114188
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109486_
                                                           __tmp114188))))
                                              (declare (not safe))
                                              (cons 'or __tmp114187))))
                                         (_K109492109509_
                                          (lambda (_exprs109507_)
                                            (let ((__tmp114189
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109486_
                                                           _exprs109507_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114189)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109488109496_))
                                        (let ((_hd109493109512_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109488109496_)))
                                              (_tl109494109514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109488109496_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109493109512_ 'or))
                                              (let ((_exprs109517_
                                                     _tl109494109514_))
                                                (declare (not safe))
                                                (_K109492109509_
                                                 _exprs109517_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109490109504_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109490109504_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109448109474_))
                              (let ((_hd109453109522_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109448109474_)))
                                    (_tl109454109524_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109448109474_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109453109522_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109454109524_))
                                        (let ((_hd109455109527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109454109524_)))
                                              (_tl109456109529_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109454109524_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109455109527_))
                                              (let ((_hd109467109532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109455109527_)))
                                                    (_tl109468109534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109455109527_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109467109532_))
                                                    (let ((_hd109469109537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109467109532_)))
                                                          (_tl109470109539_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109467109532_))))
                                                      (let ((_id109542_
                                                             _hd109469109537_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109470109539_))
                                                            (let ((_hd109471109544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109470109539_)))
                          (_tl109472109546_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109470109539_))))
                      (let ((_expr1109549_ _hd109471109544_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109472109546_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109468109534_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109456109529_))
                                    (let ((_hd109457109551_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109456109529_)))
                                          (_tl109458109553_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109456109529_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109457109551_))
                                          (let ((_hd109459109556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109457109551_)))
                                                (_tl109460109558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109457109551_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109459109556_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109460109558_))
                                                    (let ((_hd109461109561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109460109558_)))
                                                          (_tl109462109563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109460109558_))))
                                                      (if ((lambda (_g109565109567_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109565109567_ _id109542_)))
                   _hd109461109561_)
                  (if (let () (declare (not safe)) (##pair? _tl109462109563_))
                      (let ((_hd109463109570_
                             (let ()
                               (declare (not safe))
                               (##car _tl109462109563_)))
                            (_tl109464109572_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109462109563_))))
                        (if ((lambda (_g109574109576_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109574109576_ _id109542_)))
                             _hd109463109570_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109464109572_))
                                (let ((_hd109465109579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109464109572_)))
                                      (_tl109466109581_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109464109572_))))
                                  (let ((_expr2109584_ _hd109465109579_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109466109581_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109458109553_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109452109519_
                                               _expr2109584_
                                               _expr1109549_
                                               _id109542_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109450109482_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109450109482_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109450109482_)))
                            (let ()
                              (declare (not safe))
                              (_else109450109482_))))
                      (let () (declare (not safe)) (_else109450109482_)))
                  (let () (declare (not safe)) (_else109450109482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109450109482_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109450109482_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109450109482_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109450109482_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109450109482_)))
                            (let ()
                              (declare (not safe))
                              (_else109450109482_)))))
                    (let () (declare (not safe)) (_else109450109482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109450109482_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109450109482_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109450109482_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109450109482_))))
                              (let ()
                                (declare (not safe))
                                (_else109450109482_))))
                        _code109447_)))
                 (_coalesce-let*108878_
                  (lambda (_code109180_)
                    (let* ((_code109181109245_ _code109180_)
                           (_else109185109253_ (lambda () _code109180_)))
                      (let ((_K109227109398_
                             (lambda (_body109394_ _expr109395_ _id109396_)
                               (let ((__tmp114190
                                      (let ((__tmp114191
                                             (let ((__tmp114192
                                                    (let ((__tmp114193
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109396_ __tmp114193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114192 '()))))
                                        (declare (not safe))
                                        (cons __tmp114191 _body109394_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114190))))
                            (_K109204109323_
                             (lambda (_body109317_
                                      _expr2109318_
                                      _id2109319_
                                      _expr1109320_
                                      _id1109321_)
                               (let ((__tmp114194
                                      (let ((__tmp114195
                                             (let ((__tmp114199
                                                    (let ((__tmp114200
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109321_ __tmp114200)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114196
                                                    (let ((__tmp114197
                                                           (let ((__tmp114198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109318_ '()))))
                     (declare (not safe))
                     (cons _id2109319_ __tmp114198))))
              (declare (not safe))
              (cons __tmp114197 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114199
                                                     __tmp114196))))
                                        (declare (not safe))
                                        (cons __tmp114195 _body109317_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114194))))
                            (_K109187109262_
                             (lambda (_body109257_
                                      _bind109258_
                                      _expr1109259_
                                      _id1109260_)
                               (let ((__tmp114201
                                      (let ((__tmp114202
                                             (let ((__tmp114203
                                                    (let ((__tmp114204
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109260_ __tmp114204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114203
                                                     _bind109258_))))
                                        (declare (not safe))
                                        (cons __tmp114202 _body109257_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114201)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109181109245_))
                            (let ((_tl109229109403_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109181109245_)))
                                  (_hd109228109401_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109181109245_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109228109401_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109229109403_))
                                      (let ((_tl109231109408_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109229109403_)))
                                            (_hd109230109406_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109229109403_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109230109406_))
                                            (let ((_tl109239109413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109230109406_)))
                                                  (_hd109238109411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109230109406_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109238109411_))
                                                  (let ((_tl109241109418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109238109411_)))
                                                        (_hd109240109416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109238109411_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109241109418_))
                                                        (let ((_tl109243109425_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109241109418_)))
                      (_hd109242109423_
                       (let () (declare (not safe)) (##car _tl109241109418_))))
                  (if (let () (declare (not safe)) (##null? _tl109243109425_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109239109413_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109231109408_))
                              (let ((_tl109233109432_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109231109408_)))
                                    (_hd109232109430_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109231109408_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109232109430_))
                                    (let ((_tl109235109437_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109232109430_)))
                                          (_hd109234109435_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109232109430_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109234109435_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109235109437_))
                                              (let ((_tl109237109442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109235109437_)))
                                                    (_hd109236109440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109235109437_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109236109440_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109233109432_))
                                                        (let ((_id109421_
                                                               _hd109240109416_)
                                                              (_expr109428_
                                                               _hd109242109423_)
                                                              (_body109445_
                                                               _tl109237109442_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109227109398_
                                                             _body109445_
                                                             _expr109428_
                                                             _id109421_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109185109253_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109236109440_))
                                                        (let ((_tl109216109372_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109236109440_)))
                      (_hd109215109370_
                       (let () (declare (not safe)) (##car _hd109236109440_))))
                  (if (let () (declare (not safe)) (##pair? _hd109215109370_))
                      (let ((_tl109218109377_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109215109370_)))
                            (_hd109217109375_
                             (let ()
                               (declare (not safe))
                               (##car _hd109215109370_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109218109377_))
                            (let ((_tl109220109384_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109218109377_)))
                                  (_hd109219109382_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109218109377_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109220109384_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109216109372_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109233109432_))
                                          (let ((_id1109346_ _hd109240109416_)
                                                (_expr1109353_
                                                 _hd109242109423_)
                                                (_id2109380_ _hd109217109375_)
                                                (_expr2109387_
                                                 _hd109219109382_)
                                                (_body109389_
                                                 _tl109237109442_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109204109323_
                                               _body109389_
                                               _expr2109387_
                                               _id2109380_
                                               _expr1109353_
                                               _id1109346_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109185109253_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109185109253_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109185109253_))))
                            (let ()
                              (declare (not safe))
                              (_else109185109253_))))
                      (let () (declare (not safe)) (_else109185109253_))))
                (let () (declare (not safe)) (_else109185109253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109185109253_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109234109435_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109235109437_))
                                                  (let ((_tl109197109306_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109235109437_)))
                                                        (_hd109196109304_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109235109437_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109233109432_))
                                                        (let ((_id1109285_
                                                               _hd109240109416_)
                                                              (_expr1109292_
                                                               _hd109242109423_)
                                                              (_bind109309_
                                                               _hd109196109304_)
                                                              (_body109311_
                                                               _tl109197109306_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109187109262_
                                                             _body109311_
                                                             _bind109309_
                                                             _expr1109292_
                                                             _id1109285_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109185109253_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109185109253_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109185109253_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109185109253_))))
                              (let ()
                                (declare (not safe))
                                (_else109185109253_)))
                          (let () (declare (not safe)) (_else109185109253_)))
                      (let () (declare (not safe)) (_else109185109253_))))
                (let () (declare (not safe)) (_else109185109253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109185109253_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109185109253_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109185109253_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109185109253_))))
                            (let ()
                              (declare (not safe))
                              (_else109185109253_)))))))
                 (_generate-values108879_
                  (lambda (_hd108993_ _body108994_)
                    (let _lp108996_ ((_rest108998_ _hd108993_)
                                     (_bind108999_ '())
                                     (_check109000_ '())
                                     (_post109001_ '()))
                      (let* ((___stx113127113128_ _rest108998_)
                             (_g109004109015_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113127113128_)))))
                        (let ((___kont113129113130_
                               (lambda (_L109042_ _L109043_)
                                 (let* ((___stx113083113084_ _L109043_)
                                        (_g109058109083_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113083113084_)))))
                                   (let ((___kont113085113086_
                                          (lambda (_L109156_ _L109157_)
                                            (let ((_eid109171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109157_)))
                                                  (_expr109172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108872_
                                                      _L109156_))))
                                              (let ((__tmp114205
                                                     (let ((__tmp114206
                                                            (let ((__tmp114207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109172_ '()))))
                      (declare (not safe))
                      (cons _eid109171_ __tmp114207))))
               (declare (not safe))
               (cons __tmp114206 _bind108999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108996_
                                                 _L109042_
                                                 __tmp114205
                                                 _check109000_
                                                 _post109001_)))))
                                         (___kont113087113088_
                                          (lambda (_L109104_ _L109105_)
                                            (let* ((_vals109118_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109120_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109118_
                                                       _L109105_
                                                       _L109104_)))
                                                   (_refs109122_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109118_
                                                       _L109105_)))
                                                   (_expr109124_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108872_
                                                       _L109104_))))
                                              (let ((__tmp114210
                                                     (let ((__tmp114211
                                                            (let ((__tmp114212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109124_ '()))))
                      (declare (not safe))
                      (cons _vals109118_ __tmp114212))))
               (declare (not safe))
               (cons __tmp114211 _bind108999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114209
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109120_
                                                             _check109000_)))
                                                    (__tmp114208
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109122_
                                                             _post109001_))))
                                                (declare (not safe))
                                                (_lp108996_
                                                 _L109042_
                                                 __tmp114210
                                                 __tmp114209
                                                 __tmp114208))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113083113084_))
                                         (let ((_e109064109132_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113083113084_))))
                                           (let ((_tl109062109137_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109064109132_)))
                                                 (_hd109063109135_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109064109132_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109063109135_))
                                                 (let ((_e109067109140_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109063109135_))))
                                                   (let ((_tl109065109145_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109067109140_)))
                                                         (_hd109066109143_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109067109140_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109065109145_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109062109137_))
                     (let ((_e109070109148_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109062109137_))))
                       (let ((_tl109068109153_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109070109148_)))
                             (_hd109069109151_
                              (let ()
                                (declare (not safe))
                                (##car _e109070109148_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109068109153_))
                             (___kont113085113086_
                              _hd109069109151_
                              _hd109066109143_)
                             (let () (declare (not safe)) (_g109058109083_)))))
                     (let () (declare (not safe)) (_g109058109083_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109062109137_))
                     (let ((_e109078109096_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109062109137_))))
                       (let ((_tl109076109101_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109078109096_)))
                             (_hd109077109099_
                              (let ()
                                (declare (not safe))
                                (##car _e109078109096_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109076109101_))
                             (___kont113087113088_
                              _hd109077109099_
                              _hd109063109135_)
                             (let () (declare (not safe)) (_g109058109083_)))))
                     (let () (declare (not safe)) (_g109058109083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109062109137_))
                                                     (let ((_e109078109096_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109062109137_))))
                                                       (let ((_tl109076109101_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109078109096_)))
                     (_hd109077109099_
                      (let () (declare (not safe)) (##car _e109078109096_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109076109101_))
                     (___kont113087113088_ _hd109077109099_ _hd109063109135_)
                     (let () (declare (not safe)) (_g109058109083_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109058109083_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109058109083_)))))))
                              (___kont113131113132_
                               (lambda ()
                                 (let* ((_body109022_
                                         (if _compiled-body?108874_
                                             _body108994_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108872_
                                                _body108994_))))
                                        (_body109024_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108880_
                                            _post109001_
                                            _body109022_)))
                                        (_body109026_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108881_
                                            _check109000_
                                            _body109024_))))
                                   (let ((__tmp114213
                                          (let ((__tmp114215
                                                 (reverse _bind108999_))
                                                (__tmp114214
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109026_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114215 __tmp114214))))
                                     (declare (not safe))
                                     (cons 'let __tmp114213))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113127113128_))
                              (let ((_e109010109034_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113127113128_))))
                                (let ((_tl109008109039_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109010109034_)))
                                      (_hd109009109037_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109010109034_))))
                                  (___kont113129113130_
                                   _tl109008109039_
                                   _hd109009109037_)))
                              (___kont113131113132_)))))))
                 (_generate-values-post108880_
                  (lambda (_post108952_ _body108953_)
                    (let _lp108955_ ((_rest108957_ _post108952_)
                                     (_body108958_ _body108953_))
                      (let* ((_rest108959108967_ _rest108957_)
                             (_else108961108975_ (lambda () _body108958_))
                             (_K108963108981_
                              (lambda (_rest108978_ _bind108979_)
                                (let ((__tmp114216
                                       (let ((__tmp114217
                                              (let ((__tmp114218
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body108958_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind108979_
                                                      __tmp114218))))
                                         (declare (not safe))
                                         (cons 'let __tmp114217))))
                                  (declare (not safe))
                                  (_lp108955_ _rest108978_ __tmp114216)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108959108967_))
                            (let ((_hd108964108984_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108959108967_)))
                                  (_tl108965108986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108959108967_))))
                              (let* ((_bind108989_ _hd108964108984_)
                                     (_rest108991_ _tl108965108986_))
                                (declare (not safe))
                                (_K108963108981_ _rest108991_ _bind108989_)))
                            (let ()
                              (declare (not safe))
                              (_else108961108975_)))))))
                 (_generate-values-check108881_
                  (lambda (_check108949_ _body108950_)
                    (let ((__tmp114219
                           (let ((__tmp114221
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108950_ '())))
                                 (__tmp114220 (reverse _check108949_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114221 __tmp114220))))
                      (declare (not safe))
                      (cons 'begin __tmp114219)))))
          (let* ((_g108883108900_
                  (lambda (_g108884108897_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108884108897_))))
                 (_g108882108946_
                  (lambda (_g108884108903_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108884108903_))
                        (let ((_e108889108905_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108884108903_))))
                          (let ((_hd108888108908_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108889108905_)))
                                (_tl108887108910_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108889108905_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108887108910_))
                                (let ((_e108892108913_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108887108910_))))
                                  (let ((_hd108891108916_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108892108913_)))
                                        (_tl108890108918_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108892108913_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108890108918_))
                                        (let ((_e108895108921_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108890108918_))))
                                          (let ((_hd108894108924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108895108921_)))
                                                (_tl108893108926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108895108921_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108893108926_))
                                                ((lambda (_L108929_ _L108930_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108930_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108876_
                                                          _L108930_
                                                          _L108929_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108879_
                                                          _L108930_
                                                          _L108929_))))
                                                 _hd108894108924_
                                                 _hd108891108916_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108883108900_
                                                   _g108884108903_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108883108900_ _g108884108903_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108883108900_ _g108884108903_)))))
                        (let ()
                          (declare (not safe))
                          (_g108883108900_ _g108884108903_))))))
            (declare (not safe))
            (_g108882108946_ _stx108873_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109592_ _stx109593_)
        (let ((_compiled-body?109595_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109592_
           _stx109593_
           _compiled-body?109595_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114223_
        (let ((_g114222_ (let () (declare (not safe)) (##length _g114223_))))
          (cond ((let () (declare (not safe)) (##fx= _g114222_ 2))
                 (apply (lambda (_self109592_ _stx109593_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109592_
                             _stx109593_)))
                        _g114223_))
                ((let () (declare (not safe)) (##fx= _g114222_ 3))
                 (apply (lambda (_self109597_
                                 _stx109598_
                                 _compiled-body?109599_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109597_
                             _stx109598_
                             _compiled-body?109599_)))
                        _g114223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114223_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals108766_ _hd108767_)
        (let _lp108769_ ((_rest108771_ _hd108767_)
                         (_k108772_ '0)
                         (_r108773_ '()))
          (let* ((___stx113141113142_ _rest108771_)
                 (_g108778108795_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113141113142_)))))
            (let ((___kont113143113144_
                   (lambda (_L108858_)
                     (let ((__tmp114224
                            (let () (declare (not safe)) (fx+ _k108772_ '1))))
                       (declare (not safe))
                       (_lp108769_ _L108858_ __tmp114224 _r108773_))))
                  (___kont113145113146_
                   (lambda (_L108831_ _L108832_)
                     (let ((__tmp114230
                            (let () (declare (not safe)) (fx+ _k108772_ '1)))
                           (__tmp114225
                            (let ((__tmp114226
                                   (let ((__tmp114229
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L108832_)))
                                         (__tmp114227
                                          (let ((__tmp114228
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals108766_
                                                    _k108772_
                                                    _L108831_))))
                                            (declare (not safe))
                                            (cons __tmp114228 '()))))
                                     (declare (not safe))
                                     (cons __tmp114229 __tmp114227))))
                              (declare (not safe))
                              (cons __tmp114226 _r108773_))))
                       (declare (not safe))
                       (_lp108769_ _L108831_ __tmp114230 __tmp114225))))
                  (___kont113147113148_
                   (lambda (_L108807_)
                     (let ((__tmp114231
                            (let ((__tmp114232
                                   (let ((__tmp114235
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L108807_)))
                                         (__tmp114233
                                          (let ((__tmp114234
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals108766_
                                                    _k108772_))))
                                            (declare (not safe))
                                            (cons __tmp114234 '()))))
                                     (declare (not safe))
                                     (cons __tmp114235 __tmp114233))))
                              (declare (not safe))
                              (cons __tmp114232 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114231 _r108773_))))
                  (___kont113149113150_ (lambda () (reverse _r108773_))))
              (let ((_g108776108818_
                     (lambda ()
                       (let ((_L108807_ ___stx113141113142_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L108807_))
                             (___kont113147113148_ _L108807_)
                             (___kont113149113150_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113141113142_))
                    (let ((_e108783108847_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113141113142_))))
                      (let ((_tl108781108852_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108783108847_)))
                            (_hd108782108850_
                             (let ()
                               (declare (not safe))
                               (##car _e108783108847_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd108782108850_))
                            (let ((_e108784108855_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd108782108850_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e108784108855_ '#f))
                                  (___kont113143113144_ _tl108781108852_)
                                  (___kont113145113146_
                                   _tl108781108852_
                                   _hd108782108850_)))
                            (___kont113145113146_
                             _tl108781108852_
                             _hd108782108850_))))
                    (let () (declare (not safe)) (_g108776108818_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108445_ _stx108446_ _compiled-body?108447_)
        (letrec ((_generate-simple108449_
                  (lambda (_hd108751_ _body108752_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108445_
                       'letrec
                       _hd108751_
                       _body108752_
                       _compiled-body?108447_))))
                 (_generate-values108450_
                  (lambda (_hd108530_ _body108531_)
                    (let _lp108533_ ((_rest108535_ _hd108530_)
                                     (_bind108536_ '())
                                     (_check108537_ '())
                                     (_post108538_ '()))
                      (let* ((___stx113215113216_ _rest108535_)
                             (_g108541108552_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113215113216_)))))
                        (let ((___kont113217113218_
                               (lambda (_L108579_ _L108580_)
                                 (let* ((___stx113171113172_ _L108580_)
                                        (_g108595108620_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113171113172_)))))
                                   (let ((___kont113173113174_
                                          (lambda (_L108727_ _L108728_)
                                            (let ((_eid108742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L108728_)))
                                                  (_expr108743_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108445_
                                                      _L108727_))))
                                              (let ((__tmp114236
                                                     (let ((__tmp114237
                                                            (let ((__tmp114238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr108743_ '()))))
                      (declare (not safe))
                      (cons _eid108742_ __tmp114238))))
               (declare (not safe))
               (cons __tmp114237 _bind108536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108533_
                                                 _L108579_
                                                 __tmp114236
                                                 _check108537_
                                                 _post108538_)))))
                                         (___kont113175113176_
                                          (lambda (_L108641_ _L108642_)
                                            (let* ((_vals108655_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values108657_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals108655_
                                                       _L108642_
                                                       _L108641_)))
                                                   (_refs108659_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals108655_
                                                       _L108642_)))
                                                   (_expr108661_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108445_
                                                       _L108641_))))
                                              (let ((__tmp114241
                                                     (let ((__tmp114244
                                                            (let ((__tmp114245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114246
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr108661_ '()))))
                             (declare (not safe))
                             (cons _vals108655_ __tmp114246))))
                      (declare (not safe))
                      (cons __tmp114245 _bind108536_)))
                   (__tmp114242
                    (map (lambda (_e108663108665_)
                           (let* ((_g108667108676_ _e108663108665_)
                                  (_E108669108680_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g108667108676_))))
                                  (_K108670108685_
                                   (lambda (_eid108683_)
                                     (let ((__tmp114243
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid108683_ __tmp114243)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g108667108676_))
                                 (let ((_hd108671108688_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g108667108676_)))
                                       (_tl108672108690_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g108667108676_))))
                                   (let ((_eid108693_ _hd108671108688_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl108672108690_))
                                         (let ((_tl108674108695_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl108672108690_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl108674108695_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K108670108685_ _eid108693_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E108669108680_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E108669108680_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E108669108680_)))))
                         _refs108659_)))
               (declare (not safe))
               (foldl1 cons __tmp114244 __tmp114242)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114240
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values108657_
                                                             _check108537_)))
                                                    (__tmp114239
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs108659_
                                                               _post108538_))))
                                                (declare (not safe))
                                                (_lp108533_
                                                 _L108579_
                                                 __tmp114241
                                                 __tmp114240
                                                 __tmp114239))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113171113172_))
                                         (let ((_e108601108703_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113171113172_))))
                                           (let ((_tl108599108708_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108601108703_)))
                                                 (_hd108600108706_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108601108703_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108600108706_))
                                                 (let ((_e108604108711_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108600108706_))))
                                                   (let ((_tl108602108716_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108604108711_)))
                                                         (_hd108603108714_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108604108711_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108602108716_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108599108708_))
                     (let ((_e108607108719_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108599108708_))))
                       (let ((_tl108605108724_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108607108719_)))
                             (_hd108606108722_
                              (let ()
                                (declare (not safe))
                                (##car _e108607108719_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108605108724_))
                             (___kont113173113174_
                              _hd108606108722_
                              _hd108603108714_)
                             (let () (declare (not safe)) (_g108595108620_)))))
                     (let () (declare (not safe)) (_g108595108620_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108599108708_))
                     (let ((_e108615108633_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108599108708_))))
                       (let ((_tl108613108638_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108615108633_)))
                             (_hd108614108636_
                              (let ()
                                (declare (not safe))
                                (##car _e108615108633_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108613108638_))
                             (___kont113175113176_
                              _hd108614108636_
                              _hd108600108706_)
                             (let () (declare (not safe)) (_g108595108620_)))))
                     (let () (declare (not safe)) (_g108595108620_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108599108708_))
                                                     (let ((_e108615108633_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108599108708_))))
                                                       (let ((_tl108613108638_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108615108633_)))
                     (_hd108614108636_
                      (let () (declare (not safe)) (##car _e108615108633_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108613108638_))
                     (___kont113175113176_ _hd108614108636_ _hd108600108706_)
                     (let () (declare (not safe)) (_g108595108620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108595108620_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108595108620_)))))))
                              (___kont113219113220_
                               (lambda ()
                                 (let* ((_body108559_
                                         (if _compiled-body?108447_
                                             _body108531_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108445_
                                                _body108531_))))
                                        (_body108561_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108452_
                                            _post108538_
                                            _body108559_)))
                                        (_body108563_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108451_
                                            _check108537_
                                            _body108561_))))
                                   (let ((__tmp114247
                                          (let ((__tmp114249
                                                 (reverse _bind108536_))
                                                (__tmp114248
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108563_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114249 __tmp114248))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114247))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113215113216_))
                              (let ((_e108547108571_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113215113216_))))
                                (let ((_tl108545108576_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108547108571_)))
                                      (_hd108546108574_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108547108571_))))
                                  (___kont113217113218_
                                   _tl108545108576_
                                   _hd108546108574_)))
                              (___kont113219113220_)))))))
                 (_generate-values-check108451_
                  (lambda (_check108527_ _body108528_)
                    (let ((__tmp114250
                           (let ((__tmp114252
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108528_ '())))
                                 (__tmp114251 (reverse _check108527_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114252 __tmp114251))))
                      (declare (not safe))
                      (cons 'begin __tmp114250))))
                 (_generate-values-post108452_
                  (lambda (_post108520_ _body108521_)
                    (let ((__tmp114253
                           (let ((__tmp114255
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108521_ '())))
                                 (__tmp114254
                                  (map (lambda (_g108522108524_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108522108524_)))
                                       (reverse _post108520_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114255 __tmp114254))))
                      (declare (not safe))
                      (cons 'begin __tmp114253)))))
          (let* ((_g108454108471_
                  (lambda (_g108455108468_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108455108468_))))
                 (_g108453108517_
                  (lambda (_g108455108474_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108455108474_))
                        (let ((_e108460108476_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108455108474_))))
                          (let ((_hd108459108479_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108460108476_)))
                                (_tl108458108481_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108460108476_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108458108481_))
                                (let ((_e108463108484_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108458108481_))))
                                  (let ((_hd108462108487_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108463108484_)))
                                        (_tl108461108489_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108463108484_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108461108489_))
                                        (let ((_e108466108492_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108461108489_))))
                                          (let ((_hd108465108495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108466108492_)))
                                                (_tl108464108497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108466108492_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108464108497_))
                                                ((lambda (_L108500_ _L108501_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108501_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108449_
                                                          _L108501_
                                                          _L108500_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108450_
                                                          _L108501_
                                                          _L108500_))))
                                                 _hd108465108495_
                                                 _hd108462108487_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108454108471_
                                                   _g108455108474_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108454108471_ _g108455108474_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108454108471_ _g108455108474_)))))
                        (let ()
                          (declare (not safe))
                          (_g108454108471_ _g108455108474_))))))
            (declare (not safe))
            (_g108453108517_ _stx108446_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self108757_ _stx108758_)
        (let ((_compiled-body?108760_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self108757_
           _stx108758_
           _compiled-body?108760_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114257_
        (let ((_g114256_ (let () (declare (not safe)) (##length _g114257_))))
          (cond ((let () (declare (not safe)) (##fx= _g114256_ 2))
                 (apply (lambda (_self108757_ _stx108758_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self108757_
                             _stx108758_)))
                        _g114257_))
                ((let () (declare (not safe)) (##fx= _g114256_ 3))
                 (apply (lambda (_self108762_
                                 _stx108763_
                                 _compiled-body?108764_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self108762_
                             _stx108763_
                             _compiled-body?108764_)))
                        _g114257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114257_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108026_ _stx108027_)
        (letrec ((_generate-values108029_
                  (lambda (_hd108272_ _body108273_)
                    (let _lp108275_ ((_rest108277_ _hd108272_)
                                     (_bind108278_ '()))
                      (let* ((_rest108279108287_ _rest108277_)
                             (_else108281108298_
                              (lambda ()
                                (let ((_bind108295_ (reverse _bind108278_))
                                      (_body108296_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108026_
                                          _body108273_))))
                                  (let ((__tmp114258
                                         (let ((__tmp114259
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108296_ '()))))
                                           (declare (not safe))
                                           (cons _bind108295_ __tmp114259))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114258)))))
                             (_K108283108432_
                              (lambda (_rest108301_ _hd-bind108302_)
                                (let* ((___stx113229113230_ _hd-bind108302_)
                                       (_g108305108330_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113229113230_)))))
                                  (let ((___kont113231113232_
                                         (lambda (_L108411_ _L108412_)
                                           (let ((_eid108426_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108412_)))
                                                 (_expr108427_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108026_
                                                     _L108411_))))
                                             (let ((__tmp114260
                                                    (let ((__tmp114261
                                                           (let ((__tmp114262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108427_ '()))))
                     (declare (not safe))
                     (cons _eid108426_ __tmp114262))))
              (declare (not safe))
              (cons __tmp114261 _bind108278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108275_
                                                _rest108301_
                                                __tmp114260)))))
                                        (___kont113233113234_
                                         (lambda (_L108351_ _L108352_)
                                           (let* ((_vals108371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108375_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108373_
                                                      _L108352_
                                                      _L108351_)))
                                                  (_refs108377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108371_
                                                      _L108352_)))
                                                  (_expr108379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108026_
                                                      _L108351_))))
                                             (let ((__tmp114263
                                                    (let ((__tmp114264
                                                           (let ((__tmp114265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114266
                                 (let ((__tmp114267
                                        (let ((__tmp114268
                                               (let ((__tmp114271
                                                      (let ((__tmp114272
                                                             (let ((__tmp114273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108379_ '()))))
                       (declare (not safe))
                       (cons _tmp108373_ __tmp114273))))
                (declare (not safe))
                (cons __tmp114272 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114269
                                                      (let ((__tmp114270
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108373_ '()))))
                (declare (not safe))
                (cons _check-values108375_ __tmp114270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114271
                                                       __tmp114269))))
                                          (declare (not safe))
                                          (cons 'let __tmp114268))))
                                   (declare (not safe))
                                   (cons __tmp114267 '()))))
                            (declare (not safe))
                            (cons _vals108371_ __tmp114266))))
                     (declare (not safe))
                     (cons __tmp114265 _bind108278_))))
              (declare (not safe))
              (foldl1 cons __tmp114264 _refs108377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108275_
                                                _rest108301_
                                                __tmp114263))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113229113230_))
                                        (let ((_e108311108387_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113229113230_))))
                                          (let ((_tl108309108392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108311108387_)))
                                                (_hd108310108390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108311108387_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108310108390_))
                                                (let ((_e108314108395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108310108390_))))
                                                  (let ((_tl108312108400_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108314108395_)))
                                                        (_hd108313108398_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108314108395_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108312108400_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108309108392_))
                                                            (let ((_e108317108403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108309108392_))))
                      (let ((_tl108315108408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108317108403_)))
                            (_hd108316108406_
                             (let ()
                               (declare (not safe))
                               (##car _e108317108403_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108315108408_))
                            (___kont113231113232_
                             _hd108316108406_
                             _hd108313108398_)
                            (let () (declare (not safe)) (_g108305108330_)))))
                    (let () (declare (not safe)) (_g108305108330_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108309108392_))
                    (let ((_e108325108343_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108309108392_))))
                      (let ((_tl108323108348_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108325108343_)))
                            (_hd108324108346_
                             (let ()
                               (declare (not safe))
                               (##car _e108325108343_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108323108348_))
                            (___kont113233113234_
                             _hd108324108346_
                             _hd108310108390_)
                            (let () (declare (not safe)) (_g108305108330_)))))
                    (let () (declare (not safe)) (_g108305108330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108309108392_))
                                                    (let ((_e108325108343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108309108392_))))
                                                      (let ((_tl108323108348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108325108343_)))
                    (_hd108324108346_
                     (let () (declare (not safe)) (##car _e108325108343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108323108348_))
                    (___kont113233113234_ _hd108324108346_ _hd108310108390_)
                    (let () (declare (not safe)) (_g108305108330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108305108330_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108305108330_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108279108287_))
                            (let ((_hd108284108435_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108279108287_)))
                                  (_tl108285108437_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108279108287_))))
                              (let* ((_hd-bind108440_ _hd108284108435_)
                                     (_rest108442_ _tl108285108437_))
                                (declare (not safe))
                                (_K108283108432_
                                 _rest108442_
                                 _hd-bind108440_)))
                            (let ()
                              (declare (not safe))
                              (_else108281108298_)))))))
                 (_generate-letrec?108030_
                  (lambda (_hd108162_)
                    (let _lp108164_ ((_rest108166_ _hd108162_))
                      (let* ((_rest108167108175_ _rest108166_)
                             (_else108169108183_ (lambda () '#t))
                             (_K108171108260_
                              (lambda (_rest108186_ _hd-bind108187_)
                                (let* ((_g108189108206_
                                        (lambda (_g108190108203_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108190108203_))))
                                       (_g108188108257_
                                        (lambda (_g108190108209_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108190108209_))
                                              (let ((_e108195108211_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108190108209_))))
                                                (let ((_hd108194108214_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108195108211_)))
                                                      (_tl108193108216_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108195108211_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108194108214_))
                                                      (let ((_e108198108219_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108194108214_))))
                (let ((_hd108197108222_
                       (let () (declare (not safe)) (##car _e108198108219_)))
                      (_tl108196108224_
                       (let () (declare (not safe)) (##cdr _e108198108219_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108196108224_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108193108216_))
                          (let ((_e108201108227_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108193108216_))))
                            (let ((_hd108200108230_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108201108227_)))
                                  (_tl108199108232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108201108227_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108199108232_))
                                  ((lambda (_L108235_ _L108236_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108031_ _L108235_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108164_ _rest108186_))
                                         '#f))
                                   _hd108200108230_
                                   _hd108197108222_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108189108206_ _g108190108209_)))))
                          (let ()
                            (declare (not safe))
                            (_g108189108206_ _g108190108209_)))
                      (let ()
                        (declare (not safe))
                        (_g108189108206_ _g108190108209_)))))
              (let ()
                (declare (not safe))
                (_g108189108206_ _g108190108209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108189108206_
                                                 _g108190108209_))))))
                                  (declare (not safe))
                                  (_g108188108257_ _hd-bind108187_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108167108175_))
                            (let ((_hd108172108263_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108167108175_)))
                                  (_tl108173108265_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108167108175_))))
                              (let* ((_hd-bind108268_ _hd108172108263_)
                                     (_rest108270_ _tl108173108265_))
                                (declare (not safe))
                                (_K108171108260_
                                 _rest108270_
                                 _hd-bind108268_)))
                            (let ()
                              (declare (not safe))
                              (_else108169108183_)))))))
                 (_is-lambda-expr?108031_
                  (lambda (_expr108099_)
                    (let* ((___stx113273113274_ _expr108099_)
                           (_g108102108116_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113273113274_)))))
                      (let ((___kont113275113276_
                             (lambda (_L108144_ _L108145_) '#t))
                            (___kont113277113278_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113273113274_))
                            (let ((_e108108108128_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113273113274_))))
                              (let ((_tl108106108133_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108108108128_)))
                                    (_hd108107108131_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108108108128_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108107108131_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108107108131_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108106108133_))
                                            (let ((_e108111108136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108106108133_))))
                                              (let ((_tl108109108141_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108111108136_)))
                                                    (_hd108110108139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108111108136_))))
                                                (___kont113275113276_
                                                 _tl108109108141_
                                                 _hd108110108139_)))
                                            (___kont113277113278_))
                                        (___kont113277113278_))
                                    (___kont113277113278_))))
                            (___kont113277113278_)))))))
          (let* ((_g108033108050_
                  (lambda (_g108034108047_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108034108047_))))
                 (_g108032108096_
                  (lambda (_g108034108053_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108034108053_))
                        (let ((_e108039108055_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108034108053_))))
                          (let ((_hd108038108058_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108039108055_)))
                                (_tl108037108060_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108039108055_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108037108060_))
                                (let ((_e108042108063_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108037108060_))))
                                  (let ((_hd108041108066_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108042108063_)))
                                        (_tl108040108068_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108042108063_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108040108068_))
                                        (let ((_e108045108071_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108040108068_))))
                                          (let ((_hd108044108074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108045108071_)))
                                                (_tl108043108076_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108045108071_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108043108076_))
                                                ((lambda (_L108079_ _L108080_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108080_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108030_
                                                              _L108080_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108026_
                                                              'letrec
                                                              _L108080_
                                                              _L108079_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108026_
                                                              'letrec*
                                                              _L108080_
                                                              _L108079_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108029_
                                                          _L108080_
                                                          _L108079_))))
                                                 _hd108044108074_
                                                 _hd108041108066_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108033108050_
                                                   _g108034108053_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108033108050_ _g108034108053_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108033108050_ _g108034108053_)))))
                        (let ()
                          (declare (not safe))
                          (_g108033108050_ _g108034108053_))))))
            (declare (not safe))
            (_g108032108096_ _stx108027_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd107963_)
        (let _lp107965_ ((_rest107967_ _hd107963_))
          (let* ((_rest107968107984_ _rest107967_)
                 (_else107971107992_ (lambda () '#f)))
            (let ((_K107974108005_
                   (lambda (_rest108003_)
                     (let () (declare (not safe)) (_lp107965_ _rest108003_))))
                  (_K107973107997_ (lambda () '#t)))
              (let ((_try-match107970108000_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest107968107984_))
                           (let () (declare (not safe)) (_K107973107997_))
                           (let ()
                             (declare (not safe))
                             (_else107971107992_))))))
                (if (let () (declare (not safe)) (##pair? _rest107968107984_))
                    (let ((_tl107976108010_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest107968107984_)))
                          (_hd107975108008_
                           (let ()
                             (declare (not safe))
                             (##car _rest107968107984_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd107975108008_))
                          (let ((_tl107978108015_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd107975108008_)))
                                (_hd107977108013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd107975108008_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd107977108013_))
                                (let ((_tl107982108018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd107977108013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107982108018_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107978108015_))
                                          (let ((_tl107980108021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107978108015_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl107980108021_))
                                                (let ((_rest108024_
                                                       _tl107976108010_))
                                                  (declare (not safe))
                                                  (_lp107965_ _rest108024_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else107971107992_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else107971107992_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107971107992_))))
                                (let ()
                                  (declare (not safe))
                                  (_else107971107992_))))
                          (let () (declare (not safe)) (_else107971107992_))))
                    (let ()
                      (declare (not safe))
                      (_try-match107970108000_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self107874_
               _form107875_
               _hd107876_
               _body107877_
               _compiled-body?107878_)
        (letrec ((_generate1107880_
                  (lambda (_bind107919_)
                    (let* ((_bind107920107931_ _bind107919_)
                           (_E107922107935_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind107920107931_))))
                           (_K107923107941_
                            (lambda (_expr107938_ _id107939_)
                              (let ((__tmp114276
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id107939_)))
                                    (__tmp114274
                                     (let ((__tmp114275
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107874_
                                               _expr107938_))))
                                       (declare (not safe))
                                       (cons __tmp114275 '()))))
                                (declare (not safe))
                                (cons __tmp114276 __tmp114274)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind107920107931_))
                          (let ((_hd107924107944_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind107920107931_)))
                                (_tl107925107946_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind107920107931_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd107924107944_))
                                (let ((_hd107928107949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd107924107944_)))
                                      (_tl107929107951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd107924107944_))))
                                  (let ((_id107954_ _hd107928107949_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl107929107951_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107925107946_))
                                            (let ((_hd107926107956_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107925107946_)))
                                                  (_tl107927107958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107925107946_))))
                                              (let ((_expr107961_
                                                     _hd107926107956_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl107927107958_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K107923107941_
                                                       _expr107961_
                                                       _id107954_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E107922107935_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E107922107935_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E107922107935_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E107922107935_))))
                          (let () (declare (not safe)) (_E107922107935_)))))))
          (let* ((_bind107882_ (map _generate1107880_ _hd107876_))
                 (_body107884_
                  (if _compiled-body?107878_
                      _body107877_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self107874_ _body107877_))))
                 (_body107916_
                  (let* ((_body107885107893_ _body107884_)
                         (_else107887107901_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body107884_ '()))))
                         (_K107889107906_
                          (lambda (_exprs107904_) _exprs107904_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body107885107893_))
                        (let ((_hd107890107909_
                               (let ()
                                 (declare (not safe))
                                 (##car _body107885107893_)))
                              (_tl107891107911_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body107885107893_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd107890107909_ 'begin))
                              (let ((_exprs107914_ _tl107891107911_))
                                (declare (not safe))
                                (_K107889107906_ _exprs107914_))
                              (let ()
                                (declare (not safe))
                                (_else107887107901_))))
                        (let () (declare (not safe)) (_else107887107901_))))))
            (let ((__tmp114277
                   (let ()
                     (declare (not safe))
                     (cons _bind107882_ _body107916_))))
              (declare (not safe))
              (cons _form107875_ __tmp114277))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self107781_ _stx107782_)
        (letrec ((_generate1107784_
                  (lambda (_datum107836_)
                    (if (or (let () (declare (not safe)) (null? _datum107836_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _datum107836_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum107836_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum107836_)))
                        _datum107836_
                        (if (uninterned-symbol? _datum107836_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum107836_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum107836_))
                                (let ((__tmp114282
                                       (let ((__tmp114283 (car _datum107836_)))
                                         (declare (not safe))
                                         (_generate1107784_ __tmp114283)))
                                      (__tmp114280
                                       (let ((__tmp114281 (cdr _datum107836_)))
                                         (declare (not safe))
                                         (_generate1107784_ __tmp114281))))
                                  (declare (not safe))
                                  (cons __tmp114282 __tmp114280))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum107836_))
                                    (let ((__tmp114278
                                           (let ((__tmp114279
                                                  (unbox _datum107836_)))
                                             (declare (not safe))
                                             (_generate1107784_ __tmp114279))))
                                      (declare (not safe))
                                      (box __tmp114278))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum107836_))
                                        (vector-map
                                         _generate1107784_
                                         _datum107836_)
                                        (if (or (s8vector? _datum107836_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum107836_))
                                                (s16vector? _datum107836_)
                                                (u16vector? _datum107836_)
                                                (s32vector? _datum107836_)
                                                (u32vector? _datum107836_)
                                                (s64vector? _datum107836_)
                                                (u64vector? _datum107836_)
                                                (f32vector? _datum107836_)
                                                (f64vector? _datum107836_))
                                            _datum107836_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx107782_)))))))))))
          (let* ((_g107786107799_
                  (lambda (_g107787107796_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107787107796_))))
                 (_g107785107833_
                  (lambda (_g107787107802_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107787107802_))
                        (let ((_e107791107804_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107787107802_))))
                          (let ((_hd107790107807_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107791107804_)))
                                (_tl107789107809_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107791107804_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107789107809_))
                                (let ((_e107794107812_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107789107809_))))
                                  (let ((_hd107793107815_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107794107812_)))
                                        (_tl107792107817_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107794107812_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl107792107817_))
                                        ((lambda (_L107820_)
                                           (let ((__tmp114284
                                                  (let ((__tmp114285
                                                         (let ((__tmp114286
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L107820_))))
                   (declare (not safe))
                   (_generate1107784_ __tmp114286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114285 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114284)))
                                         _hd107793107815_)
                                        (let ()
                                          (declare (not safe))
                                          (_g107786107799_ _g107787107802_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107786107799_ _g107787107802_)))))
                        (let ()
                          (declare (not safe))
                          (_g107786107799_ _g107787107802_))))))
            (declare (not safe))
            (_g107785107833_ _stx107782_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107294_ _stx107295_)
        (letrec ((_compile-call107297_
                  (lambda (_rator107521_ _rands107522_)
                    (let ((_rator107528_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107294_ _rator107521_)))
                          (_rands107529_
                           (map (lambda (_g107523107525_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107294_
                                     _g107523107525_)))
                                _rands107522_)))
                      (let* ((___stx113320113321_ _rator107528_)
                             (_g107532107584_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113320113321_)))))
                        (let ((___kont113322113323_
                               (lambda (_L107708_
                                        _L107709_
                                        _L107710_
                                        _L107711_)
                                 (if (fx= (length _rands107529_)
                                          (length (let ((__tmp114291
                                                         (lambda (_g107747107750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g107748107752_)
                   (let ()
                     (declare (not safe))
                     (cons _g107747107750_ _g107748107752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114291
                                                            '()
                                                            _L107710_))))
                                     (let* ((_id107755_ _L107711_)
                                            (_args107764_
                                             (let ((__tmp114287
                                                    (lambda (_g107756107759_
                                                             _g107757107761_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g107756107759_
                                                              _g107757107761_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114287
                                                       '()
                                                       _L107710_)))
                                            (_body107773_
                                             (let ((__tmp114288
                                                    (lambda (_g107765107768_
                                                             _g107766107770_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g107765107768_
                                                              _g107766107770_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114288
                                                       '()
                                                       _L107709_)))
                                            (_init107775_
                                             (map list
                                                  _args107764_
                                                  _rands107529_)))
                                       (let ((__tmp114289
                                              (let ((__tmp114290
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init107775_
                                                             _body107773_))))
                                                (declare (not safe))
                                                (cons _id107755_
                                                      __tmp114290))))
                                         (declare (not safe))
                                         (cons 'let __tmp114289)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107295_)))))
                              (___kont113328113329_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107528_ _rands107529_)))))
                          (let ((___match113387113388_
                                 (lambda (_e107540107596_
                                          _hd107539107599_
                                          _tl107538107601_
                                          _e107543107604_
                                          _hd107542107607_
                                          _tl107541107609_
                                          _e107546107612_
                                          _hd107545107615_
                                          _tl107544107617_
                                          _e107549107620_
                                          _hd107548107623_
                                          _tl107547107625_
                                          _e107552107628_
                                          _hd107551107631_
                                          _tl107550107633_
                                          _e107555107636_
                                          _hd107554107639_
                                          _tl107553107641_
                                          _e107558107644_
                                          _hd107557107647_
                                          _tl107556107649_
                                          ___splice113324113325_
                                          _target107559107652_
                                          _tl107561107654_)
                                   (letrec ((_loop107562107657_
                                             (lambda (_hd107560107660_
                                                      _arg107566107662_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107560107660_))
                                                   (let ((_e107563107665_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107560107660_))))
                                                     (let ((_lp-tl107565107670_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107563107665_)))
                                                           (_lp-hd107564107668_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107563107665_))))
                                                       (let ((__tmp114293
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107564107668_ _arg107566107662_))))
                 (declare (not safe))
                 (_loop107562107657_ _lp-tl107565107670_ __tmp114293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107567107673_
                                                          (reverse _arg107566107662_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107556107649_))
                                                         (let ((___splice113326113327_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107556107649_ '0))))
                   (let ((_tl107570107678_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113326113327_ '1)))
                         (_target107568107676_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113326113327_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107570107678_))
                         (letrec ((_loop107571107681_
                                   (lambda (_hd107569107684_
                                            _body107575107686_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107569107684_))
                                         (let ((_e107572107689_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107569107684_))))
                                           (let ((_lp-tl107574107694_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107572107689_)))
                                                 (_lp-hd107573107692_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107572107689_))))
                                             (let ((__tmp114292
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107573107692_
                                                            _body107575107686_))))
                                               (declare (not safe))
                                               (_loop107571107681_
                                                _lp-tl107574107694_
                                                __tmp114292))))
                                         (let ((_body107576107697_
                                                (reverse _body107575107686_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107550107633_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107544107617_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107541107609_))
                                                       (let ((_e107579107700_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107541107609_))))
                 (let ((_tl107577107705_
                        (let () (declare (not safe)) (##cdr _e107579107700_)))
                       (_hd107578107703_
                        (let () (declare (not safe)) (##car _e107579107700_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107577107705_))
                       (let ((_L107708_ _hd107578107703_)
                             (_L107709_ _body107576107697_)
                             (_L107710_ _arg107567107673_)
                             (_L107711_ _hd107548107623_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L107711_ _L107708_))
                             (___kont113322113323_
                              _L107708_
                              _L107709_
                              _L107710_
                              _L107711_)
                             (___kont113328113329_)))
                       (___kont113328113329_))))
               (___kont113328113329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113328113329_))
                                               (___kont113328113329_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107571107681_ _target107568107676_ '())))
                         (___kont113328113329_))))
                 (___kont113328113329_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107562107657_
                                        _target107559107652_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113320113321_))
                                (let ((_e107540107596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113320113321_))))
                                  (let ((_tl107538107601_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107540107596_)))
                                        (_hd107539107599_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107540107596_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107539107599_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107539107599_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107538107601_))
                                                (let ((_e107543107604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107538107601_))))
                                                  (let ((_tl107541107609_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107543107604_)))
                                                        (_hd107542107607_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107543107604_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107542107607_))
                                                        (let ((_e107546107612_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107542107607_))))
                  (let ((_tl107544107617_
                         (let () (declare (not safe)) (##cdr _e107546107612_)))
                        (_hd107545107615_
                         (let ()
                           (declare (not safe))
                           (##car _e107546107612_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107545107615_))
                        (let ((_e107549107620_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107545107615_))))
                          (let ((_tl107547107625_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107549107620_)))
                                (_hd107548107623_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107549107620_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107547107625_))
                                (let ((_e107552107628_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107547107625_))))
                                  (let ((_tl107550107633_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107552107628_)))
                                        (_hd107551107631_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107552107628_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107551107631_))
                                        (let ((_e107555107636_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107551107631_))))
                                          (let ((_tl107553107641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107555107636_)))
                                                (_hd107554107639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107555107636_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107554107639_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107554107639_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107553107641_))
                                                        (let ((_e107558107644_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107553107641_))))
                  (let ((_tl107556107649_
                         (let () (declare (not safe)) (##cdr _e107558107644_)))
                        (_hd107557107647_
                         (let ()
                           (declare (not safe))
                           (##car _e107558107644_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107557107647_))
                        (let ((___splice113324113325_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107557107647_
                                  '0))))
                          (let ((_tl107561107654_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113324113325_ '1)))
                                (_target107559107652_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113324113325_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107561107654_))
                                (___match113387113388_
                                 _e107540107596_
                                 _hd107539107599_
                                 _tl107538107601_
                                 _e107543107604_
                                 _hd107542107607_
                                 _tl107541107609_
                                 _e107546107612_
                                 _hd107545107615_
                                 _tl107544107617_
                                 _e107549107620_
                                 _hd107548107623_
                                 _tl107547107625_
                                 _e107552107628_
                                 _hd107551107631_
                                 _tl107550107633_
                                 _e107555107636_
                                 _hd107554107639_
                                 _tl107553107641_
                                 _e107558107644_
                                 _hd107557107647_
                                 _tl107556107649_
                                 ___splice113324113325_
                                 _target107559107652_
                                 _tl107561107654_)
                                (___kont113328113329_))))
                        (___kont113328113329_))))
                (___kont113328113329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113328113329_))
                                                (___kont113328113329_))))
                                        (___kont113328113329_))))
                                (___kont113328113329_))))
                        (___kont113328113329_))))
                (___kont113328113329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113328113329_))
                                            (___kont113328113329_))
                                        (___kont113328113329_))))
                                (___kont113328113329_)))))))))
          (let* ((_g107299107313_
                  (lambda (_g107300107310_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107300107310_))))
                 (_g107298107518_
                  (lambda (_g107300107316_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107300107316_))
                        (let ((_e107305107318_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107300107316_))))
                          (let ((_hd107304107321_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107305107318_)))
                                (_tl107303107323_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107305107318_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107303107323_))
                                (let ((_e107308107326_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107303107323_))))
                                  (let ((_hd107307107329_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107308107326_)))
                                        (_tl107306107331_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107308107326_))))
                                    ((lambda (_L107334_ _L107335_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107297_
                                              _L107335_
                                              _L107334_))
                                           (let* ((___stx113436113437_
                                                   _L107335_)
                                                  (_g107350107362_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113436113437_)))))
                                             (let ((___kont113438113439_
                                                    (lambda ()
                                                      (let ((_f107392_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107294_ _L107335_))))
                (if (let ((__tmp114308 (symbol->string _f107392_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114308))
                    (let _lp107394_ ((_rest107397_ (reverse _L107334_))
                                     (_bind107399_ '())
                                     (_args107400_ '()))
                      (let* ((_rest107401107409_ _rest107397_)
                             (_else107403107417_
                              (lambda ()
                                (let ((__tmp114294
                                       (let ((__tmp114295
                                              (let ((__tmp114296
                                                     (let ((__tmp114297
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107400_))))
               (declare (not safe))
               (cons __tmp114297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114296))))
                                         (declare (not safe))
                                         (cons _bind107399_ __tmp114295))))
                                  (declare (not safe))
                                  (cons 'let __tmp114294))))
                             (_K107405107503_
                              (lambda (_rest107420_ _e107421_)
                                (let* ((___stx113390113391_ _e107421_)
                                       (_g107426107444_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113390113391_)))))
                                  (let ((___kont113392113393_
                                         (lambda ()
                                           (let ((__tmp114298
                                                  (let ((__tmp114299
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107421_))))
                                                    (declare (not safe))
                                                    (cons __tmp114299
                                                          _args107400_))))
                                             (declare (not safe))
                                             (_lp107394_
                                              _rest107420_
                                              _bind107399_
                                              __tmp114298))))
                                        (___kont113394113395_
                                         (lambda ()
                                           (let ((__tmp114300
                                                  (let ((__tmp114301
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107421_))))
                                                    (declare (not safe))
                                                    (cons __tmp114301
                                                          _args107400_))))
                                             (declare (not safe))
                                             (_lp107394_
                                              _rest107420_
                                              _bind107399_
                                              __tmp114300))))
                                        (___kont113396113397_
                                         (lambda ()
                                           (let ((_tmp107451_
                                                  (let ((__tmp114302
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114302))))
                                             (let ((__tmp114304
                                                    (let ((__tmp114305
                                                           (let ((__tmp114306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114307
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107421_))))
                            (declare (not safe))
                            (cons __tmp114307 '()))))
                     (declare (not safe))
                     (cons _tmp107451_ __tmp114306))))
              (declare (not safe))
              (cons __tmp114305 _bind107399_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114303
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107451_
                                                            _args107400_))))
                                               (declare (not safe))
                                               (_lp107394_
                                                _rest107420_
                                                __tmp114304
                                                __tmp114303))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113390113391_))
                                        (let ((_e107430107482_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113390113391_))))
                                          (let ((_tl107428107487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107430107482_)))
                                                (_hd107429107485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107430107482_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107429107485_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107429107485_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107428107487_))
                                                        (let ((_e107433107490_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107428107487_))))
                  (let ((_tl107431107495_
                         (let () (declare (not safe)) (##cdr _e107433107490_)))
                        (_hd107432107493_
                         (let ()
                           (declare (not safe))
                           (##car _e107433107490_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107431107495_))
                        (___kont113392113393_)
                        (___kont113396113397_))))
                (___kont113396113397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107429107485_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107428107487_))
                                                            (let ((_e107439107467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107428107487_))))
                      (let ((_tl107437107472_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107439107467_)))
                            (_hd107438107470_
                             (let ()
                               (declare (not safe))
                               (##car _e107439107467_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107437107472_))
                            (___kont113394113395_)
                            (___kont113396113397_))))
                    (___kont113396113397_))
                (___kont113396113397_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113396113397_))))
                                        (___kont113396113397_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107401107409_))
                            (let ((_hd107406107506_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107401107409_)))
                                  (_tl107407107508_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107401107409_))))
                              (let* ((_e107511_ _hd107406107506_)
                                     (_rest107513_ _tl107407107508_))
                                (declare (not safe))
                                (_K107405107503_ _rest107513_ _e107511_)))
                            (let ()
                              (declare (not safe))
                              (_else107403107417_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107297_ _L107335_ _L107334_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113440113441_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107297_
                                                         _L107335_
                                                         _L107334_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113436113437_))
                                                   (let ((_e107354107374_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113436113437_))))
                                                     (let ((_tl107352107379_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107354107374_)))
                                                           (_hd107353107377_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107354107374_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107353107377_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107353107377_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107352107379_))
                           (let ((_e107357107382_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107352107379_))))
                             (let ((_tl107355107387_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107357107382_)))
                                   (_hd107356107385_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107357107382_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107355107387_))
                                   (___kont113438113439_)
                                   (___kont113440113441_))))
                           (___kont113440113441_))
                       (___kont113440113441_))
                   (___kont113440113441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113440113441_))))))
                                     _tl107306107331_
                                     _hd107307107329_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107299107313_ _g107300107316_)))))
                        (let ()
                          (declare (not safe))
                          (_g107299107313_ _g107300107316_))))))
            (declare (not safe))
            (_g107298107518_ _stx107295_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107081_ _stx107082_)
        (let* ((___stx113508113509_ _stx107082_)
               (_g107085107105_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113508113509_)))))
          (let ((___kont113510113511_
                 (lambda (_L107149_ _L107150_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107081_ _stx107082_))
                       (let ((_f107168_
                              (let ((__tmp114309
                                     (let ((__tmp114311
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114310
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107150_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114311 __tmp114310))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107081_ __tmp114309))))
                         (let _lp107170_ ((_rest107173_ (reverse _L107149_))
                                          (_bind107175_ '())
                                          (_args107176_ '()))
                           (let* ((_rest107177107185_ _rest107173_)
                                  (_else107179107193_
                                   (lambda ()
                                     (let ((__tmp114312
                                            (let ((__tmp114313
                                                   (let ((__tmp114314
                                                          (let ((__tmp114315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107168_ _args107176_))))
                    (declare (not safe))
                    (cons __tmp114315 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114314))))
                                              (declare (not safe))
                                              (cons _bind107175_
                                                    __tmp114313))))
                                       (declare (not safe))
                                       (cons 'let __tmp114312))))
                                  (_K107181107279_
                                   (lambda (_rest107196_ _e107197_)
                                     (let* ((___stx113462113463_ _e107197_)
                                            (_g107202107220_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113462113463_)))))
                                       (let ((___kont113464113465_
                                              (lambda ()
                                                (let ((__tmp114316
                                                       (let ((__tmp114317
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107197_))))
                 (declare (not safe))
                 (cons __tmp114317 _args107176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107170_
                                                   _rest107196_
                                                   _bind107175_
                                                   __tmp114316))))
                                             (___kont113466113467_
                                              (lambda ()
                                                (let ((__tmp114318
                                                       (let ((__tmp114319
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107197_))))
                 (declare (not safe))
                 (cons __tmp114319 _args107176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107170_
                                                   _rest107196_
                                                   _bind107175_
                                                   __tmp114318))))
                                             (___kont113468113469_
                                              (lambda ()
                                                (let ((_tmp107227_
                                                       (let ((__tmp114320
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114320))))
                                                  (let ((__tmp114322
                                                         (let ((__tmp114323
                                                                (let ((__tmp114324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114325
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107197_))))
                                 (declare (not safe))
                                 (cons __tmp114325 '()))))
                          (declare (not safe))
                          (cons _tmp107227_ __tmp114324))))
                   (declare (not safe))
                   (cons __tmp114323 _bind107175_)))
                (__tmp114321
                 (let ()
                   (declare (not safe))
                   (cons _tmp107227_ _args107176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107170_
                                                     _rest107196_
                                                     __tmp114322
                                                     __tmp114321))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113462113463_))
                                             (let ((_e107206107258_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113462113463_))))
                                               (let ((_tl107204107263_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107206107258_)))
                                                     (_hd107205107261_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107206107258_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107205107261_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107205107261_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107204107263_))
                     (let ((_e107209107266_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107204107263_))))
                       (let ((_tl107207107271_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107209107266_)))
                             (_hd107208107269_
                              (let ()
                                (declare (not safe))
                                (##car _e107209107266_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107207107271_))
                             (___kont113464113465_)
                             (___kont113468113469_))))
                     (___kont113468113469_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107205107261_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107204107263_))
                         (let ((_e107215107243_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107204107263_))))
                           (let ((_tl107213107248_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107215107243_)))
                                 (_hd107214107246_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107215107243_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107213107248_))
                                 (___kont113466113467_)
                                 (___kont113468113469_))))
                         (___kont113468113469_))
                     (___kont113468113469_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113468113469_))))
                                             (___kont113468113469_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107177107185_))
                                 (let ((_hd107182107282_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107177107185_)))
                                       (_tl107183107284_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107177107185_))))
                                   (let* ((_e107287_ _hd107182107282_)
                                          (_rest107289_ _tl107183107284_))
                                     (declare (not safe))
                                     (_K107181107279_ _rest107289_ _e107287_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107179107193_)))))))))
                (___kont113512113513_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107081_ _stx107082_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113508113509_))
                (let ((_e107091107117_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113508113509_))))
                  (let ((_tl107089107122_
                         (let () (declare (not safe)) (##cdr _e107091107117_)))
                        (_hd107090107120_
                         (let ()
                           (declare (not safe))
                           (##car _e107091107117_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107089107122_))
                        (let ((_e107094107125_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107089107122_))))
                          (let ((_tl107092107130_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107094107125_)))
                                (_hd107093107128_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107094107125_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107093107128_))
                                (let ((_e107097107133_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107093107128_))))
                                  (let ((_tl107095107138_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107097107133_)))
                                        (_hd107096107136_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107097107133_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107096107136_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107096107136_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107095107138_))
                                                (let ((_e107100107141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107095107138_))))
                                                  (let ((_tl107098107146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107100107141_)))
                                                        (_hd107099107144_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107100107141_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107098107146_))
                                                        (___kont113510113511_
                                                         _tl107092107130_
                                                         _hd107099107144_)
                                                        (___kont113512113513_))))
                                                (___kont113512113513_))
                                            (___kont113512113513_))
                                        (___kont113512113513_))))
                                (___kont113512113513_))))
                        (___kont113512113513_))))
                (___kont113512113513_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self106893_ _stx106894_)
        (letrec ((_simplify106896_
                  (lambda (_code106981_)
                    (let* ((_code106982107000_ _code106981_)
                           (_else106984107008_ (lambda () _code106981_))
                           (_K106986107044_
                            (lambda (_expr107011_ _test107012_)
                              (let* ((_expr107013107021_ _expr107011_)
                                     (_else107015107029_
                                      (lambda ()
                                        (let ((__tmp114326
                                               (let ((__tmp114327
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107011_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107012_
                                                       __tmp114327))))
                                          (declare (not safe))
                                          (cons 'and __tmp114326))))
                                     (_K107017107034_
                                      (lambda (_exprs107032_)
                                        (let ((__tmp114328
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107012_
                                                       _exprs107032_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114328)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107013107021_))
                                    (let ((_hd107018107037_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107013107021_)))
                                          (_tl107019107039_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107013107021_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107018107037_ 'and))
                                          (let ((_exprs107042_
                                                 _tl107019107039_))
                                            (declare (not safe))
                                            (_K107017107034_ _exprs107042_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107015107029_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107015107029_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code106982107000_))
                          (let ((_hd106987107047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code106982107000_)))
                                (_tl106988107049_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code106982107000_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd106987107047_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl106988107049_))
                                    (let ((_hd106989107052_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl106988107049_)))
                                          (_tl106990107054_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl106988107049_))))
                                      (let ((_test107057_ _hd106989107052_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl106990107054_))
                                            (let ((_hd106991107059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl106990107054_)))
                                                  (_tl106992107061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl106990107054_))))
                                              (let ((_expr107064_
                                                     _hd106991107059_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl106992107061_))
                                                    (let ((_hd106993107066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl106992107061_)))
                                                          (_tl106994107068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl106992107061_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd106993107066_))
                                                          (let ((_hd106995107071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd106993107066_)))
                        (_tl106996107073_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd106993107066_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd106995107071_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106996107073_))
                            (let ((_hd106997107076_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106996107073_)))
                                  (_tl106998107078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106996107073_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd106997107076_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl106998107078_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106994107068_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106986107044_
                                             _expr107064_
                                             _test107057_))
                                          (let ()
                                            (declare (not safe))
                                            (_else106984107008_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else106984107008_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else106984107008_))))
                            (let () (declare (not safe)) (_else106984107008_)))
                        (let () (declare (not safe)) (_else106984107008_))))
                  (let () (declare (not safe)) (_else106984107008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106984107008_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else106984107008_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else106984107008_)))
                                (let ()
                                  (declare (not safe))
                                  (_else106984107008_))))
                          (let ()
                            (declare (not safe))
                            (_else106984107008_)))))))
          (let* ((_g106898106919_
                  (lambda (_g106899106916_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106899106916_))))
                 (_g106897106978_
                  (lambda (_g106899106922_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106899106922_))
                        (let ((_e106905106924_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106899106922_))))
                          (let ((_hd106904106927_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106905106924_)))
                                (_tl106903106929_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106905106924_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106903106929_))
                                (let ((_e106908106932_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106903106929_))))
                                  (let ((_hd106907106935_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106908106932_)))
                                        (_tl106906106937_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106908106932_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106906106937_))
                                        (let ((_e106911106940_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106906106937_))))
                                          (let ((_hd106910106943_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106911106940_)))
                                                (_tl106909106945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106911106940_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl106909106945_))
                                                (let ((_e106914106948_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl106909106945_))))
                                                  (let ((_hd106913106951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106914106948_)))
                                                        (_tl106912106953_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106914106948_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl106912106953_))
                                                        ((lambda (_L106956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L106957_
                          _L106958_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114336
                              (let ((__tmp114337
                                     (let ((__tmp114342
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106893_
                                               _L106958_)))
                                           (__tmp114338
                                            (let ((__tmp114341
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106893_
                                                      _L106957_)))
                                                  (__tmp114339
                                                   (let ((__tmp114340
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self106893_
                                                             _L106956_))))
                                                     (declare (not safe))
                                                     (cons __tmp114340 '()))))
                                              (declare (not safe))
                                              (cons __tmp114341 __tmp114339))))
                                       (declare (not safe))
                                       (cons __tmp114342 __tmp114338))))
                                (declare (not safe))
                                (cons 'if __tmp114337))))
                         (declare (not safe))
                         (_simplify106896_ __tmp114336))
                       (let ((__tmp114329
                              (let ((__tmp114334
                                     (let ((__tmp114335
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106893_
                                                 _L106958_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114335
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114330
                                     (let ((__tmp114333
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106893_
                                               _L106957_)))
                                           (__tmp114331
                                            (let ((__tmp114332
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106893_
                                                      _L106956_))))
                                              (declare (not safe))
                                              (cons __tmp114332 '()))))
                                       (declare (not safe))
                                       (cons __tmp114333 __tmp114331))))
                                (declare (not safe))
                                (cons __tmp114334 __tmp114330))))
                         (declare (not safe))
                         (cons 'if __tmp114329))))
                 _hd106913106951_
                 _hd106910106943_
                 _hd106907106935_)
                (let ()
                  (declare (not safe))
                  (_g106898106919_ _g106899106922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106898106919_
                                                   _g106899106922_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106898106919_ _g106899106922_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106898106919_ _g106899106922_)))))
                        (let ()
                          (declare (not safe))
                          (_g106898106919_ _g106899106922_))))))
            (declare (not safe))
            (_g106897106978_ _stx106894_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self106841_ _stx106842_)
        (let* ((_g106844106857_
                (lambda (_g106845106854_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106845106854_))))
               (_g106843106890_
                (lambda (_g106845106860_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106845106860_))
                      (let ((_e106849106862_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106845106860_))))
                        (let ((_hd106848106865_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106849106862_)))
                              (_tl106847106867_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106849106862_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106847106867_))
                              (let ((_e106852106870_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106847106867_))))
                                (let ((_hd106851106873_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106852106870_)))
                                      (_tl106850106875_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106852106870_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl106850106875_))
                                      ((lambda (_L106878_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L106878_)))
                                       _hd106851106873_)
                                      (let ()
                                        (declare (not safe))
                                        (_g106844106857_ _g106845106860_)))))
                              (let ()
                                (declare (not safe))
                                (_g106844106857_ _g106845106860_)))))
                      (let ()
                        (declare (not safe))
                        (_g106844106857_ _g106845106860_))))))
          (declare (not safe))
          (_g106843106890_ _stx106842_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self106773_ _stx106774_)
        (let* ((_g106776106793_
                (lambda (_g106777106790_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106777106790_))))
               (_g106775106838_
                (lambda (_g106777106796_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106777106796_))
                      (let ((_e106782106798_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106777106796_))))
                        (let ((_hd106781106801_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106782106798_)))
                              (_tl106780106803_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106782106798_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106780106803_))
                              (let ((_e106785106806_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106780106803_))))
                                (let ((_hd106784106809_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106785106806_)))
                                      (_tl106783106811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106785106806_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106783106811_))
                                      (let ((_e106788106814_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106783106811_))))
                                        (let ((_hd106787106817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106788106814_)))
                                              (_tl106786106819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106788106814_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106786106819_))
                                              ((lambda (_L106822_ _L106823_)
                                                 (let ((__tmp114343
                                                        (let ((__tmp114346
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L106823_)))
                      (__tmp114344
                       (let ((__tmp114345
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self106773_ _L106822_))))
                         (declare (not safe))
                         (cons __tmp114345 '()))))
                  (declare (not safe))
                  (cons __tmp114346 __tmp114344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114343)))
                                               _hd106787106817_
                                               _hd106784106809_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106776106793_
                                                 _g106777106796_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106776106793_ _g106777106796_)))))
                              (let ()
                                (declare (not safe))
                                (_g106776106793_ _g106777106796_)))))
                      (let ()
                        (declare (not safe))
                        (_g106776106793_ _g106777106796_))))))
          (declare (not safe))
          (_g106775106838_ _stx106774_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106584_ _stx106585_)
        (let* ((_g106587106604_
                (lambda (_g106588106601_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106588106601_))))
               (_g106586106770_
                (lambda (_g106588106607_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106588106607_))
                      (let ((_e106593106609_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106588106607_))))
                        (let ((_hd106592106612_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106593106609_)))
                              (_tl106591106614_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106593106609_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106591106614_))
                              (let ((_e106596106617_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106591106614_))))
                                (let ((_hd106595106620_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106596106617_)))
                                      (_tl106594106622_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106596106617_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106594106622_))
                                      (let ((_e106599106625_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106594106622_))))
                                        (let ((_hd106598106628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106599106625_)))
                                              (_tl106597106630_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106599106625_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106597106630_))
                                              ((lambda (_L106633_ _L106634_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114362
                                                            (let ((__tmp114365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106584_ _L106633_)))
                          (__tmp114363
                           (let ((__tmp114364
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106584_
                                     _L106634_))))
                             (declare (not safe))
                             (cons __tmp114364 '()))))
                      (declare (not safe))
                      (cons __tmp114365 __tmp114363))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114362))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106649_ ((_rest106652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114361
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106633_ '()))))
                                 (declare (not safe))
                                 (cons _L106634_ __tmp114361)))
                              (_bind106654_ '())
                              (_args106655_ '()))
               (let* ((_rest106656106664_ _rest106652_)
                      (_else106658106672_
                       (lambda ()
                         (let ((__tmp114347
                                (let ((__tmp114348
                                       (let ((__tmp114349
                                              (let ((__tmp114350
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args106655_))))
                                                (declare (not safe))
                                                (cons __tmp114350 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114349))))
                                  (declare (not safe))
                                  (cons _bind106654_ __tmp114348))))
                           (declare (not safe))
                           (cons 'let __tmp114347))))
                      (_K106660106758_
                       (lambda (_rest106675_ _e106676_)
                         (let* ((___stx113546113547_ _e106676_)
                                (_g106681106699_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113546113547_)))))
                           (let ((___kont113548113549_
                                  (lambda ()
                                    (let ((__tmp114351
                                           (let ((__tmp114352
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106676_))))
                                             (declare (not safe))
                                             (cons __tmp114352 _args106655_))))
                                      (declare (not safe))
                                      (_lp106649_
                                       _rest106675_
                                       _bind106654_
                                       __tmp114351))))
                                 (___kont113550113551_
                                  (lambda ()
                                    (let ((__tmp114353
                                           (let ((__tmp114354
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106676_))))
                                             (declare (not safe))
                                             (cons __tmp114354 _args106655_))))
                                      (declare (not safe))
                                      (_lp106649_
                                       _rest106675_
                                       _bind106654_
                                       __tmp114353))))
                                 (___kont113552113553_
                                  (lambda ()
                                    (let ((_tmp106706_
                                           (let ((__tmp114355 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114355))))
                                      (let ((__tmp114357
                                             (let ((__tmp114358
                                                    (let ((__tmp114359
                                                           (let ((__tmp114360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106676_))))
                     (declare (not safe))
                     (cons __tmp114360 '()))))
              (declare (not safe))
              (cons _tmp106706_ __tmp114359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114358
                                                     _bind106654_)))
                                            (__tmp114356
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106706_
                                                     _args106655_))))
                                        (declare (not safe))
                                        (_lp106649_
                                         _rest106675_
                                         __tmp114357
                                         __tmp114356))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113546113547_))
                                 (let ((_e106685106737_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113546113547_))))
                                   (let ((_tl106683106742_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106685106737_)))
                                         (_hd106684106740_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106685106737_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106684106740_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106684106740_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106683106742_))
                                                 (let ((_e106688106745_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106683106742_))))
                                                   (let ((_tl106686106750_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106688106745_)))
                                                         (_hd106687106748_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106688106745_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106686106750_))
                                                         (___kont113548113549_)
                                                         (___kont113552113553_))))
                                                 (___kont113552113553_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106684106740_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106683106742_))
                                                     (let ((_e106694106722_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106683106742_))))
                                                       (let ((_tl106692106727_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106694106722_)))
                     (_hd106693106725_
                      (let () (declare (not safe)) (##car _e106694106722_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106692106727_))
                     (___kont113550113551_)
                     (___kont113552113553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113552113553_))
                                                 (___kont113552113553_)))
                                         (___kont113552113553_))))
                                 (___kont113552113553_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106656106664_))
                     (let ((_hd106661106761_
                            (let ()
                              (declare (not safe))
                              (##car _rest106656106664_)))
                           (_tl106662106763_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106656106664_))))
                       (let* ((_e106766_ _hd106661106761_)
                              (_rest106768_ _tl106662106763_))
                         (declare (not safe))
                         (_K106660106758_ _rest106768_ _e106766_)))
                     (let () (declare (not safe)) (_else106658106672_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106598106628_
                                               _hd106595106620_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106587106604_
                                                 _g106588106607_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106587106604_ _g106588106607_)))))
                              (let ()
                                (declare (not safe))
                                (_g106587106604_ _g106588106607_)))))
                      (let ()
                        (declare (not safe))
                        (_g106587106604_ _g106588106607_))))))
          (declare (not safe))
          (_g106586106770_ _stx106585_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106395_ _stx106396_)
        (let* ((_g106398106415_
                (lambda (_g106399106412_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106399106412_))))
               (_g106397106581_
                (lambda (_g106399106418_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106399106418_))
                      (let ((_e106404106420_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106399106418_))))
                        (let ((_hd106403106423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106404106420_)))
                              (_tl106402106425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106404106420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106402106425_))
                              (let ((_e106407106428_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106402106425_))))
                                (let ((_hd106406106431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106407106428_)))
                                      (_tl106405106433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106407106428_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106405106433_))
                                      (let ((_e106410106436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106405106433_))))
                                        (let ((_hd106409106439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106410106436_)))
                                              (_tl106408106441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106410106436_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106408106441_))
                                              ((lambda (_L106444_ _L106445_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114381
                                                            (let ((__tmp114384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106395_ _L106444_)))
                          (__tmp114382
                           (let ((__tmp114383
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106395_
                                     _L106445_))))
                             (declare (not safe))
                             (cons __tmp114383 '()))))
                      (declare (not safe))
                      (cons __tmp114384 __tmp114382))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114381))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106460_ ((_rest106463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114380
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106444_ '()))))
                                 (declare (not safe))
                                 (cons _L106445_ __tmp114380)))
                              (_bind106465_ '())
                              (_args106466_ '()))
               (let* ((_rest106467106475_ _rest106463_)
                      (_else106469106483_
                       (lambda ()
                         (let ((__tmp114366
                                (let ((__tmp114367
                                       (let ((__tmp114368
                                              (let ((__tmp114369
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106466_))))
                                                (declare (not safe))
                                                (cons __tmp114369 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114368))))
                                  (declare (not safe))
                                  (cons _bind106465_ __tmp114367))))
                           (declare (not safe))
                           (cons 'let __tmp114366))))
                      (_K106471106569_
                       (lambda (_rest106486_ _e106487_)
                         (let* ((___stx113592113593_ _e106487_)
                                (_g106492106510_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113592113593_)))))
                           (let ((___kont113594113595_
                                  (lambda ()
                                    (let ((__tmp114370
                                           (let ((__tmp114371
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106487_))))
                                             (declare (not safe))
                                             (cons __tmp114371 _args106466_))))
                                      (declare (not safe))
                                      (_lp106460_
                                       _rest106486_
                                       _bind106465_
                                       __tmp114370))))
                                 (___kont113596113597_
                                  (lambda ()
                                    (let ((__tmp114372
                                           (let ((__tmp114373
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106487_))))
                                             (declare (not safe))
                                             (cons __tmp114373 _args106466_))))
                                      (declare (not safe))
                                      (_lp106460_
                                       _rest106486_
                                       _bind106465_
                                       __tmp114372))))
                                 (___kont113598113599_
                                  (lambda ()
                                    (let ((_tmp106517_
                                           (let ((__tmp114374 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114374))))
                                      (let ((__tmp114376
                                             (let ((__tmp114377
                                                    (let ((__tmp114378
                                                           (let ((__tmp114379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106487_))))
                     (declare (not safe))
                     (cons __tmp114379 '()))))
              (declare (not safe))
              (cons _tmp106517_ __tmp114378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114377
                                                     _bind106465_)))
                                            (__tmp114375
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106517_
                                                     _args106466_))))
                                        (declare (not safe))
                                        (_lp106460_
                                         _rest106486_
                                         __tmp114376
                                         __tmp114375))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113592113593_))
                                 (let ((_e106496106548_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113592113593_))))
                                   (let ((_tl106494106553_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106496106548_)))
                                         (_hd106495106551_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106496106548_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106495106551_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106495106551_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106494106553_))
                                                 (let ((_e106499106556_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106494106553_))))
                                                   (let ((_tl106497106561_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106499106556_)))
                                                         (_hd106498106559_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106499106556_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106497106561_))
                                                         (___kont113594113595_)
                                                         (___kont113598113599_))))
                                                 (___kont113598113599_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106495106551_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106494106553_))
                                                     (let ((_e106505106533_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106494106553_))))
                                                       (let ((_tl106503106538_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106505106533_)))
                     (_hd106504106536_
                      (let () (declare (not safe)) (##car _e106505106533_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106503106538_))
                     (___kont113596113597_)
                     (___kont113598113599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113598113599_))
                                                 (___kont113598113599_)))
                                         (___kont113598113599_))))
                                 (___kont113598113599_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106467106475_))
                     (let ((_hd106472106572_
                            (let ()
                              (declare (not safe))
                              (##car _rest106467106475_)))
                           (_tl106473106574_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106467106475_))))
                       (let* ((_e106577_ _hd106472106572_)
                              (_rest106579_ _tl106473106574_))
                         (declare (not safe))
                         (_K106471106569_ _rest106579_ _e106577_)))
                     (let () (declare (not safe)) (_else106469106483_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106409106439_
                                               _hd106406106431_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106398106415_
                                                 _g106399106418_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106398106415_ _g106399106418_)))))
                              (let ()
                                (declare (not safe))
                                (_g106398106415_ _g106399106418_)))))
                      (let ()
                        (declare (not safe))
                        (_g106398106415_ _g106399106418_))))))
          (declare (not safe))
          (_g106397106581_ _stx106396_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106311_ _stx106312_)
        (let* ((_g106314106335_
                (lambda (_g106315106332_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106315106332_))))
               (_g106313106392_
                (lambda (_g106315106338_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106315106338_))
                      (let ((_e106321106340_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106315106338_))))
                        (let ((_hd106320106343_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106321106340_)))
                              (_tl106319106345_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106321106340_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106319106345_))
                              (let ((_e106324106348_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106319106345_))))
                                (let ((_hd106323106351_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106324106348_)))
                                      (_tl106322106353_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106324106348_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106322106353_))
                                      (let ((_e106327106356_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106322106353_))))
                                        (let ((_hd106326106359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106327106356_)))
                                              (_tl106325106361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106327106356_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106325106361_))
                                              (let ((_e106330106364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106325106361_))))
                                                (let ((_hd106329106367_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106330106364_)))
                                                      (_tl106328106369_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106330106364_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106328106369_))
                                                      ((lambda (_L106372_
                                                                _L106373_
                                                                _L106374_)
                                                         (let ((__tmp114385
                                                                (let ((__tmp114391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106311_ _L106372_)))
                              (__tmp114386
                               (let ((__tmp114390
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106311_
                                         _L106373_)))
                                     (__tmp114387
                                      (let ((__tmp114389
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106311_
                                                _L106374_)))
                                            (__tmp114388
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114389 __tmp114388))))
                                 (declare (not safe))
                                 (cons __tmp114390 __tmp114387))))
                          (declare (not safe))
                          (cons __tmp114391 __tmp114386))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114385)))
               _hd106329106367_
               _hd106326106359_
               _hd106323106351_)
              (let ()
                (declare (not safe))
                (_g106314106335_ _g106315106338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106314106335_
                                                 _g106315106338_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106314106335_ _g106315106338_)))))
                              (let ()
                                (declare (not safe))
                                (_g106314106335_ _g106315106338_)))))
                      (let ()
                        (declare (not safe))
                        (_g106314106335_ _g106315106338_))))))
          (declare (not safe))
          (_g106313106392_ _stx106312_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106211_ _stx106212_)
        (let* ((_g106214106239_
                (lambda (_g106215106236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106215106236_))))
               (_g106213106308_
                (lambda (_g106215106242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106215106242_))
                      (let ((_e106222106244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106215106242_))))
                        (let ((_hd106221106247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106222106244_)))
                              (_tl106220106249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106222106244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106220106249_))
                              (let ((_e106225106252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106220106249_))))
                                (let ((_hd106224106255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106225106252_)))
                                      (_tl106223106257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106225106252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106223106257_))
                                      (let ((_e106228106260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106223106257_))))
                                        (let ((_hd106227106263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106228106260_)))
                                              (_tl106226106265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106228106260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106226106265_))
                                              (let ((_e106231106268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106226106265_))))
                                                (let ((_hd106230106271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106231106268_)))
                                                      (_tl106229106273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106231106268_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106229106273_))
                                                      (let ((_e106234106276_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106229106273_))))
                (let ((_hd106233106279_
                       (let () (declare (not safe)) (##car _e106234106276_)))
                      (_tl106232106281_
                       (let () (declare (not safe)) (##cdr _e106234106276_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106232106281_))
                      ((lambda (_L106284_ _L106285_ _L106286_ _L106287_)
                         (let ((__tmp114392
                                (let ((__tmp114400
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106211_
                                          _L106285_)))
                                      (__tmp114393
                                       (let ((__tmp114399
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106211_
                                                 _L106284_)))
                                             (__tmp114394
                                              (let ((__tmp114398
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106211_
                                                        _L106286_)))
                                                    (__tmp114395
                                                     (let ((__tmp114397
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106211_
                                                               _L106287_)))
                                                           (__tmp114396
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114397 __tmp114396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114398
                                                      __tmp114395))))
                                         (declare (not safe))
                                         (cons __tmp114399 __tmp114394))))
                                  (declare (not safe))
                                  (cons __tmp114400 __tmp114393))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114392)))
                       _hd106233106279_
                       _hd106230106271_
                       _hd106227106263_
                       _hd106224106255_)
                      (let ()
                        (declare (not safe))
                        (_g106214106239_ _g106215106242_)))))
              (let ()
                (declare (not safe))
                (_g106214106239_ _g106215106242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106214106239_
                                                 _g106215106242_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106214106239_ _g106215106242_)))))
                              (let ()
                                (declare (not safe))
                                (_g106214106239_ _g106215106242_)))))
                      (let ()
                        (declare (not safe))
                        (_g106214106239_ _g106215106242_))))))
          (declare (not safe))
          (_g106213106308_ _stx106212_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106127_ _stx106128_)
        (let* ((_g106130106151_
                (lambda (_g106131106148_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106131106148_))))
               (_g106129106208_
                (lambda (_g106131106154_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106131106154_))
                      (let ((_e106137106156_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106131106154_))))
                        (let ((_hd106136106159_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106137106156_)))
                              (_tl106135106161_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106137106156_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106135106161_))
                              (let ((_e106140106164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106135106161_))))
                                (let ((_hd106139106167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106140106164_)))
                                      (_tl106138106169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106140106164_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106138106169_))
                                      (let ((_e106143106172_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106138106169_))))
                                        (let ((_hd106142106175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106143106172_)))
                                              (_tl106141106177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106143106172_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106141106177_))
                                              (let ((_e106146106180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106141106177_))))
                                                (let ((_hd106145106183_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106146106180_)))
                                                      (_tl106144106185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106146106180_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106144106185_))
                                                      ((lambda (_L106188_
                                                                _L106189_
                                                                _L106190_)
                                                         (let ((__tmp114401
                                                                (let ((__tmp114407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106127_ _L106188_)))
                              (__tmp114402
                               (let ((__tmp114406
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106127_
                                         _L106189_)))
                                     (__tmp114403
                                      (let ((__tmp114405
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106127_
                                                _L106190_)))
                                            (__tmp114404
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114405 __tmp114404))))
                                 (declare (not safe))
                                 (cons __tmp114406 __tmp114403))))
                          (declare (not safe))
                          (cons __tmp114407 __tmp114402))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114401)))
               _hd106145106183_
               _hd106142106175_
               _hd106139106167_)
              (let ()
                (declare (not safe))
                (_g106130106151_ _g106131106154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106130106151_
                                                 _g106131106154_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106130106151_ _g106131106154_)))))
                              (let ()
                                (declare (not safe))
                                (_g106130106151_ _g106131106154_)))))
                      (let ()
                        (declare (not safe))
                        (_g106130106151_ _g106131106154_))))))
          (declare (not safe))
          (_g106129106208_ _stx106128_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106027_ _stx106028_)
        (let* ((_g106030106055_
                (lambda (_g106031106052_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106031106052_))))
               (_g106029106124_
                (lambda (_g106031106058_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106031106058_))
                      (let ((_e106038106060_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106031106058_))))
                        (let ((_hd106037106063_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106038106060_)))
                              (_tl106036106065_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106038106060_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106036106065_))
                              (let ((_e106041106068_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106036106065_))))
                                (let ((_hd106040106071_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106041106068_)))
                                      (_tl106039106073_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106041106068_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106039106073_))
                                      (let ((_e106044106076_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106039106073_))))
                                        (let ((_hd106043106079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106044106076_)))
                                              (_tl106042106081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106044106076_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106042106081_))
                                              (let ((_e106047106084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106042106081_))))
                                                (let ((_hd106046106087_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106047106084_)))
                                                      (_tl106045106089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106047106084_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106045106089_))
                                                      (let ((_e106050106092_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106045106089_))))
                (let ((_hd106049106095_
                       (let () (declare (not safe)) (##car _e106050106092_)))
                      (_tl106048106097_
                       (let () (declare (not safe)) (##cdr _e106050106092_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106048106097_))
                      ((lambda (_L106100_ _L106101_ _L106102_ _L106103_)
                         (let ((__tmp114408
                                (let ((__tmp114416
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106027_
                                          _L106101_)))
                                      (__tmp114409
                                       (let ((__tmp114415
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106027_
                                                 _L106100_)))
                                             (__tmp114410
                                              (let ((__tmp114414
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106027_
                                                        _L106102_)))
                                                    (__tmp114411
                                                     (let ((__tmp114413
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106027_
                                                               _L106103_)))
                                                           (__tmp114412
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114413 __tmp114412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114414
                                                      __tmp114411))))
                                         (declare (not safe))
                                         (cons __tmp114415 __tmp114410))))
                                  (declare (not safe))
                                  (cons __tmp114416 __tmp114409))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114408)))
                       _hd106049106095_
                       _hd106046106087_
                       _hd106043106079_
                       _hd106040106071_)
                      (let ()
                        (declare (not safe))
                        (_g106030106055_ _g106031106058_)))))
              (let ()
                (declare (not safe))
                (_g106030106055_ _g106031106058_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106030106055_
                                                 _g106031106058_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106030106055_ _g106031106058_)))))
                              (let ()
                                (declare (not safe))
                                (_g106030106055_ _g106031106058_)))))
                      (let ()
                        (declare (not safe))
                        (_g106030106055_ _g106031106058_))))))
          (declare (not safe))
          (_g106029106124_ _stx106028_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self105822_ _stx105823_)
        (let* ((_g105825105846_
                (lambda (_g105826105843_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105826105843_))))
               (_g105824106024_
                (lambda (_g105826105849_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105826105849_))
                      (let ((_e105832105851_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105826105849_))))
                        (let ((_hd105831105854_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105832105851_)))
                              (_tl105830105856_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105832105851_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105830105856_))
                              (let ((_e105835105859_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105830105856_))))
                                (let ((_hd105834105862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105835105859_)))
                                      (_tl105833105864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105835105859_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105833105864_))
                                      (let ((_e105838105867_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105833105864_))))
                                        (let ((_hd105837105870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105838105867_)))
                                              (_tl105836105872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105838105867_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105836105872_))
                                              (let ((_e105841105875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105836105872_))))
                                                (let ((_hd105840105878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105841105875_)))
                                                      (_tl105839105880_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105841105875_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl105839105880_))
                                                      ((lambda (_L105883_
                                                                _L105884_
                                                                _L105885_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114435
                            (let ((__tmp114441
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self105822_
                                      _L105883_)))
                                  (__tmp114436
                                   (let ((__tmp114440
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self105822_
                                             _L105884_)))
                                         (__tmp114437
                                          (let ((__tmp114439
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self105822_
                                                    _L105885_)))
                                                (__tmp114438
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114439 __tmp114438))))
                                     (declare (not safe))
                                     (cons __tmp114440 __tmp114437))))
                              (declare (not safe))
                              (cons __tmp114441 __tmp114436))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114435))
                     (let _lp105903_ ((_rest105906_
                                       (let ((__tmp114433
                                              (let ((__tmp114434
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L105883_ '()))))
                                                (declare (not safe))
                                                (cons _L105884_ __tmp114434))))
                                         (declare (not safe))
                                         (cons _L105885_ __tmp114433)))
                                      (_bind105908_ '())
                                      (_args105909_ '()))
                       (let* ((_rest105910105918_ _rest105906_)
                              (_else105912105926_
                               (lambda ()
                                 (let ((__tmp114417
                                        (let ((__tmp114418
                                               (let ((__tmp114419
                                                      (let ((__tmp114420
                                                             (let ((__tmp114421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114422
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114422 _args105909_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114421))))
                (declare (not safe))
                (cons __tmp114420 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114419))))
                                          (declare (not safe))
                                          (cons _bind105908_ __tmp114418))))
                                   (declare (not safe))
                                   (cons 'let __tmp114417))))
                              (_K105914106012_
                               (lambda (_rest105929_ _e105930_)
                                 (let* ((___stx113638113639_ _e105930_)
                                        (_g105935105953_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113638113639_)))))
                                   (let ((___kont113640113641_
                                          (lambda ()
                                            (let ((__tmp114423
                                                   (let ((__tmp114424
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e105930_))))
                                                     (declare (not safe))
                                                     (cons __tmp114424
                                                           _args105909_))))
                                              (declare (not safe))
                                              (_lp105903_
                                               _rest105929_
                                               _bind105908_
                                               __tmp114423))))
                                         (___kont113642113643_
                                          (lambda ()
                                            (let ((__tmp114425
                                                   (let ((__tmp114426
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e105930_))))
                                                     (declare (not safe))
                                                     (cons __tmp114426
                                                           _args105909_))))
                                              (declare (not safe))
                                              (_lp105903_
                                               _rest105929_
                                               _bind105908_
                                               __tmp114425))))
                                         (___kont113644113645_
                                          (lambda ()
                                            (let ((_tmp105960_
                                                   (let ((__tmp114427
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114427))))
                                              (let ((__tmp114429
                                                     (let ((__tmp114430
                                                            (let ((__tmp114431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114432
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e105930_))))
                             (declare (not safe))
                             (cons __tmp114432 '()))))
                      (declare (not safe))
                      (cons _tmp105960_ __tmp114431))))
               (declare (not safe))
               (cons __tmp114430 _bind105908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114428
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp105960_
                                                             _args105909_))))
                                                (declare (not safe))
                                                (_lp105903_
                                                 _rest105929_
                                                 __tmp114429
                                                 __tmp114428))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113638113639_))
                                         (let ((_e105939105991_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113638113639_))))
                                           (let ((_tl105937105996_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e105939105991_)))
                                                 (_hd105938105994_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e105939105991_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd105938105994_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd105938105994_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl105937105996_))
                                                         (let ((_e105942105999_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl105937105996_))))
                   (let ((_tl105940106004_
                          (let ()
                            (declare (not safe))
                            (##cdr _e105942105999_)))
                         (_hd105941106002_
                          (let ()
                            (declare (not safe))
                            (##car _e105942105999_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl105940106004_))
                         (___kont113640113641_)
                         (___kont113644113645_))))
                 (___kont113644113645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd105938105994_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105937105996_))
                     (let ((_e105948105976_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105937105996_))))
                       (let ((_tl105946105981_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105948105976_)))
                             (_hd105947105979_
                              (let ()
                                (declare (not safe))
                                (##car _e105948105976_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105946105981_))
                             (___kont113642113643_)
                             (___kont113644113645_))))
                     (___kont113644113645_))
                 (___kont113644113645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113644113645_))))
                                         (___kont113644113645_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest105910105918_))
                             (let ((_hd105915106015_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest105910105918_)))
                                   (_tl105916106017_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest105910105918_))))
                               (let* ((_e106020_ _hd105915106015_)
                                      (_rest106022_ _tl105916106017_))
                                 (declare (not safe))
                                 (_K105914106012_ _rest106022_ _e106020_)))
                             (let ()
                               (declare (not safe))
                               (_else105912105926_)))))))
               _hd105840105878_
               _hd105837105870_
               _hd105834105862_)
              (let ()
                (declare (not safe))
                (_g105825105846_ _g105826105849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105825105846_
                                                 _g105826105849_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105825105846_ _g105826105849_)))))
                              (let ()
                                (declare (not safe))
                                (_g105825105846_ _g105826105849_)))))
                      (let ()
                        (declare (not safe))
                        (_g105825105846_ _g105826105849_))))))
          (declare (not safe))
          (_g105824106024_ _stx105823_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105601_ _stx105602_)
        (let* ((_g105604105629_
                (lambda (_g105605105626_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105605105626_))))
               (_g105603105819_
                (lambda (_g105605105632_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105605105632_))
                      (let ((_e105612105634_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105605105632_))))
                        (let ((_hd105611105637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105612105634_)))
                              (_tl105610105639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105612105634_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105610105639_))
                              (let ((_e105615105642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105610105639_))))
                                (let ((_hd105614105645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105615105642_)))
                                      (_tl105613105647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105615105642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105613105647_))
                                      (let ((_e105618105650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105613105647_))))
                                        (let ((_hd105617105653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105618105650_)))
                                              (_tl105616105655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105618105650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105616105655_))
                                              (let ((_e105621105658_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105616105655_))))
                                                (let ((_hd105620105661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105621105658_)))
                                                      (_tl105619105663_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105621105658_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105619105663_))
                                                      (let ((_e105624105666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105619105663_))))
                (let ((_hd105623105669_
                       (let () (declare (not safe)) (##car _e105624105666_)))
                      (_tl105622105671_
                       (let () (declare (not safe)) (##cdr _e105624105666_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105622105671_))
                      ((lambda (_L105674_ _L105675_ _L105676_ _L105677_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114461
                                    (let ((__tmp114469
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105601_
                                              _L105675_)))
                                          (__tmp114462
                                           (let ((__tmp114468
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105601_
                                                     _L105674_)))
                                                 (__tmp114463
                                                  (let ((__tmp114467
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105601_
                                                            _L105676_)))
                                                        (__tmp114464
                                                         (let ((__tmp114466
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105601_ _L105677_)))
                       (__tmp114465
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114466 __tmp114465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114467
                                                          __tmp114464))))
                                             (declare (not safe))
                                             (cons __tmp114468 __tmp114463))))
                                      (declare (not safe))
                                      (cons __tmp114469 __tmp114462))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114461))
                             (let _lp105698_ ((_rest105701_
                                               (let ((__tmp114458
                                                      (let ((__tmp114459
                                                             (let ((__tmp114460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L105675_ '()))))
                       (declare (not safe))
                       (cons _L105674_ __tmp114460))))
                (declare (not safe))
                (cons _L105676_ __tmp114459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L105677_ __tmp114458)))
                                              (_bind105703_ '())
                                              (_args105704_ '()))
                               (let* ((_rest105705105713_ _rest105701_)
                                      (_else105707105721_
                                       (lambda ()
                                         (let ((__tmp114442
                                                (let ((__tmp114443
                                                       (let ((__tmp114444
                                                              (let ((__tmp114445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114446
                                    (let ((__tmp114447
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114447 _args105704_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114446))))
                        (declare (not safe))
                        (cons __tmp114445 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind105703_
                                                        __tmp114443))))
                                           (declare (not safe))
                                           (cons 'let __tmp114442))))
                                      (_K105709105807_
                                       (lambda (_rest105724_ _e105725_)
                                         (let* ((___stx113684113685_ _e105725_)
                                                (_g105730105748_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx113684113685_)))))
                                           (let ((___kont113686113687_
                                                  (lambda ()
                                                    (let ((__tmp114448
                                                           (let ((__tmp114449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105725_))))
                     (declare (not safe))
                     (cons __tmp114449 _args105704_))))
              (declare (not safe))
              (_lp105698_ _rest105724_ _bind105703_ __tmp114448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113688113689_
                                                  (lambda ()
                                                    (let ((__tmp114450
                                                           (let ((__tmp114451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105725_))))
                     (declare (not safe))
                     (cons __tmp114451 _args105704_))))
              (declare (not safe))
              (_lp105698_ _rest105724_ _bind105703_ __tmp114450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113690113691_
                                                  (lambda ()
                                                    (let ((_tmp105755_
                                                           (let ((__tmp114452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114452))))
              (let ((__tmp114454
                     (let ((__tmp114455
                            (let ((__tmp114456
                                   (let ((__tmp114457
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e105725_))))
                                     (declare (not safe))
                                     (cons __tmp114457 '()))))
                              (declare (not safe))
                              (cons _tmp105755_ __tmp114456))))
                       (declare (not safe))
                       (cons __tmp114455 _bind105703_)))
                    (__tmp114453
                     (let ()
                       (declare (not safe))
                       (cons _tmp105755_ _args105704_))))
                (declare (not safe))
                (_lp105698_ _rest105724_ __tmp114454 __tmp114453))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx113684113685_))
                                                 (let ((_e105734105786_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx113684113685_))))
                                                   (let ((_tl105732105791_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105734105786_)))
                                                         (_hd105733105789_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105734105786_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd105733105789_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd105733105789_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl105732105791_))
                         (let ((_e105737105794_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl105732105791_))))
                           (let ((_tl105735105799_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e105737105794_)))
                                 (_hd105736105797_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e105737105794_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl105735105799_))
                                 (___kont113686113687_)
                                 (___kont113690113691_))))
                         (___kont113690113691_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd105733105789_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl105732105791_))
                             (let ((_e105743105771_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl105732105791_))))
                               (let ((_tl105741105776_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e105743105771_)))
                                     (_hd105742105774_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e105743105771_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl105741105776_))
                                     (___kont113688113689_)
                                     (___kont113690113691_))))
                             (___kont113690113691_))
                         (___kont113690113691_)))
                 (___kont113690113691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113690113691_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest105705105713_))
                                     (let ((_hd105710105810_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest105705105713_)))
                                           (_tl105711105812_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest105705105713_))))
                                       (let* ((_e105815_ _hd105710105810_)
                                              (_rest105817_ _tl105711105812_))
                                         (declare (not safe))
                                         (_K105709105807_
                                          _rest105817_
                                          _e105815_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else105707105721_)))))))
                       _hd105623105669_
                       _hd105620105661_
                       _hd105617105653_
                       _hd105614105645_)
                      (let ()
                        (declare (not safe))
                        (_g105604105629_ _g105605105632_)))))
              (let ()
                (declare (not safe))
                (_g105604105629_ _g105605105632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105604105629_
                                                 _g105605105632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105604105629_ _g105605105632_)))))
                              (let ()
                                (declare (not safe))
                                (_g105604105629_ _g105605105632_)))))
                      (let ()
                        (declare (not safe))
                        (_g105604105629_ _g105605105632_))))))
          (declare (not safe))
          (_g105603105819_ _stx105602_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105454_ _stx105455_)
        (letrec ((_import-set-template105457_
                  (lambda (_in105553_ _phi105554_)
                    (let ((_iphi105556_
                           (fx+ _phi105554_
                                (##direct-structure-ref
                                 _in105553_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105557_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105553_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105559_ ((_rest105561_ _imports105557_)
                                       (_r105562_ '()))
                        (let* ((_rest105563105571_ _rest105561_)
                               (_else105565105579_ (lambda () _r105562_))
                               (_K105567105589_
                                (lambda (_rest105582_ _in105583_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105583_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105556_))
                                          (let ((__tmp114476
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105583_
                                                         _r105562_))))
                                            (declare (not safe))
                                            (_lp105559_
                                             _rest105582_
                                             __tmp114476))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105559_
                                             _rest105582_
                                             _r105562_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105583_
                                             'gx#module-import::t))
                                          (let ((_iphi105585_
                                                 (fx+ _phi105554_
                                                      (##direct-structure-ref
                                                       _in105583_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105585_))
                                                (let ((__tmp114474
                                                       (let ((__tmp114475
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105583_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114475
                                                               _r105562_))))
                                                  (declare (not safe))
                                                  (_lp105559_
                                                   _rest105582_
                                                   __tmp114474))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105559_
                                                   _rest105582_
                                                   _r105562_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105583_
                                                 'gx#import-set::t))
                                              (let ((_xphi105587_
                                                     (fx+ _iphi105556_
                                                          (##direct-structure-ref
                                                           _in105583_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105587_))
                                                    (let ((__tmp114472
                                                           (let ((__tmp114473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105583_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114473 _r105562_))))
              (declare (not safe))
              (_lp105559_ _rest105582_ __tmp114472))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105587_)
                                                        (let ((__tmp114470
                                                               (let ((__tmp114471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105457_
                                 _in105583_
                                 _iphi105556_))))
                         (declare (not safe))
                         (foldl1 cons _r105562_ __tmp114471))))
                  (declare (not safe))
                  (_lp105559_ _rest105582_ __tmp114470))
                (let ()
                  (declare (not safe))
                  (_lp105559_ _rest105582_ _r105562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105559_
                                                 _rest105582_
                                                 _r105562_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105563105571_))
                              (let ((_hd105568105592_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105563105571_)))
                                    (_tl105569105594_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105563105571_))))
                                (let* ((_in105597_ _hd105568105592_)
                                       (_rest105599_ _tl105569105594_))
                                  (declare (not safe))
                                  (_K105567105589_ _rest105599_ _in105597_)))
                              (let ()
                                (declare (not safe))
                                (_else105565105579_)))))))))
          (let* ((_g105459105469_
                  (lambda (_g105460105466_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105460105466_))))
                 (_g105458105550_
                  (lambda (_g105460105472_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105460105472_))
                        (let ((_e105464105474_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105460105472_))))
                          (let ((_hd105463105477_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105464105474_)))
                                (_tl105462105479_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105464105474_))))
                            ((lambda (_L105482_)
                               (let ((_ht105493_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105495_ ((_rest105497_ _L105482_)
                                                  (_loads105498_ '()))
                                   (letrec ((_K105500_
                                             (lambda (_ctx105543_ _rest105544_)
                                               (let ((_id105546_
                                                      (##structure-ref
                                                       _ctx105543_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105493_
                                                        _id105546_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105495_
                                                        _rest105544_
                                                        _loads105498_))
                                                     (let ((_rt105548_
                                                            (string-append
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#module-id->path-string _id105546_))
                     '"__rt")))
               (let ()
                 (declare (not safe))
                 (hash-put! _ht105493_ _id105546_ _rt105548_))
               (let ((__tmp114477
                      (let ()
                        (declare (not safe))
                        (cons _rt105548_ _loads105498_))))
                 (declare (not safe))
                 (_lp105495_ _rest105544_ __tmp114477))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105501105509_ _rest105497_)
                                            (_else105503105521_
                                             (lambda ()
                                               (let ((__tmp114478
                                                      (map (lambda (_g105516105518_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105516105518_))
                   (reverse _loads105498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114478))))
                                            (_K105505105531_
                                             (lambda (_rest105524_ _in105525_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105525_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105500_
                                                      _in105525_
                                                      _rest105524_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105525_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105525_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114482))
                   (let ((__tmp114481
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105525_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105500_ __tmp114481 _rest105524_))
                   (let ()
                     (declare (not safe))
                     (_lp105495_ _rest105524_ _loads105498_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105525_
                      'gx#import-set::t))
                   (let ((_phi105527_
                          (##direct-structure-ref
                           _in105525_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105527_))
                         (let ((__tmp114480
                                (##direct-structure-ref
                                 _in105525_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105500_ __tmp114480 _rest105524_))
                         (if (fxpositive? _phi105527_)
                             (let* ((_deps105529_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105457_
                                        _in105525_
                                        '0)))
                                    (__tmp114479
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105524_
                                               _deps105529_))))
                               (declare (not safe))
                               (_lp105495_ __tmp114479 _loads105498_))
                             (let ()
                               (declare (not safe))
                               (_lp105495_ _rest105524_ _loads105498_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105455_
                      _in105525_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105501105509_))
                                           (let ((_hd105506105534_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105501105509_)))
                                                 (_tl105507105536_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105501105509_))))
                                             (let* ((_in105539_
                                                     _hd105506105534_)
                                                    (_rest105541_
                                                     _tl105507105536_))
                                               (declare (not safe))
                                               (_K105505105531_
                                                _rest105541_
                                                _in105539_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105503105521_))))))))
                             _tl105462105479_)))
                        (let ()
                          (declare (not safe))
                          (_g105459105469_ _g105460105472_))))))
            (declare (not safe))
            (_g105458105550_ _stx105455_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105269_ _stx105270_)
        (letrec ((_add-lift!105272_
                  (lambda (_expr105452_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114483 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105452_ __tmp114483)))))
                 (_generate-syntax-quote105273_
                  (lambda (_id105449_ _marks105450_)
                    (let ((__tmp114484
                           (let ((__tmp114485
                                  (let ((__tmp114489
                                         (let ((__tmp114490
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105449_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114490)))
                                        (__tmp114486
                                         (let ((__tmp114487
                                                (let ((__tmp114488
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105450_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114488))))
                                           (declare (not safe))
                                           (cons '#f __tmp114487))))
                                    (declare (not safe))
                                    (cons __tmp114489 __tmp114486))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114485))))
                      (declare (not safe))
                      (cons '##structure __tmp114484))))
                 (_generate-simple105274_
                  (lambda (_stxq105444_)
                    (let ((_gid105446_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105447_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105444_))))
                      (let ((__tmp114491
                             (let ((__tmp114492
                                    (let ((__tmp114493
                                           (let ((__tmp114494
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105273_
                                                     _qid105447_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114494 '()))))
                                      (declare (not safe))
                                      (cons _gid105446_ __tmp114493))))
                               (declare (not safe))
                               (cons 'define __tmp114492))))
                        (declare (not safe))
                        (_add-lift!105272_ __tmp114491))
                      (let ((__tmp114495 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114495 _stxq105444_ _gid105446_))
                      _gid105446_)))
                 (_generate-serialized105275_
                  (lambda (_stxq105434_ _marks105435_)
                    (let* ((_mark-refs105437_
                            (map _generate-mark105276_ _marks105435_))
                           (_gid105439_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105441_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105434_))))
                      (let ((__tmp114496
                             (let ((__tmp114497
                                    (let ((__tmp114498
                                           (let ((__tmp114499
                                                  (let ((__tmp114500
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105273_
                                                     _qid105441_
                                                     __tmp114500))))
                                             (declare (not safe))
                                             (cons __tmp114499 '()))))
                                      (declare (not safe))
                                      (cons _gid105439_ __tmp114498))))
                               (declare (not safe))
                               (cons 'define __tmp114497))))
                        (declare (not safe))
                        (_add-lift!105272_ __tmp114496))
                      (let ((__tmp114501 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114501 _stxq105434_ _gid105439_))
                      _gid105439_)))
                 (_generate-mark105276_
                  (lambda (_mark105420_)
                    (let ((_$e105422_
                           (let ((__tmp114502 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114502 _mark105420_))))
                      (if _$e105422_
                          (values _$e105422_)
                          (let* ((_gid105425_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105427_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105277_ _mark105420_)))
                                 (_ctx105429_
                                  (let ((__tmp114503
                                         (##structure-ref
                                          _mark105420_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114503)))
                                 (_ctx-ref105431_
                                  (if (let ((__tmp114508
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105429_ __tmp114508))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114504
                                             (let ((__tmp114505
                                                    (let ((__tmp114506
                                                           (let ((__tmp114507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105278_ _ctx105429_))))
                     (declare (not safe))
                     (cons __tmp114507 '()))))
              (declare (not safe))
              (cons 'quote __tmp114506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114505 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114504)))))
                            (let ((__tmp114509 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114509 _mark105420_ _gid105425_))
                            (let ((__tmp114510
                                   (let ((__tmp114511
                                          (let ((__tmp114512
                                                 (let ((__tmp114513
                                                        (let ((__tmp114514
                                                               (let ((__tmp114516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114517
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105427_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114517)))
                             (__tmp114515
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105431_ '()))))
                         (declare (not safe))
                         (cons __tmp114516 __tmp114515))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114513 '()))))
                                            (declare (not safe))
                                            (cons _gid105425_ __tmp114512))))
                                     (declare (not safe))
                                     (cons 'define __tmp114511))))
                              (declare (not safe))
                              (_add-lift!105272_ __tmp114510))
                            _gid105425_)))))
                 (_serialize-mark105277_
                  (lambda (_mark105367_)
                    (letrec ((_quote-e105369_
                              (lambda (_sym105418_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _sym105418_))
                                    _sym105418_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105418_))))))
                      (let* ((_mark105370105379_ _mark105367_)
                             (_E105372105383_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105370105379_))))
                             (_K105373105395_
                              (lambda (_trace105386_
                                       _phi105387_
                                       _ctx105388_
                                       _subst105389_)
                                (let* ((_subs105391_
                                        (if _subst105389_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105389_))
                                            '()))
                                       (__tmp114518
                                        (map (lambda (_pair105393_)
                                               (let ((__tmp114521
                                                      (let ((__tmp114522
                                                             (car _pair105393_)))
                                                        (declare (not safe))
                                                        (_quote-e105369_
                                                         __tmp114522)))
                                                     (__tmp114519
                                                      (let ((__tmp114520
                                                             (cdr _pair105393_)))
                                                        (declare (not safe))
                                                        (_quote-e105369_
                                                         __tmp114520))))
                                                 (declare (not safe))
                                                 (cons __tmp114521
                                                       __tmp114519)))
                                             _subs105391_)))
                                  (declare (not safe))
                                  (cons _phi105387_ __tmp114518)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105370105379_
                               'gx#expander-mark::t))
                            (let* ((_e105374105398_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105370105379_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105401_ _e105374105398_)
                                   (_e105375105403_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105370105379_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105406_ _e105375105403_)
                                   (_e105376105408_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105370105379_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105411_ _e105376105408_)
                                   (_e105377105413_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105370105379_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105416_ _e105377105413_))
                              (declare (not safe))
                              (_K105373105395_
                               _trace105416_
                               _phi105411_
                               _ctx105406_
                               _subst105401_))
                            (let ()
                              (declare (not safe))
                              (_E105372105383_)))))))
                 (_context-ref105278_
                  (lambda (_ctx105354_)
                    (if (let ((__tmp114530
                               (##structure-ref
                                _ctx105354_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114530
                           'gx#module-context::t))
                        (let ((_ctx-ref105356_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105280_ _ctx105354_)))
                              (_ctx-origin105357_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105279_ _ctx105354_)))
                              (_origin105358_
                               (let ((__tmp114524
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105279_ __tmp114524))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105358_ _ctx-origin105357_))
                              (let ((_ref105360_
                                     (let ((__tmp114525
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105280_
                                        __tmp114525))))
                                (let _lp105362_ ((_ref105364_
                                                  (cdr _ref105360_))
                                                 (_ctx-ref105365_
                                                  (cdr _ctx-ref105356_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105364_))
                                           (let ((__tmp114529
                                                  (car _ref105364_))
                                                 (__tmp114528
                                                  (car _ctx-ref105365_)))
                                             (declare (not safe))
                                             (eq? __tmp114529 __tmp114528)))
                                      (let ((__tmp114527 (cdr _ref105364_))
                                            (__tmp114526
                                             (cdr _ctx-ref105365_)))
                                        (declare (not safe))
                                        (_lp105362_ __tmp114527 __tmp114526))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105365_)))))
                              _ctx-ref105356_))
                        (let ((__tmp114523
                               (##structure-ref
                                _ctx105354_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114523)))))
                 (_context-ref-origin105279_
                  (lambda (_ctx105346_)
                    (let _lp105348_ ((_ctx105350_ _ctx105346_))
                      (let ((_super105352_
                             (##structure-ref
                              _ctx105350_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105352_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105348_ _super105352_))
                            _ctx105350_)))))
                 (_context-ref-nested105280_
                  (lambda (_ctx105337_)
                    (let _lp105339_ ((_ctx105341_ _ctx105337_) (_r105342_ '()))
                      (let ((_super105344_
                             (##structure-ref
                              _ctx105341_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105344_
                               'gx#module-context::t))
                            (let ((__tmp114533
                                   (let ((__tmp114534
                                          (car (##structure-ref
                                                _ctx105341_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114534 _r105342_))))
                              (declare (not safe))
                              (_lp105339_ _super105344_ __tmp114533))
                            (let ((__tmp114531
                                   (let ((__tmp114532
                                          (##structure-ref
                                           _ctx105341_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114532))))
                              (declare (not safe))
                              (cons __tmp114531 _r105342_))))))))
          (let* ((_g105282105295_
                  (lambda (_g105283105292_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105283105292_))))
                 (_g105281105334_
                  (lambda (_g105283105298_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105283105298_))
                        (let ((_e105287105300_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105283105298_))))
                          (let ((_hd105286105303_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105287105300_)))
                                (_tl105285105305_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105287105300_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105285105305_))
                                (let ((_e105290105308_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105285105305_))))
                                  (let ((_hd105289105311_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105290105308_)))
                                        (_tl105288105313_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105290105308_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105288105313_))
                                        ((lambda (_L105316_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105316_))
                                               (let ((_$e105329_
                                                      (let ((__tmp114535
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114535
                                                         _L105316_))))
                                                 (if _$e105329_
                                                     (values _$e105329_)
                                                     (let ((_marks105332_
                                                            (##direct-structure-ref
                                                             _L105316_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105332_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105274_
                                                              _L105316_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105275_
                                                              _L105316_
                                                              _marks105332_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105316_))))
                                         _hd105289105311_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105282105295_ _g105283105298_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105282105295_ _g105283105298_)))))
                        (let ()
                          (declare (not safe))
                          (_g105282105295_ _g105283105298_))))))
            (declare (not safe))
            (_g105281105334_ _stx105270_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105201_ _stx105202_)
        (let* ((_g105204105221_
                (lambda (_g105205105218_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105205105218_))))
               (_g105203105266_
                (lambda (_g105205105224_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105205105224_))
                      (let ((_e105210105226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105205105224_))))
                        (let ((_hd105209105229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105210105226_)))
                              (_tl105208105231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105210105226_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105208105231_))
                              (let ((_e105213105234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105208105231_))))
                                (let ((_hd105212105237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105213105234_)))
                                      (_tl105211105239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105213105234_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105211105239_))
                                      (let ((_e105216105242_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105211105239_))))
                                        (let ((_hd105215105245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105216105242_)))
                                              (_tl105214105247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105216105242_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105214105247_))
                                              ((lambda (_L105250_ _L105251_)
                                                 (let ((__tmp114536
                                                        (let ((__tmp114539
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105251_)))
                      (__tmp114537
                       (let ((__tmp114538
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105201_ _L105250_))))
                         (declare (not safe))
                         (cons __tmp114538 '()))))
                  (declare (not safe))
                  (cons __tmp114539 __tmp114537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114536)))
                                               _hd105215105245_
                                               _hd105212105237_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105204105221_
                                                 _g105205105224_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105204105221_ _g105205105224_)))))
                              (let ()
                                (declare (not safe))
                                (_g105204105221_ _g105205105224_)))))
                      (let ()
                        (declare (not safe))
                        (_g105204105221_ _g105205105224_))))))
          (declare (not safe))
          (_g105203105266_ _stx105202_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105150_ _stx105151_)
        (let* ((_g105153105163_
                (lambda (_g105154105160_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105154105160_))))
               (_g105152105198_
                (lambda (_g105154105166_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105154105166_))
                      (let ((_e105158105168_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105154105166_))))
                        (let ((_hd105157105171_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105158105168_)))
                              (_tl105156105173_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105158105168_))))
                          ((lambda (_L105176_)
                             (let* ((_c-body105190_
                                     (map (lambda (_g105185105187_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105150_
                                               _g105185105187_)))
                                          _L105176_))
                                    (_c-body105195_
                                     (filter (lambda (_$obj105192_)
                                               (let ((__tmp114540
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105192_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114540)))
                                             _c-body105190_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105195_))))
                           _tl105156105173_)))
                      (let ()
                        (declare (not safe))
                        (_g105153105163_ _g105154105166_))))))
          (declare (not safe))
          (_g105152105198_ _stx105151_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105058_ _stx105059_)
        (let* ((_g105061105071_
                (lambda (_g105062105068_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105062105068_))))
               (_g105060105147_
                (lambda (_g105062105074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105062105074_))
                      (let ((_e105066105076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105062105074_))))
                        (let ((_hd105065105079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105066105076_)))
                              (_tl105064105081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105066105076_))))
                          ((lambda (_L105084_)
                             (let* ((_phi105094_
                                     (let ((__tmp114541
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114541 '1)))
                                    (_block105096_
                                     (let ((__tmp114542
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105058_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114542
                                        _phi105094_)))
                                    (_compiled105099_
                                     (let ((__tmp114543
                                            (lambda ()
                                              (let ((__tmp114545
                                                     (let ((__tmp114546
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114546
                                                             _L105084_)))
                                                    (__tmp114544
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105058_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114545
                                                 'state:
                                                 __tmp114544)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114543
                                        gx#current-expander-phi
                                        _phi105094_))))
                               (let* ((_g105102105112_
                                       (lambda (_g105103105109_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105103105109_))))
                                      (_g105101105144_
                                       (lambda (_g105103105115_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105103105115_))
                                             (let ((_e105107105117_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105103105115_))))
                                               (let ((_hd105106105120_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105107105117_)))
                                                     (_tl105105105122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105107105117_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105106105120_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105106105120_))
                                                         ((lambda (_L105125_)
                                                            (let ((_c-body105142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105139_)
                                     (let ((__tmp114547
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105139_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114547)))
                                   _L105125_)))
                      (if _block105096_
                          (let ((__tmp114548
                                 (let ((__tmp114549
                                        (let ((__tmp114550
                                               (let ((__tmp114554
                                                      (let ((__tmp114555
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114555)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114551
                                                      (let ((__tmp114552
                                                             (let ((__tmp114553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105096_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114553))))
                (declare (not safe))
                (cons __tmp114552 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114554
                                                       __tmp114551))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114550))))
                                   (declare (not safe))
                                   (cons __tmp114549 _c-body105142_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114548))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105142_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105142_))))))
                  _tl105105105122_)
                 (let ()
                   (declare (not safe))
                   (_g105102105112_ _g105103105115_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105102105112_
                                                        _g105103105115_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105102105112_
                                                _g105103105115_))))))
                                 (declare (not safe))
                                 (_g105101105144_ _compiled105099_))))
                           _tl105064105081_)))
                      (let ()
                        (declare (not safe))
                        (_g105061105071_ _g105062105074_))))))
          (declare (not safe))
          (_g105060105147_ _stx105059_))))
    (define gxc#generate-meta-module%
      (lambda (_self104989_ _stx104990_)
        (let ((__tmp114556
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104989_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114556))
        (let* ((_g104992105006_
                (lambda (_g104993105003_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104993105003_))))
               (_g104991105055_
                (lambda (_g104993105009_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104993105009_))
                      (let ((_e104998105011_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104993105009_))))
                        (let ((_hd104997105014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104998105011_)))
                              (_tl104996105016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104998105011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104996105016_))
                              (let ((_e105001105019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104996105016_))))
                                (let ((_hd105000105022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105001105019_)))
                                      (_tl104999105024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105001105019_))))
                                  ((lambda (_L105027_ _L105028_)
                                     (let ((_key105041_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105028_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _key105041_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx104990_
                                              _L105028_
                                              _key105041_)))
                                       (let* ((_ctx105043_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105028_)))
                                              (_code105046_
                                               (let ((__tmp114557
                                                      (lambda ()
                                                        (let ((__tmp114558
                                                               (##structure-ref
                                                                _ctx105043_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self104989_
                                                           __tmp114558)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114557
                                                  gx#current-expander-context
                                                  _ctx105043_)))
                                              (_rt105048_
                                               (let ((__tmp114559
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114559
                                                  _ctx105043_)))
                                              (_loader105050_
                                               (if _rt105048_
                                                   (let ((__tmp114560
                                                          (let ((__tmp114561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114565
                                (let ((__tmp114566
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114566)))
                               (__tmp114562
                                (let ((__tmp114563
                                       (let ((__tmp114564
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105048_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114564))))
                                  (declare (not safe))
                                  (cons __tmp114563 '()))))
                           (declare (not safe))
                           (cons __tmp114565 __tmp114562))))
                    (declare (not safe))
                    (cons '%#call __tmp114561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114560 '()))
                                                   '()))
                                              (_modid105052_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105028_))))
                                         (let ((__tmp114567
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self104989_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114567))
                                         (let ((__tmp114568
                                                (let ((__tmp114569
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105046_
                                                               _loader105050_))))
                                                  (declare (not safe))
                                                  (cons _modid105052_
                                                        __tmp114569))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114568)))))
                                   _tl104999105024_
                                   _hd105000105022_)))
                              (let ()
                                (declare (not safe))
                                (_g104992105006_ _g104993105009_)))))
                      (let ()
                        (declare (not safe))
                        (_g104992105006_ _g104993105009_))))))
          (declare (not safe))
          (_g104991105055_ _stx104990_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx104979_ _context-chain104980_)
        (let _lp104982_ ((_ctx104984_ _ctx104979_) (_path104985_ '()))
          (let ((_super104987_
                 (##structure-ref _ctx104984_ '3 gx#phi-context::t '#f)))
            (if (memq _super104987_ _context-chain104980_)
                (let ((__tmp114574
                       (let ((__tmp114575
                              (car (##structure-ref
                                    _ctx104984_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114575 _path104985_))))
                  (declare (not safe))
                  (cons '#f __tmp114574))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super104987_
                       'gx#module-context::t))
                    (let ((__tmp114572
                           (let ((__tmp114573
                                  (car (##structure-ref
                                        _ctx104984_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114573 _path104985_))))
                      (declare (not safe))
                      (_lp104982_ _super104987_ __tmp114572))
                    (let ((__tmp114570
                           (let ((__tmp114571
                                  (##structure-ref
                                   _ctx104984_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114571))))
                      (declare (not safe))
                      (cons __tmp114570 _path104985_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp104974_ ((_ctx104976_ (gx#current-expander-context))
                         (_r104977_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx104976_ 'gx#module-context::t))
              (let ((__tmp114577
                     (##structure-ref _ctx104976_ '3 gx#phi-context::t '#f))
                    (__tmp114576
                     (let ()
                       (declare (not safe))
                       (cons _ctx104976_ _r104977_))))
                (declare (not safe))
                (_lp104974_ __tmp114577 __tmp114576))
              _r104977_))))
    (define gxc#generate-meta-import%
      (lambda (_self104743_ _stx104744_)
        (letrec* ((_context-chain104746_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec104747_
                   (lambda (_in104910_)
                     (let* ((_in104911104923_ _in104910_)
                            (_E104913104927_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in104911104923_))))
                            (_K104914104937_
                             (lambda (_phi104930_
                                      _name104931_
                                      _src-name104932_
                                      _src-phi104933_
                                      _src-key104934_
                                      _src-ctx104935_)
                               (let ((__tmp114578
                                      (let ((__tmp114582
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name104931_)))
                                            (__tmp114579
                                             (let ((__tmp114580
                                                    (let ((__tmp114581
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name104932_))))
                                                      (declare (not safe))
                                                      (cons __tmp114581 '()))))
                                               (declare (not safe))
                                               (cons _src-phi104933_
                                                     __tmp114580))))
                                        (declare (not safe))
                                        (cons __tmp114582 __tmp114579))))
                                 (declare (not safe))
                                 (cons _phi104930_ __tmp114578)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in104911104923_
                              'gx#module-import::t))
                           (let ((_e104915104940_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in104911104923_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e104915104940_
                                    'gx#module-export::t))
                                 (let* ((_e104918104943_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104915104940_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx104946_ _e104918104943_)
                                        (_e104919104948_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104915104940_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key104951_ _e104919104948_)
                                        (_e104920104953_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104915104940_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi104956_ _e104920104953_)
                                        (_e104921104958_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104915104940_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name104961_ _e104921104958_)
                                        (_e104916104963_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in104911104923_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name104966_ _e104916104963_)
                                        (_e104917104968_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in104911104923_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi104971_ _e104917104968_))
                                   (declare (not safe))
                                   (_K104914104937_
                                    _phi104971_
                                    _name104966_
                                    _src-name104961_
                                    _src-phi104956_
                                    _src-key104951_
                                    _src-ctx104946_))
                                 (let ()
                                   (declare (not safe))
                                   (_E104913104927_))))
                           (let () (declare (not safe)) (_E104913104927_))))))
                  (_make-import-path104748_
                   (lambda (_ctx104908_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx104908_
                        _context-chain104746_))))
                  (_make-import-spec-in104749_
                   (lambda (_ctx104905_ _in104906_)
                     (let ((__tmp114583
                            (let ((__tmp114585
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path104748_ _ctx104905_)))
                                  (__tmp114584 (reverse _in104906_)))
                              (declare (not safe))
                              (cons __tmp114585 __tmp114584))))
                       (declare (not safe))
                       (cons 'spec: __tmp114583)))))
          (let ((__tmp114586
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self104743_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114586))
          (let* ((_g104751104761_
                  (lambda (_g104752104758_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104752104758_))))
                 (_g104750104902_
                  (lambda (_g104752104764_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104752104764_))
                        (let ((_e104756104766_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104752104764_))))
                          (let ((_hd104755104769_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104756104766_)))
                                (_tl104754104771_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104756104766_))))
                            ((lambda (_L104774_)
                               (let _lp104785_ ((_rest104787_ _L104774_)
                                                (_current-src104788_ '#f)
                                                (_current-in104789_ '())
                                                (_r104790_ '()))
                                 (let* ((_rest104791104799_ _rest104787_)
                                        (_else104793104809_
                                         (lambda ()
                                           (let* ((_r104807_
                                                   (if _current-src104788_
                                                       (let ((__tmp114587
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in104749_
                         _current-src104788_
                         _current-in104789_))))
                 (declare (not safe))
                 (cons __tmp114587 _r104790_))
               _r104790_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114588
                                                   (reverse _r104807_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114588))))
                                        (_K104795104890_
                                         (lambda (_rest104812_ _in104813_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in104813_
                                                  'gx#module-import::t))
                                               (let* ((_in104814104821_
                                                       _in104813_)
                                                      (_E104816104825_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in104814104821_))))
              (_K104817104830_
               (lambda (_src-ctx104828_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src104788_ _src-ctx104828_))
                     (let ((__tmp114604
                            (let ((__tmp114605
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec104747_ _in104813_))))
                              (declare (not safe))
                              (cons __tmp114605 _current-in104789_))))
                       (declare (not safe))
                       (_lp104785_
                        _rest104812_
                        _current-src104788_
                        __tmp114604
                        _r104790_))
                     (if _current-src104788_
                         (let ((__tmp114602
                                (let ((__tmp114603
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec104747_
                                          _in104813_))))
                                  (declare (not safe))
                                  (cons __tmp114603 '())))
                               (__tmp114600
                                (let ((__tmp114601
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in104749_
                                          _current-src104788_
                                          _current-in104789_))))
                                  (declare (not safe))
                                  (cons __tmp114601 _r104790_))))
                           (declare (not safe))
                           (_lp104785_
                            _rest104812_
                            _src-ctx104828_
                            __tmp114602
                            __tmp114600))
                         (let ((__tmp114598
                                (let ((__tmp114599
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec104747_
                                          _in104813_))))
                                  (declare (not safe))
                                  (cons __tmp114599 '()))))
                           (declare (not safe))
                           (_lp104785_
                            _rest104812_
                            _src-ctx104828_
                            __tmp114598
                            _r104790_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in104814104821_
                                                        'gx#module-import::t))
                                                     (let ((_e104818104833_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in104814104821_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e104818104833_
                                                              'gx#module-export::t))
                                                           (let* ((_e104819104836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e104818104833_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx104839_ _e104819104836_))
                     (declare (not safe))
                     (_K104817104830_ _src-ctx104839_))
                   (let () (declare (not safe)) (_E104816104825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E104816104825_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in104813_
                                                      'gx#import-set::t))
                                                   (let* ((_phi104841_
                                                           (##direct-structure-ref
                                                            _in104813_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src104843_
                                                           (##direct-structure-ref
                                                            _in104813_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in104883_
                                                           (let* ((_g104844104853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path104748_ _src104843_)))
                          (_E104847104857_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g104844104853_)))))
                     (let ((_K104849104873_
                            (lambda (_path104871_) _path104871_))
                           (_K104848104863_
                            (lambda (_path104861_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path104861_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g104844104853_))
                           (let ((_tl104851104878_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g104844104853_)))
                                 (_hd104850104876_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g104844104853_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl104851104878_))
                                 (let ((_path104881_ _hd104850104876_))
                                   (declare (not safe))
                                   (_K104849104873_ _path104881_))
                                 (let ((_path104866_ _g104844104853_))
                                   (declare (not safe))
                                   (_K104848104863_ _path104866_))))
                           (let ((_path104866_ _g104844104853_))
                             (declare (not safe))
                             (_K104848104863_ _path104866_))))))
                  (_r104885_
                   (if _current-src104788_
                       (let ((__tmp114593
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in104749_
                                 _current-src104788_
                                 _current-in104789_))))
                         (declare (not safe))
                         (cons __tmp114593 _r104790_))
                       _r104790_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114594
                                                            (let ((__tmp114595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi104841_))
                               _src-in104883_
                               (let ((__tmp114596
                                      (let ((__tmp114597
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in104883_ '()))))
                                        (declare (not safe))
                                        (cons _phi104841_ __tmp114597))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114596)))))
                      (declare (not safe))
                      (cons __tmp114595 _r104885_))))
               (declare (not safe))
               (_lp104785_ _rest104812_ '#f '() __tmp114594)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in104813_
                                                          'gx#module-context::t))
                                                       (let* ((_r104888_
                                                               (if _current-src104788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114589
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in104749_
                                     _current-src104788_
                                     _current-in104789_))))
                             (declare (not safe))
                             (cons __tmp114589 _r104790_))
                           _r104790_))
                      (__tmp114590
                       (let ((__tmp114591
                              (let ((__tmp114592
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path104748_ _in104813_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114592))))
                         (declare (not safe))
                         (cons __tmp114591 _r104888_))))
                 (declare (not safe))
                 (_lp104785_ _rest104812_ '#f '() __tmp114590))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104791104799_))
                                       (let ((_hd104796104893_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104791104799_)))
                                             (_tl104797104895_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104791104799_))))
                                         (let* ((_in104898_ _hd104796104893_)
                                                (_rest104900_
                                                 _tl104797104895_))
                                           (declare (not safe))
                                           (_K104795104890_
                                            _rest104900_
                                            _in104898_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104793104809_))))))
                             _tl104754104771_)))
                        (let ()
                          (declare (not safe))
                          (_g104751104761_ _g104752104764_))))))
            (declare (not safe))
            (_g104750104902_ _stx104744_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104553_ _stx104554_)
        (letrec* ((_context-chain104556_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104557_
                   (lambda (_ctx104741_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx104741_
                        _context-chain104556_)))))
          (let* ((_g104559104569_
                  (lambda (_g104560104566_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104560104566_))))
                 (_g104558104738_
                  (lambda (_g104560104572_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104560104572_))
                        (let ((_e104564104574_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104560104572_))))
                          (let ((_hd104563104577_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104564104574_)))
                                (_tl104562104579_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104564104574_))))
                            ((lambda (_L104582_)
                               (let _lp104593_ ((_rest104595_ _L104582_)
                                                (_r104596_ '()))
                                 (let* ((_rest104597104605_ _rest104595_)
                                        (_else104599104613_
                                         (lambda ()
                                           (let ((__tmp114606
                                                  (reverse _r104596_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114606))))
                                        (_K104601104726_
                                         (lambda (_rest104616_ _out104617_)
                                           (let* ((_out104618104631_
                                                   _out104617_)
                                                  (_E104621104635_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104618104631_)))))
                                             (let ((_K104625104705_
                                                    (lambda (_name104701_
                                                             _phi104702_
                                                             _key104703_)
                                                      (let ((__tmp114607
                                                             (let ((__tmp114608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114609
                                   (let ((__tmp114610
                                          (let ((__tmp114613
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key104703_)))
                                                (__tmp114611
                                                 (let ((__tmp114612
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name104701_))))
                                                   (declare (not safe))
                                                   (cons __tmp114612 '()))))
                                            (declare (not safe))
                                            (cons __tmp114613 __tmp114611))))
                                     (declare (not safe))
                                     (cons _phi104702_ __tmp114610))))
                              (declare (not safe))
                              (cons 'spec: __tmp114609))))
                       (declare (not safe))
                       (cons __tmp114608 _r104596_))))
                (declare (not safe))
                (_lp104593_ _rest104616_ __tmp114607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104622104685_
                                                    (lambda (_phi104639_
                                                             _src104640_)
                                                      (let* ((_out104680_
                                                              (if _src104640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114614
                                 (let ((__tmp114615
                                        (let* ((_g104641104650_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104557_
                                                   _src104640_)))
                                               (_E104644104654_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g104641104650_)))))
                                          (let ((_K104646104670_
                                                 (lambda (_path104668_)
                                                   _path104668_))
                                                (_K104645104660_
                                                 (lambda (_path104658_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path104658_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g104641104650_))
                                                (let ((_tl104648104675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g104641104650_)))
                                                      (_hd104647104673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g104641104650_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl104648104675_))
                                                      (let ((_path104678_
                                                             _hd104647104673_))
                                                        (declare (not safe))
                                                        (_K104646104670_
                                                         _path104678_))
                                                      (let ((_path104663_
                                                             _g104641104650_))
                                                        (declare (not safe))
                                                        (_K104645104660_
                                                         _path104663_))))
                                                (let ((_path104663_
                                                       _g104641104650_))
                                                  (declare (not safe))
                                                  (_K104645104660_
                                                   _path104663_)))))))
                                   (declare (not safe))
                                   (cons __tmp114615 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114614))
                          '#t))
                     (_out104682_
                      (if (let () (declare (not safe)) (fxzero? _phi104639_))
                          _out104680_
                          (let ((__tmp114616
                                 (let ((__tmp114617
                                        (let ()
                                          (declare (not safe))
                                          (cons _out104680_ '()))))
                                   (declare (not safe))
                                   (cons _phi104639_ __tmp114617))))
                            (declare (not safe))
                            (cons 'phi: __tmp114616)))))
                (let ((__tmp114618
                       (let ()
                         (declare (not safe))
                         (cons _out104682_ _r104596_))))
                  (declare (not safe))
                  (_lp104593_ _rest104616_ __tmp114618))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104620104698_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104618104631_
                                                               'gx#export-set::t))
                                                            (let* ((_e104623104688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104618104631_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104624104693_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104618104631_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src104691_ _e104623104688_)
                            (_phi104696_ _e104624104693_))
                        (let ()
                          (declare (not safe))
                          (_K104622104685_ _phi104696_ _src104691_))))
                    (let () (declare (not safe)) (_E104621104635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104618104631_
                                                        'gx#module-export::t))
                                                     (let* ((_e104626104708_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104618104631_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104627104711_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104618104631_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104628104716_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104618104631_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104629104721_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104618104631_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key104714_ _e104627104711_)
                     (_phi104719_ _e104628104716_)
                     (_name104724_ _e104629104721_))
                 (let ()
                   (declare (not safe))
                   (_K104625104705_ _name104724_ _phi104719_ _key104714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104620104698_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104597104605_))
                                       (let ((_hd104602104729_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104597104605_)))
                                             (_tl104603104731_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104597104605_))))
                                         (let* ((_out104734_ _hd104602104729_)
                                                (_rest104736_
                                                 _tl104603104731_))
                                           (declare (not safe))
                                           (_K104601104726_
                                            _rest104736_
                                            _out104734_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104599104613_))))))
                             _tl104562104579_)))
                        (let ()
                          (declare (not safe))
                          (_g104559104569_ _g104560104572_))))))
            (declare (not safe))
            (_g104558104738_ _stx104554_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104514_ _stx104515_)
        (let ((__tmp114619
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104514_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114619))
        (let* ((_g104517104527_
                (lambda (_g104518104524_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104518104524_))))
               (_g104516104550_
                (lambda (_g104518104530_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104518104530_))
                      (let ((_e104522104532_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104518104530_))))
                        (let ((_hd104521104535_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104522104532_)))
                              (_tl104520104537_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104522104532_))))
                          ((lambda (_L104540_)
                             (let ((__tmp114620
                                    (map gxc#generate-runtime-identifier
                                         _L104540_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114620)))
                           _tl104520104537_)))
                      (let ()
                        (declare (not safe))
                        (_g104517104527_ _g104518104530_))))))
          (declare (not safe))
          (_g104516104550_ _stx104515_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104385_ _stx104386_)
        (letrec ((_generate1104388_
                  (lambda (_id104509_ _eid104510_)
                    (let ((_eid104512_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104510_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _eid104512_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104386_
                             _eid104512_)))
                      (let ((__tmp114622
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104509_)))
                            (__tmp114621
                             (let ()
                               (declare (not safe))
                               (cons _eid104512_ '()))))
                        (declare (not safe))
                        (cons __tmp114622 __tmp114621))))))
          (let* ((_g104390104418_
                  (lambda (_g104391104415_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104391104415_))))
                 (_g104389104506_
                  (lambda (_g104391104421_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104391104421_))
                        (let ((_e104396104423_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104391104421_))))
                          (let ((_hd104395104426_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104396104423_)))
                                (_tl104394104428_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104396104423_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104394104428_))
                                (let ((_g114623_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104394104428_
                                          '0))))
                                  (begin
                                    (let ((_g114624_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114623_)
                                                 (##vector-length _g114623_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114624_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114624_)))
                                    (let ((_target104397104431_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114623_ 0)))
                                          (_tl104399104433_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114623_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104399104433_))
                                          (letrec ((_loop104400104436_
                                                    (lambda (_hd104398104439_
                                                             _eid104404104441_
                                                             _id104405104443_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104398104439_))
                                                          (let ((_e104401104446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104398104439_))))
                    (let ((_lp-hd104402104449_
                           (let ()
                             (declare (not safe))
                             (##car _e104401104446_)))
                          (_lp-tl104403104451_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104401104446_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104402104449_))
                          (let ((_e104410104454_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104402104449_))))
                            (let ((_hd104409104457_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104410104454_)))
                                  (_tl104408104459_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104410104454_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104408104459_))
                                  (let ((_e104413104462_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104408104459_))))
                                    (let ((_hd104412104465_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104413104462_)))
                                          (_tl104411104467_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104413104462_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104411104467_))
                                          (let ((__tmp114629
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104412104465_
                                                         _eid104404104441_)))
                                                (__tmp114628
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104409104457_
                                                         _id104405104443_))))
                                            (declare (not safe))
                                            (_loop104400104436_
                                             _lp-tl104403104451_
                                             __tmp114629
                                             __tmp114628))
                                          (let ()
                                            (declare (not safe))
                                            (_g104390104418_
                                             _g104391104421_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104390104418_ _g104391104421_)))))
                          (let ()
                            (declare (not safe))
                            (_g104390104418_ _g104391104421_)))))
                  (let ((_eid104406104470_ (reverse _eid104404104441_))
                        (_id104407104472_ (reverse _id104405104443_)))
                    ((lambda (_L104475_ _L104476_)
                       (let ((__tmp114625
                              (map _generate1104388_
                                   (let ((__tmp114626
                                          (lambda (_g104491104494_
                                                   _g104492104496_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104491104494_
                                                    _g104492104496_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114626 '() _L104476_))
                                   (let ((__tmp114627
                                          (lambda (_g104498104501_
                                                   _g104499104503_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104498104501_
                                                    _g104499104503_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114627 '() _L104475_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114625)))
                     _eid104406104470_
                     _id104407104472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104400104436_
                                               _target104397104431_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104390104418_
                                             _g104391104421_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104390104418_ _g104391104421_)))))
                        (let ()
                          (declare (not safe))
                          (_g104390104418_ _g104391104421_))))))
            (declare (not safe))
            (_g104389104506_ _stx104386_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104175_ _stx104176_)
        (letrec ((_generate1104178_
                  (lambda (_id104380_)
                    (let ((_eid104382_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104380_)))
                          (_ident104383_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104380_))))
                      (let ((__tmp114630
                             (let ((__tmp114631
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104382_ '()))))
                               (declare (not safe))
                               (cons _ident104383_ __tmp114631))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114630)))))
                 (_generate*104179_
                  (lambda (_all104348_)
                    (let* ((_all104349104357_ _all104348_)
                           (_else104351104365_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104348_))))
                           (_K104353104370_
                            (lambda (_one104368_) _one104368_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104349104357_))
                          (let ((_hd104354104373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104349104357_)))
                                (_tl104355104375_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104349104357_))))
                            (let ((_one104378_ _hd104354104373_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104355104375_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104353104370_ _one104378_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104351104365_)))))
                          (let ()
                            (declare (not safe))
                            (_else104351104365_)))))))
          (let* ((_g104181104198_
                  (lambda (_g104182104195_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104182104195_))))
                 (_g104180104345_
                  (lambda (_g104182104201_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104182104201_))
                        (let ((_e104187104203_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104182104201_))))
                          (let ((_hd104186104206_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104187104203_)))
                                (_tl104185104208_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104187104203_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104185104208_))
                                (let ((_e104190104211_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104185104208_))))
                                  (let ((_hd104189104214_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104190104211_)))
                                        (_tl104188104216_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104190104211_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104188104216_))
                                        (let ((_e104193104219_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104188104216_))))
                                          (let ((_hd104192104222_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104193104219_)))
                                                (_tl104191104224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104193104219_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104191104224_))
                                                ((lambda (_L104227_ _L104228_)
                                                   (let _lp104244_ ((_rest104246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104228_)
                            (_r104247_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx113761113762_
                                                             _rest104246_)
                                                            (_g104252104269_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx113761113762_)))))
               (let ((___kont113763113764_
                      (lambda (_L104332_)
                        (let ()
                          (declare (not safe))
                          (_lp104244_ _L104332_ _r104247_))))
                     (___kont113765113766_
                      (lambda (_L104305_ _L104306_)
                        (let ((__tmp114632
                               (let ((__tmp114633
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104178_ _L104306_))))
                                 (declare (not safe))
                                 (cons __tmp114633 _r104247_))))
                          (declare (not safe))
                          (_lp104244_ _L104305_ __tmp114632))))
                     (___kont113767113768_
                      (lambda (_L104281_)
                        (let ((__tmp114634
                               (let ((__tmp114635
                                      (let ((__tmp114636
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104178_ _L104281_))))
                                        (declare (not safe))
                                        (cons __tmp114636 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114635 _r104247_))))
                          (declare (not safe))
                          (_generate*104179_ __tmp114634))))
                     (___kont113769113770_
                      (lambda ()
                        (let ((__tmp114637 (reverse _r104247_)))
                          (declare (not safe))
                          (_generate*104179_ __tmp114637)))))
                 (let ((_g104250104292_
                        (lambda ()
                          (let ((_L104281_ ___stx113761113762_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104281_))
                                (___kont113767113768_ _L104281_)
                                (___kont113769113770_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx113761113762_))
                       (let ((_e104257104321_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx113761113762_))))
                         (let ((_tl104255104326_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104257104321_)))
                               (_hd104256104324_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104257104321_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104256104324_))
                               (let ((_e104258104329_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104256104324_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104258104329_ '#f))
                                     (___kont113763113764_ _tl104255104326_)
                                     (___kont113765113766_
                                      _tl104255104326_
                                      _hd104256104324_)))
                               (___kont113765113766_
                                _tl104255104326_
                                _hd104256104324_))))
                       (let () (declare (not safe)) (_g104250104292_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104192104222_
                                                 _hd104189104214_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104181104198_
                                                   _g104182104201_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104181104198_ _g104182104201_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104181104198_ _g104182104201_)))))
                        (let ()
                          (declare (not safe))
                          (_g104181104198_ _g104182104201_))))))
            (declare (not safe))
            (_g104180104345_ _stx104176_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104072_ _stx104073_)
        (let* ((_g104075104092_
                (lambda (_g104076104089_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104076104089_))))
               (_g104074104172_
                (lambda (_g104076104095_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104076104095_))
                      (let ((_e104081104097_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104076104095_))))
                        (let ((_hd104080104100_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104081104097_)))
                              (_tl104079104102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104081104097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104079104102_))
                              (let ((_e104084104105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104079104102_))))
                                (let ((_hd104083104108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104084104105_)))
                                      (_tl104082104110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104084104105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104082104110_))
                                      (let ((_e104087104113_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104082104110_))))
                                        (let ((_hd104086104116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104087104113_)))
                                              (_tl104085104118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104087104113_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104085104118_))
                                              ((lambda (_L104121_ _L104122_)
                                                 (let* ((_eid104137_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104122_)))
                                                        (_phi104139_
                                                         (let ((__tmp114638
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114638
                                                                '1)))
                                                        (_block104141_
                                                         (let ((__tmp114639
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104072_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114639 _phi104139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104144104151_
                                                           (lambda (_g104145104148_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104145104148_))))
                  (_g104143104169_
                   (lambda (_g104145104154_)
                     ((lambda (_L104156_)
                        (let ()
                          (let ((__tmp114644
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104072_ 'state)))
                                (__tmp114640
                                 (let ((__tmp114643
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114641
                                        (let ((__tmp114642
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104121_ '()))))
                                          (declare (not safe))
                                          (cons _L104156_ __tmp114642))))
                                   (declare (not safe))
                                   (cons __tmp114643 __tmp114641))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114644
                             _phi104139_
                             __tmp114640))))
                      _g104145104154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104143104169_
                                                      _eid104137_))
                                                   (if _block104141_
                                                       (let ((__tmp114648
                                                              (let ((__tmp114654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114655
                                    (let ((__tmp114656
                                           (let ((__tmp114657
                                                  (let ((__tmp114661
                                                         (let ((__tmp114662
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp114662)))
                (__tmp114658
                 (let ((__tmp114659
                        (let ((__tmp114660
                               (let ()
                                 (declare (not safe))
                                 (cons _block104141_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp114660))))
                   (declare (not safe))
                   (cons __tmp114659 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114661
                                                          __tmp114658))))
                                             (declare (not safe))
                                             (cons '%#call __tmp114657))))
                                      (declare (not safe))
                                      (cons __tmp114656 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp114655)))
                            (__tmp114649
                             (let ((__tmp114650
                                    (let ((__tmp114651
                                           (let ((__tmp114653
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104122_)))
                                                 (__tmp114652
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104137_ '()))))
                                             (declare (not safe))
                                             (cons __tmp114653 __tmp114652))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114651))))
                               (declare (not safe))
                               (cons __tmp114650 '()))))
                        (declare (not safe))
                        (cons __tmp114654 __tmp114649))))
                 (declare (not safe))
                 (cons '%#begin __tmp114648))
               (let ((__tmp114645
                      (let ((__tmp114647
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104122_)))
                            (__tmp114646
                             (let ()
                               (declare (not safe))
                               (cons _eid104137_ '()))))
                        (declare (not safe))
                        (cons __tmp114647 __tmp114646))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114645)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104086104116_
                                               _hd104083104108_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104075104092_
                                                 _g104076104095_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104075104092_ _g104076104095_)))))
                              (let ()
                                (declare (not safe))
                                (_g104075104092_ _g104076104095_)))))
                      (let ()
                        (declare (not safe))
                        (_g104075104092_ _g104076104095_))))))
          (declare (not safe))
          (_g104074104172_ _stx104073_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104004_ _stx104005_)
        (let* ((_g104007104024_
                (lambda (_g104008104021_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104008104021_))))
               (_g104006104069_
                (lambda (_g104008104027_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104008104027_))
                      (let ((_e104013104029_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104008104027_))))
                        (let ((_hd104012104032_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104013104029_)))
                              (_tl104011104034_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104013104029_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104011104034_))
                              (let ((_e104016104037_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104011104034_))))
                                (let ((_hd104015104040_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104016104037_)))
                                      (_tl104014104042_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104016104037_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104014104042_))
                                      (let ((_e104019104045_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104014104042_))))
                                        (let ((_hd104018104048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104019104045_)))
                                              (_tl104017104050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104019104045_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104017104050_))
                                              ((lambda (_L104053_ _L104054_)
                                                 (let ((__tmp114663
                                                        (let ((__tmp114666
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104054_)))
                      (__tmp114664
                       (let ((__tmp114665
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104053_))))
                         (declare (not safe))
                         (cons __tmp114665 '()))))
                  (declare (not safe))
                  (cons __tmp114666 __tmp114664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp114663)))
                                               _hd104018104048_
                                               _hd104015104040_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104007104024_
                                                 _g104008104027_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104007104024_ _g104008104027_)))))
                              (let ()
                                (declare (not safe))
                                (_g104007104024_ _g104008104027_)))))
                      (let ()
                        (declare (not safe))
                        (_g104007104024_ _g104008104027_))))))
          (declare (not safe))
          (_g104006104069_ _stx104005_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104001_ _stx104002_)
        (let ((__tmp114668
               (let () (declare (not safe)) (slot-ref__0 _self104001_ 'state)))
              (__tmp114667 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114668 __tmp114667 _stx104002_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104001_ _stx104002_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self103998_ _stx103999_)
        (let ((__tmp114670
               (let () (declare (not safe)) (slot-ref__0 _self103998_ 'state)))
              (__tmp114669 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114670 __tmp114669 _stx103999_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp114673 (list))
            (__tmp114671
             (let ((__tmp114672
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114672 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp114673
         '(src n open blocks)
         __tmp114671
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args103995_
        (apply make-instance gxc#meta-state::t _$args103995_)))
    (define gxc#meta-state-src
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'src)))
    (define gxc#meta-state-n
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'n)))
    (define gxc#meta-state-open
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'blocks)))
    (define gxc#meta-state-src-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'src)))
    (define gxc#meta-state-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'n)))
    (define gxc#meta-state-open-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'blocks)))
    (define gxc#meta-state:::init!
      (lambda (_self103992_ _ctx103993_)
        (if (let ((__tmp114682
                   (let ()
                     (declare (not safe))
                     (##structure-length _self103992_))))
              (declare (not safe))
              (##fx< '4 __tmp114682))
            (begin
              (let ((__tmp114676
                     (let ((__tmp114677
                            (##structure-ref
                             _ctx103993_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp114677)))
                    (__tmp114675
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103992_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103992_
                 __tmp114676
                 '1
                 __tmp114675
                 '#f))
              (let ((__tmp114678
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103992_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103992_
                 '1
                 '2
                 __tmp114678
                 '#f))
              (let ((__tmp114680
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114679
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103992_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103992_
                 __tmp114680
                 '3
                 __tmp114679
                 '#f))
              (let ((__tmp114681
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103992_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103992_
                 '()
                 '4
                 __tmp114681
                 '#f)))
            (let ((__tmp114674
                   (let ()
                     (declare (not safe))
                     (##vector-length _self103992_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self103992_
                     '4
                     __tmp114674)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp114685 (list))
            (__tmp114683
             (let ((__tmp114684
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114684 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp114685
         '(ctx phi n code)
         __tmp114683
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args103867_
        (apply make-instance gxc#meta-state-block::t _$args103867_)))
    (define gxc#meta-state-block-ctx
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-begin-phi!
      (lambda (_state103826_ _phi103827_)
        (let* ((_state103828103836_ _state103826_)
               (_E103830103840_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state103828103836_))))
               (_K103831103849_
                (lambda (_open103843_ _n103844_ _src103845_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open103843_ _phi103827_))
                      '#f
                      (let ((_block-ref103847_
                             (string-append
                              _src103845_
                              '"__"
                              (number->string _n103844_))))
                        (##structure-set!
                         _state103826_
                         (let () (declare (not safe)) (fx+ _n103844_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp114686
                               (let ((__tmp114687
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp114687
                                  _phi103827_
                                  _n103844_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open103843_ _phi103827_ __tmp114686))
                        _block-ref103847_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state103828103836_
                 'gxc#meta-state::t))
              (let* ((_e103832103852_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103828103836_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src103855_ _e103832103852_)
                     (_e103833103857_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103828103836_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n103860_ _e103833103857_)
                     (_e103834103862_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103828103836_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open103865_ _e103834103862_))
                (declare (not safe))
                (_K103831103849_ _open103865_ _n103860_ _src103855_))
              (let () (declare (not safe)) (_E103830103840_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state103820_ _phi103821_ _stx103822_)
        (let ((_block103824_
               (let ((__tmp114688
                      (##structure-ref
                       _state103820_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp114688 _phi103821_))))
          (##structure-set!
           _block103824_
           (let ((__tmp114689
                  (##structure-ref
                   _block103824_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx103822_ __tmp114689))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state103815_)
        (##structure-set!
         _state103815_
         (let ((__tmp114692
                (lambda (_g114693_ _block103817_ _r103818_)
                  (let ()
                    (declare (not safe))
                    (cons _block103817_ _r103818_))))
               (__tmp114691
                (##structure-ref _state103815_ '4 gxc#meta-state::t '#f))
               (__tmp114690
                (##structure-ref _state103815_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp114692 __tmp114691 __tmp114690))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state103815_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state103767_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state103767_))
        (let ((__tmp114695
               (lambda (_block103769_ _r103770_)
                 (let* ((_block103771103780_ _block103769_)
                        (_E103773103784_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block103771103780_))))
                        (_K103774103792_
                         (lambda (_code103787_
                                  _n103788_
                                  _phi103789_
                                  _ctx103790_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code103787_))
                               _r103770_
                               (let ((__tmp114696
                                      (let ((__tmp114697
                                             (let ((__tmp114698
                                                    (let ((__tmp114699
                                                           (let ((__tmp114700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114701 (reverse _code103787_)))
                            (declare (not safe))
                            (cons '%#begin __tmp114701))))
                     (declare (not safe))
                     (cons __tmp114700 '()))))
              (declare (not safe))
              (cons _n103788_ __tmp114699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi103789_
                                                     __tmp114698))))
                                        (declare (not safe))
                                        (cons _ctx103790_ __tmp114697))))
                                 (declare (not safe))
                                 (cons __tmp114696 _r103770_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block103771103780_
                          'gxc#meta-state-block::t))
                       (let* ((_e103775103795_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103771103780_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx103798_ _e103775103795_)
                              (_e103776103800_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103771103780_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi103803_ _e103776103800_)
                              (_e103777103805_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103771103780_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n103808_ _e103777103805_)
                              (_e103778103810_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103771103780_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code103813_ _e103778103810_))
                         (declare (not safe))
                         (_K103774103792_
                          _code103813_
                          _n103808_
                          _phi103803_
                          _ctx103798_))
                       (let () (declare (not safe)) (_E103773103784_))))))
              (__tmp114694
               (##structure-ref _state103767_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp114695 '() __tmp114694))))
    (define gxc#collect-expression-refs
      (lambda (_stx103763_)
        (let ((_ht103765_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx103763_ 'table: _ht103765_))
          _ht103765_)))
    (define gxc#collect-refs-ref%
      (lambda (_self103706_ _stx103707_)
        (let* ((_g103709103722_
                (lambda (_g103710103719_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103710103719_))))
               (_g103708103760_
                (lambda (_g103710103725_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103710103725_))
                      (let ((_e103714103727_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103710103725_))))
                        (let ((_hd103713103730_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103714103727_)))
                              (_tl103712103732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103714103727_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103712103732_))
                              (let ((_e103717103735_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103712103732_))))
                                (let ((_hd103716103738_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103717103735_)))
                                      (_tl103715103740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103717103735_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl103715103740_))
                                      ((lambda (_L103743_)
                                         (let* ((_bind103755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L103743_)))
                                                (_eid103757_
                                                 (if _bind103755_
                                                     (##structure-ref
                                                      _bind103755_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L103743_)))))
                                           (let ((__tmp114702
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self103706_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp114702
                                              _eid103757_
                                              _eid103757_))))
                                       _hd103716103738_)
                                      (let ()
                                        (declare (not safe))
                                        (_g103709103722_ _g103710103725_)))))
                              (let ()
                                (declare (not safe))
                                (_g103709103722_ _g103710103725_)))))
                      (let ()
                        (declare (not safe))
                        (_g103709103722_ _g103710103725_))))))
          (declare (not safe))
          (_g103708103760_ _stx103707_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103633_ _stx103634_)
        (let* ((_g103636103653_
                (lambda (_g103637103650_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103637103650_))))
               (_g103635103703_
                (lambda (_g103637103656_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103637103656_))
                      (let ((_e103642103658_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103637103656_))))
                        (let ((_hd103641103661_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103642103658_)))
                              (_tl103640103663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103642103658_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103640103663_))
                              (let ((_e103645103666_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103640103663_))))
                                (let ((_hd103644103669_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103645103666_)))
                                      (_tl103643103671_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103645103666_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103643103671_))
                                      (let ((_e103648103674_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103643103671_))))
                                        (let ((_hd103647103677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103648103674_)))
                                              (_tl103646103679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103648103674_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103646103679_))
                                              ((lambda (_L103682_ _L103683_)
                                                 (let* ((_bind103698_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L103683_)))
                                                        (_eid103700_
                                                         (if _bind103698_
                                                             (##structure-ref
                                                              _bind103698_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L103683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp114703
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103633_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp114703
                                                      _eid103700_
                                                      _eid103700_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103633_
                                                      _L103682_))))
                                               _hd103647103677_
                                               _hd103644103669_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103636103653_
                                                 _g103637103656_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103636103653_ _g103637103656_)))))
                              (let ()
                                (declare (not safe))
                                (_g103636103653_ _g103637103656_)))))
                      (let ()
                        (declare (not safe))
                        (_g103636103653_ _g103637103656_))))))
          (declare (not safe))
          (_g103635103703_ _stx103634_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103590_ _stx103591_)
        (let* ((_g103593103603_
                (lambda (_g103594103600_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103594103600_))))
               (_g103592103630_
                (lambda (_g103594103606_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103594103606_))
                      (let ((_e103598103608_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103594103606_))))
                        (let ((_hd103597103611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103598103608_)))
                              (_tl103596103613_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103598103608_))))
                          ((lambda (_L103616_)
                             (let ((__tmp114704
                                    (lambda (_g103625103627_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103590_
                                         _g103625103627_)))))
                               (declare (not safe))
                               (ormap1 __tmp114704 _L103616_)))
                           _tl103596103613_)))
                      (let ()
                        (declare (not safe))
                        (_g103593103603_ _g103594103606_))))))
          (declare (not safe))
          (_g103592103630_ _stx103591_))))
    (define gxc#count-values-single% (lambda (_self103587_ _stx103588_) '1))
    (define gxc#count-values-call%
      (lambda (_self103453_ _stx103454_)
        (let* ((___stx113791113792_ _stx103454_)
               (_g103457103486_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113791113792_)))))
          (let ((___kont113793113794_
                 (lambda (_L103554_ _L103555_)
                   (length (let ((__tmp114705
                                  (lambda (_g103576103579_ _g103577103581_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103576103579_
                                            _g103577103581_)))))
                             (declare (not safe))
                             (foldr1 __tmp114705 '() _L103554_)))))
                (___kont113797113798_ (lambda () '#f)))
            (let ((___match113836113837_
                   (lambda (_e103463103498_
                            _hd103462103501_
                            _tl103461103503_
                            _e103466103506_
                            _hd103465103509_
                            _tl103464103511_
                            _e103469103514_
                            _hd103468103517_
                            _tl103467103519_
                            _e103472103522_
                            _hd103471103525_
                            _tl103470103527_
                            ___splice113795113796_
                            _target103473103530_
                            _tl103475103532_)
                     (letrec ((_loop103476103535_
                               (lambda (_hd103474103538_ _rand103480103540_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103474103538_))
                                     (let ((_e103477103543_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103474103538_))))
                                       (let ((_lp-tl103479103548_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103477103543_)))
                                             (_lp-hd103478103546_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103477103543_))))
                                         (let ((__tmp114706
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103478103546_
                                                        _rand103480103540_))))
                                           (declare (not safe))
                                           (_loop103476103535_
                                            _lp-tl103479103548_
                                            __tmp114706))))
                                     (let ((_rand103481103551_
                                            (reverse _rand103480103540_)))
                                       (let ((_L103554_ _rand103481103551_)
                                             (_L103555_ _hd103471103525_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103555_
                                                'values))
                                             (___kont113793113794_
                                              _L103554_
                                              _L103555_)
                                             (___kont113797113798_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103476103535_ _target103473103530_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx113791113792_))
                  (let ((_e103463103498_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx113791113792_))))
                    (let ((_tl103461103503_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103463103498_)))
                          (_hd103462103501_
                           (let ()
                             (declare (not safe))
                             (##car _e103463103498_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103461103503_))
                          (let ((_e103466103506_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103461103503_))))
                            (let ((_tl103464103511_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103466103506_)))
                                  (_hd103465103509_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103466103506_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103465103509_))
                                  (let ((_e103469103514_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103465103509_))))
                                    (let ((_tl103467103519_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103469103514_)))
                                          (_hd103468103517_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103469103514_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103468103517_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103468103517_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103467103519_))
                                                  (let ((_e103472103522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103467103519_))))
                                                    (let ((_tl103470103527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103472103522_)))
                                                          (_hd103471103525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103472103522_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103470103527_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103464103511_))
                      (let ((___splice113795113796_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103464103511_ '0))))
                        (let ((_tl103475103532_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice113795113796_ '1)))
                              (_target103473103530_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice113795113796_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103475103532_))
                              (___match113836113837_
                               _e103463103498_
                               _hd103462103501_
                               _tl103461103503_
                               _e103466103506_
                               _hd103465103509_
                               _tl103464103511_
                               _e103469103514_
                               _hd103468103517_
                               _tl103467103519_
                               _e103472103522_
                               _hd103471103525_
                               _tl103470103527_
                               ___splice113795113796_
                               _target103473103530_
                               _tl103475103532_)
                              (___kont113797113798_))))
                      (___kont113797113798_))
                  (___kont113797113798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113797113798_))
                                              (___kont113797113798_))
                                          (___kont113797113798_))))
                                  (___kont113797113798_))))
                          (___kont113797113798_))))
                  (___kont113797113798_)))))))
    (define gxc#count-values-if%
      (lambda (_self103356_ _stx103357_)
        (let* ((_g103359103380_
                (lambda (_g103360103377_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103360103377_))))
               (_g103358103450_
                (lambda (_g103360103383_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103360103383_))
                      (let ((_e103366103385_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103360103383_))))
                        (let ((_hd103365103388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103366103385_)))
                              (_tl103364103390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103366103385_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103364103390_))
                              (let ((_e103369103393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103364103390_))))
                                (let ((_hd103368103396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103369103393_)))
                                      (_tl103367103398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103369103393_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103367103398_))
                                      (let ((_e103372103401_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103367103398_))))
                                        (let ((_hd103371103404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103372103401_)))
                                              (_tl103370103406_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103372103401_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103370103406_))
                                              (let ((_e103375103409_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103370103406_))))
                                                (let ((_hd103374103412_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103375103409_)))
                                                      (_tl103373103414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103375103409_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103373103414_))
                                                      ((lambda (_L103417_
                                                                _L103418_
                                                                _L103419_)
                                                         (let ((_c1103436103438_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103356_ _L103418_))))
                   (if _c1103436103438_
                       (let* ((_c1103441_ _c1103436103438_)
                              (_c2103442103444_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103356_ _L103417_))))
                         (if _c2103442103444_
                             (let ((_c2103447_ _c2103442103444_))
                               (if (fx= _c1103441_ _c2103447_) _c1103441_ '#f))
                             '#f))
                       '#f)))
               _hd103374103412_
               _hd103371103404_
               _hd103368103396_)
              (let ()
                (declare (not safe))
                (_g103359103380_ _g103360103383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103359103380_
                                                 _g103360103383_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103359103380_ _g103360103383_)))))
                              (let ()
                                (declare (not safe))
                                (_g103359103380_ _g103360103383_)))))
                      (let ()
                        (declare (not safe))
                        (_g103359103380_ _g103360103383_))))))
          (declare (not safe))
          (_g103358103450_ _stx103357_))))))
