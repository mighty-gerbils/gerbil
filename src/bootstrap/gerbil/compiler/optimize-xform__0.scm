(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1709038443)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl117238_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117238_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117238_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117238_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117238_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl117238_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl117234_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117234_ '%#declare gxc#xform-identity))
           _tbl117234_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl117230_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117484 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl117230_ __tmp117484))
           (let ((__tmp117485 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl117230_ __tmp117485))
           _tbl117230_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl117226_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117226_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117226_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117226_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117226_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117226_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl117226_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl117222_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117486 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117222_ __tmp117486))
           (let ((__tmp117487 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl117222_ __tmp117487))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117222_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117222_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117222_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117222_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117222_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl117222_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl117218_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117488 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117218_ __tmp117488))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117218_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117218_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl117218_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx117201_ . _args117203_)
        (let ((__tmp117490
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117203_)
                     (gxc#compile-e__0 _stx117201_)
                     (let ((_arg1117208_ (car _args117203_))
                           (_rest117210_ (cdr _args117203_)))
                       (if (null? _rest117210_)
                           (gxc#compile-e__1 _stx117201_ _arg1117208_)
                           (let ((_arg2117213_ (car _rest117210_))
                                 (_rest117215_ (cdr _rest117210_)))
                             (if (null? _rest117215_)
                                 (gxc#compile-e__2
                                  _stx117201_
                                  _arg1117208_
                                  _arg2117213_)
                                 (apply gxc#compile-e
                                        _stx117201_
                                        _arg1117208_
                                        _arg2117213_
                                        _rest117215_))))))))
              (__tmp117489 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp117490
           gxc#current-compile-methods
           __tmp117489))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl117198_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117491 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl117198_ __tmp117491))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117198_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117198_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117198_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117198_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117198_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl117198_))))
    (define gxc#apply-collect-methods
      (lambda (_stx117181_ . _args117183_)
        (let ((__tmp117493
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117183_)
                     (gxc#compile-e__0 _stx117181_)
                     (let ((_arg1117188_ (car _args117183_))
                           (_rest117190_ (cdr _args117183_)))
                       (if (null? _rest117190_)
                           (gxc#compile-e__1 _stx117181_ _arg1117188_)
                           (let ((_arg2117193_ (car _rest117190_))
                                 (_rest117195_ (cdr _rest117190_)))
                             (if (null? _rest117195_)
                                 (gxc#compile-e__2
                                  _stx117181_
                                  _arg1117188_
                                  _arg2117193_)
                                 (apply gxc#compile-e
                                        _stx117181_
                                        _arg1117188_
                                        _arg2117193_
                                        _rest117195_))))))))
              (__tmp117492 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp117493
           gxc#current-compile-methods
           __tmp117492))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl117178_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117494 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl117178_ __tmp117494))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117178_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117178_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117178_ '%#set! gxc#expression-subst-setq%))
           _tbl117178_))))
    (define gxc#apply-expression-subst
      (lambda (_stx117161_ . _args117163_)
        (let ((__tmp117496
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117163_)
                     (gxc#compile-e__0 _stx117161_)
                     (let ((_arg1117168_ (car _args117163_))
                           (_rest117170_ (cdr _args117163_)))
                       (if (null? _rest117170_)
                           (gxc#compile-e__1 _stx117161_ _arg1117168_)
                           (let ((_arg2117173_ (car _rest117170_))
                                 (_rest117175_ (cdr _rest117170_)))
                             (if (null? _rest117175_)
                                 (gxc#compile-e__2
                                  _stx117161_
                                  _arg1117168_
                                  _arg2117173_)
                                 (apply gxc#compile-e
                                        _stx117161_
                                        _arg1117168_
                                        _arg2117173_
                                        _rest117175_))))))))
              (__tmp117495 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp117496
           gxc#current-compile-methods
           __tmp117495))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl117158_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117497 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl117158_ __tmp117497))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117158_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117158_ '%#set! gxc#expression-subst*-setq%))
           _tbl117158_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx117141_ . _args117143_)
        (let ((__tmp117499
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117143_)
                     (gxc#compile-e__0 _stx117141_)
                     (let ((_arg1117148_ (car _args117143_))
                           (_rest117150_ (cdr _args117143_)))
                       (if (null? _rest117150_)
                           (gxc#compile-e__1 _stx117141_ _arg1117148_)
                           (let ((_arg2117153_ (car _rest117150_))
                                 (_rest117155_ (cdr _rest117150_)))
                             (if (null? _rest117155_)
                                 (gxc#compile-e__2
                                  _stx117141_
                                  _arg1117148_
                                  _arg2117153_)
                                 (apply gxc#compile-e
                                        _stx117141_
                                        _arg1117148_
                                        _arg2117153_
                                        _rest117155_))))))))
              (__tmp117498 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp117499
           gxc#current-compile-methods
           __tmp117498))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl117138_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117500 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl117138_ __tmp117500))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl117138_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117138_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl117138_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl117134_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117501 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl117134_ __tmp117501))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117134_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117134_ '%#set! gxc#find-var-refs-setq%))
           _tbl117134_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx117117_ . _args117119_)
        (let ((__tmp117503
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117119_)
                     (gxc#compile-e__0 _stx117117_)
                     (let ((_arg1117124_ (car _args117119_))
                           (_rest117126_ (cdr _args117119_)))
                       (if (null? _rest117126_)
                           (gxc#compile-e__1 _stx117117_ _arg1117124_)
                           (let ((_arg2117129_ (car _rest117126_))
                                 (_rest117131_ (cdr _rest117126_)))
                             (if (null? _rest117131_)
                                 (gxc#compile-e__2
                                  _stx117117_
                                  _arg1117124_
                                  _arg2117129_)
                                 (apply gxc#compile-e
                                        _stx117117_
                                        _arg1117124_
                                        _arg2117129_
                                        _rest117131_))))))))
              (__tmp117502 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117503
           gxc#current-compile-methods
           __tmp117502))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl117114_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117504 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl117114_ __tmp117504))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117114_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl117114_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl117114_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx117097_ . _args117099_)
        (let ((__tmp117506
               (lambda ()
                 (declare (not safe))
                 (if (null? _args117099_)
                     (gxc#compile-e__0 _stx117097_)
                     (let ((_arg1117104_ (car _args117099_))
                           (_rest117106_ (cdr _args117099_)))
                       (if (null? _rest117106_)
                           (gxc#compile-e__1 _stx117097_ _arg1117104_)
                           (let ((_arg2117109_ (car _rest117106_))
                                 (_rest117111_ (cdr _rest117106_)))
                             (if (null? _rest117111_)
                                 (gxc#compile-e__2
                                  _stx117097_
                                  _arg1117104_
                                  _arg2117109_)
                                 (apply gxc#compile-e
                                        _stx117097_
                                        _arg1117104_
                                        _arg2117109_
                                        _rest117111_))))))))
              (__tmp117505 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117506
           gxc#current-compile-methods
           __tmp117505))))
    (define gxc#xform-identity
      (lambda (_stx117094_ . _args117095_) _stx117094_))
    (define gxc#xform-wrap-source
      (lambda (_stx117091_ _src-stx117092_)
        (let ((__tmp117507
               (let () (declare (not safe)) (gx#stx-source _src-stx117092_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx117091_ __tmp117507))))
    (define gxc#xform-apply-compile-e
      (lambda (_args117078_)
        (lambda (_stx117080_)
          (if (let () (declare (not safe)) (null? _args117078_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx117080_))
              (let ((_arg1117082_ (car _args117078_))
                    (_rest117084_ (cdr _args117078_)))
                (if (let () (declare (not safe)) (null? _rest117084_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx117080_ _arg1117082_))
                    (let ((_arg2117087_ (car _rest117084_))
                          (_rest117089_ (cdr _rest117084_)))
                      (if (let () (declare (not safe)) (null? _rest117089_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx117080_
                             _arg1117082_
                             _arg2117087_))
                          (apply gxc#compile-e
                                 _stx117080_
                                 _arg1117082_
                                 _arg2117087_
                                 _rest117089_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx117037_ . _args117038_)
        (let* ((_g117040117050_
                (lambda (_g117041117047_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g117041117047_))))
               (_g117039117075_
                (lambda (_g117041117053_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g117041117053_))
                      (let ((_e117045117055_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g117041117053_))))
                        (let ((_hd117044117058_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117045117055_)))
                              (_tl117043117060_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117045117055_))))
                          ((lambda (_L117063_)
                             (let* ((_forms117073_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args117038_))
                                          _L117063_))
                                    (__tmp117508
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms117073_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117508
                                _stx117037_)))
                           _tl117043117060_)))
                      (let ()
                        (declare (not safe))
                        (_g117040117050_ _g117041117053_))))))
          (declare (not safe))
          (_g117039117075_ _stx117037_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx116995_ . _args116996_)
        (let* ((_g116998117008_
                (lambda (_g116999117005_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116999117005_))))
               (_g116997117034_
                (lambda (_g116999117011_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116999117011_))
                      (let ((_e117003117013_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116999117011_))))
                        (let ((_hd117002117016_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117003117013_)))
                              (_tl117001117018_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117003117013_))))
                          ((lambda (_L117021_)
                             (let ((__tmp117511
                                    (lambda ()
                                      (let* ((_forms117032_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args116996_))
                                                   _L117021_))
                                             (__tmp117512
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms117032_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp117512
                                         _stx116995_))))
                                   (__tmp117509
                                    (let ((__tmp117510
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp117510 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp117511
                                gx#current-expander-phi
                                __tmp117509)))
                           _tl117001117018_)))
                      (let ()
                        (declare (not safe))
                        (_g116998117008_ _g116999117011_))))))
          (declare (not safe))
          (_g116997117034_ _stx116995_))))
    (define gxc#xform-module%
      (lambda (_stx116923_ . _args116924_)
        (let* ((_g116926116940_
                (lambda (_g116927116937_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116927116937_))))
               (_g116925116992_
                (lambda (_g116927116943_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116927116943_))
                      (let ((_e116932116945_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116927116943_))))
                        (let ((_hd116931116948_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116932116945_)))
                              (_tl116930116950_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116932116945_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116930116950_))
                              (let ((_e116935116953_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116930116950_))))
                                (let ((_hd116934116956_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116935116953_)))
                                      (_tl116933116958_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116935116953_))))
                                  ((lambda (_L116961_ _L116962_)
                                     (let* ((_ctx116975_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L116962_)))
                                            (_code116977_
                                             (##structure-ref
                                              _ctx116975_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code116989_
                                             (let ((__tmp117513
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args116924_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code116977_))
                                                          (let ((_arg1116980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args116924_))
                        (_rest116982_ (cdr _args116924_)))
                    (if (let () (declare (not safe)) (null? _rest116982_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code116977_ _arg1116980_))
                        (let ((_arg2116985_ (car _rest116982_))
                              (_rest116987_ (cdr _rest116982_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest116987_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code116977_
                                 _arg1116980_
                                 _arg2116985_))
                              (apply gxc#compile-e
                                     _code116977_
                                     _arg1116980_
                                     _arg2116985_
                                     _rest116987_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp117513
                                                gx#current-expander-context
                                                _ctx116975_))))
                                       (##structure-set!
                                        _ctx116975_
                                        _code116989_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp117514
                                              (let ((__tmp117515
                                                     (let ((__tmp117516
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code116989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L116962_ __tmp117516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp117515))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp117514
                                          _stx116923_))))
                                   _tl116933116958_
                                   _hd116934116956_)))
                              (let ()
                                (declare (not safe))
                                (_g116926116940_ _g116927116943_)))))
                      (let ()
                        (declare (not safe))
                        (_g116926116940_ _g116927116943_))))))
          (declare (not safe))
          (_g116925116992_ _stx116923_))))
    (define gxc#xform-define-values%
      (lambda (_stx116844_ . _args116845_)
        (let* ((_g116847116864_
                (lambda (_g116848116861_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116848116861_))))
               (_g116846116920_
                (lambda (_g116848116867_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116848116867_))
                      (let ((_e116853116869_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116848116867_))))
                        (let ((_hd116852116872_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116853116869_)))
                              (_tl116851116874_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116853116869_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116851116874_))
                              (let ((_e116856116877_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116851116874_))))
                                (let ((_hd116855116880_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116856116877_)))
                                      (_tl116854116882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116856116877_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116854116882_))
                                      (let ((_e116859116885_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116854116882_))))
                                        (let ((_hd116858116888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116859116885_)))
                                              (_tl116857116890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116859116885_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116857116890_))
                                              ((lambda (_L116893_ _L116894_)
                                                 (let* ((_expr116918_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116845_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116893_))
                     (let ((_arg1116909_ (car _args116845_))
                           (_rest116911_ (cdr _args116845_)))
                       (if (let () (declare (not safe)) (null? _rest116911_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116893_ _arg1116909_))
                           (let ((_arg2116914_ (car _rest116911_))
                                 (_rest116916_ (cdr _rest116911_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116916_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116893_
                                    _arg1116909_
                                    _arg2116914_))
                                 (apply gxc#compile-e
                                        _L116893_
                                        _arg1116909_
                                        _arg2116914_
                                        _rest116916_)))))))
                (__tmp117517
                 (let ((__tmp117518
                        (let ((__tmp117519
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116918_ '()))))
                          (declare (not safe))
                          (cons _L116894_ __tmp117519))))
                   (declare (not safe))
                   (cons '%#define-values __tmp117518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117517
                                                    _stx116844_)))
                                               _hd116858116888_
                                               _hd116855116880_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116847116864_
                                                 _g116848116867_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116847116864_ _g116848116867_)))))
                              (let ()
                                (declare (not safe))
                                (_g116847116864_ _g116848116867_)))))
                      (let ()
                        (declare (not safe))
                        (_g116847116864_ _g116848116867_))))))
          (declare (not safe))
          (_g116846116920_ _stx116844_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx116764_ . _args116765_)
        (let* ((_g116767116784_
                (lambda (_g116768116781_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116768116781_))))
               (_g116766116841_
                (lambda (_g116768116787_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116768116787_))
                      (let ((_e116773116789_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116768116787_))))
                        (let ((_hd116772116792_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116773116789_)))
                              (_tl116771116794_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116773116789_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116771116794_))
                              (let ((_e116776116797_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116771116794_))))
                                (let ((_hd116775116800_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116776116797_)))
                                      (_tl116774116802_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116776116797_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116774116802_))
                                      (let ((_e116779116805_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116774116802_))))
                                        (let ((_hd116778116808_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116779116805_)))
                                              (_tl116777116810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116779116805_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116777116810_))
                                              ((lambda (_L116813_ _L116814_)
                                                 (let ((__tmp117522
                                                        (lambda ()
                                                          (let* ((_expr116839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args116765_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L116813_))
                              (let ((_arg1116830_ (car _args116765_))
                                    (_rest116832_ (cdr _args116765_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest116832_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L116813_
                                       _arg1116830_))
                                    (let ((_arg2116835_ (car _rest116832_))
                                          (_rest116837_ (cdr _rest116832_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest116837_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L116813_
                                             _arg1116830_
                                             _arg2116835_))
                                          (apply gxc#compile-e
                                                 _L116813_
                                                 _arg1116830_
                                                 _arg2116835_
                                                 _rest116837_)))))))
                         (__tmp117523
                          (let ((__tmp117524
                                 (let ((__tmp117525
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr116839_ '()))))
                                   (declare (not safe))
                                   (cons _L116814_ __tmp117525))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp117524))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp117523 _stx116764_))))
               (__tmp117520
                (let ((__tmp117521 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp117521 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp117522
                                                    gx#current-expander-phi
                                                    __tmp117520)))
                                               _hd116778116808_
                                               _hd116775116800_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116767116784_
                                                 _g116768116787_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116767116784_ _g116768116787_)))))
                              (let ()
                                (declare (not safe))
                                (_g116767116784_ _g116768116787_)))))
                      (let ()
                        (declare (not safe))
                        (_g116767116784_ _g116768116787_))))))
          (declare (not safe))
          (_g116766116841_ _stx116764_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx116685_ . _args116686_)
        (let* ((_g116688116705_
                (lambda (_g116689116702_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116689116702_))))
               (_g116687116761_
                (lambda (_g116689116708_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116689116708_))
                      (let ((_e116694116710_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116689116708_))))
                        (let ((_hd116693116713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116694116710_)))
                              (_tl116692116715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116694116710_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116692116715_))
                              (let ((_e116697116718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116692116715_))))
                                (let ((_hd116696116721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116697116718_)))
                                      (_tl116695116723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116697116718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116695116723_))
                                      (let ((_e116700116726_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116695116723_))))
                                        (let ((_hd116699116729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116700116726_)))
                                              (_tl116698116731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116700116726_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116698116731_))
                                              ((lambda (_L116734_ _L116735_)
                                                 (let* ((_expr116759_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116686_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116734_))
                     (let ((_arg1116750_ (car _args116686_))
                           (_rest116752_ (cdr _args116686_)))
                       (if (let () (declare (not safe)) (null? _rest116752_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116734_ _arg1116750_))
                           (let ((_arg2116755_ (car _rest116752_))
                                 (_rest116757_ (cdr _rest116752_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116757_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116734_
                                    _arg1116750_
                                    _arg2116755_))
                                 (apply gxc#compile-e
                                        _L116734_
                                        _arg1116750_
                                        _arg2116755_
                                        _rest116757_)))))))
                (__tmp117526
                 (let ((__tmp117527
                        (let ((__tmp117528
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116759_ '()))))
                          (declare (not safe))
                          (cons _L116735_ __tmp117528))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp117527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117526
                                                    _stx116685_)))
                                               _hd116699116729_
                                               _hd116696116721_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116688116705_
                                                 _g116689116708_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116688116705_ _g116689116708_)))))
                              (let ()
                                (declare (not safe))
                                (_g116688116705_ _g116689116708_)))))
                      (let ()
                        (declare (not safe))
                        (_g116688116705_ _g116689116708_))))))
          (declare (not safe))
          (_g116687116761_ _stx116685_))))
    (define gxc#xform-lambda%
      (lambda (_stx116628_ . _args116629_)
        (let* ((_g116631116645_
                (lambda (_g116632116642_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116632116642_))))
               (_g116630116682_
                (lambda (_g116632116648_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116632116648_))
                      (let ((_e116637116650_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116632116648_))))
                        (let ((_hd116636116653_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116637116650_)))
                              (_tl116635116655_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116637116650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116635116655_))
                              (let ((_e116640116658_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116635116655_))))
                                (let ((_hd116639116661_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116640116658_)))
                                      (_tl116638116663_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116640116658_))))
                                  ((lambda (_L116666_ _L116667_)
                                     (let* ((_body116680_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args116629_))
                                                  _L116666_))
                                            (__tmp117529
                                             (let ((__tmp117530
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L116667_
                                                            _body116680_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp117530))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp117529
                                        _stx116628_)))
                                   _tl116638116663_
                                   _hd116639116661_)))
                              (let ()
                                (declare (not safe))
                                (_g116631116645_ _g116632116648_)))))
                      (let ()
                        (declare (not safe))
                        (_g116631116645_ _g116632116648_))))))
          (declare (not safe))
          (_g116630116682_ _stx116628_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx116541_ . _args116542_)
        (letrec ((_clause-e116544_
                  (lambda (_clause116585_)
                    (let* ((_g116587116598_
                            (lambda (_g116588116595_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g116588116595_))))
                           (_g116586116625_
                            (lambda (_g116588116601_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g116588116601_))
                                  (let ((_e116593116603_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g116588116601_))))
                                    (let ((_hd116592116606_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116593116603_)))
                                          (_tl116591116608_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116593116603_))))
                                      ((lambda (_L116611_ _L116612_)
                                         (let ((_body116623_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args116542_))
                                                     _L116611_)))
                                           (declare (not safe))
                                           (cons _L116612_ _body116623_)))
                                       _tl116591116608_
                                       _hd116592116606_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116587116598_ _g116588116601_))))))
                      (declare (not safe))
                      (_g116586116625_ _clause116585_)))))
          (let* ((_g116546116556_
                  (lambda (_g116547116553_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g116547116553_))))
                 (_g116545116582_
                  (lambda (_g116547116559_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g116547116559_))
                        (let ((_e116551116561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g116547116559_))))
                          (let ((_hd116550116564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116551116561_)))
                                (_tl116549116566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116551116561_))))
                            ((lambda (_L116569_)
                               (let* ((_clauses116580_
                                       (map _clause-e116544_ _L116569_))
                                      (__tmp117531
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses116580_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp117531
                                  _stx116541_)))
                             _tl116549116566_)))
                        (let ()
                          (declare (not safe))
                          (_g116546116556_ _g116547116559_))))))
            (declare (not safe))
            (_g116545116582_ _stx116541_)))))
    (define gxc#xform-let-values%
      (lambda (_stx116335_ . _args116336_)
        (let* ((_g116338116371_
                (lambda (_g116339116368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116339116368_))))
               (_g116337116538_
                (lambda (_g116339116374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116339116374_))
                      (let ((_e116346116376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116339116374_))))
                        (let ((_hd116345116379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116346116376_)))
                              (_tl116344116381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116346116376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116344116381_))
                              (let ((_e116349116384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116344116381_))))
                                (let ((_hd116348116387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116349116384_)))
                                      (_tl116347116389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116349116384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd116348116387_))
                                      (let ((_g117532_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd116348116387_
                                                '0))))
                                        (begin
                                          (let ((_g117533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117532_)
                                                       (##vector-length
                                                        _g117532_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117533_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117533_)))
                                          (let ((_target116350116392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117532_ 0)))
                                                (_tl116352116394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117532_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116352116394_))
                                                (letrec ((_loop116353116397_
                                                          (lambda (_hd116351116400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr116357116402_
                           _hd116358116404_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd116351116400_))
                        (let ((_e116354116407_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd116351116400_))))
                          (let ((_lp-hd116355116410_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116354116407_)))
                                (_lp-tl116356116412_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116354116407_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd116355116410_))
                                (let ((_e116363116415_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd116355116410_))))
                                  (let ((_hd116362116418_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e116363116415_)))
                                        (_tl116361116420_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e116363116415_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl116361116420_))
                                        (let ((_e116366116423_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl116361116420_))))
                                          (let ((_hd116365116426_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e116366116423_)))
                                                (_tl116364116428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e116366116423_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl116364116428_))
                                                (let ((__tmp117546
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116365116426_
                                                               _expr116357116402_)))
                                                      (__tmp117545
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd116362116418_
                                                               _hd116358116404_))))
                                                  (declare (not safe))
                                                  (_loop116353116397_
                                                   _lp-tl116356116412_
                                                   __tmp117546
                                                   __tmp117545))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116338116371_
                                                   _g116339116374_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g116338116371_ _g116339116374_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g116338116371_ _g116339116374_)))))
                        (let ((_expr116359116431_ (reverse _expr116357116402_))
                              (_hd116360116433_ (reverse _hd116358116404_)))
                          ((lambda (_L116436_ _L116437_ _L116438_ _L116439_)
                             (let* ((_g116458116474_
                                     (lambda (_g116459116471_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g116459116471_))))
                                    (_g116457116528_
                                     (lambda (_g116459116477_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g116459116477_))
                                           (let ((_g117534_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g116459116477_
                                                     '0))))
                                             (begin
                                               (let ((_g117535_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g117534_)
                                                            (##vector-length
                                                             _g117534_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g117535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g117535_)))
                                               (let ((_target116461116479_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117534_
                                                         0)))
                                                     (_tl116463116481_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117534_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116463116481_))
                                                     (letrec ((_loop116464116484_
                                                               (lambda (_hd116462116487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr116468116489_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd116462116487_))
                             (let ((_e116465116492_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd116462116487_))))
                               (let ((_lp-hd116466116495_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116465116492_)))
                                     (_lp-tl116467116497_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116465116492_))))
                                 (let ((__tmp117542
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd116466116495_
                                                _expr116468116489_))))
                                   (declare (not safe))
                                   (_loop116464116484_
                                    _lp-tl116467116497_
                                    __tmp117542))))
                             (let ((_expr116469116500_
                                    (reverse _expr116468116489_)))
                               ((lambda (_L116503_)
                                  (let ()
                                    (let* ((_body116516_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args116336_))
                                                 _L116436_))
                                           (__tmp117536
                                            (let ((__tmp117537
                                                   (let ((__tmp117538
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L116503_
                                                               _L116438_))
                                                            (let ((__tmp117539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g116517116521_
                                    _g116518116523_
                                    _g116519116525_)
                             (let ((__tmp117540
                                    (let ((__tmp117541
                                           (let ()
                                             (declare (not safe))
                                             (cons _g116517116521_ '()))))
                                      (declare (not safe))
                                      (cons _g116518116523_ __tmp117541))))
                               (declare (not safe))
                               (cons __tmp117540 _g116519116525_)))))
                      (declare (not safe))
                      (foldr2 __tmp117539 '() _L116503_ _L116438_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp117538
                                                           _body116516_))))
                                              (declare (not safe))
                                              (cons _L116439_ __tmp117537))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp117536
                                       _stx116335_))))
                                _expr116469116500_))))))
               (let ()
                 (declare (not safe))
                 (_loop116464116484_ _target116461116479_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g116458116474_
                                                        _g116459116477_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g116458116474_
                                              _g116459116477_)))))
                                    (__tmp117543
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116336_))
                                          (let ((__tmp117544
                                                 (lambda (_g116530116533_
                                                          _g116531116535_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g116530116533_
                                                           _g116531116535_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp117544
                                                    '()
                                                    _L116437_)))))
                               (declare (not safe))
                               (_g116457116528_ __tmp117543)))
                           _tl116347116389_
                           _expr116359116431_
                           _hd116360116433_
                           _hd116345116379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop116353116397_
                                                     _target116350116392_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g116338116371_
                                                   _g116339116374_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116338116371_ _g116339116374_)))))
                              (let ()
                                (declare (not safe))
                                (_g116338116371_ _g116339116374_)))))
                      (let ()
                        (declare (not safe))
                        (_g116338116371_ _g116339116374_))))))
          (declare (not safe))
          (_g116337116538_ _stx116335_))))
    (define gxc#xform-operands
      (lambda (_stx116291_ . _args116292_)
        (let* ((_g116294116305_
                (lambda (_g116295116302_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116295116302_))))
               (_g116293116332_
                (lambda (_g116295116308_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116295116308_))
                      (let ((_e116300116310_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116295116308_))))
                        (let ((_hd116299116313_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116300116310_)))
                              (_tl116298116315_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116300116310_))))
                          ((lambda (_L116318_ _L116319_)
                             (let* ((_rands116330_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116292_))
                                          _L116318_))
                                    (__tmp117547
                                     (let ()
                                       (declare (not safe))
                                       (cons _L116319_ _rands116330_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117547
                                _stx116291_)))
                           _tl116298116315_
                           _hd116299116313_)))
                      (let ()
                        (declare (not safe))
                        (_g116294116305_ _g116295116308_))))))
          (declare (not safe))
          (_g116293116332_ _stx116291_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx116212_ . _args116213_)
        (let* ((_g116215116232_
                (lambda (_g116216116229_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116216116229_))))
               (_g116214116288_
                (lambda (_g116216116235_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116216116235_))
                      (let ((_e116221116237_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116216116235_))))
                        (let ((_hd116220116240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116221116237_)))
                              (_tl116219116242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116221116237_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116219116242_))
                              (let ((_e116224116245_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116219116242_))))
                                (let ((_hd116223116248_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116224116245_)))
                                      (_tl116222116250_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116224116245_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116222116250_))
                                      (let ((_e116227116253_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116222116250_))))
                                        (let ((_hd116226116256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116227116253_)))
                                              (_tl116225116258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116227116253_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116225116258_))
                                              ((lambda (_L116261_ _L116262_)
                                                 (let* ((_expr116286_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116213_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116261_))
                     (let ((_arg1116277_ (car _args116213_))
                           (_rest116279_ (cdr _args116213_)))
                       (if (let () (declare (not safe)) (null? _rest116279_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116261_ _arg1116277_))
                           (let ((_arg2116282_ (car _rest116279_))
                                 (_rest116284_ (cdr _rest116279_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116284_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116261_
                                    _arg1116277_
                                    _arg2116282_))
                                 (apply gxc#compile-e
                                        _L116261_
                                        _arg1116277_
                                        _arg2116282_
                                        _rest116284_)))))))
                (__tmp117548
                 (let ((__tmp117549
                        (let ((__tmp117550
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116286_ '()))))
                          (declare (not safe))
                          (cons _L116262_ __tmp117550))))
                   (declare (not safe))
                   (cons '%#set! __tmp117549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117548
                                                    _stx116212_)))
                                               _hd116226116256_
                                               _hd116223116248_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116215116232_
                                                 _g116216116235_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116215116232_ _g116216116235_)))))
                              (let ()
                                (declare (not safe))
                                (_g116215116232_ _g116216116235_)))))
                      (let ()
                        (declare (not safe))
                        (_g116215116232_ _g116216116235_))))))
          (declare (not safe))
          (_g116214116288_ _stx116212_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx116143_)
        (let* ((_g116145116162_
                (lambda (_g116146116159_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116146116159_))))
               (_g116144116209_
                (lambda (_g116146116165_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116146116165_))
                      (let ((_e116151116167_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116146116165_))))
                        (let ((_hd116150116170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116151116167_)))
                              (_tl116149116172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116151116167_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116149116172_))
                              (let ((_e116154116175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116149116172_))))
                                (let ((_hd116153116178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116154116175_)))
                                      (_tl116152116180_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116154116175_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116152116180_))
                                      (let ((_e116157116183_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116152116180_))))
                                        (let ((_hd116156116186_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116157116183_)))
                                              (_tl116155116188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116157116183_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116155116188_))
                                              ((lambda (_L116191_ _L116192_)
                                                 (let ((_sym116207_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L116192_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym116207_))
                                                   (let ((__tmp117551
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp117551
                                                      _sym116207_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L116191_))))
                                               _hd116156116186_
                                               _hd116153116178_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116145116162_
                                                 _g116146116165_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116145116162_ _g116146116165_)))))
                              (let ()
                                (declare (not safe))
                                (_g116145116162_ _g116146116165_)))))
                      (let ()
                        (declare (not safe))
                        (_g116145116162_ _g116146116165_))))))
          (declare (not safe))
          (_g116144116209_ _stx116143_))))
    (define gxc#collect-methods-call%
      (lambda (_stx115697_)
        (let* ((___stx117241117242_ _stx115697_)
               (_g115701115803_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx117241117242_)))))
          (let ((___kont117243117244_
                 (lambda (_L116093_ _L116094_ _L116095_ _L116096_ _L116097_)
                   (let ((__tmp117552
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L116094_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117552))))
                (___kont117245117246_
                 (lambda (_L115919_ _L115920_ _L115921_ _L115922_)
                   (let ((__tmp117553
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115919_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117553))))
                (___kont117247117248_ (lambda () '#!void)))
            (let ((___match117376117377_
                   (lambda (_e115710115965_
                            _hd115709115968_
                            _tl115708115970_
                            _e115713115973_
                            _hd115712115976_
                            _tl115711115978_
                            _e115716115981_
                            _hd115715115984_
                            _tl115714115986_
                            _e115719115989_
                            _hd115718115992_
                            _tl115717115994_
                            _e115722115997_
                            _hd115721116000_
                            _tl115720116002_
                            _e115725116005_
                            _hd115724116008_
                            _tl115723116010_
                            _e115728116013_
                            _hd115727116016_
                            _tl115726116018_
                            _e115731116021_
                            _hd115730116024_
                            _tl115729116026_
                            _e115734116029_
                            _hd115733116032_
                            _tl115732116034_
                            _e115737116037_
                            _hd115736116040_
                            _tl115735116042_
                            _e115740116045_
                            _hd115739116048_
                            _tl115738116050_
                            _e115743116053_
                            _hd115742116056_
                            _tl115741116058_
                            _e115746116061_
                            _hd115745116064_
                            _tl115744116066_
                            _e115749116069_
                            _hd115748116072_
                            _tl115747116074_
                            _e115752116077_
                            _hd115751116080_
                            _tl115750116082_
                            _e115755116085_
                            _hd115754116088_
                            _tl115753116090_)
                     (let ((_L116093_ _hd115754116088_)
                           (_L116094_ _hd115745116064_)
                           (_L116095_ _hd115736116040_)
                           (_L116096_ _hd115727116016_)
                           (_L116097_ _hd115718115992_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L116097_
                              'bind-method!))
                           (___kont117243117244_
                            _L116093_
                            _L116094_
                            _L116095_
                            _L116096_
                            _L116097_)
                           (___kont117247117248_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx117241117242_))
                  (let ((_e115710115965_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx117241117242_))))
                    (let ((_tl115708115970_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115710115965_)))
                          (_hd115709115968_
                           (let ()
                             (declare (not safe))
                             (##car _e115710115965_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115708115970_))
                          (let ((_e115713115973_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115708115970_))))
                            (let ((_tl115711115978_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115713115973_)))
                                  (_hd115712115976_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115713115973_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115712115976_))
                                  (let ((_e115716115981_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115712115976_))))
                                    (let ((_tl115714115986_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115716115981_)))
                                          (_hd115715115984_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115716115981_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115715115984_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115715115984_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115714115986_))
                                                  (let ((_e115719115989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115714115986_))))
                                                    (let ((_tl115717115994_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115719115989_)))
                                                          (_hd115718115992_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115719115989_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115717115994_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115711115978_))
                      (let ((_e115722115997_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115711115978_))))
                        (let ((_tl115720116002_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115722115997_)))
                              (_hd115721116000_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115722115997_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115721116000_))
                              (let ((_e115725116005_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115721116000_))))
                                (let ((_tl115723116010_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115725116005_)))
                                      (_hd115724116008_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115725116005_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115724116008_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115724116008_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115723116010_))
                                              (let ((_e115728116013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115723116010_))))
                                                (let ((_tl115726116018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115728116013_)))
                                                      (_hd115727116016_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115728116013_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115726116018_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115720116002_))
                                                          (let ((_e115731116021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115720116002_))))
                    (let ((_tl115729116026_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115731116021_)))
                          (_hd115730116024_
                           (let ()
                             (declare (not safe))
                             (##car _e115731116021_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115730116024_))
                          (let ((_e115734116029_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115730116024_))))
                            (let ((_tl115732116034_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115734116029_)))
                                  (_hd115733116032_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115734116029_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115733116032_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115733116032_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115732116034_))
                                          (let ((_e115737116037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115732116034_))))
                                            (let ((_tl115735116042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115737116037_)))
                                                  (_hd115736116040_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115737116037_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115735116042_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115729116026_))
                                                      (let ((_e115740116045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115729116026_))))
                (let ((_tl115738116050_
                       (let () (declare (not safe)) (##cdr _e115740116045_)))
                      (_hd115739116048_
                       (let () (declare (not safe)) (##car _e115740116045_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115739116048_))
                      (let ((_e115743116053_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115739116048_))))
                        (let ((_tl115741116058_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115743116053_)))
                              (_hd115742116056_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115743116053_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115742116056_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115742116056_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115741116058_))
                                      (let ((_e115746116061_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115741116058_))))
                                        (let ((_tl115744116066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115746116061_)))
                                              (_hd115745116064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115746116061_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115744116066_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115738116050_))
                                                  (let ((_e115749116069_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115738116050_))))
                                                    (let ((_tl115747116074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115749116069_)))
                                                          (_hd115748116072_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115749116069_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115748116072_))
                                                          (let ((_e115752116077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115748116072_))))
                    (let ((_tl115750116082_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115752116077_)))
                          (_hd115751116080_
                           (let ()
                             (declare (not safe))
                             (##car _e115752116077_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115751116080_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115751116080_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115750116082_))
                                  (let ((_e115755116085_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115750116082_))))
                                    (let ((_tl115753116090_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115755116085_)))
                                          (_hd115754116088_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115755116085_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115753116090_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115747116074_))
                                              (___match117376117377_
                                               _e115710115965_
                                               _hd115709115968_
                                               _tl115708115970_
                                               _e115713115973_
                                               _hd115712115976_
                                               _tl115711115978_
                                               _e115716115981_
                                               _hd115715115984_
                                               _tl115714115986_
                                               _e115719115989_
                                               _hd115718115992_
                                               _tl115717115994_
                                               _e115722115997_
                                               _hd115721116000_
                                               _tl115720116002_
                                               _e115725116005_
                                               _hd115724116008_
                                               _tl115723116010_
                                               _e115728116013_
                                               _hd115727116016_
                                               _tl115726116018_
                                               _e115731116021_
                                               _hd115730116024_
                                               _tl115729116026_
                                               _e115734116029_
                                               _hd115733116032_
                                               _tl115732116034_
                                               _e115737116037_
                                               _hd115736116040_
                                               _tl115735116042_
                                               _e115740116045_
                                               _hd115739116048_
                                               _tl115738116050_
                                               _e115743116053_
                                               _hd115742116056_
                                               _tl115741116058_
                                               _e115746116061_
                                               _hd115745116064_
                                               _tl115744116066_
                                               _e115749116069_
                                               _hd115748116072_
                                               _tl115747116074_
                                               _e115752116077_
                                               _hd115751116080_
                                               _tl115750116082_
                                               _e115755116085_
                                               _hd115754116088_
                                               _tl115753116090_)
                                              (___kont117247117248_))
                                          (___kont117247117248_))))
                                  (___kont117247117248_))
                              (___kont117247117248_))
                          (___kont117247117248_))))
                  (___kont117247117248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115738116050_))
                                                      (if (let ((__tmp117554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp117554 'bind-method!))
                  (let ((_L115919_ _hd115745116064_)
                        (_L115920_ _hd115736116040_)
                        (_L115921_ _hd115727116016_)
                        (_L115922_ _hd115718115992_))
                    (___kont117245117246_
                     _L115919_
                     _L115920_
                     _L115921_
                     _L115922_))
                  (___kont117247117248_))
              (___kont117247117248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117247117248_))))
                                      (___kont117247117248_))
                                  (___kont117247117248_))
                              (___kont117247117248_))))
                      (___kont117247117248_))))
              (___kont117247117248_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117247117248_))))
                                          (___kont117247117248_))
                                      (___kont117247117248_))
                                  (___kont117247117248_))))
                          (___kont117247117248_))))
                  (___kont117247117248_))
              (___kont117247117248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont117247117248_))
                                          (___kont117247117248_))
                                      (___kont117247117248_))))
                              (___kont117247117248_))))
                      (___kont117247117248_))
                  (___kont117247117248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont117247117248_))
                                              (___kont117247117248_))
                                          (___kont117247117248_))))
                                  (___kont117247117248_))))
                          (___kont117247117248_))))
                  (___kont117247117248_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx115644_ _id115645_ _new-id115646_)
        (let* ((_g115648115661_
                (lambda (_g115649115658_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115649115658_))))
               (_g115647115694_
                (lambda (_g115649115664_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115649115664_))
                      (let ((_e115653115666_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115649115664_))))
                        (let ((_hd115652115669_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115653115666_)))
                              (_tl115651115671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115653115666_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115651115671_))
                              (let ((_e115656115674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115651115671_))))
                                (let ((_hd115655115677_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115656115674_)))
                                      (_tl115654115679_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115656115674_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115654115679_))
                                      ((lambda (_L115682_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115682_
                                                _id115645_))
                                             (let ((__tmp117555
                                                    (let ((__tmp117556
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id115646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp117556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp117555
                                                _stx115644_))
                                             _stx115644_))
                                       _hd115655115677_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115648115661_ _g115649115664_)))))
                              (let ()
                                (declare (not safe))
                                (_g115648115661_ _g115649115664_)))))
                      (let ()
                        (declare (not safe))
                        (_g115648115661_ _g115649115664_))))))
          (declare (not safe))
          (_g115647115694_ _stx115644_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx115585_ _subst115586_)
        (let* ((_g115588115601_
                (lambda (_g115589115598_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115589115598_))))
               (_g115587115641_
                (lambda (_g115589115604_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115589115604_))
                      (let ((_e115593115606_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115589115604_))))
                        (let ((_hd115592115609_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115593115606_)))
                              (_tl115591115611_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115593115606_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115591115611_))
                              (let ((_e115596115614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115591115611_))))
                                (let ((_hd115595115617_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115596115614_)))
                                      (_tl115594115619_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115596115614_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115594115619_))
                                      ((lambda (_L115622_)
                                         (let ((_$e115636_
                                                (let ((__tmp117557
                                                       (lambda (_sub115634_)
                                                         (let ((__tmp117558
                                                                (car _sub115634_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115622_
                                                            __tmp117558)))))
                                                  (declare (not safe))
                                                  (find __tmp117557
                                                        _subst115586_))))
                                           (if _$e115636_
                                               ((lambda (_sub115639_)
                                                  (let ((__tmp117559
                                                         (let ((__tmp117560
                                                                (let ((__tmp117561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115639_)))
                          (declare (not safe))
                          (cons __tmp117561 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp117560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp117559
                                                     _stx115585_)))
                                                _$e115636_)
                                               _stx115585_)))
                                       _hd115595115617_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115588115601_ _g115589115604_)))))
                              (let ()
                                (declare (not safe))
                                (_g115588115601_ _g115589115604_)))))
                      (let ()
                        (declare (not safe))
                        (_g115588115601_ _g115589115604_))))))
          (declare (not safe))
          (_g115587115641_ _stx115585_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx115513_ _id115514_ _new-id115515_)
        (let* ((_g115517115534_
                (lambda (_g115518115531_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115518115531_))))
               (_g115516115582_
                (lambda (_g115518115537_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115518115537_))
                      (let ((_e115523115539_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115518115537_))))
                        (let ((_hd115522115542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115523115539_)))
                              (_tl115521115544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115523115539_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115521115544_))
                              (let ((_e115526115547_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115521115544_))))
                                (let ((_hd115525115550_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115526115547_)))
                                      (_tl115524115552_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115526115547_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115524115552_))
                                      (let ((_e115529115555_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115524115552_))))
                                        (let ((_hd115528115558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115529115555_)))
                                              (_tl115527115560_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115529115555_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115527115560_))
                                              ((lambda (_L115563_ _L115564_)
                                                 (let ((_new-expr115579_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L115563_
                                                           _id115514_
                                                           _new-id115515_)))
                                                       (_new-xid115580_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L115564_
                                                               _id115514_))
                                                            _new-id115515_
                                                            _L115564_)))
                                                   (let ((__tmp117562
                                                          (let ((__tmp117563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117564
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115579_ '()))))
                           (declare (not safe))
                           (cons _new-xid115580_ __tmp117564))))
                    (declare (not safe))
                    (cons '%#set! __tmp117563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117562
                                                      _stx115513_))))
                                               _hd115528115558_
                                               _hd115525115550_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115517115534_
                                                 _g115518115537_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115517115534_ _g115518115537_)))))
                              (let ()
                                (declare (not safe))
                                (_g115517115534_ _g115518115537_)))))
                      (let ()
                        (declare (not safe))
                        (_g115517115534_ _g115518115537_))))))
          (declare (not safe))
          (_g115516115582_ _stx115513_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx115437_ _subst115438_)
        (let* ((_g115440115457_
                (lambda (_g115441115454_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115441115454_))))
               (_g115439115510_
                (lambda (_g115441115460_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115441115460_))
                      (let ((_e115446115462_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115441115460_))))
                        (let ((_hd115445115465_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115446115462_)))
                              (_tl115444115467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115446115462_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115444115467_))
                              (let ((_e115449115470_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115444115467_))))
                                (let ((_hd115448115473_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115449115470_)))
                                      (_tl115447115475_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115449115470_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115447115475_))
                                      (let ((_e115452115478_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115447115475_))))
                                        (let ((_hd115451115481_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115452115478_)))
                                              (_tl115450115483_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115452115478_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115450115483_))
                                              ((lambda (_L115486_ _L115487_)
                                                 (let ((_new-expr115507_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L115486_
                                                           _subst115438_)))
                                                       (_new-xid115508_
                                                        (let ((_$e115504_
                                                               (let ((__tmp117565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115502_)
                                (let ((__tmp117566 (car _sub115502_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115487_
                                   __tmp117566)))))
                         (declare (not safe))
                         (find __tmp117565 _subst115438_))))
                  (if _$e115504_ (cdr _$e115504_) _L115487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp117567
                                                          (let ((__tmp117568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117569
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115507_ '()))))
                           (declare (not safe))
                           (cons _new-xid115508_ __tmp117569))))
                    (declare (not safe))
                    (cons '%#set! __tmp117568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117567
                                                      _stx115437_))))
                                               _hd115451115481_
                                               _hd115448115473_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115440115457_
                                                 _g115441115460_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115440115457_ _g115441115460_)))))
                              (let ()
                                (declare (not safe))
                                (_g115440115457_ _g115441115460_)))))
                      (let ()
                        (declare (not safe))
                        (_g115440115457_ _g115441115460_))))))
          (declare (not safe))
          (_g115439115510_ _stx115437_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx115383_ _ht115384_)
        (let* ((_g115386115399_
                (lambda (_g115387115396_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115387115396_))))
               (_g115385115434_
                (lambda (_g115387115402_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115387115402_))
                      (let ((_e115391115404_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115387115402_))))
                        (let ((_hd115390115407_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115391115404_)))
                              (_tl115389115409_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115391115404_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115389115409_))
                              (let ((_e115394115412_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115389115409_))))
                                (let ((_hd115393115415_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115394115412_)))
                                      (_tl115392115417_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115394115412_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115392115417_))
                                      ((lambda (_L115420_)
                                         (let ((_eid115432_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L115420_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht115384_
                                            _eid115432_
                                            1+
                                            '0)))
                                       _hd115393115415_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115386115399_ _g115387115402_)))))
                              (let ()
                                (declare (not safe))
                                (_g115386115399_ _g115387115402_)))))
                      (let ()
                        (declare (not safe))
                        (_g115386115399_ _g115387115402_))))))
          (declare (not safe))
          (_g115385115434_ _stx115383_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx115313_ _ht115314_)
        (let* ((_g115316115333_
                (lambda (_g115317115330_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115317115330_))))
               (_g115315115380_
                (lambda (_g115317115336_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115317115336_))
                      (let ((_e115322115338_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115317115336_))))
                        (let ((_hd115321115341_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115322115338_)))
                              (_tl115320115343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115322115338_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115320115343_))
                              (let ((_e115325115346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115320115343_))))
                                (let ((_hd115324115349_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115325115346_)))
                                      (_tl115323115351_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115325115346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115323115351_))
                                      (let ((_e115328115354_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115323115351_))))
                                        (let ((_hd115327115357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115328115354_)))
                                              (_tl115326115359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115328115354_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115326115359_))
                                              ((lambda (_L115362_ _L115363_)
                                                 (let ((_eid115378_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115363_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht115314_
                                                      _eid115378_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L115362_
                                                      _ht115314_))))
                                               _hd115327115357_
                                               _hd115324115349_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115316115333_
                                                 _g115317115336_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115316115333_ _g115317115336_)))))
                              (let ()
                                (declare (not safe))
                                (_g115316115333_ _g115317115336_)))))
                      (let ()
                        (declare (not safe))
                        (_g115316115333_ _g115317115336_))))))
          (declare (not safe))
          (_g115315115380_ _stx115313_))))
    (define gxc#find-body%
      (lambda (_stx115226_ _arg115227_)
        (let* ((_g115229115248_
                (lambda (_g115230115245_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115230115245_))))
               (_g115228115310_
                (lambda (_g115230115251_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115230115251_))
                      (let ((_e115234115253_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115230115251_))))
                        (let ((_hd115233115256_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115234115253_)))
                              (_tl115232115258_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115234115253_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl115232115258_))
                              (let ((_g117570_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl115232115258_
                                        '0))))
                                (begin
                                  (let ((_g117571_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117570_)
                                               (##vector-length _g117570_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117571_ 2)))
                                        (error "Context expects 2 values"
                                               _g117571_)))
                                  (let ((_target115235115261_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117570_ 0)))
                                        (_tl115237115263_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117570_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl115237115263_))
                                        (letrec ((_loop115238115266_
                                                  (lambda (_hd115236115269_
                                                           _expr115242115271_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd115236115269_))
                                                        (let ((_e115239115274_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd115236115269_))))
                  (let ((_lp-hd115240115277_
                         (let () (declare (not safe)) (##car _e115239115274_)))
                        (_lp-tl115241115279_
                         (let ()
                           (declare (not safe))
                           (##cdr _e115239115274_))))
                    (let ((__tmp117575
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd115240115277_ _expr115242115271_))))
                      (declare (not safe))
                      (_loop115238115266_ _lp-tl115241115279_ __tmp117575))))
                (let ((_expr115243115282_ (reverse _expr115242115271_)))
                  ((lambda (_L115285_)
                     (let ((__tmp117574
                            (lambda (_g115298115300_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115298115300_
                                 _arg115227_))))
                           (__tmp117572
                            (let ((__tmp117573
                                   (lambda (_g115302115305_ _g115303115307_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115302115305_
                                             _g115303115307_)))))
                              (declare (not safe))
                              (foldr1 __tmp117573 '() _L115285_))))
                       (declare (not safe))
                       (ormap1 __tmp117574 __tmp117572)))
                   _expr115243115282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop115238115266_
                                             _target115235115261_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g115229115248_
                                           _g115230115251_))))))
                              (let ()
                                (declare (not safe))
                                (_g115229115248_ _g115230115251_)))))
                      (let ()
                        (declare (not safe))
                        (_g115229115248_ _g115230115251_))))))
          (declare (not safe))
          (_g115228115310_ _stx115226_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx115158_ _arg115159_)
        (let* ((_g115161115178_
                (lambda (_g115162115175_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115162115175_))))
               (_g115160115223_
                (lambda (_g115162115181_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115162115181_))
                      (let ((_e115167115183_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115162115181_))))
                        (let ((_hd115166115186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115167115183_)))
                              (_tl115165115188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115167115183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115165115188_))
                              (let ((_e115170115191_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115165115188_))))
                                (let ((_hd115169115194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115170115191_)))
                                      (_tl115168115196_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115170115191_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115168115196_))
                                      (let ((_e115173115199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115168115196_))))
                                        (let ((_hd115172115202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115173115199_)))
                                              (_tl115171115204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115173115199_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115171115204_))
                                              ((lambda (_L115207_ _L115208_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115207_
                                                    _arg115159_)))
                                               _hd115172115202_
                                               _hd115169115194_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115161115178_
                                                 _g115162115181_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115161115178_ _g115162115181_)))))
                              (let ()
                                (declare (not safe))
                                (_g115161115178_ _g115162115181_)))))
                      (let ()
                        (declare (not safe))
                        (_g115161115178_ _g115162115181_))))))
          (declare (not safe))
          (_g115160115223_ _stx115158_))))
    (define gxc#find-lambda%
      (lambda (_stx115090_ _arg115091_)
        (let* ((_g115093115110_
                (lambda (_g115094115107_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115094115107_))))
               (_g115092115155_
                (lambda (_g115094115113_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115094115113_))
                      (let ((_e115099115115_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115094115113_))))
                        (let ((_hd115098115118_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115099115115_)))
                              (_tl115097115120_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115099115115_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115097115120_))
                              (let ((_e115102115123_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115097115120_))))
                                (let ((_hd115101115126_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115102115123_)))
                                      (_tl115100115128_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115102115123_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115100115128_))
                                      (let ((_e115105115131_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115100115128_))))
                                        (let ((_hd115104115134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115105115131_)))
                                              (_tl115103115136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115105115131_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115103115136_))
                                              ((lambda (_L115139_ _L115140_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L115139_
                                                    _arg115091_)))
                                               _hd115104115134_
                                               _hd115101115126_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115093115110_
                                                 _g115094115113_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115093115110_ _g115094115113_)))))
                              (let ()
                                (declare (not safe))
                                (_g115093115110_ _g115094115113_)))))
                      (let ()
                        (declare (not safe))
                        (_g115093115110_ _g115094115113_))))))
          (declare (not safe))
          (_g115092115155_ _stx115090_))))
    (define gxc#find-case-lambda%
      (lambda (_stx114972_ _arg114973_)
        (let* ((_g114975115003_
                (lambda (_g114976115000_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114976115000_))))
               (_g114974115087_
                (lambda (_g114976115006_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114976115006_))
                      (let ((_e114981115008_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114976115006_))))
                        (let ((_hd114980115011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114981115008_)))
                              (_tl114979115013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114981115008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114979115013_))
                              (let ((_g117576_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114979115013_
                                        '0))))
                                (begin
                                  (let ((_g117577_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117576_)
                                               (##vector-length _g117576_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117577_ 2)))
                                        (error "Context expects 2 values"
                                               _g117577_)))
                                  (let ((_target114982115016_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117576_ 0)))
                                        (_tl114984115018_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117576_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114984115018_))
                                        (letrec ((_loop114985115021_
                                                  (lambda (_hd114983115024_
                                                           _body114989115026_
                                                           _hd114990115028_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114983115024_))
                                                        (let ((_e114986115031_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114983115024_))))
                  (let ((_lp-hd114987115034_
                         (let () (declare (not safe)) (##car _e114986115031_)))
                        (_lp-tl114988115036_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114986115031_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd114987115034_))
                        (let ((_e114995115039_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd114987115034_))))
                          (let ((_hd114994115042_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114995115039_)))
                                (_tl114993115044_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114995115039_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl114993115044_))
                                (let ((_e114998115047_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl114993115044_))))
                                  (let ((_hd114997115050_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114998115047_)))
                                        (_tl114996115052_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114998115047_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114996115052_))
                                        (let ((__tmp117582
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114997115050_
                                                       _body114989115026_)))
                                              (__tmp117581
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114994115042_
                                                       _hd114990115028_))))
                                          (declare (not safe))
                                          (_loop114985115021_
                                           _lp-tl114988115036_
                                           __tmp117582
                                           __tmp117581))
                                        (let ()
                                          (declare (not safe))
                                          (_g114975115003_ _g114976115006_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114975115003_ _g114976115006_)))))
                        (let ()
                          (declare (not safe))
                          (_g114975115003_ _g114976115006_)))))
                (let ((_body114991115055_ (reverse _body114989115026_))
                      (_hd114992115057_ (reverse _hd114990115028_)))
                  ((lambda (_L115060_ _L115061_)
                     (let ((__tmp117580
                            (lambda (_g115075115077_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g115075115077_
                                 _arg114973_))))
                           (__tmp117578
                            (let ((__tmp117579
                                   (lambda (_g115079115082_ _g115080115084_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g115079115082_
                                             _g115080115084_)))))
                              (declare (not safe))
                              (foldr1 __tmp117579 '() _L115060_))))
                       (declare (not safe))
                       (ormap1 __tmp117580 __tmp117578)))
                   _body114991115055_
                   _hd114992115057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114985115021_
                                             _target114982115016_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114975115003_
                                           _g114976115006_))))))
                              (let ()
                                (declare (not safe))
                                (_g114975115003_ _g114976115006_)))))
                      (let ()
                        (declare (not safe))
                        (_g114975115003_ _g114976115006_))))))
          (declare (not safe))
          (_g114974115087_ _stx114972_))))
    (define gxc#find-let-values%
      (lambda (_stx114822_ _arg114823_)
        (let* ((_g114825114860_
                (lambda (_g114826114857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114826114857_))))
               (_g114824114969_
                (lambda (_g114826114863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114826114863_))
                      (let ((_e114832114865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114826114863_))))
                        (let ((_hd114831114868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114832114865_)))
                              (_tl114830114870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114832114865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114830114870_))
                              (let ((_e114835114873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114830114870_))))
                                (let ((_hd114834114876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114835114873_)))
                                      (_tl114833114878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114835114873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd114834114876_))
                                      (let ((_g117583_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd114834114876_
                                                '0))))
                                        (begin
                                          (let ((_g117584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117583_)
                                                       (##vector-length
                                                        _g117583_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117584_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117584_)))
                                          (let ((_target114836114881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117583_ 0)))
                                                (_tl114838114883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117583_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114838114883_))
                                                (letrec ((_loop114839114886_
                                                          (lambda (_hd114837114889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr114843114891_
                           _bind114844114893_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd114837114889_))
                        (let ((_e114840114896_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd114837114889_))))
                          (let ((_lp-hd114841114899_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114840114896_)))
                                (_lp-tl114842114901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114840114896_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd114841114899_))
                                (let ((_e114849114904_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd114841114899_))))
                                  (let ((_hd114848114907_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114849114904_)))
                                        (_tl114847114909_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114849114904_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl114847114909_))
                                        (let ((_e114852114912_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl114847114909_))))
                                          (let ((_hd114851114915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e114852114912_)))
                                                (_tl114850114917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e114852114912_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114850114917_))
                                                (let ((__tmp117589
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114851114915_
                                                               _expr114843114891_)))
                                                      (__tmp117588
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114848114907_
                                                               _bind114844114893_))))
                                                  (declare (not safe))
                                                  (_loop114839114886_
                                                   _lp-tl114842114901_
                                                   __tmp117589
                                                   __tmp117588))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114825114860_
                                                   _g114826114863_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g114825114860_ _g114826114863_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114825114860_ _g114826114863_)))))
                        (let ((_expr114845114920_ (reverse _expr114843114891_))
                              (_bind114846114922_
                               (reverse _bind114844114893_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114833114878_))
                              (let ((_e114855114925_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114833114878_))))
                                (let ((_hd114854114928_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114855114925_)))
                                      (_tl114853114930_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114855114925_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114853114930_))
                                      ((lambda (_L114933_ _L114934_ _L114935_)
                                         (let ((_$e114966_
                                                (let ((__tmp117587
                                                       (lambda (_g114954114956_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g114954114956_
                                                            _arg114823_))))
                                                      (__tmp117585
                                                       (let ((__tmp117586
                                                              (lambda (_g114958114961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g114959114963_)
                        (let ()
                          (declare (not safe))
                          (cons _g114958114961_ _g114959114963_)))))
                 (declare (not safe))
                 (foldr1 __tmp117586 '() _L114934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp117587
                                                          __tmp117585))))
                                           (if _$e114966_
                                               _$e114966_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L114933_
                                                  _arg114823_)))))
                                       _hd114854114928_
                                       _expr114845114920_
                                       _bind114846114922_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114825114860_ _g114826114863_)))))
                              (let ()
                                (declare (not safe))
                                (_g114825114860_ _g114826114863_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop114839114886_
                                                     _target114836114881_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114825114860_
                                                   _g114826114863_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114825114860_ _g114826114863_)))))
                              (let ()
                                (declare (not safe))
                                (_g114825114860_ _g114826114863_)))))
                      (let ()
                        (declare (not safe))
                        (_g114825114860_ _g114826114863_))))))
          (declare (not safe))
          (_g114824114969_ _stx114822_))))
    (define gxc#find-setq%
      (lambda (_stx114754_ _arg114755_)
        (let* ((_g114757114774_
                (lambda (_g114758114771_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114758114771_))))
               (_g114756114819_
                (lambda (_g114758114777_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114758114777_))
                      (let ((_e114763114779_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114758114777_))))
                        (let ((_hd114762114782_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114763114779_)))
                              (_tl114761114784_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114763114779_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114761114784_))
                              (let ((_e114766114787_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114761114784_))))
                                (let ((_hd114765114790_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114766114787_)))
                                      (_tl114764114792_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114766114787_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114764114792_))
                                      (let ((_e114769114795_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114764114792_))))
                                        (let ((_hd114768114798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114769114795_)))
                                              (_tl114767114800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114769114795_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114767114800_))
                                              ((lambda (_L114803_ _L114804_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114803_
                                                    _arg114755_)))
                                               _hd114768114798_
                                               _hd114765114790_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114757114774_
                                                 _g114758114777_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114757114774_ _g114758114777_)))))
                              (let ()
                                (declare (not safe))
                                (_g114757114774_ _g114758114777_)))))
                      (let ()
                        (declare (not safe))
                        (_g114757114774_ _g114758114777_))))))
          (declare (not safe))
          (_g114756114819_ _stx114754_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx114698_ _ids114699_)
        (let* ((_g114701114714_
                (lambda (_g114702114711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114702114711_))))
               (_g114700114751_
                (lambda (_g114702114717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114702114717_))
                      (let ((_e114706114719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114702114717_))))
                        (let ((_hd114705114722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114706114719_)))
                              (_tl114704114724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114706114719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114704114724_))
                              (let ((_e114709114727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114704114724_))))
                                (let ((_hd114708114730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114709114727_)))
                                      (_tl114707114732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114709114727_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114707114732_))
                                      ((lambda (_L114735_)
                                         (let ((__tmp117590
                                                (lambda (_g114746114748_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114735_
                                                     _g114746114748_)))))
                                           (declare (not safe))
                                           (find __tmp117590 _ids114699_)))
                                       _hd114708114730_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114701114714_ _g114702114717_)))))
                              (let ()
                                (declare (not safe))
                                (_g114701114714_ _g114702114717_)))))
                      (let ()
                        (declare (not safe))
                        (_g114701114714_ _g114702114717_))))))
          (declare (not safe))
          (_g114700114751_ _stx114698_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx114622_ _ids114623_)
        (let* ((_g114625114642_
                (lambda (_g114626114639_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114626114639_))))
               (_g114624114695_
                (lambda (_g114626114645_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114626114645_))
                      (let ((_e114631114647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114626114645_))))
                        (let ((_hd114630114650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114631114647_)))
                              (_tl114629114652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114631114647_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114629114652_))
                              (let ((_e114634114655_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114629114652_))))
                                (let ((_hd114633114658_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114634114655_)))
                                      (_tl114632114660_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114634114655_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114632114660_))
                                      (let ((_e114637114663_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114632114660_))))
                                        (let ((_hd114636114666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114637114663_)))
                                              (_tl114635114668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114637114663_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114635114668_))
                                              ((lambda (_L114671_ _L114672_)
                                                 (let ((_$e114692_
                                                        (let ((__tmp117591
                                                               (lambda (_g114687114689_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114672_ _g114687114689_)))))
                  (declare (not safe))
                  (find __tmp117591 _ids114623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114692_
                                                       _$e114692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L114671_
                                                          _ids114623_)))))
                                               _hd114636114666_
                                               _hd114633114658_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114625114642_
                                                 _g114626114645_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114625114642_ _g114626114645_)))))
                              (let ()
                                (declare (not safe))
                                (_g114625114642_ _g114626114645_)))))
                      (let ()
                        (declare (not safe))
                        (_g114625114642_ _g114626114645_))))))
          (declare (not safe))
          (_g114624114695_ _stx114622_))))))
