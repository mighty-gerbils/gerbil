(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709994214)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl118162_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118162_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118162_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118162_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118162_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl118162_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl118158_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118158_ '%#declare gxc#xform-identity))
           _tbl118158_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl118154_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118408 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl118154_ __tmp118408))
           (let ((__tmp118409 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl118154_ __tmp118409))
           _tbl118154_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl118150_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118150_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118150_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118150_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118150_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118150_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl118150_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl118146_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118410 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl118146_ __tmp118410))
           (let ((__tmp118411 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl118146_ __tmp118411))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118146_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118146_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118146_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118146_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118146_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl118146_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl118142_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118412 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl118142_ __tmp118412))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118142_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118142_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl118142_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx118125_ . _args118127_)
        (let ((__tmp118414
               (lambda ()
                 (declare (not safe))
                 (if (null? _args118127_)
                     (gxc#compile-e__0 _stx118125_)
                     (let ((_arg1118132_ (car _args118127_))
                           (_rest118134_ (cdr _args118127_)))
                       (if (null? _rest118134_)
                           (gxc#compile-e__1 _stx118125_ _arg1118132_)
                           (let ((_arg2118137_ (car _rest118134_))
                                 (_rest118139_ (cdr _rest118134_)))
                             (if (null? _rest118139_)
                                 (gxc#compile-e__2
                                  _stx118125_
                                  _arg1118132_
                                  _arg2118137_)
                                 (apply gxc#compile-e
                                        _stx118125_
                                        _arg1118132_
                                        _arg2118137_
                                        _rest118139_))))))))
              (__tmp118413 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp118414
           gxc#current-compile-methods
           __tmp118413))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl118122_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118415 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl118122_ __tmp118415))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118122_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118122_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118122_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118122_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118122_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl118122_))))
    (define gxc#apply-collect-methods
      (lambda (_stx118105_ . _args118107_)
        (let ((__tmp118417
               (lambda ()
                 (declare (not safe))
                 (if (null? _args118107_)
                     (gxc#compile-e__0 _stx118105_)
                     (let ((_arg1118112_ (car _args118107_))
                           (_rest118114_ (cdr _args118107_)))
                       (if (null? _rest118114_)
                           (gxc#compile-e__1 _stx118105_ _arg1118112_)
                           (let ((_arg2118117_ (car _rest118114_))
                                 (_rest118119_ (cdr _rest118114_)))
                             (if (null? _rest118119_)
                                 (gxc#compile-e__2
                                  _stx118105_
                                  _arg1118112_
                                  _arg2118117_)
                                 (apply gxc#compile-e
                                        _stx118105_
                                        _arg1118112_
                                        _arg2118117_
                                        _rest118119_))))))))
              (__tmp118416 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp118417
           gxc#current-compile-methods
           __tmp118416))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl118102_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118418 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl118102_ __tmp118418))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118102_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118102_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118102_ '%#set! gxc#expression-subst-setq%))
           _tbl118102_))))
    (define gxc#apply-expression-subst
      (lambda (_stx118085_ . _args118087_)
        (let ((__tmp118420
               (lambda ()
                 (declare (not safe))
                 (if (null? _args118087_)
                     (gxc#compile-e__0 _stx118085_)
                     (let ((_arg1118092_ (car _args118087_))
                           (_rest118094_ (cdr _args118087_)))
                       (if (null? _rest118094_)
                           (gxc#compile-e__1 _stx118085_ _arg1118092_)
                           (let ((_arg2118097_ (car _rest118094_))
                                 (_rest118099_ (cdr _rest118094_)))
                             (if (null? _rest118099_)
                                 (gxc#compile-e__2
                                  _stx118085_
                                  _arg1118092_
                                  _arg2118097_)
                                 (apply gxc#compile-e
                                        _stx118085_
                                        _arg1118092_
                                        _arg2118097_
                                        _rest118099_))))))))
              (__tmp118419 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp118420
           gxc#current-compile-methods
           __tmp118419))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl118082_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118421 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl118082_ __tmp118421))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118082_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118082_ '%#set! gxc#expression-subst*-setq%))
           _tbl118082_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx118065_ . _args118067_)
        (let ((__tmp118423
               (lambda ()
                 (declare (not safe))
                 (if (null? _args118067_)
                     (gxc#compile-e__0 _stx118065_)
                     (let ((_arg1118072_ (car _args118067_))
                           (_rest118074_ (cdr _args118067_)))
                       (if (null? _rest118074_)
                           (gxc#compile-e__1 _stx118065_ _arg1118072_)
                           (let ((_arg2118077_ (car _rest118074_))
                                 (_rest118079_ (cdr _rest118074_)))
                             (if (null? _rest118079_)
                                 (gxc#compile-e__2
                                  _stx118065_
                                  _arg1118072_
                                  _arg2118077_)
                                 (apply gxc#compile-e
                                        _stx118065_
                                        _arg1118072_
                                        _arg2118077_
                                        _rest118079_))))))))
              (__tmp118422 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp118423
           gxc#current-compile-methods
           __tmp118422))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl118062_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118424 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl118062_ __tmp118424))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl118062_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118062_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl118062_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl118058_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118425 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl118058_ __tmp118425))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118058_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118058_ '%#set! gxc#find-var-refs-setq%))
           _tbl118058_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx118041_ . _args118043_)
        (let ((__tmp118427
               (lambda ()
                 (declare (not safe))
                 (if (null? _args118043_)
                     (gxc#compile-e__0 _stx118041_)
                     (let ((_arg1118048_ (car _args118043_))
                           (_rest118050_ (cdr _args118043_)))
                       (if (null? _rest118050_)
                           (gxc#compile-e__1 _stx118041_ _arg1118048_)
                           (let ((_arg2118053_ (car _rest118050_))
                                 (_rest118055_ (cdr _rest118050_)))
                             (if (null? _rest118055_)
                                 (gxc#compile-e__2
                                  _stx118041_
                                  _arg1118048_
                                  _arg2118053_)
                                 (apply gxc#compile-e
                                        _stx118041_
                                        _arg1118048_
                                        _arg2118053_
                                        _rest118055_))))))))
              (__tmp118426 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118427
           gxc#current-compile-methods
           __tmp118426))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl118038_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp118428 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl118038_ __tmp118428))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118038_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl118038_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl118038_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx118021_ . _args118023_)
        (let ((__tmp118430
               (lambda ()
                 (declare (not safe))
                 (if (null? _args118023_)
                     (gxc#compile-e__0 _stx118021_)
                     (let ((_arg1118028_ (car _args118023_))
                           (_rest118030_ (cdr _args118023_)))
                       (if (null? _rest118030_)
                           (gxc#compile-e__1 _stx118021_ _arg1118028_)
                           (let ((_arg2118033_ (car _rest118030_))
                                 (_rest118035_ (cdr _rest118030_)))
                             (if (null? _rest118035_)
                                 (gxc#compile-e__2
                                  _stx118021_
                                  _arg1118028_
                                  _arg2118033_)
                                 (apply gxc#compile-e
                                        _stx118021_
                                        _arg1118028_
                                        _arg2118033_
                                        _rest118035_))))))))
              (__tmp118429 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp118430
           gxc#current-compile-methods
           __tmp118429))))
    (define gxc#xform-identity
      (lambda (_stx118018_ . _args118019_) _stx118018_))
    (define gxc#xform-wrap-source
      (lambda (_stx118015_ _src-stx118016_)
        (let ((__tmp118431
               (let () (declare (not safe)) (gx#stx-source _src-stx118016_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx118015_ __tmp118431))))
    (define gxc#xform-apply-compile-e
      (lambda (_args118002_)
        (lambda (_stx118004_)
          (if (let () (declare (not safe)) (null? _args118002_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx118004_))
              (let ((_arg1118006_ (car _args118002_))
                    (_rest118008_ (cdr _args118002_)))
                (if (let () (declare (not safe)) (null? _rest118008_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx118004_ _arg1118006_))
                    (let ((_arg2118011_ (car _rest118008_))
                          (_rest118013_ (cdr _rest118008_)))
                      (if (let () (declare (not safe)) (null? _rest118013_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx118004_
                             _arg1118006_
                             _arg2118011_))
                          (apply gxc#compile-e
                                 _stx118004_
                                 _arg1118006_
                                 _arg2118011_
                                 _rest118013_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117961_ . _args117962_)
        (let* ((_g117964117974_
                (lambda (_g117965117971_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117965117971_))))
               (_g117963117999_
                (lambda (_g117965117977_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117965117977_))
                      (let ((_e117969117979_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117965117977_))))
                        (let ((_hd117968117982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117969117979_)))
                              (_tl117967117984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117969117979_))))
                          ((lambda (_L117987_)
                             (let* ((_forms117997_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117962_))
                                          _L117987_))
                                    (__tmp118432
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117997_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118432
                                _stx117961_)))
                           _tl117967117984_)))
                      (let ()
                        (declare (not safe))
                        (_g117964117974_ _g117965117977_))))))
          (declare (not safe))
          (_g117963117999_ _stx117961_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx117919_ . _args117920_)
        (let* ((_g117922117932_
                (lambda (_g117923117929_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117923117929_))))
               (_g117921117958_
                (lambda (_g117923117935_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117923117935_))
                      (let ((_e117927117937_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117923117935_))))
                        (let ((_hd117926117940_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117927117937_)))
                              (_tl117925117942_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117927117937_))))
                          ((lambda (_L117945_)
                             (let ((__tmp118435
                                    (lambda ()
                                      (let* ((_forms117956_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args117920_))
                                                   _L117945_))
                                             (__tmp118436
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117956_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp118436
                                         _stx117919_))))
                                   (__tmp118433
                                    (let ((__tmp118434
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp118434 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp118435
                                gx#current-expander-phi
                                __tmp118433)))
                           _tl117925117942_)))
                      (let ()
                        (declare (not safe))
                        (_g117922117932_ _g117923117935_))))))
          (declare (not safe))
          (_g117921117958_ _stx117919_))))
    (define gxc#xform-module%
      (lambda (_stx117847_ . _args117848_)
        (let* ((_g117850117864_
                (lambda (_g117851117861_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117851117861_))))
               (_g117849117916_
                (lambda (_g117851117867_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117851117867_))
                      (let ((_e117856117869_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117851117867_))))
                        (let ((_hd117855117872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117856117869_)))
                              (_tl117854117874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117856117869_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117854117874_))
                              (let ((_e117859117877_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117854117874_))))
                                (let ((_hd117858117880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117859117877_)))
                                      (_tl117857117882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117859117877_))))
                                  ((lambda (_L117885_ _L117886_)
                                     (let* ((_ctx117899_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L117886_)))
                                            (_code117901_
                                             (##structure-ref
                                              _ctx117899_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code117913_
                                             (let ((__tmp118437
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args117848_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code117901_))
                                                          (let ((_arg1117904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args117848_))
                        (_rest117906_ (cdr _args117848_)))
                    (if (let () (declare (not safe)) (null? _rest117906_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code117901_ _arg1117904_))
                        (let ((_arg2117909_ (car _rest117906_))
                              (_rest117911_ (cdr _rest117906_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest117911_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code117901_
                                 _arg1117904_
                                 _arg2117909_))
                              (apply gxc#compile-e
                                     _code117901_
                                     _arg1117904_
                                     _arg2117909_
                                     _rest117911_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp118437
                                                gx#current-expander-context
                                                _ctx117899_))))
                                       (##structure-set!
                                        _ctx117899_
                                        _code117913_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp118438
                                              (let ((__tmp118439
                                                     (let ((__tmp118440
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code117913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L117886_ __tmp118440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp118439))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp118438
                                          _stx117847_))))
                                   _tl117857117882_
                                   _hd117858117880_)))
                              (let ()
                                (declare (not safe))
                                (_g117850117864_ _g117851117867_)))))
                      (let ()
                        (declare (not safe))
                        (_g117850117864_ _g117851117867_))))))
          (declare (not safe))
          (_g117849117916_ _stx117847_))))
    (define gxc#xform-define-values%
      (lambda (_stx117768_ . _args117769_)
        (let* ((_g117771117788_
                (lambda (_g117772117785_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117772117785_))))
               (_g117770117844_
                (lambda (_g117772117791_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117772117791_))
                      (let ((_e117777117793_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117772117791_))))
                        (let ((_hd117776117796_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117777117793_)))
                              (_tl117775117798_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117777117793_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117775117798_))
                              (let ((_e117780117801_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117775117798_))))
                                (let ((_hd117779117804_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117780117801_)))
                                      (_tl117778117806_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117780117801_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117778117806_))
                                      (let ((_e117783117809_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117778117806_))))
                                        (let ((_hd117782117812_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117783117809_)))
                                              (_tl117781117814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117783117809_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117781117814_))
                                              ((lambda (_L117817_ _L117818_)
                                                 (let* ((_expr117842_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117769_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117817_))
                     (let ((_arg1117833_ (car _args117769_))
                           (_rest117835_ (cdr _args117769_)))
                       (if (let () (declare (not safe)) (null? _rest117835_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117817_ _arg1117833_))
                           (let ((_arg2117838_ (car _rest117835_))
                                 (_rest117840_ (cdr _rest117835_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117840_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117817_
                                    _arg1117833_
                                    _arg2117838_))
                                 (apply gxc#compile-e
                                        _L117817_
                                        _arg1117833_
                                        _arg2117838_
                                        _rest117840_)))))))
                (__tmp118441
                 (let ((__tmp118442
                        (let ((__tmp118443
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117842_ '()))))
                          (declare (not safe))
                          (cons _L117818_ __tmp118443))))
                   (declare (not safe))
                   (cons '%#define-values __tmp118442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118441
                                                    _stx117768_)))
                                               _hd117782117812_
                                               _hd117779117804_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117771117788_
                                                 _g117772117791_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117771117788_ _g117772117791_)))))
                              (let ()
                                (declare (not safe))
                                (_g117771117788_ _g117772117791_)))))
                      (let ()
                        (declare (not safe))
                        (_g117771117788_ _g117772117791_))))))
          (declare (not safe))
          (_g117770117844_ _stx117768_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx117688_ . _args117689_)
        (let* ((_g117691117708_
                (lambda (_g117692117705_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117692117705_))))
               (_g117690117765_
                (lambda (_g117692117711_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117692117711_))
                      (let ((_e117697117713_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117692117711_))))
                        (let ((_hd117696117716_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117697117713_)))
                              (_tl117695117718_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117697117713_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117695117718_))
                              (let ((_e117700117721_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117695117718_))))
                                (let ((_hd117699117724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117700117721_)))
                                      (_tl117698117726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117700117721_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117698117726_))
                                      (let ((_e117703117729_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117698117726_))))
                                        (let ((_hd117702117732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117703117729_)))
                                              (_tl117701117734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117703117729_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117701117734_))
                                              ((lambda (_L117737_ _L117738_)
                                                 (let ((__tmp118446
                                                        (lambda ()
                                                          (let* ((_expr117763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args117689_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L117737_))
                              (let ((_arg1117754_ (car _args117689_))
                                    (_rest117756_ (cdr _args117689_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest117756_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L117737_
                                       _arg1117754_))
                                    (let ((_arg2117759_ (car _rest117756_))
                                          (_rest117761_ (cdr _rest117756_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest117761_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L117737_
                                             _arg1117754_
                                             _arg2117759_))
                                          (apply gxc#compile-e
                                                 _L117737_
                                                 _arg1117754_
                                                 _arg2117759_
                                                 _rest117761_)))))))
                         (__tmp118447
                          (let ((__tmp118448
                                 (let ((__tmp118449
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr117763_ '()))))
                                   (declare (not safe))
                                   (cons _L117738_ __tmp118449))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp118448))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp118447 _stx117688_))))
               (__tmp118444
                (let ((__tmp118445 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp118445 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp118446
                                                    gx#current-expander-phi
                                                    __tmp118444)))
                                               _hd117702117732_
                                               _hd117699117724_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117691117708_
                                                 _g117692117711_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117691117708_ _g117692117711_)))))
                              (let ()
                                (declare (not safe))
                                (_g117691117708_ _g117692117711_)))))
                      (let ()
                        (declare (not safe))
                        (_g117691117708_ _g117692117711_))))))
          (declare (not safe))
          (_g117690117765_ _stx117688_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx117609_ . _args117610_)
        (let* ((_g117612117629_
                (lambda (_g117613117626_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117613117626_))))
               (_g117611117685_
                (lambda (_g117613117632_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117613117632_))
                      (let ((_e117618117634_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117613117632_))))
                        (let ((_hd117617117637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117618117634_)))
                              (_tl117616117639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117618117634_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117616117639_))
                              (let ((_e117621117642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117616117639_))))
                                (let ((_hd117620117645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117621117642_)))
                                      (_tl117619117647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117621117642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117619117647_))
                                      (let ((_e117624117650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117619117647_))))
                                        (let ((_hd117623117653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117624117650_)))
                                              (_tl117622117655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117624117650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117622117655_))
                                              ((lambda (_L117658_ _L117659_)
                                                 (let* ((_expr117683_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117610_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117658_))
                     (let ((_arg1117674_ (car _args117610_))
                           (_rest117676_ (cdr _args117610_)))
                       (if (let () (declare (not safe)) (null? _rest117676_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117658_ _arg1117674_))
                           (let ((_arg2117679_ (car _rest117676_))
                                 (_rest117681_ (cdr _rest117676_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117681_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117658_
                                    _arg1117674_
                                    _arg2117679_))
                                 (apply gxc#compile-e
                                        _L117658_
                                        _arg1117674_
                                        _arg2117679_
                                        _rest117681_)))))))
                (__tmp118450
                 (let ((__tmp118451
                        (let ((__tmp118452
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117683_ '()))))
                          (declare (not safe))
                          (cons _L117659_ __tmp118452))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp118451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118450
                                                    _stx117609_)))
                                               _hd117623117653_
                                               _hd117620117645_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117612117629_
                                                 _g117613117632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117612117629_ _g117613117632_)))))
                              (let ()
                                (declare (not safe))
                                (_g117612117629_ _g117613117632_)))))
                      (let ()
                        (declare (not safe))
                        (_g117612117629_ _g117613117632_))))))
          (declare (not safe))
          (_g117611117685_ _stx117609_))))
    (define gxc#xform-lambda%
      (lambda (_stx117552_ . _args117553_)
        (let* ((_g117555117569_
                (lambda (_g117556117566_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117556117566_))))
               (_g117554117606_
                (lambda (_g117556117572_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117556117572_))
                      (let ((_e117561117574_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117556117572_))))
                        (let ((_hd117560117577_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117561117574_)))
                              (_tl117559117579_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117561117574_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117559117579_))
                              (let ((_e117564117582_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117559117579_))))
                                (let ((_hd117563117585_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117564117582_)))
                                      (_tl117562117587_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117564117582_))))
                                  ((lambda (_L117590_ _L117591_)
                                     (let* ((_body117604_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args117553_))
                                                  _L117590_))
                                            (__tmp118453
                                             (let ((__tmp118454
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L117591_
                                                            _body117604_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp118454))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp118453
                                        _stx117552_)))
                                   _tl117562117587_
                                   _hd117563117585_)))
                              (let ()
                                (declare (not safe))
                                (_g117555117569_ _g117556117572_)))))
                      (let ()
                        (declare (not safe))
                        (_g117555117569_ _g117556117572_))))))
          (declare (not safe))
          (_g117554117606_ _stx117552_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx117465_ . _args117466_)
        (letrec ((_clause-e117468_
                  (lambda (_clause117509_)
                    (let* ((_g117511117522_
                            (lambda (_g117512117519_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g117512117519_))))
                           (_g117510117549_
                            (lambda (_g117512117525_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g117512117525_))
                                  (let ((_e117517117527_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g117512117525_))))
                                    (let ((_hd117516117530_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117517117527_)))
                                          (_tl117515117532_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117517117527_))))
                                      ((lambda (_L117535_ _L117536_)
                                         (let ((_body117547_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args117466_))
                                                     _L117535_)))
                                           (declare (not safe))
                                           (cons _L117536_ _body117547_)))
                                       _tl117515117532_
                                       _hd117516117530_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117511117522_ _g117512117525_))))))
                      (declare (not safe))
                      (_g117510117549_ _clause117509_)))))
          (let* ((_g117470117480_
                  (lambda (_g117471117477_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g117471117477_))))
                 (_g117469117506_
                  (lambda (_g117471117483_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g117471117483_))
                        (let ((_e117475117485_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g117471117483_))))
                          (let ((_hd117474117488_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117475117485_)))
                                (_tl117473117490_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117475117485_))))
                            ((lambda (_L117493_)
                               (let* ((_clauses117504_
                                       (map _clause-e117468_ _L117493_))
                                      (__tmp118455
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses117504_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp118455
                                  _stx117465_)))
                             _tl117473117490_)))
                        (let ()
                          (declare (not safe))
                          (_g117470117480_ _g117471117483_))))))
            (declare (not safe))
            (_g117469117506_ _stx117465_)))))
    (define gxc#xform-let-values%
      (lambda (_stx117259_ . _args117260_)
        (let* ((_g117262117295_
                (lambda (_g117263117292_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117263117292_))))
               (_g117261117462_
                (lambda (_g117263117298_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117263117298_))
                      (let ((_e117270117300_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117263117298_))))
                        (let ((_hd117269117303_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117270117300_)))
                              (_tl117268117305_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117270117300_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117268117305_))
                              (let ((_e117273117308_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117268117305_))))
                                (let ((_hd117272117311_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117273117308_)))
                                      (_tl117271117313_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117273117308_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd117272117311_))
                                      (let ((_g118456_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd117272117311_
                                                '0))))
                                        (begin
                                          (let ((_g118457_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118456_)
                                                       (##vector-length
                                                        _g118456_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118457_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118457_)))
                                          (let ((_target117274117316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118456_ 0)))
                                                (_tl117276117318_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118456_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117276117318_))
                                                (letrec ((_loop117277117321_
                                                          (lambda (_hd117275117324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr117281117326_
                           _hd117282117328_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117275117324_))
                        (let ((_e117278117331_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117275117324_))))
                          (let ((_lp-hd117279117334_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117278117331_)))
                                (_lp-tl117280117336_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117278117331_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd117279117334_))
                                (let ((_e117287117339_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd117279117334_))))
                                  (let ((_hd117286117342_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e117287117339_)))
                                        (_tl117285117344_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e117287117339_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl117285117344_))
                                        (let ((_e117290117347_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl117285117344_))))
                                          (let ((_hd117289117350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e117290117347_)))
                                                (_tl117288117352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e117290117347_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl117288117352_))
                                                (let ((__tmp118470
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117289117350_
                                                               _expr117281117326_)))
                                                      (__tmp118469
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd117286117342_
                                                               _hd117282117328_))))
                                                  (declare (not safe))
                                                  (_loop117277117321_
                                                   _lp-tl117280117336_
                                                   __tmp118470
                                                   __tmp118469))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117262117295_
                                                   _g117263117298_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g117262117295_ _g117263117298_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g117262117295_ _g117263117298_)))))
                        (let ((_expr117283117355_ (reverse _expr117281117326_))
                              (_hd117284117357_ (reverse _hd117282117328_)))
                          ((lambda (_L117360_ _L117361_ _L117362_ _L117363_)
                             (let* ((_g117382117398_
                                     (lambda (_g117383117395_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g117383117395_))))
                                    (_g117381117452_
                                     (lambda (_g117383117401_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g117383117401_))
                                           (let ((_g118458_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g117383117401_
                                                     '0))))
                                             (begin
                                               (let ((_g118459_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g118458_)
                                                            (##vector-length
                                                             _g118458_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g118459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g118459_)))
                                               (let ((_target117385117403_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118458_
                                                         0)))
                                                     (_tl117387117405_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g118458_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117387117405_))
                                                     (letrec ((_loop117388117408_
                                                               (lambda (_hd117386117411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr117392117413_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd117386117411_))
                             (let ((_e117389117416_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd117386117411_))))
                               (let ((_lp-hd117390117419_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e117389117416_)))
                                     (_lp-tl117391117421_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e117389117416_))))
                                 (let ((__tmp118466
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd117390117419_
                                                _expr117392117413_))))
                                   (declare (not safe))
                                   (_loop117388117408_
                                    _lp-tl117391117421_
                                    __tmp118466))))
                             (let ((_expr117393117424_
                                    (reverse _expr117392117413_)))
                               ((lambda (_L117427_)
                                  (let ()
                                    (let* ((_body117440_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args117260_))
                                                 _L117360_))
                                           (__tmp118460
                                            (let ((__tmp118461
                                                   (let ((__tmp118462
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L117427_
                                                               _L117362_))
                                                            (let ((__tmp118463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g117441117445_
                                    _g117442117447_
                                    _g117443117449_)
                             (let ((__tmp118464
                                    (let ((__tmp118465
                                           (let ()
                                             (declare (not safe))
                                             (cons _g117441117445_ '()))))
                                      (declare (not safe))
                                      (cons _g117442117447_ __tmp118465))))
                               (declare (not safe))
                               (cons __tmp118464 _g117443117449_)))))
                      (declare (not safe))
                      (foldr2 __tmp118463 '() _L117427_ _L117362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118462
                                                           _body117440_))))
                                              (declare (not safe))
                                              (cons _L117363_ __tmp118461))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp118460
                                       _stx117259_))))
                                _expr117393117424_))))))
               (let ()
                 (declare (not safe))
                 (_loop117388117408_ _target117385117403_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g117382117398_
                                                        _g117383117401_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g117382117398_
                                              _g117383117401_)))))
                                    (__tmp118467
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117260_))
                                          (let ((__tmp118468
                                                 (lambda (_g117454117457_
                                                          _g117455117459_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g117454117457_
                                                           _g117455117459_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp118468
                                                    '()
                                                    _L117361_)))))
                               (declare (not safe))
                               (_g117381117452_ __tmp118467)))
                           _tl117271117313_
                           _expr117283117355_
                           _hd117284117357_
                           _hd117269117303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop117277117321_
                                                     _target117274117316_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g117262117295_
                                                   _g117263117298_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117262117295_ _g117263117298_)))))
                              (let ()
                                (declare (not safe))
                                (_g117262117295_ _g117263117298_)))))
                      (let ()
                        (declare (not safe))
                        (_g117262117295_ _g117263117298_))))))
          (declare (not safe))
          (_g117261117462_ _stx117259_))))
    (define gxc#xform-operands
      (lambda (_stx117215_ . _args117216_)
        (let* ((_g117218117229_
                (lambda (_g117219117226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117219117226_))))
               (_g117217117256_
                (lambda (_g117219117232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117219117232_))
                      (let ((_e117224117234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117219117232_))))
                        (let ((_hd117223117237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117224117234_)))
                              (_tl117222117239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117224117234_))))
                          ((lambda (_L117242_ _L117243_)
                             (let* ((_rands117254_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117216_))
                                          _L117242_))
                                    (__tmp118471
                                     (let ()
                                       (declare (not safe))
                                       (cons _L117243_ _rands117254_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp118471
                                _stx117215_)))
                           _tl117222117239_
                           _hd117223117237_)))
                      (let ()
                        (declare (not safe))
                        (_g117218117229_ _g117219117232_))))))
          (declare (not safe))
          (_g117217117256_ _stx117215_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx117136_ . _args117137_)
        (let* ((_g117139117156_
                (lambda (_g117140117153_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117140117153_))))
               (_g117138117212_
                (lambda (_g117140117159_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117140117159_))
                      (let ((_e117145117161_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117140117159_))))
                        (let ((_hd117144117164_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117145117161_)))
                              (_tl117143117166_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117145117161_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117143117166_))
                              (let ((_e117148117169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117143117166_))))
                                (let ((_hd117147117172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117148117169_)))
                                      (_tl117146117174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117148117169_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117146117174_))
                                      (let ((_e117151117177_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117146117174_))))
                                        (let ((_hd117150117180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117151117177_)))
                                              (_tl117149117182_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117151117177_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117149117182_))
                                              ((lambda (_L117185_ _L117186_)
                                                 (let* ((_expr117210_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args117137_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L117185_))
                     (let ((_arg1117201_ (car _args117137_))
                           (_rest117203_ (cdr _args117137_)))
                       (if (let () (declare (not safe)) (null? _rest117203_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L117185_ _arg1117201_))
                           (let ((_arg2117206_ (car _rest117203_))
                                 (_rest117208_ (cdr _rest117203_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest117208_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L117185_
                                    _arg1117201_
                                    _arg2117206_))
                                 (apply gxc#compile-e
                                        _L117185_
                                        _arg1117201_
                                        _arg2117206_
                                        _rest117208_)))))))
                (__tmp118472
                 (let ((__tmp118473
                        (let ((__tmp118474
                               (let ()
                                 (declare (not safe))
                                 (cons _expr117210_ '()))))
                          (declare (not safe))
                          (cons _L117186_ __tmp118474))))
                   (declare (not safe))
                   (cons '%#set! __tmp118473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp118472
                                                    _stx117136_)))
                                               _hd117150117180_
                                               _hd117147117172_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117139117156_
                                                 _g117140117159_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117139117156_ _g117140117159_)))))
                              (let ()
                                (declare (not safe))
                                (_g117139117156_ _g117140117159_)))))
                      (let ()
                        (declare (not safe))
                        (_g117139117156_ _g117140117159_))))))
          (declare (not safe))
          (_g117138117212_ _stx117136_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx117067_)
        (let* ((_g117069117086_
                (lambda (_g117070117083_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117070117083_))))
               (_g117068117133_
                (lambda (_g117070117089_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117070117089_))
                      (let ((_e117075117091_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117070117089_))))
                        (let ((_hd117074117094_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117075117091_)))
                              (_tl117073117096_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117075117091_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117073117096_))
                              (let ((_e117078117099_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117073117096_))))
                                (let ((_hd117077117102_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117078117099_)))
                                      (_tl117076117104_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117078117099_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117076117104_))
                                      (let ((_e117081117107_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117076117104_))))
                                        (let ((_hd117080117110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117081117107_)))
                                              (_tl117079117112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117081117107_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117079117112_))
                                              ((lambda (_L117115_ _L117116_)
                                                 (let ((_sym117131_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L117116_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym117131_))
                                                   (let ((__tmp118475
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp118475
                                                      _sym117131_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L117115_))))
                                               _hd117080117110_
                                               _hd117077117102_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117069117086_
                                                 _g117070117089_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117069117086_ _g117070117089_)))))
                              (let ()
                                (declare (not safe))
                                (_g117069117086_ _g117070117089_)))))
                      (let ()
                        (declare (not safe))
                        (_g117069117086_ _g117070117089_))))))
          (declare (not safe))
          (_g117068117133_ _stx117067_))))
    (define gxc#collect-methods-call%
      (lambda (_stx116621_)
        (let* ((___stx118165118166_ _stx116621_)
               (_g116625116727_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx118165118166_)))))
          (let ((___kont118167118168_
                 (lambda (_L117017_ _L117018_ _L117019_ _L117020_ _L117021_)
                   (let ((__tmp118476
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L117018_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118476))))
                (___kont118169118170_
                 (lambda (_L116843_ _L116844_ _L116845_ _L116846_)
                   (let ((__tmp118477
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116843_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp118477))))
                (___kont118171118172_ (lambda () '#!void)))
            (let ((___match118300118301_
                   (lambda (_e116634116889_
                            _hd116633116892_
                            _tl116632116894_
                            _e116637116897_
                            _hd116636116900_
                            _tl116635116902_
                            _e116640116905_
                            _hd116639116908_
                            _tl116638116910_
                            _e116643116913_
                            _hd116642116916_
                            _tl116641116918_
                            _e116646116921_
                            _hd116645116924_
                            _tl116644116926_
                            _e116649116929_
                            _hd116648116932_
                            _tl116647116934_
                            _e116652116937_
                            _hd116651116940_
                            _tl116650116942_
                            _e116655116945_
                            _hd116654116948_
                            _tl116653116950_
                            _e116658116953_
                            _hd116657116956_
                            _tl116656116958_
                            _e116661116961_
                            _hd116660116964_
                            _tl116659116966_
                            _e116664116969_
                            _hd116663116972_
                            _tl116662116974_
                            _e116667116977_
                            _hd116666116980_
                            _tl116665116982_
                            _e116670116985_
                            _hd116669116988_
                            _tl116668116990_
                            _e116673116993_
                            _hd116672116996_
                            _tl116671116998_
                            _e116676117001_
                            _hd116675117004_
                            _tl116674117006_
                            _e116679117009_
                            _hd116678117012_
                            _tl116677117014_)
                     (let ((_L117017_ _hd116678117012_)
                           (_L117018_ _hd116669116988_)
                           (_L117019_ _hd116660116964_)
                           (_L117020_ _hd116651116940_)
                           (_L117021_ _hd116642116916_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L117021_
                              'bind-method!))
                           (___kont118167118168_
                            _L117017_
                            _L117018_
                            _L117019_
                            _L117020_
                            _L117021_)
                           (___kont118171118172_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx118165118166_))
                  (let ((_e116634116889_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx118165118166_))))
                    (let ((_tl116632116894_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116634116889_)))
                          (_hd116633116892_
                           (let ()
                             (declare (not safe))
                             (##car _e116634116889_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl116632116894_))
                          (let ((_e116637116897_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl116632116894_))))
                            (let ((_tl116635116902_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116637116897_)))
                                  (_hd116636116900_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116637116897_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd116636116900_))
                                  (let ((_e116640116905_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd116636116900_))))
                                    (let ((_tl116638116910_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116640116905_)))
                                          (_hd116639116908_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116640116905_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd116639116908_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd116639116908_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116638116910_))
                                                  (let ((_e116643116913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116638116910_))))
                                                    (let ((_tl116641116918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116643116913_)))
                                                          (_hd116642116916_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116643116913_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl116641116918_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl116635116902_))
                      (let ((_e116646116921_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl116635116902_))))
                        (let ((_tl116644116926_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116646116921_)))
                              (_hd116645116924_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116646116921_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd116645116924_))
                              (let ((_e116649116929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd116645116924_))))
                                (let ((_tl116647116934_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116649116929_)))
                                      (_hd116648116932_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116649116929_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd116648116932_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd116648116932_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl116647116934_))
                                              (let ((_e116652116937_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl116647116934_))))
                                                (let ((_tl116650116942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e116652116937_)))
                                                      (_hd116651116940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e116652116937_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116650116942_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl116644116926_))
                                                          (let ((_e116655116945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl116644116926_))))
                    (let ((_tl116653116950_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116655116945_)))
                          (_hd116654116948_
                           (let ()
                             (declare (not safe))
                             (##car _e116655116945_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd116654116948_))
                          (let ((_e116658116953_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd116654116948_))))
                            (let ((_tl116656116958_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e116658116953_)))
                                  (_hd116657116956_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e116658116953_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd116657116956_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd116657116956_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl116656116958_))
                                          (let ((_e116661116961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl116656116958_))))
                                            (let ((_tl116659116966_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e116661116961_)))
                                                  (_hd116660116964_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e116661116961_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl116659116966_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl116653116950_))
                                                      (let ((_e116664116969_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl116653116950_))))
                (let ((_tl116662116974_
                       (let () (declare (not safe)) (##cdr _e116664116969_)))
                      (_hd116663116972_
                       (let () (declare (not safe)) (##car _e116664116969_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd116663116972_))
                      (let ((_e116667116977_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd116663116972_))))
                        (let ((_tl116665116982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116667116977_)))
                              (_hd116666116980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116667116977_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd116666116980_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd116666116980_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116665116982_))
                                      (let ((_e116670116985_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116665116982_))))
                                        (let ((_tl116668116990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116670116985_)))
                                              (_hd116669116988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116670116985_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116668116990_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl116662116974_))
                                                  (let ((_e116673116993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl116662116974_))))
                                                    (let ((_tl116671116998_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e116673116993_)))
                                                          (_hd116672116996_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e116673116993_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd116672116996_))
                                                          (let ((_e116676117001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd116672116996_))))
                    (let ((_tl116674117006_
                           (let ()
                             (declare (not safe))
                             (##cdr _e116676117001_)))
                          (_hd116675117004_
                           (let ()
                             (declare (not safe))
                             (##car _e116676117001_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd116675117004_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd116675117004_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl116674117006_))
                                  (let ((_e116679117009_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl116674117006_))))
                                    (let ((_tl116677117014_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116679117009_)))
                                          (_hd116678117012_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116679117009_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl116677117014_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116671116998_))
                                              (___match118300118301_
                                               _e116634116889_
                                               _hd116633116892_
                                               _tl116632116894_
                                               _e116637116897_
                                               _hd116636116900_
                                               _tl116635116902_
                                               _e116640116905_
                                               _hd116639116908_
                                               _tl116638116910_
                                               _e116643116913_
                                               _hd116642116916_
                                               _tl116641116918_
                                               _e116646116921_
                                               _hd116645116924_
                                               _tl116644116926_
                                               _e116649116929_
                                               _hd116648116932_
                                               _tl116647116934_
                                               _e116652116937_
                                               _hd116651116940_
                                               _tl116650116942_
                                               _e116655116945_
                                               _hd116654116948_
                                               _tl116653116950_
                                               _e116658116953_
                                               _hd116657116956_
                                               _tl116656116958_
                                               _e116661116961_
                                               _hd116660116964_
                                               _tl116659116966_
                                               _e116664116969_
                                               _hd116663116972_
                                               _tl116662116974_
                                               _e116667116977_
                                               _hd116666116980_
                                               _tl116665116982_
                                               _e116670116985_
                                               _hd116669116988_
                                               _tl116668116990_
                                               _e116673116993_
                                               _hd116672116996_
                                               _tl116671116998_
                                               _e116676117001_
                                               _hd116675117004_
                                               _tl116674117006_
                                               _e116679117009_
                                               _hd116678117012_
                                               _tl116677117014_)
                                              (___kont118171118172_))
                                          (___kont118171118172_))))
                                  (___kont118171118172_))
                              (___kont118171118172_))
                          (___kont118171118172_))))
                  (___kont118171118172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl116662116974_))
                                                      (if (let ((__tmp118478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp118478 'bind-method!))
                  (let ((_L116843_ _hd116669116988_)
                        (_L116844_ _hd116660116964_)
                        (_L116845_ _hd116651116940_)
                        (_L116846_ _hd116642116916_))
                    (___kont118169118170_
                     _L116843_
                     _L116844_
                     _L116845_
                     _L116846_))
                  (___kont118171118172_))
              (___kont118171118172_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118171118172_))))
                                      (___kont118171118172_))
                                  (___kont118171118172_))
                              (___kont118171118172_))))
                      (___kont118171118172_))))
              (___kont118171118172_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118171118172_))))
                                          (___kont118171118172_))
                                      (___kont118171118172_))
                                  (___kont118171118172_))))
                          (___kont118171118172_))))
                  (___kont118171118172_))
              (___kont118171118172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont118171118172_))
                                          (___kont118171118172_))
                                      (___kont118171118172_))))
                              (___kont118171118172_))))
                      (___kont118171118172_))
                  (___kont118171118172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont118171118172_))
                                              (___kont118171118172_))
                                          (___kont118171118172_))))
                                  (___kont118171118172_))))
                          (___kont118171118172_))))
                  (___kont118171118172_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx116568_ _id116569_ _new-id116570_)
        (let* ((_g116572116585_
                (lambda (_g116573116582_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116573116582_))))
               (_g116571116618_
                (lambda (_g116573116588_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116573116588_))
                      (let ((_e116577116590_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116573116588_))))
                        (let ((_hd116576116593_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116577116590_)))
                              (_tl116575116595_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116577116590_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116575116595_))
                              (let ((_e116580116598_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116575116595_))))
                                (let ((_hd116579116601_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116580116598_)))
                                      (_tl116578116603_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116580116598_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116578116603_))
                                      ((lambda (_L116606_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L116606_
                                                _id116569_))
                                             (let ((__tmp118479
                                                    (let ((__tmp118480
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id116570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp118480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp118479
                                                _stx116568_))
                                             _stx116568_))
                                       _hd116579116601_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116572116585_ _g116573116588_)))))
                              (let ()
                                (declare (not safe))
                                (_g116572116585_ _g116573116588_)))))
                      (let ()
                        (declare (not safe))
                        (_g116572116585_ _g116573116588_))))))
          (declare (not safe))
          (_g116571116618_ _stx116568_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx116509_ _subst116510_)
        (let* ((_g116512116525_
                (lambda (_g116513116522_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116513116522_))))
               (_g116511116565_
                (lambda (_g116513116528_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116513116528_))
                      (let ((_e116517116530_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116513116528_))))
                        (let ((_hd116516116533_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116517116530_)))
                              (_tl116515116535_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116517116530_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116515116535_))
                              (let ((_e116520116538_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116515116535_))))
                                (let ((_hd116519116541_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116520116538_)))
                                      (_tl116518116543_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116520116538_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116518116543_))
                                      ((lambda (_L116546_)
                                         (let ((_$e116560_
                                                (let ((__tmp118481
                                                       (lambda (_sub116558_)
                                                         (let ((__tmp118482
                                                                (car _sub116558_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L116546_
                                                            __tmp118482)))))
                                                  (declare (not safe))
                                                  (find __tmp118481
                                                        _subst116510_))))
                                           (if _$e116560_
                                               ((lambda (_sub116563_)
                                                  (let ((__tmp118483
                                                         (let ((__tmp118484
                                                                (let ((__tmp118485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub116563_)))
                          (declare (not safe))
                          (cons __tmp118485 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp118484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp118483
                                                     _stx116509_)))
                                                _$e116560_)
                                               _stx116509_)))
                                       _hd116519116541_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116512116525_ _g116513116528_)))))
                              (let ()
                                (declare (not safe))
                                (_g116512116525_ _g116513116528_)))))
                      (let ()
                        (declare (not safe))
                        (_g116512116525_ _g116513116528_))))))
          (declare (not safe))
          (_g116511116565_ _stx116509_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx116437_ _id116438_ _new-id116439_)
        (let* ((_g116441116458_
                (lambda (_g116442116455_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116442116455_))))
               (_g116440116506_
                (lambda (_g116442116461_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116442116461_))
                      (let ((_e116447116463_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116442116461_))))
                        (let ((_hd116446116466_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116447116463_)))
                              (_tl116445116468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116447116463_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116445116468_))
                              (let ((_e116450116471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116445116468_))))
                                (let ((_hd116449116474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116450116471_)))
                                      (_tl116448116476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116450116471_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116448116476_))
                                      (let ((_e116453116479_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116448116476_))))
                                        (let ((_hd116452116482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116453116479_)))
                                              (_tl116451116484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116453116479_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116451116484_))
                                              ((lambda (_L116487_ _L116488_)
                                                 (let ((_new-expr116503_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L116487_
                                                           _id116438_
                                                           _new-id116439_)))
                                                       (_new-xid116504_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L116488_
                                                               _id116438_))
                                                            _new-id116439_
                                                            _L116488_)))
                                                   (let ((__tmp118486
                                                          (let ((__tmp118487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118488
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116503_ '()))))
                           (declare (not safe))
                           (cons _new-xid116504_ __tmp118488))))
                    (declare (not safe))
                    (cons '%#set! __tmp118487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118486
                                                      _stx116437_))))
                                               _hd116452116482_
                                               _hd116449116474_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116441116458_
                                                 _g116442116461_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116441116458_ _g116442116461_)))))
                              (let ()
                                (declare (not safe))
                                (_g116441116458_ _g116442116461_)))))
                      (let ()
                        (declare (not safe))
                        (_g116441116458_ _g116442116461_))))))
          (declare (not safe))
          (_g116440116506_ _stx116437_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx116361_ _subst116362_)
        (let* ((_g116364116381_
                (lambda (_g116365116378_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116365116378_))))
               (_g116363116434_
                (lambda (_g116365116384_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116365116384_))
                      (let ((_e116370116386_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116365116384_))))
                        (let ((_hd116369116389_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116370116386_)))
                              (_tl116368116391_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116370116386_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116368116391_))
                              (let ((_e116373116394_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116368116391_))))
                                (let ((_hd116372116397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116373116394_)))
                                      (_tl116371116399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116373116394_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116371116399_))
                                      (let ((_e116376116402_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116371116399_))))
                                        (let ((_hd116375116405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116376116402_)))
                                              (_tl116374116407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116376116402_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116374116407_))
                                              ((lambda (_L116410_ _L116411_)
                                                 (let ((_new-expr116431_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L116410_
                                                           _subst116362_)))
                                                       (_new-xid116432_
                                                        (let ((_$e116428_
                                                               (let ((__tmp118489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub116426_)
                                (let ((__tmp118490 (car _sub116426_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L116411_
                                   __tmp118490)))))
                         (declare (not safe))
                         (find __tmp118489 _subst116362_))))
                  (if _$e116428_ (cdr _$e116428_) _L116411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp118491
                                                          (let ((__tmp118492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118493
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr116431_ '()))))
                           (declare (not safe))
                           (cons _new-xid116432_ __tmp118493))))
                    (declare (not safe))
                    (cons '%#set! __tmp118492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp118491
                                                      _stx116361_))))
                                               _hd116375116405_
                                               _hd116372116397_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116364116381_
                                                 _g116365116384_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116364116381_ _g116365116384_)))))
                              (let ()
                                (declare (not safe))
                                (_g116364116381_ _g116365116384_)))))
                      (let ()
                        (declare (not safe))
                        (_g116364116381_ _g116365116384_))))))
          (declare (not safe))
          (_g116363116434_ _stx116361_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx116307_ _ht116308_)
        (let* ((_g116310116323_
                (lambda (_g116311116320_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116311116320_))))
               (_g116309116358_
                (lambda (_g116311116326_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116311116326_))
                      (let ((_e116315116328_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116311116326_))))
                        (let ((_hd116314116331_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116315116328_)))
                              (_tl116313116333_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116315116328_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116313116333_))
                              (let ((_e116318116336_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116313116333_))))
                                (let ((_hd116317116339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116318116336_)))
                                      (_tl116316116341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116318116336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl116316116341_))
                                      ((lambda (_L116344_)
                                         (let ((_eid116356_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L116344_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht116308_
                                            _eid116356_
                                            1+
                                            '0)))
                                       _hd116317116339_)
                                      (let ()
                                        (declare (not safe))
                                        (_g116310116323_ _g116311116326_)))))
                              (let ()
                                (declare (not safe))
                                (_g116310116323_ _g116311116326_)))))
                      (let ()
                        (declare (not safe))
                        (_g116310116323_ _g116311116326_))))))
          (declare (not safe))
          (_g116309116358_ _stx116307_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx116237_ _ht116238_)
        (let* ((_g116240116257_
                (lambda (_g116241116254_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116241116254_))))
               (_g116239116304_
                (lambda (_g116241116260_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116241116260_))
                      (let ((_e116246116262_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116241116260_))))
                        (let ((_hd116245116265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116246116262_)))
                              (_tl116244116267_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116246116262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116244116267_))
                              (let ((_e116249116270_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116244116267_))))
                                (let ((_hd116248116273_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116249116270_)))
                                      (_tl116247116275_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116249116270_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116247116275_))
                                      (let ((_e116252116278_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116247116275_))))
                                        (let ((_hd116251116281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116252116278_)))
                                              (_tl116250116283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116252116278_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116250116283_))
                                              ((lambda (_L116286_ _L116287_)
                                                 (let ((_eid116302_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116287_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht116238_
                                                      _eid116302_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L116286_
                                                      _ht116238_))))
                                               _hd116251116281_
                                               _hd116248116273_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116240116257_
                                                 _g116241116260_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116240116257_ _g116241116260_)))))
                              (let ()
                                (declare (not safe))
                                (_g116240116257_ _g116241116260_)))))
                      (let ()
                        (declare (not safe))
                        (_g116240116257_ _g116241116260_))))))
          (declare (not safe))
          (_g116239116304_ _stx116237_))))
    (define gxc#find-body%
      (lambda (_stx116150_ _arg116151_)
        (let* ((_g116153116172_
                (lambda (_g116154116169_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116154116169_))))
               (_g116152116234_
                (lambda (_g116154116175_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116154116175_))
                      (let ((_e116158116177_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116154116175_))))
                        (let ((_hd116157116180_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116158116177_)))
                              (_tl116156116182_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116158116177_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl116156116182_))
                              (let ((_g118494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl116156116182_
                                        '0))))
                                (begin
                                  (let ((_g118495_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118494_)
                                               (##vector-length _g118494_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118495_ 2)))
                                        (error "Context expects 2 values"
                                               _g118495_)))
                                  (let ((_target116159116185_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118494_ 0)))
                                        (_tl116161116187_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118494_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl116161116187_))
                                        (letrec ((_loop116162116190_
                                                  (lambda (_hd116160116193_
                                                           _expr116166116195_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd116160116193_))
                                                        (let ((_e116163116198_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd116160116193_))))
                  (let ((_lp-hd116164116201_
                         (let () (declare (not safe)) (##car _e116163116198_)))
                        (_lp-tl116165116203_
                         (let ()
                           (declare (not safe))
                           (##cdr _e116163116198_))))
                    (let ((__tmp118499
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd116164116201_ _expr116166116195_))))
                      (declare (not safe))
                      (_loop116162116190_ _lp-tl116165116203_ __tmp118499))))
                (let ((_expr116167116206_ (reverse _expr116166116195_)))
                  ((lambda (_L116209_)
                     (let ((__tmp118498
                            (lambda (_g116222116224_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g116222116224_
                                 _arg116151_))))
                           (__tmp118496
                            (let ((__tmp118497
                                   (lambda (_g116226116229_ _g116227116231_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116226116229_
                                             _g116227116231_)))))
                              (declare (not safe))
                              (foldr1 __tmp118497 '() _L116209_))))
                       (declare (not safe))
                       (ormap1 __tmp118498 __tmp118496)))
                   _expr116167116206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop116162116190_
                                             _target116159116185_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g116153116172_
                                           _g116154116175_))))))
                              (let ()
                                (declare (not safe))
                                (_g116153116172_ _g116154116175_)))))
                      (let ()
                        (declare (not safe))
                        (_g116153116172_ _g116154116175_))))))
          (declare (not safe))
          (_g116152116234_ _stx116150_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx116082_ _arg116083_)
        (let* ((_g116085116102_
                (lambda (_g116086116099_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116086116099_))))
               (_g116084116147_
                (lambda (_g116086116105_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116086116105_))
                      (let ((_e116091116107_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116086116105_))))
                        (let ((_hd116090116110_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116091116107_)))
                              (_tl116089116112_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116091116107_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116089116112_))
                              (let ((_e116094116115_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116089116112_))))
                                (let ((_hd116093116118_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116094116115_)))
                                      (_tl116092116120_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116094116115_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116092116120_))
                                      (let ((_e116097116123_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116092116120_))))
                                        (let ((_hd116096116126_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116097116123_)))
                                              (_tl116095116128_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116097116123_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116095116128_))
                                              ((lambda (_L116131_ _L116132_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L116131_
                                                    _arg116083_)))
                                               _hd116096116126_
                                               _hd116093116118_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116085116102_
                                                 _g116086116105_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116085116102_ _g116086116105_)))))
                              (let ()
                                (declare (not safe))
                                (_g116085116102_ _g116086116105_)))))
                      (let ()
                        (declare (not safe))
                        (_g116085116102_ _g116086116105_))))))
          (declare (not safe))
          (_g116084116147_ _stx116082_))))
    (define gxc#find-lambda%
      (lambda (_stx116014_ _arg116015_)
        (let* ((_g116017116034_
                (lambda (_g116018116031_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116018116031_))))
               (_g116016116079_
                (lambda (_g116018116037_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116018116037_))
                      (let ((_e116023116039_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116018116037_))))
                        (let ((_hd116022116042_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116023116039_)))
                              (_tl116021116044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116023116039_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116021116044_))
                              (let ((_e116026116047_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116021116044_))))
                                (let ((_hd116025116050_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116026116047_)))
                                      (_tl116024116052_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116026116047_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116024116052_))
                                      (let ((_e116029116055_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116024116052_))))
                                        (let ((_hd116028116058_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116029116055_)))
                                              (_tl116027116060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116029116055_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116027116060_))
                                              ((lambda (_L116063_ _L116064_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L116063_
                                                    _arg116015_)))
                                               _hd116028116058_
                                               _hd116025116050_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116017116034_
                                                 _g116018116037_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116017116034_ _g116018116037_)))))
                              (let ()
                                (declare (not safe))
                                (_g116017116034_ _g116018116037_)))))
                      (let ()
                        (declare (not safe))
                        (_g116017116034_ _g116018116037_))))))
          (declare (not safe))
          (_g116016116079_ _stx116014_))))
    (define gxc#find-case-lambda%
      (lambda (_stx115896_ _arg115897_)
        (let* ((_g115899115927_
                (lambda (_g115900115924_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115900115924_))))
               (_g115898116011_
                (lambda (_g115900115930_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115900115930_))
                      (let ((_e115905115932_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115900115930_))))
                        (let ((_hd115904115935_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115905115932_)))
                              (_tl115903115937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115905115932_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115903115937_))
                              (let ((_g118500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115903115937_
                                        '0))))
                                (begin
                                  (let ((_g118501_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g118500_)
                                               (##vector-length _g118500_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g118501_ 2)))
                                        (error "Context expects 2 values"
                                               _g118501_)))
                                  (let ((_target115906115940_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118500_ 0)))
                                        (_tl115908115942_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g118500_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115908115942_))
                                        (letrec ((_loop115909115945_
                                                  (lambda (_hd115907115948_
                                                           _body115913115950_
                                                           _hd115914115952_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115907115948_))
                                                        (let ((_e115910115955_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115907115948_))))
                  (let ((_lp-hd115911115958_
                         (let () (declare (not safe)) (##car _e115910115955_)))
                        (_lp-tl115912115960_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115910115955_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd115911115958_))
                        (let ((_e115919115963_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd115911115958_))))
                          (let ((_hd115918115966_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115919115963_)))
                                (_tl115917115968_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115919115963_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl115917115968_))
                                (let ((_e115922115971_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl115917115968_))))
                                  (let ((_hd115921115974_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115922115971_)))
                                        (_tl115920115976_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115922115971_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115920115976_))
                                        (let ((__tmp118506
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115921115974_
                                                       _body115913115950_)))
                                              (__tmp118505
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd115918115966_
                                                       _hd115914115952_))))
                                          (declare (not safe))
                                          (_loop115909115945_
                                           _lp-tl115912115960_
                                           __tmp118506
                                           __tmp118505))
                                        (let ()
                                          (declare (not safe))
                                          (_g115899115927_ _g115900115930_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115899115927_ _g115900115930_)))))
                        (let ()
                          (declare (not safe))
                          (_g115899115927_ _g115900115930_)))))
                (let ((_body115915115979_ (reverse _body115913115950_))
                      (_hd115916115981_ (reverse _hd115914115952_)))
                  ((lambda (_L115984_ _L115985_)
                     (let ((__tmp118504
                            (lambda (_g115999116001_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115999116001_
                                 _arg115897_))))
                           (__tmp118502
                            (let ((__tmp118503
                                   (lambda (_g116003116006_ _g116004116008_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g116003116006_
                                             _g116004116008_)))))
                              (declare (not safe))
                              (foldr1 __tmp118503 '() _L115984_))))
                       (declare (not safe))
                       (ormap1 __tmp118504 __tmp118502)))
                   _body115915115979_
                   _hd115916115981_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115909115945_
                                             _target115906115940_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115899115927_
                                           _g115900115930_))))))
                              (let ()
                                (declare (not safe))
                                (_g115899115927_ _g115900115930_)))))
                      (let ()
                        (declare (not safe))
                        (_g115899115927_ _g115900115930_))))))
          (declare (not safe))
          (_g115898116011_ _stx115896_))))
    (define gxc#find-let-values%
      (lambda (_stx115746_ _arg115747_)
        (let* ((_g115749115784_
                (lambda (_g115750115781_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115750115781_))))
               (_g115748115893_
                (lambda (_g115750115787_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115750115787_))
                      (let ((_e115756115789_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115750115787_))))
                        (let ((_hd115755115792_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115756115789_)))
                              (_tl115754115794_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115756115789_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115754115794_))
                              (let ((_e115759115797_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115754115794_))))
                                (let ((_hd115758115800_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115759115797_)))
                                      (_tl115757115802_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115759115797_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115758115800_))
                                      (let ((_g118507_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115758115800_
                                                '0))))
                                        (begin
                                          (let ((_g118508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g118507_)
                                                       (##vector-length
                                                        _g118507_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g118508_ 2)))
                                                (error "Context expects 2 values"
                                                       _g118508_)))
                                          (let ((_target115760115805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g118507_ 0)))
                                                (_tl115762115807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g118507_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115762115807_))
                                                (letrec ((_loop115763115810_
                                                          (lambda (_hd115761115813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115767115815_
                           _bind115768115817_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115761115813_))
                        (let ((_e115764115820_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115761115813_))))
                          (let ((_lp-hd115765115823_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115764115820_)))
                                (_lp-tl115766115825_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115764115820_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115765115823_))
                                (let ((_e115773115828_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115765115823_))))
                                  (let ((_hd115772115831_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115773115828_)))
                                        (_tl115771115833_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115773115828_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115771115833_))
                                        (let ((_e115776115836_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115771115833_))))
                                          (let ((_hd115775115839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115776115836_)))
                                                (_tl115774115841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115776115836_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115774115841_))
                                                (let ((__tmp118513
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115775115839_
                                                               _expr115767115815_)))
                                                      (__tmp118512
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115772115831_
                                                               _bind115768115817_))))
                                                  (declare (not safe))
                                                  (_loop115763115810_
                                                   _lp-tl115766115825_
                                                   __tmp118513
                                                   __tmp118512))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115749115784_
                                                   _g115750115787_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115749115784_ _g115750115787_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115749115784_ _g115750115787_)))))
                        (let ((_expr115769115844_ (reverse _expr115767115815_))
                              (_bind115770115846_
                               (reverse _bind115768115817_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115757115802_))
                              (let ((_e115779115849_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115757115802_))))
                                (let ((_hd115778115852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115779115849_)))
                                      (_tl115777115854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115779115849_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115777115854_))
                                      ((lambda (_L115857_ _L115858_ _L115859_)
                                         (let ((_$e115890_
                                                (let ((__tmp118511
                                                       (lambda (_g115878115880_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g115878115880_
                                                            _arg115747_))))
                                                      (__tmp118509
                                                       (let ((__tmp118510
                                                              (lambda (_g115882115885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g115883115887_)
                        (let ()
                          (declare (not safe))
                          (cons _g115882115885_ _g115883115887_)))))
                 (declare (not safe))
                 (foldr1 __tmp118510 '() _L115858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp118511
                                                          __tmp118509))))
                                           (if _$e115890_
                                               _$e115890_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L115857_
                                                  _arg115747_)))))
                                       _hd115778115852_
                                       _expr115769115844_
                                       _bind115770115846_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115749115784_ _g115750115787_)))))
                              (let ()
                                (declare (not safe))
                                (_g115749115784_ _g115750115787_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115763115810_
                                                     _target115760115805_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115749115784_
                                                   _g115750115787_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115749115784_ _g115750115787_)))))
                              (let ()
                                (declare (not safe))
                                (_g115749115784_ _g115750115787_)))))
                      (let ()
                        (declare (not safe))
                        (_g115749115784_ _g115750115787_))))))
          (declare (not safe))
          (_g115748115893_ _stx115746_))))
    (define gxc#find-setq%
      (lambda (_stx115678_ _arg115679_)
        (let* ((_g115681115698_
                (lambda (_g115682115695_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115682115695_))))
               (_g115680115743_
                (lambda (_g115682115701_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115682115701_))
                      (let ((_e115687115703_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115682115701_))))
                        (let ((_hd115686115706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115687115703_)))
                              (_tl115685115708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115687115703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115685115708_))
                              (let ((_e115690115711_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115685115708_))))
                                (let ((_hd115689115714_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115690115711_)))
                                      (_tl115688115716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115690115711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115688115716_))
                                      (let ((_e115693115719_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115688115716_))))
                                        (let ((_hd115692115722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115693115719_)))
                                              (_tl115691115724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115693115719_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115691115724_))
                                              ((lambda (_L115727_ _L115728_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115727_
                                                    _arg115679_)))
                                               _hd115692115722_
                                               _hd115689115714_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115681115698_
                                                 _g115682115701_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115681115698_ _g115682115701_)))))
                              (let ()
                                (declare (not safe))
                                (_g115681115698_ _g115682115701_)))))
                      (let ()
                        (declare (not safe))
                        (_g115681115698_ _g115682115701_))))))
          (declare (not safe))
          (_g115680115743_ _stx115678_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx115622_ _ids115623_)
        (let* ((_g115625115638_
                (lambda (_g115626115635_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115626115635_))))
               (_g115624115675_
                (lambda (_g115626115641_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115626115641_))
                      (let ((_e115630115643_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115626115641_))))
                        (let ((_hd115629115646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115630115643_)))
                              (_tl115628115648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115630115643_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115628115648_))
                              (let ((_e115633115651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115628115648_))))
                                (let ((_hd115632115654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115633115651_)))
                                      (_tl115631115656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115633115651_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115631115656_))
                                      ((lambda (_L115659_)
                                         (let ((__tmp118514
                                                (lambda (_g115670115672_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L115659_
                                                     _g115670115672_)))))
                                           (declare (not safe))
                                           (find __tmp118514 _ids115623_)))
                                       _hd115632115654_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115625115638_ _g115626115641_)))))
                              (let ()
                                (declare (not safe))
                                (_g115625115638_ _g115626115641_)))))
                      (let ()
                        (declare (not safe))
                        (_g115625115638_ _g115626115641_))))))
          (declare (not safe))
          (_g115624115675_ _stx115622_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx115546_ _ids115547_)
        (let* ((_g115549115566_
                (lambda (_g115550115563_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115550115563_))))
               (_g115548115619_
                (lambda (_g115550115569_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115550115569_))
                      (let ((_e115555115571_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115550115569_))))
                        (let ((_hd115554115574_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115555115571_)))
                              (_tl115553115576_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115555115571_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115553115576_))
                              (let ((_e115558115579_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115553115576_))))
                                (let ((_hd115557115582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115558115579_)))
                                      (_tl115556115584_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115558115579_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115556115584_))
                                      (let ((_e115561115587_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115556115584_))))
                                        (let ((_hd115560115590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115561115587_)))
                                              (_tl115559115592_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115561115587_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115559115592_))
                                              ((lambda (_L115595_ _L115596_)
                                                 (let ((_$e115616_
                                                        (let ((__tmp118515
                                                               (lambda (_g115611115613_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L115596_ _g115611115613_)))))
                  (declare (not safe))
                  (find __tmp118515 _ids115547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e115616_
                                                       _$e115616_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L115595_
                                                          _ids115547_)))))
                                               _hd115560115590_
                                               _hd115557115582_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115549115566_
                                                 _g115550115569_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115549115566_ _g115550115569_)))))
                              (let ()
                                (declare (not safe))
                                (_g115549115566_ _g115550115569_)))))
                      (let ()
                        (declare (not safe))
                        (_g115549115566_ _g115550115569_))))))
          (declare (not safe))
          (_g115548115619_ _stx115546_))))))
