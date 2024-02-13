(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707847730)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl225013_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225013_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225013_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225013_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225013_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl225013_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl225009_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225009_ '%#declare gxc#xform-identity))
           _tbl225009_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl225005_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229827 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl225005_ __tmp229827))
           (let ((__tmp229828 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl225005_ __tmp229828))
           _tbl225005_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl225001_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225001_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225001_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225001_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225001_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225001_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl225001_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl224997_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229829 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224997_ __tmp229829))
           (let ((__tmp229830 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl224997_ __tmp229830))
           (let ()
             (declare (not safe))
             (table-set! _tbl224997_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224997_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224997_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224997_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224997_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl224997_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl224993_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229831 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224993_ __tmp229831))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224993_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224993_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl224993_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx224976_ . _args224978_)
        (let ((__tmp229833
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224978_)
                     (gxc#compile-e__0 _stx224976_)
                     (let ((_arg1224983_ (car _args224978_))
                           (_rest224985_ (cdr _args224978_)))
                       (if (null? _rest224985_)
                           (gxc#compile-e__1 _stx224976_ _arg1224983_)
                           (let ((_arg2224988_ (car _rest224985_))
                                 (_rest224990_ (cdr _rest224985_)))
                             (if (null? _rest224990_)
                                 (gxc#compile-e__2
                                  _stx224976_
                                  _arg1224983_
                                  _arg2224988_)
                                 (apply gxc#compile-e
                                        _stx224976_
                                        _arg1224983_
                                        _arg2224988_
                                        _rest224990_))))))))
              (__tmp229832 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp229833
           gxc#current-compile-methods
           __tmp229832))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl224973_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229834 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224973_ __tmp229834))
           (let ()
             (declare (not safe))
             (table-set! _tbl224973_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224973_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224973_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224973_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224973_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl224973_))))
    (define gxc#apply-collect-methods
      (lambda (_stx224956_ . _args224958_)
        (let ((__tmp229836
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224958_)
                     (gxc#compile-e__0 _stx224956_)
                     (let ((_arg1224963_ (car _args224958_))
                           (_rest224965_ (cdr _args224958_)))
                       (if (null? _rest224965_)
                           (gxc#compile-e__1 _stx224956_ _arg1224963_)
                           (let ((_arg2224968_ (car _rest224965_))
                                 (_rest224970_ (cdr _rest224965_)))
                             (if (null? _rest224970_)
                                 (gxc#compile-e__2
                                  _stx224956_
                                  _arg1224963_
                                  _arg2224968_)
                                 (apply gxc#compile-e
                                        _stx224956_
                                        _arg1224963_
                                        _arg2224968_
                                        _rest224970_))))))))
              (__tmp229835 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp229836
           gxc#current-compile-methods
           __tmp229835))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl224953_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229837 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224953_ __tmp229837))
           (let ()
             (declare (not safe))
             (table-set! _tbl224953_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224953_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224953_ '%#set! gxc#expression-subst-setq%))
           _tbl224953_))))
    (define gxc#apply-expression-subst
      (lambda (_stx224936_ . _args224938_)
        (let ((__tmp229839
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224938_)
                     (gxc#compile-e__0 _stx224936_)
                     (let ((_arg1224943_ (car _args224938_))
                           (_rest224945_ (cdr _args224938_)))
                       (if (null? _rest224945_)
                           (gxc#compile-e__1 _stx224936_ _arg1224943_)
                           (let ((_arg2224948_ (car _rest224945_))
                                 (_rest224950_ (cdr _rest224945_)))
                             (if (null? _rest224950_)
                                 (gxc#compile-e__2
                                  _stx224936_
                                  _arg1224943_
                                  _arg2224948_)
                                 (apply gxc#compile-e
                                        _stx224936_
                                        _arg1224943_
                                        _arg2224948_
                                        _rest224950_))))))))
              (__tmp229838 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp229839
           gxc#current-compile-methods
           __tmp229838))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl224933_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229840 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl224933_ __tmp229840))
           (let ()
             (declare (not safe))
             (table-set! _tbl224933_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224933_ '%#set! gxc#expression-subst*-setq%))
           _tbl224933_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx224916_ . _args224918_)
        (let ((__tmp229842
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224918_)
                     (gxc#compile-e__0 _stx224916_)
                     (let ((_arg1224923_ (car _args224918_))
                           (_rest224925_ (cdr _args224918_)))
                       (if (null? _rest224925_)
                           (gxc#compile-e__1 _stx224916_ _arg1224923_)
                           (let ((_arg2224928_ (car _rest224925_))
                                 (_rest224930_ (cdr _rest224925_)))
                             (if (null? _rest224930_)
                                 (gxc#compile-e__2
                                  _stx224916_
                                  _arg1224923_
                                  _arg2224928_)
                                 (apply gxc#compile-e
                                        _stx224916_
                                        _arg1224923_
                                        _arg2224928_
                                        _rest224930_))))))))
              (__tmp229841 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp229842
           gxc#current-compile-methods
           __tmp229841))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl224913_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229843 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl224913_ __tmp229843))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224913_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224913_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224913_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl224913_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl224909_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229844 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl224909_ __tmp229844))
           (let ()
             (declare (not safe))
             (table-set! _tbl224909_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224909_ '%#set! gxc#find-var-refs-setq%))
           _tbl224909_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx224892_ . _args224894_)
        (let ((__tmp229846
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224894_)
                     (gxc#compile-e__0 _stx224892_)
                     (let ((_arg1224899_ (car _args224894_))
                           (_rest224901_ (cdr _args224894_)))
                       (if (null? _rest224901_)
                           (gxc#compile-e__1 _stx224892_ _arg1224899_)
                           (let ((_arg2224904_ (car _rest224901_))
                                 (_rest224906_ (cdr _rest224901_)))
                             (if (null? _rest224906_)
                                 (gxc#compile-e__2
                                  _stx224892_
                                  _arg1224899_
                                  _arg2224904_)
                                 (apply gxc#compile-e
                                        _stx224892_
                                        _arg1224899_
                                        _arg2224904_
                                        _rest224906_))))))))
              (__tmp229845 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229846
           gxc#current-compile-methods
           __tmp229845))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl224889_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229847 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl224889_ __tmp229847))
           (let ()
             (declare (not safe))
             (table-set! _tbl224889_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224889_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl224889_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx224872_ . _args224874_)
        (let ((__tmp229849
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224874_)
                     (gxc#compile-e__0 _stx224872_)
                     (let ((_arg1224879_ (car _args224874_))
                           (_rest224881_ (cdr _args224874_)))
                       (if (null? _rest224881_)
                           (gxc#compile-e__1 _stx224872_ _arg1224879_)
                           (let ((_arg2224884_ (car _rest224881_))
                                 (_rest224886_ (cdr _rest224881_)))
                             (if (null? _rest224886_)
                                 (gxc#compile-e__2
                                  _stx224872_
                                  _arg1224879_
                                  _arg2224884_)
                                 (apply gxc#compile-e
                                        _stx224872_
                                        _arg1224879_
                                        _arg2224884_
                                        _rest224886_))))))))
              (__tmp229848 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229849
           gxc#current-compile-methods
           __tmp229848))))
    (define gxc#xform-identity
      (lambda (_stx224869_ . _args224870_) _stx224869_))
    (define gxc#xform-wrap-source
      (lambda (_stx224866_ _src-stx224867_)
        (let ((__tmp229850
               (let () (declare (not safe)) (gx#stx-source _src-stx224867_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx224866_ __tmp229850))))
    (define gxc#xform-apply-compile-e
      (lambda (_args224853_)
        (lambda (_stx224855_)
          (if (let () (declare (not safe)) (null? _args224853_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx224855_))
              (let ((_arg1224857_ (car _args224853_))
                    (_rest224859_ (cdr _args224853_)))
                (if (let () (declare (not safe)) (null? _rest224859_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx224855_ _arg1224857_))
                    (let ((_arg2224862_ (car _rest224859_))
                          (_rest224864_ (cdr _rest224859_)))
                      (if (let () (declare (not safe)) (null? _rest224864_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx224855_
                             _arg1224857_
                             _arg2224862_))
                          (apply gxc#compile-e
                                 _stx224855_
                                 _arg1224857_
                                 _arg2224862_
                                 _rest224864_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx224812_ . _args224813_)
        (let* ((_g224815224825_
                (lambda (_g224816224822_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224816224822_))))
               (_g224814224850_
                (lambda (_g224816224828_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224816224828_))
                      (let ((_e224820224830_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224816224828_))))
                        (let ((_hd224819224833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224820224830_)))
                              (_tl224818224835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224820224830_))))
                          ((lambda (_L224838_)
                             (let* ((_forms224848_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224813_))
                                          _L224838_))
                                    (__tmp229851
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms224848_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229851
                                _stx224812_)))
                           _tl224818224835_)))
                      (let ()
                        (declare (not safe))
                        (_g224815224825_ _g224816224828_))))))
          (declare (not safe))
          (_g224814224850_ _stx224812_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx224770_ . _args224771_)
        (let* ((_g224773224783_
                (lambda (_g224774224780_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224774224780_))))
               (_g224772224809_
                (lambda (_g224774224786_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224774224786_))
                      (let ((_e224778224788_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224774224786_))))
                        (let ((_hd224777224791_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224778224788_)))
                              (_tl224776224793_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224778224788_))))
                          ((lambda (_L224796_)
                             (let ((__tmp229854
                                    (lambda ()
                                      (let* ((_forms224807_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args224771_))
                                                   _L224796_))
                                             (__tmp229855
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms224807_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp229855
                                         _stx224770_))))
                                   (__tmp229852
                                    (let ((__tmp229853
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp229853 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp229854
                                gx#current-expander-phi
                                __tmp229852)))
                           _tl224776224793_)))
                      (let ()
                        (declare (not safe))
                        (_g224773224783_ _g224774224786_))))))
          (declare (not safe))
          (_g224772224809_ _stx224770_))))
    (define gxc#xform-module%
      (lambda (_stx224698_ . _args224699_)
        (let* ((_g224701224715_
                (lambda (_g224702224712_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224702224712_))))
               (_g224700224767_
                (lambda (_g224702224718_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224702224718_))
                      (let ((_e224707224720_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224702224718_))))
                        (let ((_hd224706224723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224707224720_)))
                              (_tl224705224725_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224707224720_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224705224725_))
                              (let ((_e224710224728_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224705224725_))))
                                (let ((_hd224709224731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224710224728_)))
                                      (_tl224708224733_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224710224728_))))
                                  ((lambda (_L224736_ _L224737_)
                                     (let* ((_ctx224750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L224737_)))
                                            (_code224752_
                                             (##structure-ref
                                              _ctx224750_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code224764_
                                             (let ((__tmp229856
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args224699_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code224752_))
                                                          (let ((_arg1224755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args224699_))
                        (_rest224757_ (cdr _args224699_)))
                    (if (let () (declare (not safe)) (null? _rest224757_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code224752_ _arg1224755_))
                        (let ((_arg2224760_ (car _rest224757_))
                              (_rest224762_ (cdr _rest224757_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest224762_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code224752_
                                 _arg1224755_
                                 _arg2224760_))
                              (apply gxc#compile-e
                                     _code224752_
                                     _arg1224755_
                                     _arg2224760_
                                     _rest224762_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp229856
                                                gx#current-expander-context
                                                _ctx224750_))))
                                       (##structure-set!
                                        _ctx224750_
                                        _code224764_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp229857
                                              (let ((__tmp229858
                                                     (let ((__tmp229859
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code224764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L224737_ __tmp229859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp229858))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp229857
                                          _stx224698_))))
                                   _tl224708224733_
                                   _hd224709224731_)))
                              (let ()
                                (declare (not safe))
                                (_g224701224715_ _g224702224718_)))))
                      (let ()
                        (declare (not safe))
                        (_g224701224715_ _g224702224718_))))))
          (declare (not safe))
          (_g224700224767_ _stx224698_))))
    (define gxc#xform-define-values%
      (lambda (_stx224619_ . _args224620_)
        (let* ((_g224622224639_
                (lambda (_g224623224636_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224623224636_))))
               (_g224621224695_
                (lambda (_g224623224642_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224623224642_))
                      (let ((_e224628224644_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224623224642_))))
                        (let ((_hd224627224647_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224628224644_)))
                              (_tl224626224649_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224628224644_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224626224649_))
                              (let ((_e224631224652_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224626224649_))))
                                (let ((_hd224630224655_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224631224652_)))
                                      (_tl224629224657_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224631224652_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224629224657_))
                                      (let ((_e224634224660_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224629224657_))))
                                        (let ((_hd224633224663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224634224660_)))
                                              (_tl224632224665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224634224660_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224632224665_))
                                              ((lambda (_L224668_ _L224669_)
                                                 (let* ((_expr224693_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224620_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224668_))
                     (let ((_arg1224684_ (car _args224620_))
                           (_rest224686_ (cdr _args224620_)))
                       (if (let () (declare (not safe)) (null? _rest224686_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224668_ _arg1224684_))
                           (let ((_arg2224689_ (car _rest224686_))
                                 (_rest224691_ (cdr _rest224686_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224691_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224668_
                                    _arg1224684_
                                    _arg2224689_))
                                 (apply gxc#compile-e
                                        _L224668_
                                        _arg1224684_
                                        _arg2224689_
                                        _rest224691_)))))))
                (__tmp229860
                 (let ((__tmp229861
                        (let ((__tmp229862
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224693_ '()))))
                          (declare (not safe))
                          (cons _L224669_ __tmp229862))))
                   (declare (not safe))
                   (cons '%#define-values __tmp229861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229860
                                                    _stx224619_)))
                                               _hd224633224663_
                                               _hd224630224655_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224622224639_
                                                 _g224623224642_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224622224639_ _g224623224642_)))))
                              (let ()
                                (declare (not safe))
                                (_g224622224639_ _g224623224642_)))))
                      (let ()
                        (declare (not safe))
                        (_g224622224639_ _g224623224642_))))))
          (declare (not safe))
          (_g224621224695_ _stx224619_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx224539_ . _args224540_)
        (let* ((_g224542224559_
                (lambda (_g224543224556_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224543224556_))))
               (_g224541224616_
                (lambda (_g224543224562_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224543224562_))
                      (let ((_e224548224564_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224543224562_))))
                        (let ((_hd224547224567_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224548224564_)))
                              (_tl224546224569_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224548224564_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224546224569_))
                              (let ((_e224551224572_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224546224569_))))
                                (let ((_hd224550224575_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224551224572_)))
                                      (_tl224549224577_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224551224572_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224549224577_))
                                      (let ((_e224554224580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224549224577_))))
                                        (let ((_hd224553224583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224554224580_)))
                                              (_tl224552224585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224554224580_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224552224585_))
                                              ((lambda (_L224588_ _L224589_)
                                                 (let ((__tmp229865
                                                        (lambda ()
                                                          (let* ((_expr224614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args224540_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L224588_))
                              (let ((_arg1224605_ (car _args224540_))
                                    (_rest224607_ (cdr _args224540_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest224607_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L224588_
                                       _arg1224605_))
                                    (let ((_arg2224610_ (car _rest224607_))
                                          (_rest224612_ (cdr _rest224607_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest224612_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L224588_
                                             _arg1224605_
                                             _arg2224610_))
                                          (apply gxc#compile-e
                                                 _L224588_
                                                 _arg1224605_
                                                 _arg2224610_
                                                 _rest224612_)))))))
                         (__tmp229866
                          (let ((__tmp229867
                                 (let ((__tmp229868
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr224614_ '()))))
                                   (declare (not safe))
                                   (cons _L224589_ __tmp229868))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp229867))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp229866 _stx224539_))))
               (__tmp229863
                (let ((__tmp229864 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp229864 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp229865
                                                    gx#current-expander-phi
                                                    __tmp229863)))
                                               _hd224553224583_
                                               _hd224550224575_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224542224559_
                                                 _g224543224562_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224542224559_ _g224543224562_)))))
                              (let ()
                                (declare (not safe))
                                (_g224542224559_ _g224543224562_)))))
                      (let ()
                        (declare (not safe))
                        (_g224542224559_ _g224543224562_))))))
          (declare (not safe))
          (_g224541224616_ _stx224539_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx224460_ . _args224461_)
        (let* ((_g224463224480_
                (lambda (_g224464224477_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224464224477_))))
               (_g224462224536_
                (lambda (_g224464224483_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224464224483_))
                      (let ((_e224469224485_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224464224483_))))
                        (let ((_hd224468224488_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224469224485_)))
                              (_tl224467224490_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224469224485_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224467224490_))
                              (let ((_e224472224493_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224467224490_))))
                                (let ((_hd224471224496_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224472224493_)))
                                      (_tl224470224498_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224472224493_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224470224498_))
                                      (let ((_e224475224501_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224470224498_))))
                                        (let ((_hd224474224504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224475224501_)))
                                              (_tl224473224506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224475224501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224473224506_))
                                              ((lambda (_L224509_ _L224510_)
                                                 (let* ((_expr224534_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224461_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224509_))
                     (let ((_arg1224525_ (car _args224461_))
                           (_rest224527_ (cdr _args224461_)))
                       (if (let () (declare (not safe)) (null? _rest224527_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224509_ _arg1224525_))
                           (let ((_arg2224530_ (car _rest224527_))
                                 (_rest224532_ (cdr _rest224527_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224532_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224509_
                                    _arg1224525_
                                    _arg2224530_))
                                 (apply gxc#compile-e
                                        _L224509_
                                        _arg1224525_
                                        _arg2224530_
                                        _rest224532_)))))))
                (__tmp229869
                 (let ((__tmp229870
                        (let ((__tmp229871
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224534_ '()))))
                          (declare (not safe))
                          (cons _L224510_ __tmp229871))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp229870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229869
                                                    _stx224460_)))
                                               _hd224474224504_
                                               _hd224471224496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224463224480_
                                                 _g224464224483_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224463224480_ _g224464224483_)))))
                              (let ()
                                (declare (not safe))
                                (_g224463224480_ _g224464224483_)))))
                      (let ()
                        (declare (not safe))
                        (_g224463224480_ _g224464224483_))))))
          (declare (not safe))
          (_g224462224536_ _stx224460_))))
    (define gxc#xform-lambda%
      (lambda (_stx224403_ . _args224404_)
        (let* ((_g224406224420_
                (lambda (_g224407224417_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224407224417_))))
               (_g224405224457_
                (lambda (_g224407224423_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224407224423_))
                      (let ((_e224412224425_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224407224423_))))
                        (let ((_hd224411224428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224412224425_)))
                              (_tl224410224430_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224412224425_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224410224430_))
                              (let ((_e224415224433_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224410224430_))))
                                (let ((_hd224414224436_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224415224433_)))
                                      (_tl224413224438_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224415224433_))))
                                  ((lambda (_L224441_ _L224442_)
                                     (let* ((_body224455_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args224404_))
                                                  _L224441_))
                                            (__tmp229872
                                             (let ((__tmp229873
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L224442_
                                                            _body224455_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp229873))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp229872
                                        _stx224403_)))
                                   _tl224413224438_
                                   _hd224414224436_)))
                              (let ()
                                (declare (not safe))
                                (_g224406224420_ _g224407224423_)))))
                      (let ()
                        (declare (not safe))
                        (_g224406224420_ _g224407224423_))))))
          (declare (not safe))
          (_g224405224457_ _stx224403_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx224316_ . _args224317_)
        (letrec ((_clause-e224319_
                  (lambda (_clause224360_)
                    (let* ((_g224362224373_
                            (lambda (_g224363224370_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g224363224370_))))
                           (_g224361224400_
                            (lambda (_g224363224376_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g224363224376_))
                                  (let ((_e224368224378_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g224363224376_))))
                                    (let ((_hd224367224381_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224368224378_)))
                                          (_tl224366224383_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224368224378_))))
                                      ((lambda (_L224386_ _L224387_)
                                         (let ((_body224398_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args224317_))
                                                     _L224386_)))
                                           (declare (not safe))
                                           (cons _L224387_ _body224398_)))
                                       _tl224366224383_
                                       _hd224367224381_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g224362224373_ _g224363224376_))))))
                      (declare (not safe))
                      (_g224361224400_ _clause224360_)))))
          (let* ((_g224321224331_
                  (lambda (_g224322224328_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g224322224328_))))
                 (_g224320224357_
                  (lambda (_g224322224334_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g224322224334_))
                        (let ((_e224326224336_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g224322224334_))))
                          (let ((_hd224325224339_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224326224336_)))
                                (_tl224324224341_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224326224336_))))
                            ((lambda (_L224344_)
                               (let* ((_clauses224355_
                                       (map _clause-e224319_ _L224344_))
                                      (__tmp229874
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses224355_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp229874
                                  _stx224316_)))
                             _tl224324224341_)))
                        (let ()
                          (declare (not safe))
                          (_g224321224331_ _g224322224334_))))))
            (declare (not safe))
            (_g224320224357_ _stx224316_)))))
    (define gxc#xform-let-values%
      (lambda (_stx224110_ . _args224111_)
        (let* ((_g224113224146_
                (lambda (_g224114224143_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224114224143_))))
               (_g224112224313_
                (lambda (_g224114224149_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224114224149_))
                      (let ((_e224121224151_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224114224149_))))
                        (let ((_hd224120224154_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224121224151_)))
                              (_tl224119224156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224121224151_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224119224156_))
                              (let ((_e224124224159_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224119224156_))))
                                (let ((_hd224123224162_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224124224159_)))
                                      (_tl224122224164_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224124224159_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd224123224162_))
                                      (let ((_g229875_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd224123224162_
                                                '0))))
                                        (begin
                                          (let ((_g229876_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229875_)
                                                       (##vector-length
                                                        _g229875_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229876_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229876_)))
                                          (let ((_target224125224167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229875_ 0)))
                                                (_tl224127224169_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229875_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224127224169_))
                                                (letrec ((_loop224128224172_
                                                          (lambda (_hd224126224175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr224132224177_
                           _hd224133224179_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd224126224175_))
                        (let ((_e224129224182_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd224126224175_))))
                          (let ((_lp-hd224130224185_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224129224182_)))
                                (_lp-tl224131224187_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224129224182_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd224130224185_))
                                (let ((_e224138224190_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd224130224185_))))
                                  (let ((_hd224137224193_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e224138224190_)))
                                        (_tl224136224195_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e224138224190_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl224136224195_))
                                        (let ((_e224141224198_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl224136224195_))))
                                          (let ((_hd224140224201_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e224141224198_)))
                                                (_tl224139224203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e224141224198_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224139224203_))
                                                (let ((__tmp229889
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224140224201_
                                                               _expr224132224177_)))
                                                      (__tmp229888
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224137224193_
                                                               _hd224133224179_))))
                                                  (declare (not safe))
                                                  (_loop224128224172_
                                                   _lp-tl224131224187_
                                                   __tmp229889
                                                   __tmp229888))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224113224146_
                                                   _g224114224149_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g224113224146_ _g224114224149_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g224113224146_ _g224114224149_)))))
                        (let ((_expr224134224206_ (reverse _expr224132224177_))
                              (_hd224135224208_ (reverse _hd224133224179_)))
                          ((lambda (_L224211_ _L224212_ _L224213_ _L224214_)
                             (let* ((_g224233224249_
                                     (lambda (_g224234224246_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g224234224246_))))
                                    (_g224232224303_
                                     (lambda (_g224234224252_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g224234224252_))
                                           (let ((_g229877_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g224234224252_
                                                     '0))))
                                             (begin
                                               (let ((_g229878_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g229877_)
                                                            (##vector-length
                                                             _g229877_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g229878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g229878_)))
                                               (let ((_target224236224254_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229877_
                                                         0)))
                                                     (_tl224238224256_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229877_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl224238224256_))
                                                     (letrec ((_loop224239224259_
                                                               (lambda (_hd224237224262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr224243224264_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd224237224262_))
                             (let ((_e224240224267_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd224237224262_))))
                               (let ((_lp-hd224241224270_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e224240224267_)))
                                     (_lp-tl224242224272_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e224240224267_))))
                                 (let ((__tmp229885
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd224241224270_
                                                _expr224243224264_))))
                                   (declare (not safe))
                                   (_loop224239224259_
                                    _lp-tl224242224272_
                                    __tmp229885))))
                             (let ((_expr224244224275_
                                    (reverse _expr224243224264_)))
                               ((lambda (_L224278_)
                                  (let ()
                                    (let* ((_body224291_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args224111_))
                                                 _L224211_))
                                           (__tmp229879
                                            (let ((__tmp229880
                                                   (let ((__tmp229881
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L224278_
                                                               _L224213_))
                                                            (let ((__tmp229882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g224292224296_
                                    _g224293224298_
                                    _g224294224300_)
                             (let ((__tmp229883
                                    (let ((__tmp229884
                                           (let ()
                                             (declare (not safe))
                                             (cons _g224292224296_ '()))))
                                      (declare (not safe))
                                      (cons _g224293224298_ __tmp229884))))
                               (declare (not safe))
                               (cons __tmp229883 _g224294224300_)))))
                      (declare (not safe))
                      (foldr2 __tmp229882 '() _L224278_ _L224213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp229881
                                                           _body224291_))))
                                              (declare (not safe))
                                              (cons _L224214_ __tmp229880))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp229879
                                       _stx224110_))))
                                _expr224244224275_))))))
               (let ()
                 (declare (not safe))
                 (_loop224239224259_ _target224236224254_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g224233224249_
                                                        _g224234224252_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224233224249_
                                              _g224234224252_)))))
                                    (__tmp229886
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224111_))
                                          (let ((__tmp229887
                                                 (lambda (_g224305224308_
                                                          _g224306224310_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g224305224308_
                                                           _g224306224310_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp229887
                                                    '()
                                                    _L224212_)))))
                               (declare (not safe))
                               (_g224232224303_ __tmp229886)))
                           _tl224122224164_
                           _expr224134224206_
                           _hd224135224208_
                           _hd224120224154_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop224128224172_
                                                     _target224125224167_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224113224146_
                                                   _g224114224149_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224113224146_ _g224114224149_)))))
                              (let ()
                                (declare (not safe))
                                (_g224113224146_ _g224114224149_)))))
                      (let ()
                        (declare (not safe))
                        (_g224113224146_ _g224114224149_))))))
          (declare (not safe))
          (_g224112224313_ _stx224110_))))
    (define gxc#xform-operands
      (lambda (_stx224066_ . _args224067_)
        (let* ((_g224069224080_
                (lambda (_g224070224077_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224070224077_))))
               (_g224068224107_
                (lambda (_g224070224083_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224070224083_))
                      (let ((_e224075224085_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224070224083_))))
                        (let ((_hd224074224088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224075224085_)))
                              (_tl224073224090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224075224085_))))
                          ((lambda (_L224093_ _L224094_)
                             (let* ((_rands224105_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224067_))
                                          _L224093_))
                                    (__tmp229890
                                     (let ()
                                       (declare (not safe))
                                       (cons _L224094_ _rands224105_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229890
                                _stx224066_)))
                           _tl224073224090_
                           _hd224074224088_)))
                      (let ()
                        (declare (not safe))
                        (_g224069224080_ _g224070224083_))))))
          (declare (not safe))
          (_g224068224107_ _stx224066_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx223987_ . _args223988_)
        (let* ((_g223990224007_
                (lambda (_g223991224004_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223991224004_))))
               (_g223989224063_
                (lambda (_g223991224010_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223991224010_))
                      (let ((_e223996224012_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223991224010_))))
                        (let ((_hd223995224015_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223996224012_)))
                              (_tl223994224017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223996224012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223994224017_))
                              (let ((_e223999224020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223994224017_))))
                                (let ((_hd223998224023_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223999224020_)))
                                      (_tl223997224025_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223999224020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223997224025_))
                                      (let ((_e224002224028_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223997224025_))))
                                        (let ((_hd224001224031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224002224028_)))
                                              (_tl224000224033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224002224028_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224000224033_))
                                              ((lambda (_L224036_ _L224037_)
                                                 (let* ((_expr224061_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223988_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224036_))
                     (let ((_arg1224052_ (car _args223988_))
                           (_rest224054_ (cdr _args223988_)))
                       (if (let () (declare (not safe)) (null? _rest224054_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224036_ _arg1224052_))
                           (let ((_arg2224057_ (car _rest224054_))
                                 (_rest224059_ (cdr _rest224054_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224059_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224036_
                                    _arg1224052_
                                    _arg2224057_))
                                 (apply gxc#compile-e
                                        _L224036_
                                        _arg1224052_
                                        _arg2224057_
                                        _rest224059_)))))))
                (__tmp229891
                 (let ((__tmp229892
                        (let ((__tmp229893
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224061_ '()))))
                          (declare (not safe))
                          (cons _L224037_ __tmp229893))))
                   (declare (not safe))
                   (cons '%#set! __tmp229892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229891
                                                    _stx223987_)))
                                               _hd224001224031_
                                               _hd223998224023_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223990224007_
                                                 _g223991224010_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223990224007_ _g223991224010_)))))
                              (let ()
                                (declare (not safe))
                                (_g223990224007_ _g223991224010_)))))
                      (let ()
                        (declare (not safe))
                        (_g223990224007_ _g223991224010_))))))
          (declare (not safe))
          (_g223989224063_ _stx223987_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx223918_)
        (let* ((_g223920223937_
                (lambda (_g223921223934_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223921223934_))))
               (_g223919223984_
                (lambda (_g223921223940_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223921223940_))
                      (let ((_e223926223942_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223921223940_))))
                        (let ((_hd223925223945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223926223942_)))
                              (_tl223924223947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223926223942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223924223947_))
                              (let ((_e223929223950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223924223947_))))
                                (let ((_hd223928223953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223929223950_)))
                                      (_tl223927223955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223929223950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223927223955_))
                                      (let ((_e223932223958_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223927223955_))))
                                        (let ((_hd223931223961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223932223958_)))
                                              (_tl223930223963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223932223958_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223930223963_))
                                              ((lambda (_L223966_ _L223967_)
                                                 (let ((_sym223982_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223967_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym223982_))
                                                   (let ((__tmp229894
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp229894
                                                      _sym223982_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L223966_))))
                                               _hd223931223961_
                                               _hd223928223953_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223920223937_
                                                 _g223921223940_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223920223937_ _g223921223940_)))))
                              (let ()
                                (declare (not safe))
                                (_g223920223937_ _g223921223940_)))))
                      (let ()
                        (declare (not safe))
                        (_g223920223937_ _g223921223940_))))))
          (declare (not safe))
          (_g223919223984_ _stx223918_))))
    (define gxc#collect-methods-call%
      (lambda (_stx223472_)
        (let* ((___stx229584229585_ _stx223472_)
               (_g223476223578_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx229584229585_)))))
          (let ((___kont229586229587_
                 (lambda (_L223868_ _L223869_ _L223870_ _L223871_ _L223872_)
                   (let ((__tmp229895
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223869_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229895))))
                (___kont229588229589_
                 (lambda (_L223694_ _L223695_ _L223696_ _L223697_)
                   (let ((__tmp229896
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223694_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229896))))
                (___kont229590229591_ (lambda () '#!void)))
            (let ((___match229719229720_
                   (lambda (_e223485223740_
                            _hd223484223743_
                            _tl223483223745_
                            _e223488223748_
                            _hd223487223751_
                            _tl223486223753_
                            _e223491223756_
                            _hd223490223759_
                            _tl223489223761_
                            _e223494223764_
                            _hd223493223767_
                            _tl223492223769_
                            _e223497223772_
                            _hd223496223775_
                            _tl223495223777_
                            _e223500223780_
                            _hd223499223783_
                            _tl223498223785_
                            _e223503223788_
                            _hd223502223791_
                            _tl223501223793_
                            _e223506223796_
                            _hd223505223799_
                            _tl223504223801_
                            _e223509223804_
                            _hd223508223807_
                            _tl223507223809_
                            _e223512223812_
                            _hd223511223815_
                            _tl223510223817_
                            _e223515223820_
                            _hd223514223823_
                            _tl223513223825_
                            _e223518223828_
                            _hd223517223831_
                            _tl223516223833_
                            _e223521223836_
                            _hd223520223839_
                            _tl223519223841_
                            _e223524223844_
                            _hd223523223847_
                            _tl223522223849_
                            _e223527223852_
                            _hd223526223855_
                            _tl223525223857_
                            _e223530223860_
                            _hd223529223863_
                            _tl223528223865_)
                     (let ((_L223868_ _hd223529223863_)
                           (_L223869_ _hd223520223839_)
                           (_L223870_ _hd223511223815_)
                           (_L223871_ _hd223502223791_)
                           (_L223872_ _hd223493223767_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L223872_
                              'bind-method!))
                           (___kont229586229587_
                            _L223868_
                            _L223869_
                            _L223870_
                            _L223871_
                            _L223872_)
                           (___kont229590229591_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx229584229585_))
                  (let ((_e223485223740_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx229584229585_))))
                    (let ((_tl223483223745_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223485223740_)))
                          (_hd223484223743_
                           (let ()
                             (declare (not safe))
                             (##car _e223485223740_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223483223745_))
                          (let ((_e223488223748_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223483223745_))))
                            (let ((_tl223486223753_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223488223748_)))
                                  (_hd223487223751_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223488223748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223487223751_))
                                  (let ((_e223491223756_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223487223751_))))
                                    (let ((_tl223489223761_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223491223756_)))
                                          (_hd223490223759_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223491223756_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd223490223759_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd223490223759_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223489223761_))
                                                  (let ((_e223494223764_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223489223761_))))
                                                    (let ((_tl223492223769_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223494223764_)))
                                                          (_hd223493223767_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223494223764_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223492223769_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223486223753_))
                      (let ((_e223497223772_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223486223753_))))
                        (let ((_tl223495223777_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223497223772_)))
                              (_hd223496223775_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223497223772_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd223496223775_))
                              (let ((_e223500223780_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd223496223775_))))
                                (let ((_tl223498223785_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223500223780_)))
                                      (_hd223499223783_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223500223780_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd223499223783_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd223499223783_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl223498223785_))
                                              (let ((_e223503223788_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl223498223785_))))
                                                (let ((_tl223501223793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223503223788_)))
                                                      (_hd223502223791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223503223788_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223501223793_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl223495223777_))
                                                          (let ((_e223506223796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl223495223777_))))
                    (let ((_tl223504223801_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223506223796_)))
                          (_hd223505223799_
                           (let ()
                             (declare (not safe))
                             (##car _e223506223796_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd223505223799_))
                          (let ((_e223509223804_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd223505223799_))))
                            (let ((_tl223507223809_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223509223804_)))
                                  (_hd223508223807_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223509223804_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd223508223807_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd223508223807_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl223507223809_))
                                          (let ((_e223512223812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl223507223809_))))
                                            (let ((_tl223510223817_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223512223812_)))
                                                  (_hd223511223815_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223512223812_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl223510223817_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl223504223801_))
                                                      (let ((_e223515223820_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl223504223801_))))
                (let ((_tl223513223825_
                       (let () (declare (not safe)) (##cdr _e223515223820_)))
                      (_hd223514223823_
                       (let () (declare (not safe)) (##car _e223515223820_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223514223823_))
                      (let ((_e223518223828_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223514223823_))))
                        (let ((_tl223516223833_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223518223828_)))
                              (_hd223517223831_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223518223828_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd223517223831_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd223517223831_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223516223833_))
                                      (let ((_e223521223836_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223516223833_))))
                                        (let ((_tl223519223841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223521223836_)))
                                              (_hd223520223839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223521223836_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223519223841_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223513223825_))
                                                  (let ((_e223524223844_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223513223825_))))
                                                    (let ((_tl223522223849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223524223844_)))
                                                          (_hd223523223847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223524223844_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd223523223847_))
                                                          (let ((_e223527223852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd223523223847_))))
                    (let ((_tl223525223857_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223527223852_)))
                          (_hd223526223855_
                           (let ()
                             (declare (not safe))
                             (##car _e223527223852_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd223526223855_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd223526223855_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223525223857_))
                                  (let ((_e223530223860_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223525223857_))))
                                    (let ((_tl223528223865_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223530223860_)))
                                          (_hd223529223863_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223530223860_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223528223865_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223522223849_))
                                              (___match229719229720_
                                               _e223485223740_
                                               _hd223484223743_
                                               _tl223483223745_
                                               _e223488223748_
                                               _hd223487223751_
                                               _tl223486223753_
                                               _e223491223756_
                                               _hd223490223759_
                                               _tl223489223761_
                                               _e223494223764_
                                               _hd223493223767_
                                               _tl223492223769_
                                               _e223497223772_
                                               _hd223496223775_
                                               _tl223495223777_
                                               _e223500223780_
                                               _hd223499223783_
                                               _tl223498223785_
                                               _e223503223788_
                                               _hd223502223791_
                                               _tl223501223793_
                                               _e223506223796_
                                               _hd223505223799_
                                               _tl223504223801_
                                               _e223509223804_
                                               _hd223508223807_
                                               _tl223507223809_
                                               _e223512223812_
                                               _hd223511223815_
                                               _tl223510223817_
                                               _e223515223820_
                                               _hd223514223823_
                                               _tl223513223825_
                                               _e223518223828_
                                               _hd223517223831_
                                               _tl223516223833_
                                               _e223521223836_
                                               _hd223520223839_
                                               _tl223519223841_
                                               _e223524223844_
                                               _hd223523223847_
                                               _tl223522223849_
                                               _e223527223852_
                                               _hd223526223855_
                                               _tl223525223857_
                                               _e223530223860_
                                               _hd223529223863_
                                               _tl223528223865_)
                                              (___kont229590229591_))
                                          (___kont229590229591_))))
                                  (___kont229590229591_))
                              (___kont229590229591_))
                          (___kont229590229591_))))
                  (___kont229590229591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223513223825_))
                                                      (if (let ((__tmp229897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp229897 'bind-method!))
                  (let ((_L223694_ _hd223520223839_)
                        (_L223695_ _hd223511223815_)
                        (_L223696_ _hd223502223791_)
                        (_L223697_ _hd223493223767_))
                    (___kont229588229589_
                     _L223694_
                     _L223695_
                     _L223696_
                     _L223697_))
                  (___kont229590229591_))
              (___kont229590229591_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229590229591_))))
                                      (___kont229590229591_))
                                  (___kont229590229591_))
                              (___kont229590229591_))))
                      (___kont229590229591_))))
              (___kont229590229591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229590229591_))))
                                          (___kont229590229591_))
                                      (___kont229590229591_))
                                  (___kont229590229591_))))
                          (___kont229590229591_))))
                  (___kont229590229591_))
              (___kont229590229591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229590229591_))
                                          (___kont229590229591_))
                                      (___kont229590229591_))))
                              (___kont229590229591_))))
                      (___kont229590229591_))
                  (___kont229590229591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229590229591_))
                                              (___kont229590229591_))
                                          (___kont229590229591_))))
                                  (___kont229590229591_))))
                          (___kont229590229591_))))
                  (___kont229590229591_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx223419_ _id223420_ _new-id223421_)
        (let* ((_g223423223436_
                (lambda (_g223424223433_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223424223433_))))
               (_g223422223469_
                (lambda (_g223424223439_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223424223439_))
                      (let ((_e223428223441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223424223439_))))
                        (let ((_hd223427223444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223428223441_)))
                              (_tl223426223446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223428223441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223426223446_))
                              (let ((_e223431223449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223426223446_))))
                                (let ((_hd223430223452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223431223449_)))
                                      (_tl223429223454_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223431223449_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223429223454_))
                                      ((lambda (_L223457_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L223457_
                                                _id223420_))
                                             (let ((__tmp229898
                                                    (let ((__tmp229899
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id223421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp229899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp229898
                                                _stx223419_))
                                             _stx223419_))
                                       _hd223430223452_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223423223436_ _g223424223439_)))))
                              (let ()
                                (declare (not safe))
                                (_g223423223436_ _g223424223439_)))))
                      (let ()
                        (declare (not safe))
                        (_g223423223436_ _g223424223439_))))))
          (declare (not safe))
          (_g223422223469_ _stx223419_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx223360_ _subst223361_)
        (let* ((_g223363223376_
                (lambda (_g223364223373_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223364223373_))))
               (_g223362223416_
                (lambda (_g223364223379_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223364223379_))
                      (let ((_e223368223381_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223364223379_))))
                        (let ((_hd223367223384_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223368223381_)))
                              (_tl223366223386_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223368223381_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223366223386_))
                              (let ((_e223371223389_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223366223386_))))
                                (let ((_hd223370223392_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223371223389_)))
                                      (_tl223369223394_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223371223389_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223369223394_))
                                      ((lambda (_L223397_)
                                         (let ((_$e223411_
                                                (let ((__tmp229900
                                                       (lambda (_sub223409_)
                                                         (let ((__tmp229901
                                                                (car _sub223409_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L223397_
                                                            __tmp229901)))))
                                                  (declare (not safe))
                                                  (find __tmp229900
                                                        _subst223361_))))
                                           (if _$e223411_
                                               ((lambda (_sub223414_)
                                                  (let ((__tmp229902
                                                         (let ((__tmp229903
                                                                (let ((__tmp229904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub223414_)))
                          (declare (not safe))
                          (cons __tmp229904 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp229903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp229902
                                                     _stx223360_)))
                                                _$e223411_)
                                               _stx223360_)))
                                       _hd223370223392_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223363223376_ _g223364223379_)))))
                              (let ()
                                (declare (not safe))
                                (_g223363223376_ _g223364223379_)))))
                      (let ()
                        (declare (not safe))
                        (_g223363223376_ _g223364223379_))))))
          (declare (not safe))
          (_g223362223416_ _stx223360_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx223288_ _id223289_ _new-id223290_)
        (let* ((_g223292223309_
                (lambda (_g223293223306_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223293223306_))))
               (_g223291223357_
                (lambda (_g223293223312_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223293223312_))
                      (let ((_e223298223314_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223293223312_))))
                        (let ((_hd223297223317_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223298223314_)))
                              (_tl223296223319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223298223314_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223296223319_))
                              (let ((_e223301223322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223296223319_))))
                                (let ((_hd223300223325_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223301223322_)))
                                      (_tl223299223327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223301223322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223299223327_))
                                      (let ((_e223304223330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223299223327_))))
                                        (let ((_hd223303223333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223304223330_)))
                                              (_tl223302223335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223304223330_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223302223335_))
                                              ((lambda (_L223338_ _L223339_)
                                                 (let ((_new-expr223354_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L223338_
                                                           _id223289_
                                                           _new-id223290_)))
                                                       (_new-xid223355_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L223339_
                                                               _id223289_))
                                                            _new-id223290_
                                                            _L223339_)))
                                                   (let ((__tmp229905
                                                          (let ((__tmp229906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229907
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223354_ '()))))
                           (declare (not safe))
                           (cons _new-xid223355_ __tmp229907))))
                    (declare (not safe))
                    (cons '%#set! __tmp229906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229905
                                                      _stx223288_))))
                                               _hd223303223333_
                                               _hd223300223325_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223292223309_
                                                 _g223293223312_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223292223309_ _g223293223312_)))))
                              (let ()
                                (declare (not safe))
                                (_g223292223309_ _g223293223312_)))))
                      (let ()
                        (declare (not safe))
                        (_g223292223309_ _g223293223312_))))))
          (declare (not safe))
          (_g223291223357_ _stx223288_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx223212_ _subst223213_)
        (let* ((_g223215223232_
                (lambda (_g223216223229_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223216223229_))))
               (_g223214223285_
                (lambda (_g223216223235_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223216223235_))
                      (let ((_e223221223237_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223216223235_))))
                        (let ((_hd223220223240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223221223237_)))
                              (_tl223219223242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223221223237_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223219223242_))
                              (let ((_e223224223245_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223219223242_))))
                                (let ((_hd223223223248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223224223245_)))
                                      (_tl223222223250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223224223245_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223222223250_))
                                      (let ((_e223227223253_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223222223250_))))
                                        (let ((_hd223226223256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223227223253_)))
                                              (_tl223225223258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223227223253_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223225223258_))
                                              ((lambda (_L223261_ _L223262_)
                                                 (let ((_new-expr223282_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L223261_
                                                           _subst223213_)))
                                                       (_new-xid223283_
                                                        (let ((_$e223279_
                                                               (let ((__tmp229908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub223277_)
                                (let ((__tmp229909 (car _sub223277_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L223262_
                                   __tmp229909)))))
                         (declare (not safe))
                         (find __tmp229908 _subst223213_))))
                  (if _$e223279_ (cdr _$e223279_) _L223262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp229910
                                                          (let ((__tmp229911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229912
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223282_ '()))))
                           (declare (not safe))
                           (cons _new-xid223283_ __tmp229912))))
                    (declare (not safe))
                    (cons '%#set! __tmp229911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229910
                                                      _stx223212_))))
                                               _hd223226223256_
                                               _hd223223223248_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223215223232_
                                                 _g223216223235_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223215223232_ _g223216223235_)))))
                              (let ()
                                (declare (not safe))
                                (_g223215223232_ _g223216223235_)))))
                      (let ()
                        (declare (not safe))
                        (_g223215223232_ _g223216223235_))))))
          (declare (not safe))
          (_g223214223285_ _stx223212_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx223158_ _ht223159_)
        (let* ((_g223161223174_
                (lambda (_g223162223171_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223162223171_))))
               (_g223160223209_
                (lambda (_g223162223177_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223162223177_))
                      (let ((_e223166223179_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223162223177_))))
                        (let ((_hd223165223182_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223166223179_)))
                              (_tl223164223184_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223166223179_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223164223184_))
                              (let ((_e223169223187_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223164223184_))))
                                (let ((_hd223168223190_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223169223187_)))
                                      (_tl223167223192_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223169223187_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223167223192_))
                                      ((lambda (_L223195_)
                                         (let ((_eid223207_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L223195_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht223159_
                                            _eid223207_
                                            1+
                                            '0)))
                                       _hd223168223190_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223161223174_ _g223162223177_)))))
                              (let ()
                                (declare (not safe))
                                (_g223161223174_ _g223162223177_)))))
                      (let ()
                        (declare (not safe))
                        (_g223161223174_ _g223162223177_))))))
          (declare (not safe))
          (_g223160223209_ _stx223158_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx223088_ _ht223089_)
        (let* ((_g223091223108_
                (lambda (_g223092223105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223092223105_))))
               (_g223090223155_
                (lambda (_g223092223111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223092223111_))
                      (let ((_e223097223113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223092223111_))))
                        (let ((_hd223096223116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223097223113_)))
                              (_tl223095223118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223097223113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223095223118_))
                              (let ((_e223100223121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223095223118_))))
                                (let ((_hd223099223124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223100223121_)))
                                      (_tl223098223126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223100223121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223098223126_))
                                      (let ((_e223103223129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223098223126_))))
                                        (let ((_hd223102223132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223103223129_)))
                                              (_tl223101223134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223103223129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223101223134_))
                                              ((lambda (_L223137_ _L223138_)
                                                 (let ((_eid223153_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223138_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht223089_
                                                      _eid223153_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L223137_
                                                      _ht223089_))))
                                               _hd223102223132_
                                               _hd223099223124_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223091223108_
                                                 _g223092223111_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223091223108_ _g223092223111_)))))
                              (let ()
                                (declare (not safe))
                                (_g223091223108_ _g223092223111_)))))
                      (let ()
                        (declare (not safe))
                        (_g223091223108_ _g223092223111_))))))
          (declare (not safe))
          (_g223090223155_ _stx223088_))))
    (define gxc#find-body%
      (lambda (_stx223001_ _arg223002_)
        (let* ((_g223004223023_
                (lambda (_g223005223020_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223005223020_))))
               (_g223003223085_
                (lambda (_g223005223026_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223005223026_))
                      (let ((_e223009223028_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223005223026_))))
                        (let ((_hd223008223031_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223009223028_)))
                              (_tl223007223033_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223009223028_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl223007223033_))
                              (let ((_g229913_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl223007223033_
                                        '0))))
                                (begin
                                  (let ((_g229914_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229913_)
                                               (##vector-length _g229913_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229914_ 2)))
                                        (error "Context expects 2 values"
                                               _g229914_)))
                                  (let ((_target223010223036_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229913_ 0)))
                                        (_tl223012223038_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229913_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl223012223038_))
                                        (letrec ((_loop223013223041_
                                                  (lambda (_hd223011223044_
                                                           _expr223017223046_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd223011223044_))
                                                        (let ((_e223014223049_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd223011223044_))))
                  (let ((_lp-hd223015223052_
                         (let () (declare (not safe)) (##car _e223014223049_)))
                        (_lp-tl223016223054_
                         (let ()
                           (declare (not safe))
                           (##cdr _e223014223049_))))
                    (let ((__tmp229918
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd223015223052_ _expr223017223046_))))
                      (declare (not safe))
                      (_loop223013223041_ _lp-tl223016223054_ __tmp229918))))
                (let ((_expr223018223057_ (reverse _expr223017223046_)))
                  ((lambda (_L223060_)
                     (let ((__tmp229917
                            (lambda (_g223073223075_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g223073223075_
                                 _arg223002_))))
                           (__tmp229915
                            (let ((__tmp229916
                                   (lambda (_g223077223080_ _g223078223082_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223077223080_
                                             _g223078223082_)))))
                              (declare (not safe))
                              (foldr1 __tmp229916 '() _L223060_))))
                       (declare (not safe))
                       (ormap1 __tmp229917 __tmp229915)))
                   _expr223018223057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop223013223041_
                                             _target223010223036_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g223004223023_
                                           _g223005223026_))))))
                              (let ()
                                (declare (not safe))
                                (_g223004223023_ _g223005223026_)))))
                      (let ()
                        (declare (not safe))
                        (_g223004223023_ _g223005223026_))))))
          (declare (not safe))
          (_g223003223085_ _stx223001_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx222933_ _arg222934_)
        (let* ((_g222936222953_
                (lambda (_g222937222950_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222937222950_))))
               (_g222935222998_
                (lambda (_g222937222956_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222937222956_))
                      (let ((_e222942222958_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222937222956_))))
                        (let ((_hd222941222961_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222942222958_)))
                              (_tl222940222963_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222942222958_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222940222963_))
                              (let ((_e222945222966_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222940222963_))))
                                (let ((_hd222944222969_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222945222966_)))
                                      (_tl222943222971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222945222966_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222943222971_))
                                      (let ((_e222948222974_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222943222971_))))
                                        (let ((_hd222947222977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222948222974_)))
                                              (_tl222946222979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222948222974_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222946222979_))
                                              ((lambda (_L222982_ _L222983_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222982_
                                                    _arg222934_)))
                                               _hd222947222977_
                                               _hd222944222969_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222936222953_
                                                 _g222937222956_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222936222953_ _g222937222956_)))))
                              (let ()
                                (declare (not safe))
                                (_g222936222953_ _g222937222956_)))))
                      (let ()
                        (declare (not safe))
                        (_g222936222953_ _g222937222956_))))))
          (declare (not safe))
          (_g222935222998_ _stx222933_))))
    (define gxc#find-lambda%
      (lambda (_stx222865_ _arg222866_)
        (let* ((_g222868222885_
                (lambda (_g222869222882_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222869222882_))))
               (_g222867222930_
                (lambda (_g222869222888_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222869222888_))
                      (let ((_e222874222890_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222869222888_))))
                        (let ((_hd222873222893_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222874222890_)))
                              (_tl222872222895_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222874222890_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222872222895_))
                              (let ((_e222877222898_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222872222895_))))
                                (let ((_hd222876222901_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222877222898_)))
                                      (_tl222875222903_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222877222898_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222875222903_))
                                      (let ((_e222880222906_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222875222903_))))
                                        (let ((_hd222879222909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222880222906_)))
                                              (_tl222878222911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222880222906_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222878222911_))
                                              ((lambda (_L222914_ _L222915_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222914_
                                                    _arg222866_)))
                                               _hd222879222909_
                                               _hd222876222901_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222868222885_
                                                 _g222869222888_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222868222885_ _g222869222888_)))))
                              (let ()
                                (declare (not safe))
                                (_g222868222885_ _g222869222888_)))))
                      (let ()
                        (declare (not safe))
                        (_g222868222885_ _g222869222888_))))))
          (declare (not safe))
          (_g222867222930_ _stx222865_))))
    (define gxc#find-case-lambda%
      (lambda (_stx222747_ _arg222748_)
        (let* ((_g222750222778_
                (lambda (_g222751222775_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222751222775_))))
               (_g222749222862_
                (lambda (_g222751222781_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222751222781_))
                      (let ((_e222756222783_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222751222781_))))
                        (let ((_hd222755222786_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222756222783_)))
                              (_tl222754222788_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222756222783_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl222754222788_))
                              (let ((_g229919_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl222754222788_
                                        '0))))
                                (begin
                                  (let ((_g229920_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229919_)
                                               (##vector-length _g229919_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229920_ 2)))
                                        (error "Context expects 2 values"
                                               _g229920_)))
                                  (let ((_target222757222791_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229919_ 0)))
                                        (_tl222759222793_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229919_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222759222793_))
                                        (letrec ((_loop222760222796_
                                                  (lambda (_hd222758222799_
                                                           _body222764222801_
                                                           _hd222765222803_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222758222799_))
                                                        (let ((_e222761222806_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222758222799_))))
                  (let ((_lp-hd222762222809_
                         (let () (declare (not safe)) (##car _e222761222806_)))
                        (_lp-tl222763222811_
                         (let ()
                           (declare (not safe))
                           (##cdr _e222761222806_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd222762222809_))
                        (let ((_e222770222814_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd222762222809_))))
                          (let ((_hd222769222817_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222770222814_)))
                                (_tl222768222819_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222770222814_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222768222819_))
                                (let ((_e222773222822_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222768222819_))))
                                  (let ((_hd222772222825_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222773222822_)))
                                        (_tl222771222827_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222773222822_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222771222827_))
                                        (let ((__tmp229925
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222772222825_
                                                       _body222764222801_)))
                                              (__tmp229924
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222769222817_
                                                       _hd222765222803_))))
                                          (declare (not safe))
                                          (_loop222760222796_
                                           _lp-tl222763222811_
                                           __tmp229925
                                           __tmp229924))
                                        (let ()
                                          (declare (not safe))
                                          (_g222750222778_ _g222751222781_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222750222778_ _g222751222781_)))))
                        (let ()
                          (declare (not safe))
                          (_g222750222778_ _g222751222781_)))))
                (let ((_body222766222830_ (reverse _body222764222801_))
                      (_hd222767222832_ (reverse _hd222765222803_)))
                  ((lambda (_L222835_ _L222836_)
                     (let ((__tmp229923
                            (lambda (_g222850222852_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g222850222852_
                                 _arg222748_))))
                           (__tmp229921
                            (let ((__tmp229922
                                   (lambda (_g222854222857_ _g222855222859_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g222854222857_
                                             _g222855222859_)))))
                              (declare (not safe))
                              (foldr1 __tmp229922 '() _L222835_))))
                       (declare (not safe))
                       (ormap1 __tmp229923 __tmp229921)))
                   _body222766222830_
                   _hd222767222832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop222760222796_
                                             _target222757222791_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g222750222778_
                                           _g222751222781_))))))
                              (let ()
                                (declare (not safe))
                                (_g222750222778_ _g222751222781_)))))
                      (let ()
                        (declare (not safe))
                        (_g222750222778_ _g222751222781_))))))
          (declare (not safe))
          (_g222749222862_ _stx222747_))))
    (define gxc#find-let-values%
      (lambda (_stx222597_ _arg222598_)
        (let* ((_g222600222635_
                (lambda (_g222601222632_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222601222632_))))
               (_g222599222744_
                (lambda (_g222601222638_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222601222638_))
                      (let ((_e222607222640_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222601222638_))))
                        (let ((_hd222606222643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222607222640_)))
                              (_tl222605222645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222607222640_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222605222645_))
                              (let ((_e222610222648_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222605222645_))))
                                (let ((_hd222609222651_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222610222648_)))
                                      (_tl222608222653_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222610222648_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222609222651_))
                                      (let ((_g229926_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222609222651_
                                                '0))))
                                        (begin
                                          (let ((_g229927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229926_)
                                                       (##vector-length
                                                        _g229926_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229927_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229927_)))
                                          (let ((_target222611222656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229926_ 0)))
                                                (_tl222613222658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229926_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222613222658_))
                                                (letrec ((_loop222614222661_
                                                          (lambda (_hd222612222664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222618222666_
                           _bind222619222668_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222612222664_))
                        (let ((_e222615222671_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222612222664_))))
                          (let ((_lp-hd222616222674_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222615222671_)))
                                (_lp-tl222617222676_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222615222671_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222616222674_))
                                (let ((_e222624222679_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222616222674_))))
                                  (let ((_hd222623222682_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222624222679_)))
                                        (_tl222622222684_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222624222679_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222622222684_))
                                        (let ((_e222627222687_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222622222684_))))
                                          (let ((_hd222626222690_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222627222687_)))
                                                (_tl222625222692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222627222687_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222625222692_))
                                                (let ((__tmp229932
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222626222690_
                                                               _expr222618222666_)))
                                                      (__tmp229931
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222623222682_
                                                               _bind222619222668_))))
                                                  (declare (not safe))
                                                  (_loop222614222661_
                                                   _lp-tl222617222676_
                                                   __tmp229932
                                                   __tmp229931))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222600222635_
                                                   _g222601222638_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222600222635_ _g222601222638_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222600222635_ _g222601222638_)))))
                        (let ((_expr222620222695_ (reverse _expr222618222666_))
                              (_bind222621222697_
                               (reverse _bind222619222668_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222608222653_))
                              (let ((_e222630222700_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222608222653_))))
                                (let ((_hd222629222703_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222630222700_)))
                                      (_tl222628222705_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222630222700_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222628222705_))
                                      ((lambda (_L222708_ _L222709_ _L222710_)
                                         (let ((_$e222741_
                                                (let ((__tmp229930
                                                       (lambda (_g222729222731_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g222729222731_
                                                            _arg222598_))))
                                                      (__tmp229928
                                                       (let ((__tmp229929
                                                              (lambda (_g222733222736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g222734222738_)
                        (let ()
                          (declare (not safe))
                          (cons _g222733222736_ _g222734222738_)))))
                 (declare (not safe))
                 (foldr1 __tmp229929 '() _L222709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp229930
                                                          __tmp229928))))
                                           (if _$e222741_
                                               _$e222741_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L222708_
                                                  _arg222598_)))))
                                       _hd222629222703_
                                       _expr222620222695_
                                       _bind222621222697_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222600222635_ _g222601222638_)))))
                              (let ()
                                (declare (not safe))
                                (_g222600222635_ _g222601222638_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222614222661_
                                                     _target222611222656_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222600222635_
                                                   _g222601222638_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222600222635_ _g222601222638_)))))
                              (let ()
                                (declare (not safe))
                                (_g222600222635_ _g222601222638_)))))
                      (let ()
                        (declare (not safe))
                        (_g222600222635_ _g222601222638_))))))
          (declare (not safe))
          (_g222599222744_ _stx222597_))))
    (define gxc#find-setq%
      (lambda (_stx222529_ _arg222530_)
        (let* ((_g222532222549_
                (lambda (_g222533222546_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222533222546_))))
               (_g222531222594_
                (lambda (_g222533222552_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222533222552_))
                      (let ((_e222538222554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222533222552_))))
                        (let ((_hd222537222557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222538222554_)))
                              (_tl222536222559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222538222554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222536222559_))
                              (let ((_e222541222562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222536222559_))))
                                (let ((_hd222540222565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222541222562_)))
                                      (_tl222539222567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222541222562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222539222567_))
                                      (let ((_e222544222570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222539222567_))))
                                        (let ((_hd222543222573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222544222570_)))
                                              (_tl222542222575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222544222570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222542222575_))
                                              ((lambda (_L222578_ _L222579_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222578_
                                                    _arg222530_)))
                                               _hd222543222573_
                                               _hd222540222565_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222532222549_
                                                 _g222533222552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222532222549_ _g222533222552_)))))
                              (let ()
                                (declare (not safe))
                                (_g222532222549_ _g222533222552_)))))
                      (let ()
                        (declare (not safe))
                        (_g222532222549_ _g222533222552_))))))
          (declare (not safe))
          (_g222531222594_ _stx222529_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx222473_ _ids222474_)
        (let* ((_g222476222489_
                (lambda (_g222477222486_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222477222486_))))
               (_g222475222526_
                (lambda (_g222477222492_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222477222492_))
                      (let ((_e222481222494_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222477222492_))))
                        (let ((_hd222480222497_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222481222494_)))
                              (_tl222479222499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222481222494_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222479222499_))
                              (let ((_e222484222502_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222479222499_))))
                                (let ((_hd222483222505_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222484222502_)))
                                      (_tl222482222507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222484222502_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222482222507_))
                                      ((lambda (_L222510_)
                                         (let ((__tmp229933
                                                (lambda (_g222521222523_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L222510_
                                                     _g222521222523_)))))
                                           (declare (not safe))
                                           (find __tmp229933 _ids222474_)))
                                       _hd222483222505_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222476222489_ _g222477222492_)))))
                              (let ()
                                (declare (not safe))
                                (_g222476222489_ _g222477222492_)))))
                      (let ()
                        (declare (not safe))
                        (_g222476222489_ _g222477222492_))))))
          (declare (not safe))
          (_g222475222526_ _stx222473_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx222397_ _ids222398_)
        (let* ((_g222400222417_
                (lambda (_g222401222414_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222401222414_))))
               (_g222399222470_
                (lambda (_g222401222420_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222401222420_))
                      (let ((_e222406222422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222401222420_))))
                        (let ((_hd222405222425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222406222422_)))
                              (_tl222404222427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222406222422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222404222427_))
                              (let ((_e222409222430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222404222427_))))
                                (let ((_hd222408222433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222409222430_)))
                                      (_tl222407222435_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222409222430_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222407222435_))
                                      (let ((_e222412222438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222407222435_))))
                                        (let ((_hd222411222441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222412222438_)))
                                              (_tl222410222443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222412222438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222410222443_))
                                              ((lambda (_L222446_ _L222447_)
                                                 (let ((_$e222467_
                                                        (let ((__tmp229934
                                                               (lambda (_g222462222464_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L222447_ _g222462222464_)))))
                  (declare (not safe))
                  (find __tmp229934 _ids222398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e222467_
                                                       _$e222467_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L222446_
                                                          _ids222398_)))))
                                               _hd222411222441_
                                               _hd222408222433_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222400222417_
                                                 _g222401222420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222400222417_ _g222401222420_)))))
                              (let ()
                                (declare (not safe))
                                (_g222400222417_ _g222401222420_)))))
                      (let ()
                        (declare (not safe))
                        (_g222400222417_ _g222401222420_))))))
          (declare (not safe))
          (_g222399222470_ _stx222397_))))))
