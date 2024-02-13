(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707844658)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl225012_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225012_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225012_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225012_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225012_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl225012_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl225008_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225008_ '%#declare gxc#xform-identity))
           _tbl225008_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl225004_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229826 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl225004_ __tmp229826))
           (let ((__tmp229827 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl225004_ __tmp229827))
           _tbl225004_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl225000_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225000_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225000_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl225000_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225000_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl225000_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl225000_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl224996_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229828 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224996_ __tmp229828))
           (let ((__tmp229829 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl224996_ __tmp229829))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224996_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224996_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224996_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl224996_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl224992_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229830 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224992_ __tmp229830))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl224992_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224992_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl224992_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx224975_ . _args224977_)
        (let ((__tmp229832
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224977_)
                     (gxc#compile-e__0 _stx224975_)
                     (let ((_arg1224982_ (car _args224977_))
                           (_rest224984_ (cdr _args224977_)))
                       (if (null? _rest224984_)
                           (gxc#compile-e__1 _stx224975_ _arg1224982_)
                           (let ((_arg2224987_ (car _rest224984_))
                                 (_rest224989_ (cdr _rest224984_)))
                             (if (null? _rest224989_)
                                 (gxc#compile-e__2
                                  _stx224975_
                                  _arg1224982_
                                  _arg2224987_)
                                 (apply gxc#compile-e
                                        _stx224975_
                                        _arg1224982_
                                        _arg2224987_
                                        _rest224989_))))))))
              (__tmp229831 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp229832
           gxc#current-compile-methods
           __tmp229831))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl224972_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229833 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl224972_ __tmp229833))
           (let ()
             (declare (not safe))
             (table-set! _tbl224972_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224972_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224972_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224972_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224972_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl224972_))))
    (define gxc#apply-collect-methods
      (lambda (_stx224955_ . _args224957_)
        (let ((__tmp229835
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224957_)
                     (gxc#compile-e__0 _stx224955_)
                     (let ((_arg1224962_ (car _args224957_))
                           (_rest224964_ (cdr _args224957_)))
                       (if (null? _rest224964_)
                           (gxc#compile-e__1 _stx224955_ _arg1224962_)
                           (let ((_arg2224967_ (car _rest224964_))
                                 (_rest224969_ (cdr _rest224964_)))
                             (if (null? _rest224969_)
                                 (gxc#compile-e__2
                                  _stx224955_
                                  _arg1224962_
                                  _arg2224967_)
                                 (apply gxc#compile-e
                                        _stx224955_
                                        _arg1224962_
                                        _arg2224967_
                                        _rest224969_))))))))
              (__tmp229834 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp229835
           gxc#current-compile-methods
           __tmp229834))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl224952_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229836 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl224952_ __tmp229836))
           (let ()
             (declare (not safe))
             (table-set! _tbl224952_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224952_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224952_ '%#set! gxc#expression-subst-setq%))
           _tbl224952_))))
    (define gxc#apply-expression-subst
      (lambda (_stx224935_ . _args224937_)
        (let ((__tmp229838
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224937_)
                     (gxc#compile-e__0 _stx224935_)
                     (let ((_arg1224942_ (car _args224937_))
                           (_rest224944_ (cdr _args224937_)))
                       (if (null? _rest224944_)
                           (gxc#compile-e__1 _stx224935_ _arg1224942_)
                           (let ((_arg2224947_ (car _rest224944_))
                                 (_rest224949_ (cdr _rest224944_)))
                             (if (null? _rest224949_)
                                 (gxc#compile-e__2
                                  _stx224935_
                                  _arg1224942_
                                  _arg2224947_)
                                 (apply gxc#compile-e
                                        _stx224935_
                                        _arg1224942_
                                        _arg2224947_
                                        _rest224949_))))))))
              (__tmp229837 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp229838
           gxc#current-compile-methods
           __tmp229837))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl224932_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229839 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl224932_ __tmp229839))
           (let ()
             (declare (not safe))
             (table-set! _tbl224932_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224932_ '%#set! gxc#expression-subst*-setq%))
           _tbl224932_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx224915_ . _args224917_)
        (let ((__tmp229841
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224917_)
                     (gxc#compile-e__0 _stx224915_)
                     (let ((_arg1224922_ (car _args224917_))
                           (_rest224924_ (cdr _args224917_)))
                       (if (null? _rest224924_)
                           (gxc#compile-e__1 _stx224915_ _arg1224922_)
                           (let ((_arg2224927_ (car _rest224924_))
                                 (_rest224929_ (cdr _rest224924_)))
                             (if (null? _rest224929_)
                                 (gxc#compile-e__2
                                  _stx224915_
                                  _arg1224922_
                                  _arg2224927_)
                                 (apply gxc#compile-e
                                        _stx224915_
                                        _arg1224922_
                                        _arg2224927_
                                        _rest224929_))))))))
              (__tmp229840 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp229841
           gxc#current-compile-methods
           __tmp229840))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl224912_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229842 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl224912_ __tmp229842))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224912_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl224912_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224912_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl224912_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl224908_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229843 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl224908_ __tmp229843))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224908_ '%#set! gxc#find-var-refs-setq%))
           _tbl224908_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx224891_ . _args224893_)
        (let ((__tmp229845
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224893_)
                     (gxc#compile-e__0 _stx224891_)
                     (let ((_arg1224898_ (car _args224893_))
                           (_rest224900_ (cdr _args224893_)))
                       (if (null? _rest224900_)
                           (gxc#compile-e__1 _stx224891_ _arg1224898_)
                           (let ((_arg2224903_ (car _rest224900_))
                                 (_rest224905_ (cdr _rest224900_)))
                             (if (null? _rest224905_)
                                 (gxc#compile-e__2
                                  _stx224891_
                                  _arg1224898_
                                  _arg2224903_)
                                 (apply gxc#compile-e
                                        _stx224891_
                                        _arg1224898_
                                        _arg2224903_
                                        _rest224905_))))))))
              (__tmp229844 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229845
           gxc#current-compile-methods
           __tmp229844))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl224888_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp229846 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl224888_ __tmp229846))
           (let ()
             (declare (not safe))
             (table-set! _tbl224888_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl224888_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl224888_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx224871_ . _args224873_)
        (let ((__tmp229848
               (lambda ()
                 (declare (not safe))
                 (if (null? _args224873_)
                     (gxc#compile-e__0 _stx224871_)
                     (let ((_arg1224878_ (car _args224873_))
                           (_rest224880_ (cdr _args224873_)))
                       (if (null? _rest224880_)
                           (gxc#compile-e__1 _stx224871_ _arg1224878_)
                           (let ((_arg2224883_ (car _rest224880_))
                                 (_rest224885_ (cdr _rest224880_)))
                             (if (null? _rest224885_)
                                 (gxc#compile-e__2
                                  _stx224871_
                                  _arg1224878_
                                  _arg2224883_)
                                 (apply gxc#compile-e
                                        _stx224871_
                                        _arg1224878_
                                        _arg2224883_
                                        _rest224885_))))))))
              (__tmp229847 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp229848
           gxc#current-compile-methods
           __tmp229847))))
    (define gxc#xform-identity
      (lambda (_stx224868_ . _args224869_) _stx224868_))
    (define gxc#xform-wrap-source
      (lambda (_stx224865_ _src-stx224866_)
        (let ((__tmp229849
               (let () (declare (not safe)) (gx#stx-source _src-stx224866_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx224865_ __tmp229849))))
    (define gxc#xform-apply-compile-e
      (lambda (_args224852_)
        (lambda (_stx224854_)
          (if (let () (declare (not safe)) (null? _args224852_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx224854_))
              (let ((_arg1224856_ (car _args224852_))
                    (_rest224858_ (cdr _args224852_)))
                (if (let () (declare (not safe)) (null? _rest224858_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx224854_ _arg1224856_))
                    (let ((_arg2224861_ (car _rest224858_))
                          (_rest224863_ (cdr _rest224858_)))
                      (if (let () (declare (not safe)) (null? _rest224863_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx224854_
                             _arg1224856_
                             _arg2224861_))
                          (apply gxc#compile-e
                                 _stx224854_
                                 _arg1224856_
                                 _arg2224861_
                                 _rest224863_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx224811_ . _args224812_)
        (let* ((_g224814224824_
                (lambda (_g224815224821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224815224821_))))
               (_g224813224849_
                (lambda (_g224815224827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224815224827_))
                      (let ((_e224819224829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224815224827_))))
                        (let ((_hd224818224832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224819224829_)))
                              (_tl224817224834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224819224829_))))
                          ((lambda (_L224837_)
                             (let* ((_forms224847_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224812_))
                                          _L224837_))
                                    (__tmp229850
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms224847_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229850
                                _stx224811_)))
                           _tl224817224834_)))
                      (let ()
                        (declare (not safe))
                        (_g224814224824_ _g224815224827_))))))
          (declare (not safe))
          (_g224813224849_ _stx224811_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx224769_ . _args224770_)
        (let* ((_g224772224782_
                (lambda (_g224773224779_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224773224779_))))
               (_g224771224808_
                (lambda (_g224773224785_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224773224785_))
                      (let ((_e224777224787_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224773224785_))))
                        (let ((_hd224776224790_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224777224787_)))
                              (_tl224775224792_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224777224787_))))
                          ((lambda (_L224795_)
                             (let ((__tmp229853
                                    (lambda ()
                                      (let* ((_forms224806_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args224770_))
                                                   _L224795_))
                                             (__tmp229854
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms224806_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp229854
                                         _stx224769_))))
                                   (__tmp229851
                                    (let ((__tmp229852
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp229852 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp229853
                                gx#current-expander-phi
                                __tmp229851)))
                           _tl224775224792_)))
                      (let ()
                        (declare (not safe))
                        (_g224772224782_ _g224773224785_))))))
          (declare (not safe))
          (_g224771224808_ _stx224769_))))
    (define gxc#xform-module%
      (lambda (_stx224697_ . _args224698_)
        (let* ((_g224700224714_
                (lambda (_g224701224711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224701224711_))))
               (_g224699224766_
                (lambda (_g224701224717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224701224717_))
                      (let ((_e224706224719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224701224717_))))
                        (let ((_hd224705224722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224706224719_)))
                              (_tl224704224724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224706224719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224704224724_))
                              (let ((_e224709224727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224704224724_))))
                                (let ((_hd224708224730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224709224727_)))
                                      (_tl224707224732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224709224727_))))
                                  ((lambda (_L224735_ _L224736_)
                                     (let* ((_ctx224749_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L224736_)))
                                            (_code224751_
                                             (##structure-ref
                                              _ctx224749_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code224763_
                                             (let ((__tmp229855
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args224698_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code224751_))
                                                          (let ((_arg1224754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args224698_))
                        (_rest224756_ (cdr _args224698_)))
                    (if (let () (declare (not safe)) (null? _rest224756_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code224751_ _arg1224754_))
                        (let ((_arg2224759_ (car _rest224756_))
                              (_rest224761_ (cdr _rest224756_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest224761_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code224751_
                                 _arg1224754_
                                 _arg2224759_))
                              (apply gxc#compile-e
                                     _code224751_
                                     _arg1224754_
                                     _arg2224759_
                                     _rest224761_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp229855
                                                gx#current-expander-context
                                                _ctx224749_))))
                                       (##structure-set!
                                        _ctx224749_
                                        _code224763_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp229856
                                              (let ((__tmp229857
                                                     (let ((__tmp229858
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code224763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L224736_ __tmp229858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp229857))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp229856
                                          _stx224697_))))
                                   _tl224707224732_
                                   _hd224708224730_)))
                              (let ()
                                (declare (not safe))
                                (_g224700224714_ _g224701224717_)))))
                      (let ()
                        (declare (not safe))
                        (_g224700224714_ _g224701224717_))))))
          (declare (not safe))
          (_g224699224766_ _stx224697_))))
    (define gxc#xform-define-values%
      (lambda (_stx224618_ . _args224619_)
        (let* ((_g224621224638_
                (lambda (_g224622224635_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224622224635_))))
               (_g224620224694_
                (lambda (_g224622224641_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224622224641_))
                      (let ((_e224627224643_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224622224641_))))
                        (let ((_hd224626224646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224627224643_)))
                              (_tl224625224648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224627224643_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224625224648_))
                              (let ((_e224630224651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224625224648_))))
                                (let ((_hd224629224654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224630224651_)))
                                      (_tl224628224656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224630224651_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224628224656_))
                                      (let ((_e224633224659_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224628224656_))))
                                        (let ((_hd224632224662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224633224659_)))
                                              (_tl224631224664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224633224659_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224631224664_))
                                              ((lambda (_L224667_ _L224668_)
                                                 (let* ((_expr224692_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224619_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224667_))
                     (let ((_arg1224683_ (car _args224619_))
                           (_rest224685_ (cdr _args224619_)))
                       (if (let () (declare (not safe)) (null? _rest224685_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224667_ _arg1224683_))
                           (let ((_arg2224688_ (car _rest224685_))
                                 (_rest224690_ (cdr _rest224685_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224690_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224667_
                                    _arg1224683_
                                    _arg2224688_))
                                 (apply gxc#compile-e
                                        _L224667_
                                        _arg1224683_
                                        _arg2224688_
                                        _rest224690_)))))))
                (__tmp229859
                 (let ((__tmp229860
                        (let ((__tmp229861
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224692_ '()))))
                          (declare (not safe))
                          (cons _L224668_ __tmp229861))))
                   (declare (not safe))
                   (cons '%#define-values __tmp229860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229859
                                                    _stx224618_)))
                                               _hd224632224662_
                                               _hd224629224654_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224621224638_
                                                 _g224622224641_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224621224638_ _g224622224641_)))))
                              (let ()
                                (declare (not safe))
                                (_g224621224638_ _g224622224641_)))))
                      (let ()
                        (declare (not safe))
                        (_g224621224638_ _g224622224641_))))))
          (declare (not safe))
          (_g224620224694_ _stx224618_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx224538_ . _args224539_)
        (let* ((_g224541224558_
                (lambda (_g224542224555_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224542224555_))))
               (_g224540224615_
                (lambda (_g224542224561_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224542224561_))
                      (let ((_e224547224563_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224542224561_))))
                        (let ((_hd224546224566_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224547224563_)))
                              (_tl224545224568_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224547224563_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224545224568_))
                              (let ((_e224550224571_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224545224568_))))
                                (let ((_hd224549224574_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224550224571_)))
                                      (_tl224548224576_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224550224571_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224548224576_))
                                      (let ((_e224553224579_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224548224576_))))
                                        (let ((_hd224552224582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224553224579_)))
                                              (_tl224551224584_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224553224579_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224551224584_))
                                              ((lambda (_L224587_ _L224588_)
                                                 (let ((__tmp229864
                                                        (lambda ()
                                                          (let* ((_expr224613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args224539_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L224587_))
                              (let ((_arg1224604_ (car _args224539_))
                                    (_rest224606_ (cdr _args224539_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest224606_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L224587_
                                       _arg1224604_))
                                    (let ((_arg2224609_ (car _rest224606_))
                                          (_rest224611_ (cdr _rest224606_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest224611_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L224587_
                                             _arg1224604_
                                             _arg2224609_))
                                          (apply gxc#compile-e
                                                 _L224587_
                                                 _arg1224604_
                                                 _arg2224609_
                                                 _rest224611_)))))))
                         (__tmp229865
                          (let ((__tmp229866
                                 (let ((__tmp229867
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr224613_ '()))))
                                   (declare (not safe))
                                   (cons _L224588_ __tmp229867))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp229866))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp229865 _stx224538_))))
               (__tmp229862
                (let ((__tmp229863 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp229863 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp229864
                                                    gx#current-expander-phi
                                                    __tmp229862)))
                                               _hd224552224582_
                                               _hd224549224574_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224541224558_
                                                 _g224542224561_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224541224558_ _g224542224561_)))))
                              (let ()
                                (declare (not safe))
                                (_g224541224558_ _g224542224561_)))))
                      (let ()
                        (declare (not safe))
                        (_g224541224558_ _g224542224561_))))))
          (declare (not safe))
          (_g224540224615_ _stx224538_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx224459_ . _args224460_)
        (let* ((_g224462224479_
                (lambda (_g224463224476_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224463224476_))))
               (_g224461224535_
                (lambda (_g224463224482_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224463224482_))
                      (let ((_e224468224484_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224463224482_))))
                        (let ((_hd224467224487_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224468224484_)))
                              (_tl224466224489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224468224484_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224466224489_))
                              (let ((_e224471224492_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224466224489_))))
                                (let ((_hd224470224495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224471224492_)))
                                      (_tl224469224497_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224471224492_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl224469224497_))
                                      (let ((_e224474224500_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl224469224497_))))
                                        (let ((_hd224473224503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224474224500_)))
                                              (_tl224472224505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224474224500_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl224472224505_))
                                              ((lambda (_L224508_ _L224509_)
                                                 (let* ((_expr224533_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args224460_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224508_))
                     (let ((_arg1224524_ (car _args224460_))
                           (_rest224526_ (cdr _args224460_)))
                       (if (let () (declare (not safe)) (null? _rest224526_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224508_ _arg1224524_))
                           (let ((_arg2224529_ (car _rest224526_))
                                 (_rest224531_ (cdr _rest224526_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224531_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224508_
                                    _arg1224524_
                                    _arg2224529_))
                                 (apply gxc#compile-e
                                        _L224508_
                                        _arg1224524_
                                        _arg2224529_
                                        _rest224531_)))))))
                (__tmp229868
                 (let ((__tmp229869
                        (let ((__tmp229870
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224533_ '()))))
                          (declare (not safe))
                          (cons _L224509_ __tmp229870))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp229869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229868
                                                    _stx224459_)))
                                               _hd224473224503_
                                               _hd224470224495_)
                                              (let ()
                                                (declare (not safe))
                                                (_g224462224479_
                                                 _g224463224482_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224462224479_ _g224463224482_)))))
                              (let ()
                                (declare (not safe))
                                (_g224462224479_ _g224463224482_)))))
                      (let ()
                        (declare (not safe))
                        (_g224462224479_ _g224463224482_))))))
          (declare (not safe))
          (_g224461224535_ _stx224459_))))
    (define gxc#xform-lambda%
      (lambda (_stx224402_ . _args224403_)
        (let* ((_g224405224419_
                (lambda (_g224406224416_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224406224416_))))
               (_g224404224456_
                (lambda (_g224406224422_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224406224422_))
                      (let ((_e224411224424_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224406224422_))))
                        (let ((_hd224410224427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224411224424_)))
                              (_tl224409224429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224411224424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224409224429_))
                              (let ((_e224414224432_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224409224429_))))
                                (let ((_hd224413224435_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224414224432_)))
                                      (_tl224412224437_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224414224432_))))
                                  ((lambda (_L224440_ _L224441_)
                                     (let* ((_body224454_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args224403_))
                                                  _L224440_))
                                            (__tmp229871
                                             (let ((__tmp229872
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L224441_
                                                            _body224454_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp229872))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp229871
                                        _stx224402_)))
                                   _tl224412224437_
                                   _hd224413224435_)))
                              (let ()
                                (declare (not safe))
                                (_g224405224419_ _g224406224422_)))))
                      (let ()
                        (declare (not safe))
                        (_g224405224419_ _g224406224422_))))))
          (declare (not safe))
          (_g224404224456_ _stx224402_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx224315_ . _args224316_)
        (letrec ((_clause-e224318_
                  (lambda (_clause224359_)
                    (let* ((_g224361224372_
                            (lambda (_g224362224369_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g224362224369_))))
                           (_g224360224399_
                            (lambda (_g224362224375_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g224362224375_))
                                  (let ((_e224367224377_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g224362224375_))))
                                    (let ((_hd224366224380_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e224367224377_)))
                                          (_tl224365224382_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e224367224377_))))
                                      ((lambda (_L224385_ _L224386_)
                                         (let ((_body224397_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args224316_))
                                                     _L224385_)))
                                           (declare (not safe))
                                           (cons _L224386_ _body224397_)))
                                       _tl224365224382_
                                       _hd224366224380_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g224361224372_ _g224362224375_))))))
                      (declare (not safe))
                      (_g224360224399_ _clause224359_)))))
          (let* ((_g224320224330_
                  (lambda (_g224321224327_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g224321224327_))))
                 (_g224319224356_
                  (lambda (_g224321224333_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g224321224333_))
                        (let ((_e224325224335_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g224321224333_))))
                          (let ((_hd224324224338_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224325224335_)))
                                (_tl224323224340_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224325224335_))))
                            ((lambda (_L224343_)
                               (let* ((_clauses224354_
                                       (map _clause-e224318_ _L224343_))
                                      (__tmp229873
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses224354_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp229873
                                  _stx224315_)))
                             _tl224323224340_)))
                        (let ()
                          (declare (not safe))
                          (_g224320224330_ _g224321224333_))))))
            (declare (not safe))
            (_g224319224356_ _stx224315_)))))
    (define gxc#xform-let-values%
      (lambda (_stx224109_ . _args224110_)
        (let* ((_g224112224145_
                (lambda (_g224113224142_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224113224142_))))
               (_g224111224312_
                (lambda (_g224113224148_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224113224148_))
                      (let ((_e224120224150_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224113224148_))))
                        (let ((_hd224119224153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224120224150_)))
                              (_tl224118224155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224120224150_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl224118224155_))
                              (let ((_e224123224158_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl224118224155_))))
                                (let ((_hd224122224161_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e224123224158_)))
                                      (_tl224121224163_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e224123224158_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd224122224161_))
                                      (let ((_g229874_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd224122224161_
                                                '0))))
                                        (begin
                                          (let ((_g229875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229874_)
                                                       (##vector-length
                                                        _g229874_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229875_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229875_)))
                                          (let ((_target224124224166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229874_ 0)))
                                                (_tl224126224168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229874_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224126224168_))
                                                (letrec ((_loop224127224171_
                                                          (lambda (_hd224125224174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr224131224176_
                           _hd224132224178_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd224125224174_))
                        (let ((_e224128224181_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd224125224174_))))
                          (let ((_lp-hd224129224184_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e224128224181_)))
                                (_lp-tl224130224186_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e224128224181_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd224129224184_))
                                (let ((_e224137224189_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd224129224184_))))
                                  (let ((_hd224136224192_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e224137224189_)))
                                        (_tl224135224194_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e224137224189_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl224135224194_))
                                        (let ((_e224140224197_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl224135224194_))))
                                          (let ((_hd224139224200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e224140224197_)))
                                                (_tl224138224202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e224140224197_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl224138224202_))
                                                (let ((__tmp229888
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224139224200_
                                                               _expr224131224176_)))
                                                      (__tmp229887
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd224136224192_
                                                               _hd224132224178_))))
                                                  (declare (not safe))
                                                  (_loop224127224171_
                                                   _lp-tl224130224186_
                                                   __tmp229888
                                                   __tmp229887))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224112224145_
                                                   _g224113224148_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g224112224145_ _g224113224148_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g224112224145_ _g224113224148_)))))
                        (let ((_expr224133224205_ (reverse _expr224131224176_))
                              (_hd224134224207_ (reverse _hd224132224178_)))
                          ((lambda (_L224210_ _L224211_ _L224212_ _L224213_)
                             (let* ((_g224232224248_
                                     (lambda (_g224233224245_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g224233224245_))))
                                    (_g224231224302_
                                     (lambda (_g224233224251_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g224233224251_))
                                           (let ((_g229876_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g224233224251_
                                                     '0))))
                                             (begin
                                               (let ((_g229877_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g229876_)
                                                            (##vector-length
                                                             _g229876_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g229877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g229877_)))
                                               (let ((_target224235224253_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229876_
                                                         0)))
                                                     (_tl224237224255_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g229876_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl224237224255_))
                                                     (letrec ((_loop224238224258_
                                                               (lambda (_hd224236224261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr224242224263_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd224236224261_))
                             (let ((_e224239224266_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd224236224261_))))
                               (let ((_lp-hd224240224269_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e224239224266_)))
                                     (_lp-tl224241224271_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e224239224266_))))
                                 (let ((__tmp229884
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd224240224269_
                                                _expr224242224263_))))
                                   (declare (not safe))
                                   (_loop224238224258_
                                    _lp-tl224241224271_
                                    __tmp229884))))
                             (let ((_expr224243224274_
                                    (reverse _expr224242224263_)))
                               ((lambda (_L224277_)
                                  (let ()
                                    (let* ((_body224290_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args224110_))
                                                 _L224210_))
                                           (__tmp229878
                                            (let ((__tmp229879
                                                   (let ((__tmp229880
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L224277_
                                                               _L224212_))
                                                            (let ((__tmp229881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g224291224295_
                                    _g224292224297_
                                    _g224293224299_)
                             (let ((__tmp229882
                                    (let ((__tmp229883
                                           (let ()
                                             (declare (not safe))
                                             (cons _g224291224295_ '()))))
                                      (declare (not safe))
                                      (cons _g224292224297_ __tmp229883))))
                               (declare (not safe))
                               (cons __tmp229882 _g224293224299_)))))
                      (declare (not safe))
                      (foldr2 __tmp229881 '() _L224277_ _L224212_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp229880
                                                           _body224290_))))
                                              (declare (not safe))
                                              (cons _L224213_ __tmp229879))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp229878
                                       _stx224109_))))
                                _expr224243224274_))))))
               (let ()
                 (declare (not safe))
                 (_loop224238224258_ _target224235224253_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g224232224248_
                                                        _g224233224251_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g224232224248_
                                              _g224233224251_)))))
                                    (__tmp229885
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224110_))
                                          (let ((__tmp229886
                                                 (lambda (_g224304224307_
                                                          _g224305224309_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g224304224307_
                                                           _g224305224309_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp229886
                                                    '()
                                                    _L224211_)))))
                               (declare (not safe))
                               (_g224231224302_ __tmp229885)))
                           _tl224121224163_
                           _expr224133224205_
                           _hd224134224207_
                           _hd224119224153_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop224127224171_
                                                     _target224124224166_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g224112224145_
                                                   _g224113224148_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g224112224145_ _g224113224148_)))))
                              (let ()
                                (declare (not safe))
                                (_g224112224145_ _g224113224148_)))))
                      (let ()
                        (declare (not safe))
                        (_g224112224145_ _g224113224148_))))))
          (declare (not safe))
          (_g224111224312_ _stx224109_))))
    (define gxc#xform-operands
      (lambda (_stx224065_ . _args224066_)
        (let* ((_g224068224079_
                (lambda (_g224069224076_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g224069224076_))))
               (_g224067224106_
                (lambda (_g224069224082_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g224069224082_))
                      (let ((_e224074224084_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g224069224082_))))
                        (let ((_hd224073224087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e224074224084_)))
                              (_tl224072224089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e224074224084_))))
                          ((lambda (_L224092_ _L224093_)
                             (let* ((_rands224104_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args224066_))
                                          _L224092_))
                                    (__tmp229889
                                     (let ()
                                       (declare (not safe))
                                       (cons _L224093_ _rands224104_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp229889
                                _stx224065_)))
                           _tl224072224089_
                           _hd224073224087_)))
                      (let ()
                        (declare (not safe))
                        (_g224068224079_ _g224069224082_))))))
          (declare (not safe))
          (_g224067224106_ _stx224065_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx223986_ . _args223987_)
        (let* ((_g223989224006_
                (lambda (_g223990224003_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223990224003_))))
               (_g223988224062_
                (lambda (_g223990224009_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223990224009_))
                      (let ((_e223995224011_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223990224009_))))
                        (let ((_hd223994224014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223995224011_)))
                              (_tl223993224016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223995224011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223993224016_))
                              (let ((_e223998224019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223993224016_))))
                                (let ((_hd223997224022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223998224019_)))
                                      (_tl223996224024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223998224019_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223996224024_))
                                      (let ((_e224001224027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223996224024_))))
                                        (let ((_hd224000224030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e224001224027_)))
                                              (_tl223999224032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e224001224027_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223999224032_))
                                              ((lambda (_L224035_ _L224036_)
                                                 (let* ((_expr224060_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223987_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L224035_))
                     (let ((_arg1224051_ (car _args223987_))
                           (_rest224053_ (cdr _args223987_)))
                       (if (let () (declare (not safe)) (null? _rest224053_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L224035_ _arg1224051_))
                           (let ((_arg2224056_ (car _rest224053_))
                                 (_rest224058_ (cdr _rest224053_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest224058_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L224035_
                                    _arg1224051_
                                    _arg2224056_))
                                 (apply gxc#compile-e
                                        _L224035_
                                        _arg1224051_
                                        _arg2224056_
                                        _rest224058_)))))))
                (__tmp229890
                 (let ((__tmp229891
                        (let ((__tmp229892
                               (let ()
                                 (declare (not safe))
                                 (cons _expr224060_ '()))))
                          (declare (not safe))
                          (cons _L224036_ __tmp229892))))
                   (declare (not safe))
                   (cons '%#set! __tmp229891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp229890
                                                    _stx223986_)))
                                               _hd224000224030_
                                               _hd223997224022_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223989224006_
                                                 _g223990224009_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223989224006_ _g223990224009_)))))
                              (let ()
                                (declare (not safe))
                                (_g223989224006_ _g223990224009_)))))
                      (let ()
                        (declare (not safe))
                        (_g223989224006_ _g223990224009_))))))
          (declare (not safe))
          (_g223988224062_ _stx223986_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx223917_)
        (let* ((_g223919223936_
                (lambda (_g223920223933_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223920223933_))))
               (_g223918223983_
                (lambda (_g223920223939_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223920223939_))
                      (let ((_e223925223941_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223920223939_))))
                        (let ((_hd223924223944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223925223941_)))
                              (_tl223923223946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223925223941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223923223946_))
                              (let ((_e223928223949_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223923223946_))))
                                (let ((_hd223927223952_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223928223949_)))
                                      (_tl223926223954_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223928223949_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223926223954_))
                                      (let ((_e223931223957_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223926223954_))))
                                        (let ((_hd223930223960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223931223957_)))
                                              (_tl223929223962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223931223957_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223929223962_))
                                              ((lambda (_L223965_ _L223966_)
                                                 (let ((_sym223981_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223966_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym223981_))
                                                   (let ((__tmp229893
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp229893
                                                      _sym223981_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L223965_))))
                                               _hd223930223960_
                                               _hd223927223952_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223919223936_
                                                 _g223920223939_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223919223936_ _g223920223939_)))))
                              (let ()
                                (declare (not safe))
                                (_g223919223936_ _g223920223939_)))))
                      (let ()
                        (declare (not safe))
                        (_g223919223936_ _g223920223939_))))))
          (declare (not safe))
          (_g223918223983_ _stx223917_))))
    (define gxc#collect-methods-call%
      (lambda (_stx223471_)
        (let* ((___stx229583229584_ _stx223471_)
               (_g223475223577_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx229583229584_)))))
          (let ((___kont229585229586_
                 (lambda (_L223867_ _L223868_ _L223869_ _L223870_ _L223871_)
                   (let ((__tmp229894
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223868_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229894))))
                (___kont229587229588_
                 (lambda (_L223693_ _L223694_ _L223695_ _L223696_)
                   (let ((__tmp229895
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L223693_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp229895))))
                (___kont229589229590_ (lambda () '#!void)))
            (let ((___match229718229719_
                   (lambda (_e223484223739_
                            _hd223483223742_
                            _tl223482223744_
                            _e223487223747_
                            _hd223486223750_
                            _tl223485223752_
                            _e223490223755_
                            _hd223489223758_
                            _tl223488223760_
                            _e223493223763_
                            _hd223492223766_
                            _tl223491223768_
                            _e223496223771_
                            _hd223495223774_
                            _tl223494223776_
                            _e223499223779_
                            _hd223498223782_
                            _tl223497223784_
                            _e223502223787_
                            _hd223501223790_
                            _tl223500223792_
                            _e223505223795_
                            _hd223504223798_
                            _tl223503223800_
                            _e223508223803_
                            _hd223507223806_
                            _tl223506223808_
                            _e223511223811_
                            _hd223510223814_
                            _tl223509223816_
                            _e223514223819_
                            _hd223513223822_
                            _tl223512223824_
                            _e223517223827_
                            _hd223516223830_
                            _tl223515223832_
                            _e223520223835_
                            _hd223519223838_
                            _tl223518223840_
                            _e223523223843_
                            _hd223522223846_
                            _tl223521223848_
                            _e223526223851_
                            _hd223525223854_
                            _tl223524223856_
                            _e223529223859_
                            _hd223528223862_
                            _tl223527223864_)
                     (let ((_L223867_ _hd223528223862_)
                           (_L223868_ _hd223519223838_)
                           (_L223869_ _hd223510223814_)
                           (_L223870_ _hd223501223790_)
                           (_L223871_ _hd223492223766_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L223871_
                              'bind-method!))
                           (___kont229585229586_
                            _L223867_
                            _L223868_
                            _L223869_
                            _L223870_
                            _L223871_)
                           (___kont229589229590_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx229583229584_))
                  (let ((_e223484223739_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx229583229584_))))
                    (let ((_tl223482223744_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223484223739_)))
                          (_hd223483223742_
                           (let ()
                             (declare (not safe))
                             (##car _e223484223739_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl223482223744_))
                          (let ((_e223487223747_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl223482223744_))))
                            (let ((_tl223485223752_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223487223747_)))
                                  (_hd223486223750_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223487223747_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd223486223750_))
                                  (let ((_e223490223755_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd223486223750_))))
                                    (let ((_tl223488223760_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223490223755_)))
                                          (_hd223489223758_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223490223755_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd223489223758_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd223489223758_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223488223760_))
                                                  (let ((_e223493223763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223488223760_))))
                                                    (let ((_tl223491223768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223493223763_)))
                                                          (_hd223492223766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223493223763_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl223491223768_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl223485223752_))
                      (let ((_e223496223771_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl223485223752_))))
                        (let ((_tl223494223776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223496223771_)))
                              (_hd223495223774_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223496223771_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd223495223774_))
                              (let ((_e223499223779_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd223495223774_))))
                                (let ((_tl223497223784_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223499223779_)))
                                      (_hd223498223782_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223499223779_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd223498223782_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd223498223782_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl223497223784_))
                                              (let ((_e223502223787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl223497223784_))))
                                                (let ((_tl223500223792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e223502223787_)))
                                                      (_hd223501223790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e223502223787_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223500223792_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl223494223776_))
                                                          (let ((_e223505223795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl223494223776_))))
                    (let ((_tl223503223800_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223505223795_)))
                          (_hd223504223798_
                           (let ()
                             (declare (not safe))
                             (##car _e223505223795_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd223504223798_))
                          (let ((_e223508223803_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd223504223798_))))
                            (let ((_tl223506223808_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e223508223803_)))
                                  (_hd223507223806_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e223508223803_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd223507223806_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd223507223806_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl223506223808_))
                                          (let ((_e223511223811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl223506223808_))))
                                            (let ((_tl223509223816_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e223511223811_)))
                                                  (_hd223510223814_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e223511223811_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl223509223816_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl223503223800_))
                                                      (let ((_e223514223819_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl223503223800_))))
                (let ((_tl223512223824_
                       (let () (declare (not safe)) (##cdr _e223514223819_)))
                      (_hd223513223822_
                       (let () (declare (not safe)) (##car _e223514223819_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd223513223822_))
                      (let ((_e223517223827_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd223513223822_))))
                        (let ((_tl223515223832_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223517223827_)))
                              (_hd223516223830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223517223827_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd223516223830_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd223516223830_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223515223832_))
                                      (let ((_e223520223835_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223515223832_))))
                                        (let ((_tl223518223840_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223520223835_)))
                                              (_hd223519223838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223520223835_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223518223840_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl223512223824_))
                                                  (let ((_e223523223843_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl223512223824_))))
                                                    (let ((_tl223521223848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e223523223843_)))
                                                          (_hd223522223846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e223523223843_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd223522223846_))
                                                          (let ((_e223526223851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd223522223846_))))
                    (let ((_tl223524223856_
                           (let ()
                             (declare (not safe))
                             (##cdr _e223526223851_)))
                          (_hd223525223854_
                           (let ()
                             (declare (not safe))
                             (##car _e223526223851_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd223525223854_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd223525223854_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl223524223856_))
                                  (let ((_e223529223859_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl223524223856_))))
                                    (let ((_tl223527223864_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e223529223859_)))
                                          (_hd223528223862_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e223529223859_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl223527223864_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223521223848_))
                                              (___match229718229719_
                                               _e223484223739_
                                               _hd223483223742_
                                               _tl223482223744_
                                               _e223487223747_
                                               _hd223486223750_
                                               _tl223485223752_
                                               _e223490223755_
                                               _hd223489223758_
                                               _tl223488223760_
                                               _e223493223763_
                                               _hd223492223766_
                                               _tl223491223768_
                                               _e223496223771_
                                               _hd223495223774_
                                               _tl223494223776_
                                               _e223499223779_
                                               _hd223498223782_
                                               _tl223497223784_
                                               _e223502223787_
                                               _hd223501223790_
                                               _tl223500223792_
                                               _e223505223795_
                                               _hd223504223798_
                                               _tl223503223800_
                                               _e223508223803_
                                               _hd223507223806_
                                               _tl223506223808_
                                               _e223511223811_
                                               _hd223510223814_
                                               _tl223509223816_
                                               _e223514223819_
                                               _hd223513223822_
                                               _tl223512223824_
                                               _e223517223827_
                                               _hd223516223830_
                                               _tl223515223832_
                                               _e223520223835_
                                               _hd223519223838_
                                               _tl223518223840_
                                               _e223523223843_
                                               _hd223522223846_
                                               _tl223521223848_
                                               _e223526223851_
                                               _hd223525223854_
                                               _tl223524223856_
                                               _e223529223859_
                                               _hd223528223862_
                                               _tl223527223864_)
                                              (___kont229589229590_))
                                          (___kont229589229590_))))
                                  (___kont229589229590_))
                              (___kont229589229590_))
                          (___kont229589229590_))))
                  (___kont229589229590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl223512223824_))
                                                      (if (let ((__tmp229896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp229896 'bind-method!))
                  (let ((_L223693_ _hd223519223838_)
                        (_L223694_ _hd223510223814_)
                        (_L223695_ _hd223501223790_)
                        (_L223696_ _hd223492223766_))
                    (___kont229587229588_
                     _L223693_
                     _L223694_
                     _L223695_
                     _L223696_))
                  (___kont229589229590_))
              (___kont229589229590_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229589229590_))))
                                      (___kont229589229590_))
                                  (___kont229589229590_))
                              (___kont229589229590_))))
                      (___kont229589229590_))))
              (___kont229589229590_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229589229590_))))
                                          (___kont229589229590_))
                                      (___kont229589229590_))
                                  (___kont229589229590_))))
                          (___kont229589229590_))))
                  (___kont229589229590_))
              (___kont229589229590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont229589229590_))
                                          (___kont229589229590_))
                                      (___kont229589229590_))))
                              (___kont229589229590_))))
                      (___kont229589229590_))
                  (___kont229589229590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont229589229590_))
                                              (___kont229589229590_))
                                          (___kont229589229590_))))
                                  (___kont229589229590_))))
                          (___kont229589229590_))))
                  (___kont229589229590_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx223418_ _id223419_ _new-id223420_)
        (let* ((_g223422223435_
                (lambda (_g223423223432_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223423223432_))))
               (_g223421223468_
                (lambda (_g223423223438_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223423223438_))
                      (let ((_e223427223440_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223423223438_))))
                        (let ((_hd223426223443_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223427223440_)))
                              (_tl223425223445_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223427223440_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223425223445_))
                              (let ((_e223430223448_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223425223445_))))
                                (let ((_hd223429223451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223430223448_)))
                                      (_tl223428223453_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223430223448_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223428223453_))
                                      ((lambda (_L223456_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L223456_
                                                _id223419_))
                                             (let ((__tmp229897
                                                    (let ((__tmp229898
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id223420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp229898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp229897
                                                _stx223418_))
                                             _stx223418_))
                                       _hd223429223451_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223422223435_ _g223423223438_)))))
                              (let ()
                                (declare (not safe))
                                (_g223422223435_ _g223423223438_)))))
                      (let ()
                        (declare (not safe))
                        (_g223422223435_ _g223423223438_))))))
          (declare (not safe))
          (_g223421223468_ _stx223418_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx223359_ _subst223360_)
        (let* ((_g223362223375_
                (lambda (_g223363223372_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223363223372_))))
               (_g223361223415_
                (lambda (_g223363223378_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223363223378_))
                      (let ((_e223367223380_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223363223378_))))
                        (let ((_hd223366223383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223367223380_)))
                              (_tl223365223385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223367223380_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223365223385_))
                              (let ((_e223370223388_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223365223385_))))
                                (let ((_hd223369223391_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223370223388_)))
                                      (_tl223368223393_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223370223388_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223368223393_))
                                      ((lambda (_L223396_)
                                         (let ((_$e223410_
                                                (let ((__tmp229899
                                                       (lambda (_sub223408_)
                                                         (let ((__tmp229900
                                                                (car _sub223408_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L223396_
                                                            __tmp229900)))))
                                                  (declare (not safe))
                                                  (find __tmp229899
                                                        _subst223360_))))
                                           (if _$e223410_
                                               ((lambda (_sub223413_)
                                                  (let ((__tmp229901
                                                         (let ((__tmp229902
                                                                (let ((__tmp229903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub223413_)))
                          (declare (not safe))
                          (cons __tmp229903 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp229902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp229901
                                                     _stx223359_)))
                                                _$e223410_)
                                               _stx223359_)))
                                       _hd223369223391_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223362223375_ _g223363223378_)))))
                              (let ()
                                (declare (not safe))
                                (_g223362223375_ _g223363223378_)))))
                      (let ()
                        (declare (not safe))
                        (_g223362223375_ _g223363223378_))))))
          (declare (not safe))
          (_g223361223415_ _stx223359_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx223287_ _id223288_ _new-id223289_)
        (let* ((_g223291223308_
                (lambda (_g223292223305_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223292223305_))))
               (_g223290223356_
                (lambda (_g223292223311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223292223311_))
                      (let ((_e223297223313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223292223311_))))
                        (let ((_hd223296223316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223297223313_)))
                              (_tl223295223318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223297223313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223295223318_))
                              (let ((_e223300223321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223295223318_))))
                                (let ((_hd223299223324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223300223321_)))
                                      (_tl223298223326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223300223321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223298223326_))
                                      (let ((_e223303223329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223298223326_))))
                                        (let ((_hd223302223332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223303223329_)))
                                              (_tl223301223334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223303223329_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223301223334_))
                                              ((lambda (_L223337_ _L223338_)
                                                 (let ((_new-expr223353_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L223337_
                                                           _id223288_
                                                           _new-id223289_)))
                                                       (_new-xid223354_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L223338_
                                                               _id223288_))
                                                            _new-id223289_
                                                            _L223338_)))
                                                   (let ((__tmp229904
                                                          (let ((__tmp229905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229906
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223353_ '()))))
                           (declare (not safe))
                           (cons _new-xid223354_ __tmp229906))))
                    (declare (not safe))
                    (cons '%#set! __tmp229905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229904
                                                      _stx223287_))))
                                               _hd223302223332_
                                               _hd223299223324_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223291223308_
                                                 _g223292223311_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223291223308_ _g223292223311_)))))
                              (let ()
                                (declare (not safe))
                                (_g223291223308_ _g223292223311_)))))
                      (let ()
                        (declare (not safe))
                        (_g223291223308_ _g223292223311_))))))
          (declare (not safe))
          (_g223290223356_ _stx223287_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx223211_ _subst223212_)
        (let* ((_g223214223231_
                (lambda (_g223215223228_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223215223228_))))
               (_g223213223284_
                (lambda (_g223215223234_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223215223234_))
                      (let ((_e223220223236_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223215223234_))))
                        (let ((_hd223219223239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223220223236_)))
                              (_tl223218223241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223220223236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223218223241_))
                              (let ((_e223223223244_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223218223241_))))
                                (let ((_hd223222223247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223223223244_)))
                                      (_tl223221223249_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223223223244_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223221223249_))
                                      (let ((_e223226223252_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223221223249_))))
                                        (let ((_hd223225223255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223226223252_)))
                                              (_tl223224223257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223226223252_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223224223257_))
                                              ((lambda (_L223260_ _L223261_)
                                                 (let ((_new-expr223281_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L223260_
                                                           _subst223212_)))
                                                       (_new-xid223282_
                                                        (let ((_$e223278_
                                                               (let ((__tmp229907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub223276_)
                                (let ((__tmp229908 (car _sub223276_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L223261_
                                   __tmp229908)))))
                         (declare (not safe))
                         (find __tmp229907 _subst223212_))))
                  (if _$e223278_ (cdr _$e223278_) _L223261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp229909
                                                          (let ((__tmp229910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp229911
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr223281_ '()))))
                           (declare (not safe))
                           (cons _new-xid223282_ __tmp229911))))
                    (declare (not safe))
                    (cons '%#set! __tmp229910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp229909
                                                      _stx223211_))))
                                               _hd223225223255_
                                               _hd223222223247_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223214223231_
                                                 _g223215223234_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223214223231_ _g223215223234_)))))
                              (let ()
                                (declare (not safe))
                                (_g223214223231_ _g223215223234_)))))
                      (let ()
                        (declare (not safe))
                        (_g223214223231_ _g223215223234_))))))
          (declare (not safe))
          (_g223213223284_ _stx223211_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx223157_ _ht223158_)
        (let* ((_g223160223173_
                (lambda (_g223161223170_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223161223170_))))
               (_g223159223208_
                (lambda (_g223161223176_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223161223176_))
                      (let ((_e223165223178_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223161223176_))))
                        (let ((_hd223164223181_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223165223178_)))
                              (_tl223163223183_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223165223178_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223163223183_))
                              (let ((_e223168223186_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223163223183_))))
                                (let ((_hd223167223189_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223168223186_)))
                                      (_tl223166223191_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223168223186_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl223166223191_))
                                      ((lambda (_L223194_)
                                         (let ((_eid223206_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L223194_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht223158_
                                            _eid223206_
                                            1+
                                            '0)))
                                       _hd223167223189_)
                                      (let ()
                                        (declare (not safe))
                                        (_g223160223173_ _g223161223176_)))))
                              (let ()
                                (declare (not safe))
                                (_g223160223173_ _g223161223176_)))))
                      (let ()
                        (declare (not safe))
                        (_g223160223173_ _g223161223176_))))))
          (declare (not safe))
          (_g223159223208_ _stx223157_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx223087_ _ht223088_)
        (let* ((_g223090223107_
                (lambda (_g223091223104_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223091223104_))))
               (_g223089223154_
                (lambda (_g223091223110_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223091223110_))
                      (let ((_e223096223112_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223091223110_))))
                        (let ((_hd223095223115_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223096223112_)))
                              (_tl223094223117_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223096223112_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223094223117_))
                              (let ((_e223099223120_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223094223117_))))
                                (let ((_hd223098223123_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223099223120_)))
                                      (_tl223097223125_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223099223120_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223097223125_))
                                      (let ((_e223102223128_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223097223125_))))
                                        (let ((_hd223101223131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223102223128_)))
                                              (_tl223100223133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223102223128_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223100223133_))
                                              ((lambda (_L223136_ _L223137_)
                                                 (let ((_eid223152_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L223137_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht223088_
                                                      _eid223152_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L223136_
                                                      _ht223088_))))
                                               _hd223101223131_
                                               _hd223098223123_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223090223107_
                                                 _g223091223110_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223090223107_ _g223091223110_)))))
                              (let ()
                                (declare (not safe))
                                (_g223090223107_ _g223091223110_)))))
                      (let ()
                        (declare (not safe))
                        (_g223090223107_ _g223091223110_))))))
          (declare (not safe))
          (_g223089223154_ _stx223087_))))
    (define gxc#find-body%
      (lambda (_stx223000_ _arg223001_)
        (let* ((_g223003223022_
                (lambda (_g223004223019_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223004223019_))))
               (_g223002223084_
                (lambda (_g223004223025_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223004223025_))
                      (let ((_e223008223027_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223004223025_))))
                        (let ((_hd223007223030_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223008223027_)))
                              (_tl223006223032_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223008223027_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl223006223032_))
                              (let ((_g229912_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl223006223032_
                                        '0))))
                                (begin
                                  (let ((_g229913_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229912_)
                                               (##vector-length _g229912_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229913_ 2)))
                                        (error "Context expects 2 values"
                                               _g229913_)))
                                  (let ((_target223009223035_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229912_ 0)))
                                        (_tl223011223037_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229912_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl223011223037_))
                                        (letrec ((_loop223012223040_
                                                  (lambda (_hd223010223043_
                                                           _expr223016223045_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd223010223043_))
                                                        (let ((_e223013223048_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd223010223043_))))
                  (let ((_lp-hd223014223051_
                         (let () (declare (not safe)) (##car _e223013223048_)))
                        (_lp-tl223015223053_
                         (let ()
                           (declare (not safe))
                           (##cdr _e223013223048_))))
                    (let ((__tmp229917
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd223014223051_ _expr223016223045_))))
                      (declare (not safe))
                      (_loop223012223040_ _lp-tl223015223053_ __tmp229917))))
                (let ((_expr223017223056_ (reverse _expr223016223045_)))
                  ((lambda (_L223059_)
                     (let ((__tmp229916
                            (lambda (_g223072223074_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g223072223074_
                                 _arg223001_))))
                           (__tmp229914
                            (let ((__tmp229915
                                   (lambda (_g223076223079_ _g223077223081_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g223076223079_
                                             _g223077223081_)))))
                              (declare (not safe))
                              (foldr1 __tmp229915 '() _L223059_))))
                       (declare (not safe))
                       (ormap1 __tmp229916 __tmp229914)))
                   _expr223017223056_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop223012223040_
                                             _target223009223035_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g223003223022_
                                           _g223004223025_))))))
                              (let ()
                                (declare (not safe))
                                (_g223003223022_ _g223004223025_)))))
                      (let ()
                        (declare (not safe))
                        (_g223003223022_ _g223004223025_))))))
          (declare (not safe))
          (_g223002223084_ _stx223000_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx222932_ _arg222933_)
        (let* ((_g222935222952_
                (lambda (_g222936222949_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222936222949_))))
               (_g222934222997_
                (lambda (_g222936222955_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222936222955_))
                      (let ((_e222941222957_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222936222955_))))
                        (let ((_hd222940222960_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222941222957_)))
                              (_tl222939222962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222941222957_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222939222962_))
                              (let ((_e222944222965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222939222962_))))
                                (let ((_hd222943222968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222944222965_)))
                                      (_tl222942222970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222944222965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222942222970_))
                                      (let ((_e222947222973_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222942222970_))))
                                        (let ((_hd222946222976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222947222973_)))
                                              (_tl222945222978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222947222973_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222945222978_))
                                              ((lambda (_L222981_ _L222982_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222981_
                                                    _arg222933_)))
                                               _hd222946222976_
                                               _hd222943222968_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222935222952_
                                                 _g222936222955_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222935222952_ _g222936222955_)))))
                              (let ()
                                (declare (not safe))
                                (_g222935222952_ _g222936222955_)))))
                      (let ()
                        (declare (not safe))
                        (_g222935222952_ _g222936222955_))))))
          (declare (not safe))
          (_g222934222997_ _stx222932_))))
    (define gxc#find-lambda%
      (lambda (_stx222864_ _arg222865_)
        (let* ((_g222867222884_
                (lambda (_g222868222881_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222868222881_))))
               (_g222866222929_
                (lambda (_g222868222887_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222868222887_))
                      (let ((_e222873222889_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222868222887_))))
                        (let ((_hd222872222892_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222873222889_)))
                              (_tl222871222894_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222873222889_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222871222894_))
                              (let ((_e222876222897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222871222894_))))
                                (let ((_hd222875222900_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222876222897_)))
                                      (_tl222874222902_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222876222897_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222874222902_))
                                      (let ((_e222879222905_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222874222902_))))
                                        (let ((_hd222878222908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222879222905_)))
                                              (_tl222877222910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222879222905_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222877222910_))
                                              ((lambda (_L222913_ _L222914_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222913_
                                                    _arg222865_)))
                                               _hd222878222908_
                                               _hd222875222900_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222867222884_
                                                 _g222868222887_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222867222884_ _g222868222887_)))))
                              (let ()
                                (declare (not safe))
                                (_g222867222884_ _g222868222887_)))))
                      (let ()
                        (declare (not safe))
                        (_g222867222884_ _g222868222887_))))))
          (declare (not safe))
          (_g222866222929_ _stx222864_))))
    (define gxc#find-case-lambda%
      (lambda (_stx222746_ _arg222747_)
        (let* ((_g222749222777_
                (lambda (_g222750222774_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222750222774_))))
               (_g222748222861_
                (lambda (_g222750222780_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222750222780_))
                      (let ((_e222755222782_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222750222780_))))
                        (let ((_hd222754222785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222755222782_)))
                              (_tl222753222787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222755222782_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl222753222787_))
                              (let ((_g229918_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl222753222787_
                                        '0))))
                                (begin
                                  (let ((_g229919_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229918_)
                                               (##vector-length _g229918_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229919_ 2)))
                                        (error "Context expects 2 values"
                                               _g229919_)))
                                  (let ((_target222756222790_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229918_ 0)))
                                        (_tl222758222792_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g229918_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222758222792_))
                                        (letrec ((_loop222759222795_
                                                  (lambda (_hd222757222798_
                                                           _body222763222800_
                                                           _hd222764222802_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd222757222798_))
                                                        (let ((_e222760222805_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd222757222798_))))
                  (let ((_lp-hd222761222808_
                         (let () (declare (not safe)) (##car _e222760222805_)))
                        (_lp-tl222762222810_
                         (let ()
                           (declare (not safe))
                           (##cdr _e222760222805_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd222761222808_))
                        (let ((_e222769222813_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd222761222808_))))
                          (let ((_hd222768222816_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222769222813_)))
                                (_tl222767222818_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222769222813_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl222767222818_))
                                (let ((_e222772222821_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl222767222818_))))
                                  (let ((_hd222771222824_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222772222821_)))
                                        (_tl222770222826_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222772222821_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl222770222826_))
                                        (let ((__tmp229924
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222771222824_
                                                       _body222763222800_)))
                                              (__tmp229923
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd222768222816_
                                                       _hd222764222802_))))
                                          (declare (not safe))
                                          (_loop222759222795_
                                           _lp-tl222762222810_
                                           __tmp229924
                                           __tmp229923))
                                        (let ()
                                          (declare (not safe))
                                          (_g222749222777_ _g222750222780_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222749222777_ _g222750222780_)))))
                        (let ()
                          (declare (not safe))
                          (_g222749222777_ _g222750222780_)))))
                (let ((_body222765222829_ (reverse _body222763222800_))
                      (_hd222766222831_ (reverse _hd222764222802_)))
                  ((lambda (_L222834_ _L222835_)
                     (let ((__tmp229922
                            (lambda (_g222849222851_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g222849222851_
                                 _arg222747_))))
                           (__tmp229920
                            (let ((__tmp229921
                                   (lambda (_g222853222856_ _g222854222858_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g222853222856_
                                             _g222854222858_)))))
                              (declare (not safe))
                              (foldr1 __tmp229921 '() _L222834_))))
                       (declare (not safe))
                       (ormap1 __tmp229922 __tmp229920)))
                   _body222765222829_
                   _hd222766222831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop222759222795_
                                             _target222756222790_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g222749222777_
                                           _g222750222780_))))))
                              (let ()
                                (declare (not safe))
                                (_g222749222777_ _g222750222780_)))))
                      (let ()
                        (declare (not safe))
                        (_g222749222777_ _g222750222780_))))))
          (declare (not safe))
          (_g222748222861_ _stx222746_))))
    (define gxc#find-let-values%
      (lambda (_stx222596_ _arg222597_)
        (let* ((_g222599222634_
                (lambda (_g222600222631_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222600222631_))))
               (_g222598222743_
                (lambda (_g222600222637_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222600222637_))
                      (let ((_e222606222639_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222600222637_))))
                        (let ((_hd222605222642_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222606222639_)))
                              (_tl222604222644_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222606222639_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222604222644_))
                              (let ((_e222609222647_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222604222644_))))
                                (let ((_hd222608222650_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222609222647_)))
                                      (_tl222607222652_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222609222647_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222608222650_))
                                      (let ((_g229925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222608222650_
                                                '0))))
                                        (begin
                                          (let ((_g229926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229925_)
                                                       (##vector-length
                                                        _g229925_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229926_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229926_)))
                                          (let ((_target222610222655_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g229925_ 0)))
                                                (_tl222612222657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g229925_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222612222657_))
                                                (letrec ((_loop222613222660_
                                                          (lambda (_hd222611222663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222617222665_
                           _bind222618222667_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222611222663_))
                        (let ((_e222614222670_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222611222663_))))
                          (let ((_lp-hd222615222673_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222614222670_)))
                                (_lp-tl222616222675_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222614222670_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222615222673_))
                                (let ((_e222623222678_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222615222673_))))
                                  (let ((_hd222622222681_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222623222678_)))
                                        (_tl222621222683_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222623222678_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222621222683_))
                                        (let ((_e222626222686_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222621222683_))))
                                          (let ((_hd222625222689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222626222686_)))
                                                (_tl222624222691_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222626222686_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222624222691_))
                                                (let ((__tmp229931
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222625222689_
                                                               _expr222617222665_)))
                                                      (__tmp229930
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222622222681_
                                                               _bind222618222667_))))
                                                  (declare (not safe))
                                                  (_loop222613222660_
                                                   _lp-tl222616222675_
                                                   __tmp229931
                                                   __tmp229930))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222599222634_
                                                   _g222600222637_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222599222634_ _g222600222637_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222599222634_ _g222600222637_)))))
                        (let ((_expr222619222694_ (reverse _expr222617222665_))
                              (_bind222620222696_
                               (reverse _bind222618222667_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222607222652_))
                              (let ((_e222629222699_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222607222652_))))
                                (let ((_hd222628222702_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222629222699_)))
                                      (_tl222627222704_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222629222699_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222627222704_))
                                      ((lambda (_L222707_ _L222708_ _L222709_)
                                         (let ((_$e222740_
                                                (let ((__tmp229929
                                                       (lambda (_g222728222730_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g222728222730_
                                                            _arg222597_))))
                                                      (__tmp229927
                                                       (let ((__tmp229928
                                                              (lambda (_g222732222735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g222733222737_)
                        (let ()
                          (declare (not safe))
                          (cons _g222732222735_ _g222733222737_)))))
                 (declare (not safe))
                 (foldr1 __tmp229928 '() _L222708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp229929
                                                          __tmp229927))))
                                           (if _$e222740_
                                               _$e222740_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L222707_
                                                  _arg222597_)))))
                                       _hd222628222702_
                                       _expr222619222694_
                                       _bind222620222696_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222599222634_ _g222600222637_)))))
                              (let ()
                                (declare (not safe))
                                (_g222599222634_ _g222600222637_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222613222660_
                                                     _target222610222655_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222599222634_
                                                   _g222600222637_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222599222634_ _g222600222637_)))))
                              (let ()
                                (declare (not safe))
                                (_g222599222634_ _g222600222637_)))))
                      (let ()
                        (declare (not safe))
                        (_g222599222634_ _g222600222637_))))))
          (declare (not safe))
          (_g222598222743_ _stx222596_))))
    (define gxc#find-setq%
      (lambda (_stx222528_ _arg222529_)
        (let* ((_g222531222548_
                (lambda (_g222532222545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222532222545_))))
               (_g222530222593_
                (lambda (_g222532222551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222532222551_))
                      (let ((_e222537222553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222532222551_))))
                        (let ((_hd222536222556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222537222553_)))
                              (_tl222535222558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222537222553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222535222558_))
                              (let ((_e222540222561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222535222558_))))
                                (let ((_hd222539222564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222540222561_)))
                                      (_tl222538222566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222540222561_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222538222566_))
                                      (let ((_e222543222569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222538222566_))))
                                        (let ((_hd222542222572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222543222569_)))
                                              (_tl222541222574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222543222569_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222541222574_))
                                              ((lambda (_L222577_ _L222578_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L222577_
                                                    _arg222529_)))
                                               _hd222542222572_
                                               _hd222539222564_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222531222548_
                                                 _g222532222551_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222531222548_ _g222532222551_)))))
                              (let ()
                                (declare (not safe))
                                (_g222531222548_ _g222532222551_)))))
                      (let ()
                        (declare (not safe))
                        (_g222531222548_ _g222532222551_))))))
          (declare (not safe))
          (_g222530222593_ _stx222528_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx222472_ _ids222473_)
        (let* ((_g222475222488_
                (lambda (_g222476222485_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222476222485_))))
               (_g222474222525_
                (lambda (_g222476222491_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222476222491_))
                      (let ((_e222480222493_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222476222491_))))
                        (let ((_hd222479222496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222480222493_)))
                              (_tl222478222498_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222480222493_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222478222498_))
                              (let ((_e222483222501_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222478222498_))))
                                (let ((_hd222482222504_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222483222501_)))
                                      (_tl222481222506_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222483222501_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222481222506_))
                                      ((lambda (_L222509_)
                                         (let ((__tmp229932
                                                (lambda (_g222520222522_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L222509_
                                                     _g222520222522_)))))
                                           (declare (not safe))
                                           (find __tmp229932 _ids222473_)))
                                       _hd222482222504_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222475222488_ _g222476222491_)))))
                              (let ()
                                (declare (not safe))
                                (_g222475222488_ _g222476222491_)))))
                      (let ()
                        (declare (not safe))
                        (_g222475222488_ _g222476222491_))))))
          (declare (not safe))
          (_g222474222525_ _stx222472_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx222396_ _ids222397_)
        (let* ((_g222399222416_
                (lambda (_g222400222413_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222400222413_))))
               (_g222398222469_
                (lambda (_g222400222419_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222400222419_))
                      (let ((_e222405222421_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222400222419_))))
                        (let ((_hd222404222424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222405222421_)))
                              (_tl222403222426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222405222421_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222403222426_))
                              (let ((_e222408222429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222403222426_))))
                                (let ((_hd222407222432_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222408222429_)))
                                      (_tl222406222434_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222408222429_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222406222434_))
                                      (let ((_e222411222437_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222406222434_))))
                                        (let ((_hd222410222440_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222411222437_)))
                                              (_tl222409222442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222411222437_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222409222442_))
                                              ((lambda (_L222445_ _L222446_)
                                                 (let ((_$e222466_
                                                        (let ((__tmp229933
                                                               (lambda (_g222461222463_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L222446_ _g222461222463_)))))
                  (declare (not safe))
                  (find __tmp229933 _ids222397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e222466_
                                                       _$e222466_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L222445_
                                                          _ids222397_)))))
                                               _hd222410222440_
                                               _hd222407222432_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222399222416_
                                                 _g222400222419_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222399222416_ _g222400222419_)))))
                              (let ()
                                (declare (not safe))
                                (_g222399222416_ _g222400222419_)))))
                      (let ()
                        (declare (not safe))
                        (_g222399222416_ _g222400222419_))))))
          (declare (not safe))
          (_g222398222469_ _stx222396_))))))
