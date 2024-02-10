(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707573214)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl221204_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221204_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221204_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221204_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221204_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl221204_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl221200_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221200_ '%#declare gxc#xform-identity))
           _tbl221200_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl221196_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225918 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl221196_ __tmp225918))
           (let ((__tmp225919 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl221196_ __tmp225919))
           _tbl221196_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl221192_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221192_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221192_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221192_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221192_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221192_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl221192_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl221188_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225920 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221188_ __tmp225920))
           (let ((__tmp225921 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl221188_ __tmp225921))
           (let ()
             (declare (not safe))
             (table-set! _tbl221188_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221188_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221188_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221188_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221188_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl221188_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl221184_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225922 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221184_ __tmp225922))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl221184_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221184_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl221184_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx221167_ . _args221169_)
        (let ((__tmp225924
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221169_)
                     (gxc#compile-e__0 _stx221167_)
                     (let ((_arg1221174_ (car _args221169_))
                           (_rest221176_ (cdr _args221169_)))
                       (if (null? _rest221176_)
                           (gxc#compile-e__1 _stx221167_ _arg1221174_)
                           (let ((_arg2221179_ (car _rest221176_))
                                 (_rest221181_ (cdr _rest221176_)))
                             (if (null? _rest221181_)
                                 (gxc#compile-e__2
                                  _stx221167_
                                  _arg1221174_
                                  _arg2221179_)
                                 (apply gxc#compile-e
                                        _stx221167_
                                        _arg1221174_
                                        _arg2221179_
                                        _rest221181_))))))))
              (__tmp225923 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp225924
           gxc#current-compile-methods
           __tmp225923))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl221164_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225925 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl221164_ __tmp225925))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221164_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221164_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221164_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl221164_))))
    (define gxc#apply-collect-methods
      (lambda (_stx221147_ . _args221149_)
        (let ((__tmp225927
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221149_)
                     (gxc#compile-e__0 _stx221147_)
                     (let ((_arg1221154_ (car _args221149_))
                           (_rest221156_ (cdr _args221149_)))
                       (if (null? _rest221156_)
                           (gxc#compile-e__1 _stx221147_ _arg1221154_)
                           (let ((_arg2221159_ (car _rest221156_))
                                 (_rest221161_ (cdr _rest221156_)))
                             (if (null? _rest221161_)
                                 (gxc#compile-e__2
                                  _stx221147_
                                  _arg1221154_
                                  _arg2221159_)
                                 (apply gxc#compile-e
                                        _stx221147_
                                        _arg1221154_
                                        _arg2221159_
                                        _rest221161_))))))))
              (__tmp225926 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp225927
           gxc#current-compile-methods
           __tmp225926))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl221144_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225928 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl221144_ __tmp225928))
           (let ()
             (declare (not safe))
             (table-set! _tbl221144_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221144_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221144_ '%#set! gxc#expression-subst-setq%))
           _tbl221144_))))
    (define gxc#apply-expression-subst
      (lambda (_stx221127_ . _args221129_)
        (let ((__tmp225930
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221129_)
                     (gxc#compile-e__0 _stx221127_)
                     (let ((_arg1221134_ (car _args221129_))
                           (_rest221136_ (cdr _args221129_)))
                       (if (null? _rest221136_)
                           (gxc#compile-e__1 _stx221127_ _arg1221134_)
                           (let ((_arg2221139_ (car _rest221136_))
                                 (_rest221141_ (cdr _rest221136_)))
                             (if (null? _rest221141_)
                                 (gxc#compile-e__2
                                  _stx221127_
                                  _arg1221134_
                                  _arg2221139_)
                                 (apply gxc#compile-e
                                        _stx221127_
                                        _arg1221134_
                                        _arg2221139_
                                        _rest221141_))))))))
              (__tmp225929 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp225930
           gxc#current-compile-methods
           __tmp225929))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl221124_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225931 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl221124_ __tmp225931))
           (let ()
             (declare (not safe))
             (table-set! _tbl221124_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221124_ '%#set! gxc#expression-subst*-setq%))
           _tbl221124_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx221107_ . _args221109_)
        (let ((__tmp225933
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221109_)
                     (gxc#compile-e__0 _stx221107_)
                     (let ((_arg1221114_ (car _args221109_))
                           (_rest221116_ (cdr _args221109_)))
                       (if (null? _rest221116_)
                           (gxc#compile-e__1 _stx221107_ _arg1221114_)
                           (let ((_arg2221119_ (car _rest221116_))
                                 (_rest221121_ (cdr _rest221116_)))
                             (if (null? _rest221121_)
                                 (gxc#compile-e__2
                                  _stx221107_
                                  _arg1221114_
                                  _arg2221119_)
                                 (apply gxc#compile-e
                                        _stx221107_
                                        _arg1221114_
                                        _arg2221119_
                                        _rest221121_))))))))
              (__tmp225932 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp225933
           gxc#current-compile-methods
           __tmp225932))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl221104_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225934 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl221104_ __tmp225934))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221104_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl221104_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221104_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl221104_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl221100_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225935 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl221100_ __tmp225935))
           (let ()
             (declare (not safe))
             (table-set! _tbl221100_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221100_ '%#set! gxc#find-var-refs-setq%))
           _tbl221100_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx221083_ . _args221085_)
        (let ((__tmp225937
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221085_)
                     (gxc#compile-e__0 _stx221083_)
                     (let ((_arg1221090_ (car _args221085_))
                           (_rest221092_ (cdr _args221085_)))
                       (if (null? _rest221092_)
                           (gxc#compile-e__1 _stx221083_ _arg1221090_)
                           (let ((_arg2221095_ (car _rest221092_))
                                 (_rest221097_ (cdr _rest221092_)))
                             (if (null? _rest221097_)
                                 (gxc#compile-e__2
                                  _stx221083_
                                  _arg1221090_
                                  _arg2221095_)
                                 (apply gxc#compile-e
                                        _stx221083_
                                        _arg1221090_
                                        _arg2221095_
                                        _rest221097_))))))))
              (__tmp225936 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225937
           gxc#current-compile-methods
           __tmp225936))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl221080_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp225938 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl221080_ __tmp225938))
           (let ()
             (declare (not safe))
             (table-set! _tbl221080_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl221080_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl221080_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx221063_ . _args221065_)
        (let ((__tmp225940
               (lambda ()
                 (declare (not safe))
                 (if (null? _args221065_)
                     (gxc#compile-e__0 _stx221063_)
                     (let ((_arg1221070_ (car _args221065_))
                           (_rest221072_ (cdr _args221065_)))
                       (if (null? _rest221072_)
                           (gxc#compile-e__1 _stx221063_ _arg1221070_)
                           (let ((_arg2221075_ (car _rest221072_))
                                 (_rest221077_ (cdr _rest221072_)))
                             (if (null? _rest221077_)
                                 (gxc#compile-e__2
                                  _stx221063_
                                  _arg1221070_
                                  _arg2221075_)
                                 (apply gxc#compile-e
                                        _stx221063_
                                        _arg1221070_
                                        _arg2221075_
                                        _rest221077_))))))))
              (__tmp225939 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp225940
           gxc#current-compile-methods
           __tmp225939))))
    (define gxc#xform-identity
      (lambda (_stx221060_ . _args221061_) _stx221060_))
    (define gxc#xform-wrap-source
      (lambda (_stx221057_ _src-stx221058_)
        (let ((__tmp225941
               (let () (declare (not safe)) (gx#stx-source _src-stx221058_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx221057_ __tmp225941))))
    (define gxc#xform-apply-compile-e
      (lambda (_args221044_)
        (lambda (_stx221046_)
          (if (let () (declare (not safe)) (null? _args221044_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx221046_))
              (let ((_arg1221048_ (car _args221044_))
                    (_rest221050_ (cdr _args221044_)))
                (if (let () (declare (not safe)) (null? _rest221050_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx221046_ _arg1221048_))
                    (let ((_arg2221053_ (car _rest221050_))
                          (_rest221055_ (cdr _rest221050_)))
                      (if (let () (declare (not safe)) (null? _rest221055_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx221046_
                             _arg1221048_
                             _arg2221053_))
                          (apply gxc#compile-e
                                 _stx221046_
                                 _arg1221048_
                                 _arg2221053_
                                 _rest221055_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx221003_ . _args221004_)
        (let* ((_g221006221016_
                (lambda (_g221007221013_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221007221013_))))
               (_g221005221041_
                (lambda (_g221007221019_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221007221019_))
                      (let ((_e221011221021_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221007221019_))))
                        (let ((_hd221010221024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221011221021_)))
                              (_tl221009221026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221011221021_))))
                          ((lambda (_L221029_)
                             (let* ((_forms221039_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args221004_))
                                          _L221029_))
                                    (__tmp225942
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms221039_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225942
                                _stx221003_)))
                           _tl221009221026_)))
                      (let ()
                        (declare (not safe))
                        (_g221006221016_ _g221007221019_))))))
          (declare (not safe))
          (_g221005221041_ _stx221003_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx220961_ . _args220962_)
        (let* ((_g220964220974_
                (lambda (_g220965220971_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220965220971_))))
               (_g220963221000_
                (lambda (_g220965220977_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220965220977_))
                      (let ((_e220969220979_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220965220977_))))
                        (let ((_hd220968220982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220969220979_)))
                              (_tl220967220984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220969220979_))))
                          ((lambda (_L220987_)
                             (let ((__tmp225945
                                    (lambda ()
                                      (let* ((_forms220998_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args220962_))
                                                   _L220987_))
                                             (__tmp225946
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms220998_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp225946
                                         _stx220961_))))
                                   (__tmp225943
                                    (let ((__tmp225944
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp225944 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp225945
                                gx#current-expander-phi
                                __tmp225943)))
                           _tl220967220984_)))
                      (let ()
                        (declare (not safe))
                        (_g220964220974_ _g220965220977_))))))
          (declare (not safe))
          (_g220963221000_ _stx220961_))))
    (define gxc#xform-module%
      (lambda (_stx220889_ . _args220890_)
        (let* ((_g220892220906_
                (lambda (_g220893220903_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220893220903_))))
               (_g220891220958_
                (lambda (_g220893220909_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220893220909_))
                      (let ((_e220898220911_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220893220909_))))
                        (let ((_hd220897220914_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220898220911_)))
                              (_tl220896220916_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220898220911_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220896220916_))
                              (let ((_e220901220919_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220896220916_))))
                                (let ((_hd220900220922_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220901220919_)))
                                      (_tl220899220924_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220901220919_))))
                                  ((lambda (_L220927_ _L220928_)
                                     (let* ((_ctx220941_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L220928_)))
                                            (_code220943_
                                             (##structure-ref
                                              _ctx220941_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code220955_
                                             (let ((__tmp225947
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args220890_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code220943_))
                                                          (let ((_arg1220946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args220890_))
                        (_rest220948_ (cdr _args220890_)))
                    (if (let () (declare (not safe)) (null? _rest220948_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code220943_ _arg1220946_))
                        (let ((_arg2220951_ (car _rest220948_))
                              (_rest220953_ (cdr _rest220948_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest220953_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code220943_
                                 _arg1220946_
                                 _arg2220951_))
                              (apply gxc#compile-e
                                     _code220943_
                                     _arg1220946_
                                     _arg2220951_
                                     _rest220953_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp225947
                                                gx#current-expander-context
                                                _ctx220941_))))
                                       (##structure-set!
                                        _ctx220941_
                                        _code220955_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp225948
                                              (let ((__tmp225949
                                                     (let ((__tmp225950
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code220955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L220928_ __tmp225950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp225949))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp225948
                                          _stx220889_))))
                                   _tl220899220924_
                                   _hd220900220922_)))
                              (let ()
                                (declare (not safe))
                                (_g220892220906_ _g220893220909_)))))
                      (let ()
                        (declare (not safe))
                        (_g220892220906_ _g220893220909_))))))
          (declare (not safe))
          (_g220891220958_ _stx220889_))))
    (define gxc#xform-define-values%
      (lambda (_stx220810_ . _args220811_)
        (let* ((_g220813220830_
                (lambda (_g220814220827_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220814220827_))))
               (_g220812220886_
                (lambda (_g220814220833_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220814220833_))
                      (let ((_e220819220835_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220814220833_))))
                        (let ((_hd220818220838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220819220835_)))
                              (_tl220817220840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220819220835_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220817220840_))
                              (let ((_e220822220843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220817220840_))))
                                (let ((_hd220821220846_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220822220843_)))
                                      (_tl220820220848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220822220843_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220820220848_))
                                      (let ((_e220825220851_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220820220848_))))
                                        (let ((_hd220824220854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220825220851_)))
                                              (_tl220823220856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220825220851_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220823220856_))
                                              ((lambda (_L220859_ _L220860_)
                                                 (let* ((_expr220884_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220811_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220859_))
                     (let ((_arg1220875_ (car _args220811_))
                           (_rest220877_ (cdr _args220811_)))
                       (if (let () (declare (not safe)) (null? _rest220877_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220859_ _arg1220875_))
                           (let ((_arg2220880_ (car _rest220877_))
                                 (_rest220882_ (cdr _rest220877_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220882_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220859_
                                    _arg1220875_
                                    _arg2220880_))
                                 (apply gxc#compile-e
                                        _L220859_
                                        _arg1220875_
                                        _arg2220880_
                                        _rest220882_)))))))
                (__tmp225951
                 (let ((__tmp225952
                        (let ((__tmp225953
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220884_ '()))))
                          (declare (not safe))
                          (cons _L220860_ __tmp225953))))
                   (declare (not safe))
                   (cons '%#define-values __tmp225952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225951
                                                    _stx220810_)))
                                               _hd220824220854_
                                               _hd220821220846_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220813220830_
                                                 _g220814220833_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220813220830_ _g220814220833_)))))
                              (let ()
                                (declare (not safe))
                                (_g220813220830_ _g220814220833_)))))
                      (let ()
                        (declare (not safe))
                        (_g220813220830_ _g220814220833_))))))
          (declare (not safe))
          (_g220812220886_ _stx220810_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx220730_ . _args220731_)
        (let* ((_g220733220750_
                (lambda (_g220734220747_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220734220747_))))
               (_g220732220807_
                (lambda (_g220734220753_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220734220753_))
                      (let ((_e220739220755_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220734220753_))))
                        (let ((_hd220738220758_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220739220755_)))
                              (_tl220737220760_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220739220755_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220737220760_))
                              (let ((_e220742220763_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220737220760_))))
                                (let ((_hd220741220766_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220742220763_)))
                                      (_tl220740220768_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220742220763_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220740220768_))
                                      (let ((_e220745220771_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220740220768_))))
                                        (let ((_hd220744220774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220745220771_)))
                                              (_tl220743220776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220745220771_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220743220776_))
                                              ((lambda (_L220779_ _L220780_)
                                                 (let ((__tmp225956
                                                        (lambda ()
                                                          (let* ((_expr220805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args220731_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L220779_))
                              (let ((_arg1220796_ (car _args220731_))
                                    (_rest220798_ (cdr _args220731_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest220798_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L220779_
                                       _arg1220796_))
                                    (let ((_arg2220801_ (car _rest220798_))
                                          (_rest220803_ (cdr _rest220798_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest220803_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L220779_
                                             _arg1220796_
                                             _arg2220801_))
                                          (apply gxc#compile-e
                                                 _L220779_
                                                 _arg1220796_
                                                 _arg2220801_
                                                 _rest220803_)))))))
                         (__tmp225957
                          (let ((__tmp225958
                                 (let ((__tmp225959
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr220805_ '()))))
                                   (declare (not safe))
                                   (cons _L220780_ __tmp225959))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp225958))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp225957 _stx220730_))))
               (__tmp225954
                (let ((__tmp225955 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp225955 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp225956
                                                    gx#current-expander-phi
                                                    __tmp225954)))
                                               _hd220744220774_
                                               _hd220741220766_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220733220750_
                                                 _g220734220753_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220733220750_ _g220734220753_)))))
                              (let ()
                                (declare (not safe))
                                (_g220733220750_ _g220734220753_)))))
                      (let ()
                        (declare (not safe))
                        (_g220733220750_ _g220734220753_))))))
          (declare (not safe))
          (_g220732220807_ _stx220730_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx220651_ . _args220652_)
        (let* ((_g220654220671_
                (lambda (_g220655220668_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220655220668_))))
               (_g220653220727_
                (lambda (_g220655220674_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220655220674_))
                      (let ((_e220660220676_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220655220674_))))
                        (let ((_hd220659220679_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220660220676_)))
                              (_tl220658220681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220660220676_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220658220681_))
                              (let ((_e220663220684_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220658220681_))))
                                (let ((_hd220662220687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220663220684_)))
                                      (_tl220661220689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220663220684_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220661220689_))
                                      (let ((_e220666220692_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220661220689_))))
                                        (let ((_hd220665220695_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220666220692_)))
                                              (_tl220664220697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220666220692_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220664220697_))
                                              ((lambda (_L220700_ _L220701_)
                                                 (let* ((_expr220725_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220652_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220700_))
                     (let ((_arg1220716_ (car _args220652_))
                           (_rest220718_ (cdr _args220652_)))
                       (if (let () (declare (not safe)) (null? _rest220718_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220700_ _arg1220716_))
                           (let ((_arg2220721_ (car _rest220718_))
                                 (_rest220723_ (cdr _rest220718_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220723_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220700_
                                    _arg1220716_
                                    _arg2220721_))
                                 (apply gxc#compile-e
                                        _L220700_
                                        _arg1220716_
                                        _arg2220721_
                                        _rest220723_)))))))
                (__tmp225960
                 (let ((__tmp225961
                        (let ((__tmp225962
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220725_ '()))))
                          (declare (not safe))
                          (cons _L220701_ __tmp225962))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp225961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225960
                                                    _stx220651_)))
                                               _hd220665220695_
                                               _hd220662220687_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220654220671_
                                                 _g220655220674_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220654220671_ _g220655220674_)))))
                              (let ()
                                (declare (not safe))
                                (_g220654220671_ _g220655220674_)))))
                      (let ()
                        (declare (not safe))
                        (_g220654220671_ _g220655220674_))))))
          (declare (not safe))
          (_g220653220727_ _stx220651_))))
    (define gxc#xform-lambda%
      (lambda (_stx220594_ . _args220595_)
        (let* ((_g220597220611_
                (lambda (_g220598220608_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220598220608_))))
               (_g220596220648_
                (lambda (_g220598220614_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220598220614_))
                      (let ((_e220603220616_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220598220614_))))
                        (let ((_hd220602220619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220603220616_)))
                              (_tl220601220621_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220603220616_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220601220621_))
                              (let ((_e220606220624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220601220621_))))
                                (let ((_hd220605220627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220606220624_)))
                                      (_tl220604220629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220606220624_))))
                                  ((lambda (_L220632_ _L220633_)
                                     (let* ((_body220646_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args220595_))
                                                  _L220632_))
                                            (__tmp225963
                                             (let ((__tmp225964
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L220633_
                                                            _body220646_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp225964))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp225963
                                        _stx220594_)))
                                   _tl220604220629_
                                   _hd220605220627_)))
                              (let ()
                                (declare (not safe))
                                (_g220597220611_ _g220598220614_)))))
                      (let ()
                        (declare (not safe))
                        (_g220597220611_ _g220598220614_))))))
          (declare (not safe))
          (_g220596220648_ _stx220594_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx220507_ . _args220508_)
        (letrec ((_clause-e220510_
                  (lambda (_clause220551_)
                    (let* ((_g220553220564_
                            (lambda (_g220554220561_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g220554220561_))))
                           (_g220552220591_
                            (lambda (_g220554220567_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g220554220567_))
                                  (let ((_e220559220569_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g220554220567_))))
                                    (let ((_hd220558220572_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e220559220569_)))
                                          (_tl220557220574_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e220559220569_))))
                                      ((lambda (_L220577_ _L220578_)
                                         (let ((_body220589_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args220508_))
                                                     _L220577_)))
                                           (declare (not safe))
                                           (cons _L220578_ _body220589_)))
                                       _tl220557220574_
                                       _hd220558220572_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g220553220564_ _g220554220567_))))))
                      (declare (not safe))
                      (_g220552220591_ _clause220551_)))))
          (let* ((_g220512220522_
                  (lambda (_g220513220519_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g220513220519_))))
                 (_g220511220548_
                  (lambda (_g220513220525_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g220513220525_))
                        (let ((_e220517220527_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g220513220525_))))
                          (let ((_hd220516220530_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220517220527_)))
                                (_tl220515220532_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220517220527_))))
                            ((lambda (_L220535_)
                               (let* ((_clauses220546_
                                       (map _clause-e220510_ _L220535_))
                                      (__tmp225965
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses220546_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp225965
                                  _stx220507_)))
                             _tl220515220532_)))
                        (let ()
                          (declare (not safe))
                          (_g220512220522_ _g220513220525_))))))
            (declare (not safe))
            (_g220511220548_ _stx220507_)))))
    (define gxc#xform-let-values%
      (lambda (_stx220301_ . _args220302_)
        (let* ((_g220304220337_
                (lambda (_g220305220334_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220305220334_))))
               (_g220303220504_
                (lambda (_g220305220340_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220305220340_))
                      (let ((_e220312220342_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220305220340_))))
                        (let ((_hd220311220345_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220312220342_)))
                              (_tl220310220347_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220312220342_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220310220347_))
                              (let ((_e220315220350_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220310220347_))))
                                (let ((_hd220314220353_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220315220350_)))
                                      (_tl220313220355_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220315220350_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd220314220353_))
                                      (let ((_g225966_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd220314220353_
                                                '0))))
                                        (begin
                                          (let ((_g225967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g225966_)
                                                       (##vector-length
                                                        _g225966_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g225967_ 2)))
                                                (error "Context expects 2 values"
                                                       _g225967_)))
                                          (let ((_target220316220358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g225966_ 0)))
                                                (_tl220318220360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g225966_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220318220360_))
                                                (letrec ((_loop220319220363_
                                                          (lambda (_hd220317220366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr220323220368_
                           _hd220324220370_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd220317220366_))
                        (let ((_e220320220373_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd220317220366_))))
                          (let ((_lp-hd220321220376_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e220320220373_)))
                                (_lp-tl220322220378_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e220320220373_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd220321220376_))
                                (let ((_e220329220381_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd220321220376_))))
                                  (let ((_hd220328220384_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e220329220381_)))
                                        (_tl220327220386_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e220329220381_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl220327220386_))
                                        (let ((_e220332220389_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl220327220386_))))
                                          (let ((_hd220331220392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e220332220389_)))
                                                (_tl220330220394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e220332220389_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl220330220394_))
                                                (let ((__tmp225980
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220331220392_
                                                               _expr220323220368_)))
                                                      (__tmp225979
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd220328220384_
                                                               _hd220324220370_))))
                                                  (declare (not safe))
                                                  (_loop220319220363_
                                                   _lp-tl220322220378_
                                                   __tmp225980
                                                   __tmp225979))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220304220337_
                                                   _g220305220340_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g220304220337_ _g220305220340_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g220304220337_ _g220305220340_)))))
                        (let ((_expr220325220397_ (reverse _expr220323220368_))
                              (_hd220326220399_ (reverse _hd220324220370_)))
                          ((lambda (_L220402_ _L220403_ _L220404_ _L220405_)
                             (let* ((_g220424220440_
                                     (lambda (_g220425220437_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g220425220437_))))
                                    (_g220423220494_
                                     (lambda (_g220425220443_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g220425220443_))
                                           (let ((_g225968_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g220425220443_
                                                     '0))))
                                             (begin
                                               (let ((_g225969_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g225968_)
                                                            (##vector-length
                                                             _g225968_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g225969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g225969_)))
                                               (let ((_target220427220445_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225968_
                                                         0)))
                                                     (_tl220429220447_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g225968_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl220429220447_))
                                                     (letrec ((_loop220430220450_
                                                               (lambda (_hd220428220453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr220434220455_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd220428220453_))
                             (let ((_e220431220458_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd220428220453_))))
                               (let ((_lp-hd220432220461_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e220431220458_)))
                                     (_lp-tl220433220463_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e220431220458_))))
                                 (let ((__tmp225976
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd220432220461_
                                                _expr220434220455_))))
                                   (declare (not safe))
                                   (_loop220430220450_
                                    _lp-tl220433220463_
                                    __tmp225976))))
                             (let ((_expr220435220466_
                                    (reverse _expr220434220455_)))
                               ((lambda (_L220469_)
                                  (let ()
                                    (let* ((_body220482_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args220302_))
                                                 _L220402_))
                                           (__tmp225970
                                            (let ((__tmp225971
                                                   (let ((__tmp225972
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L220469_
                                                               _L220404_))
                                                            (let ((__tmp225973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g220483220487_
                                    _g220484220489_
                                    _g220485220491_)
                             (let ((__tmp225974
                                    (let ((__tmp225975
                                           (let ()
                                             (declare (not safe))
                                             (cons _g220483220487_ '()))))
                                      (declare (not safe))
                                      (cons _g220484220489_ __tmp225975))))
                               (declare (not safe))
                               (cons __tmp225974 _g220485220491_)))))
                      (declare (not safe))
                      (foldr2 __tmp225973 '() _L220469_ _L220404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp225972
                                                           _body220482_))))
                                              (declare (not safe))
                                              (cons _L220405_ __tmp225971))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp225970
                                       _stx220301_))))
                                _expr220435220466_))))))
               (let ()
                 (declare (not safe))
                 (_loop220430220450_ _target220427220445_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g220424220440_
                                                        _g220425220443_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g220424220440_
                                              _g220425220443_)))))
                                    (__tmp225977
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220302_))
                                          (let ((__tmp225978
                                                 (lambda (_g220496220499_
                                                          _g220497220501_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g220496220499_
                                                           _g220497220501_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp225978
                                                    '()
                                                    _L220403_)))))
                               (declare (not safe))
                               (_g220423220494_ __tmp225977)))
                           _tl220313220355_
                           _expr220325220397_
                           _hd220326220399_
                           _hd220311220345_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop220319220363_
                                                     _target220316220358_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g220304220337_
                                                   _g220305220340_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220304220337_ _g220305220340_)))))
                              (let ()
                                (declare (not safe))
                                (_g220304220337_ _g220305220340_)))))
                      (let ()
                        (declare (not safe))
                        (_g220304220337_ _g220305220340_))))))
          (declare (not safe))
          (_g220303220504_ _stx220301_))))
    (define gxc#xform-operands
      (lambda (_stx220257_ . _args220258_)
        (let* ((_g220260220271_
                (lambda (_g220261220268_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220261220268_))))
               (_g220259220298_
                (lambda (_g220261220274_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220261220274_))
                      (let ((_e220266220276_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220261220274_))))
                        (let ((_hd220265220279_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220266220276_)))
                              (_tl220264220281_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220266220276_))))
                          ((lambda (_L220284_ _L220285_)
                             (let* ((_rands220296_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args220258_))
                                          _L220284_))
                                    (__tmp225981
                                     (let ()
                                       (declare (not safe))
                                       (cons _L220285_ _rands220296_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp225981
                                _stx220257_)))
                           _tl220264220281_
                           _hd220265220279_)))
                      (let ()
                        (declare (not safe))
                        (_g220260220271_ _g220261220274_))))))
          (declare (not safe))
          (_g220259220298_ _stx220257_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx220178_ . _args220179_)
        (let* ((_g220181220198_
                (lambda (_g220182220195_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220182220195_))))
               (_g220180220254_
                (lambda (_g220182220201_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220182220201_))
                      (let ((_e220187220203_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220182220201_))))
                        (let ((_hd220186220206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220187220203_)))
                              (_tl220185220208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220187220203_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220185220208_))
                              (let ((_e220190220211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220185220208_))))
                                (let ((_hd220189220214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220190220211_)))
                                      (_tl220188220216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220190220211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220188220216_))
                                      (let ((_e220193220219_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220188220216_))))
                                        (let ((_hd220192220222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220193220219_)))
                                              (_tl220191220224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220193220219_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220191220224_))
                                              ((lambda (_L220227_ _L220228_)
                                                 (let* ((_expr220252_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args220179_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L220227_))
                     (let ((_arg1220243_ (car _args220179_))
                           (_rest220245_ (cdr _args220179_)))
                       (if (let () (declare (not safe)) (null? _rest220245_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L220227_ _arg1220243_))
                           (let ((_arg2220248_ (car _rest220245_))
                                 (_rest220250_ (cdr _rest220245_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest220250_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L220227_
                                    _arg1220243_
                                    _arg2220248_))
                                 (apply gxc#compile-e
                                        _L220227_
                                        _arg1220243_
                                        _arg2220248_
                                        _rest220250_)))))))
                (__tmp225982
                 (let ((__tmp225983
                        (let ((__tmp225984
                               (let ()
                                 (declare (not safe))
                                 (cons _expr220252_ '()))))
                          (declare (not safe))
                          (cons _L220228_ __tmp225984))))
                   (declare (not safe))
                   (cons '%#set! __tmp225983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp225982
                                                    _stx220178_)))
                                               _hd220192220222_
                                               _hd220189220214_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220181220198_
                                                 _g220182220201_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220181220198_ _g220182220201_)))))
                              (let ()
                                (declare (not safe))
                                (_g220181220198_ _g220182220201_)))))
                      (let ()
                        (declare (not safe))
                        (_g220181220198_ _g220182220201_))))))
          (declare (not safe))
          (_g220180220254_ _stx220178_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx220109_)
        (let* ((_g220111220128_
                (lambda (_g220112220125_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220112220125_))))
               (_g220110220175_
                (lambda (_g220112220131_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220112220131_))
                      (let ((_e220117220133_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220112220131_))))
                        (let ((_hd220116220136_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220117220133_)))
                              (_tl220115220138_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220117220133_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220115220138_))
                              (let ((_e220120220141_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220115220138_))))
                                (let ((_hd220119220144_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220120220141_)))
                                      (_tl220118220146_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220120220141_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220118220146_))
                                      (let ((_e220123220149_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220118220146_))))
                                        (let ((_hd220122220152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220123220149_)))
                                              (_tl220121220154_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220123220149_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220121220154_))
                                              ((lambda (_L220157_ _L220158_)
                                                 (let ((_sym220173_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L220158_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym220173_))
                                                   (let ((__tmp225985
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp225985
                                                      _sym220173_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L220157_))))
                                               _hd220122220152_
                                               _hd220119220144_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220111220128_
                                                 _g220112220131_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220111220128_ _g220112220131_)))))
                              (let ()
                                (declare (not safe))
                                (_g220111220128_ _g220112220131_)))))
                      (let ()
                        (declare (not safe))
                        (_g220111220128_ _g220112220131_))))))
          (declare (not safe))
          (_g220110220175_ _stx220109_))))
    (define gxc#collect-methods-call%
      (lambda (_stx219663_)
        (let* ((___stx225675225676_ _stx219663_)
               (_g219667219769_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx225675225676_)))))
          (let ((___kont225677225678_
                 (lambda (_L220059_ _L220060_ _L220061_ _L220062_ _L220063_)
                   (let ((__tmp225986
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L220060_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225986))))
                (___kont225679225680_
                 (lambda (_L219885_ _L219886_ _L219887_ _L219888_)
                   (let ((__tmp225987
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L219885_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp225987))))
                (___kont225681225682_ (lambda () '#!void)))
            (let ((___match225810225811_
                   (lambda (_e219676219931_
                            _hd219675219934_
                            _tl219674219936_
                            _e219679219939_
                            _hd219678219942_
                            _tl219677219944_
                            _e219682219947_
                            _hd219681219950_
                            _tl219680219952_
                            _e219685219955_
                            _hd219684219958_
                            _tl219683219960_
                            _e219688219963_
                            _hd219687219966_
                            _tl219686219968_
                            _e219691219971_
                            _hd219690219974_
                            _tl219689219976_
                            _e219694219979_
                            _hd219693219982_
                            _tl219692219984_
                            _e219697219987_
                            _hd219696219990_
                            _tl219695219992_
                            _e219700219995_
                            _hd219699219998_
                            _tl219698220000_
                            _e219703220003_
                            _hd219702220006_
                            _tl219701220008_
                            _e219706220011_
                            _hd219705220014_
                            _tl219704220016_
                            _e219709220019_
                            _hd219708220022_
                            _tl219707220024_
                            _e219712220027_
                            _hd219711220030_
                            _tl219710220032_
                            _e219715220035_
                            _hd219714220038_
                            _tl219713220040_
                            _e219718220043_
                            _hd219717220046_
                            _tl219716220048_
                            _e219721220051_
                            _hd219720220054_
                            _tl219719220056_)
                     (let ((_L220059_ _hd219720220054_)
                           (_L220060_ _hd219711220030_)
                           (_L220061_ _hd219702220006_)
                           (_L220062_ _hd219693219982_)
                           (_L220063_ _hd219684219958_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L220063_
                              'bind-method!))
                           (___kont225677225678_
                            _L220059_
                            _L220060_
                            _L220061_
                            _L220062_
                            _L220063_)
                           (___kont225681225682_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx225675225676_))
                  (let ((_e219676219931_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx225675225676_))))
                    (let ((_tl219674219936_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219676219931_)))
                          (_hd219675219934_
                           (let ()
                             (declare (not safe))
                             (##car _e219676219931_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl219674219936_))
                          (let ((_e219679219939_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl219674219936_))))
                            (let ((_tl219677219944_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219679219939_)))
                                  (_hd219678219942_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219679219939_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd219678219942_))
                                  (let ((_e219682219947_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd219678219942_))))
                                    (let ((_tl219680219952_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219682219947_)))
                                          (_hd219681219950_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219682219947_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd219681219950_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd219681219950_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219680219952_))
                                                  (let ((_e219685219955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219680219952_))))
                                                    (let ((_tl219683219960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219685219955_)))
                                                          (_hd219684219958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219685219955_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl219683219960_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl219677219944_))
                      (let ((_e219688219963_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl219677219944_))))
                        (let ((_tl219686219968_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219688219963_)))
                              (_hd219687219966_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219688219963_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd219687219966_))
                              (let ((_e219691219971_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd219687219966_))))
                                (let ((_tl219689219976_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219691219971_)))
                                      (_hd219690219974_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219691219971_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd219690219974_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd219690219974_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl219689219976_))
                                              (let ((_e219694219979_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl219689219976_))))
                                                (let ((_tl219692219984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e219694219979_)))
                                                      (_hd219693219982_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e219694219979_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219692219984_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl219686219968_))
                                                          (let ((_e219697219987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl219686219968_))))
                    (let ((_tl219695219992_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219697219987_)))
                          (_hd219696219990_
                           (let ()
                             (declare (not safe))
                             (##car _e219697219987_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd219696219990_))
                          (let ((_e219700219995_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd219696219990_))))
                            (let ((_tl219698220000_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e219700219995_)))
                                  (_hd219699219998_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e219700219995_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd219699219998_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd219699219998_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl219698220000_))
                                          (let ((_e219703220003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl219698220000_))))
                                            (let ((_tl219701220008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e219703220003_)))
                                                  (_hd219702220006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e219703220003_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl219701220008_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl219695219992_))
                                                      (let ((_e219706220011_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl219695219992_))))
                (let ((_tl219704220016_
                       (let () (declare (not safe)) (##cdr _e219706220011_)))
                      (_hd219705220014_
                       (let () (declare (not safe)) (##car _e219706220011_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd219705220014_))
                      (let ((_e219709220019_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd219705220014_))))
                        (let ((_tl219707220024_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219709220019_)))
                              (_hd219708220022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219709220019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd219708220022_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd219708220022_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219707220024_))
                                      (let ((_e219712220027_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219707220024_))))
                                        (let ((_tl219710220032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219712220027_)))
                                              (_hd219711220030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219712220027_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219710220032_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl219704220016_))
                                                  (let ((_e219715220035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl219704220016_))))
                                                    (let ((_tl219713220040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e219715220035_)))
                                                          (_hd219714220038_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e219715220035_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd219714220038_))
                                                          (let ((_e219718220043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd219714220038_))))
                    (let ((_tl219716220048_
                           (let ()
                             (declare (not safe))
                             (##cdr _e219718220043_)))
                          (_hd219717220046_
                           (let ()
                             (declare (not safe))
                             (##car _e219718220043_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd219717220046_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd219717220046_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl219716220048_))
                                  (let ((_e219721220051_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl219716220048_))))
                                    (let ((_tl219719220056_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e219721220051_)))
                                          (_hd219720220054_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e219721220051_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl219719220056_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219713220040_))
                                              (___match225810225811_
                                               _e219676219931_
                                               _hd219675219934_
                                               _tl219674219936_
                                               _e219679219939_
                                               _hd219678219942_
                                               _tl219677219944_
                                               _e219682219947_
                                               _hd219681219950_
                                               _tl219680219952_
                                               _e219685219955_
                                               _hd219684219958_
                                               _tl219683219960_
                                               _e219688219963_
                                               _hd219687219966_
                                               _tl219686219968_
                                               _e219691219971_
                                               _hd219690219974_
                                               _tl219689219976_
                                               _e219694219979_
                                               _hd219693219982_
                                               _tl219692219984_
                                               _e219697219987_
                                               _hd219696219990_
                                               _tl219695219992_
                                               _e219700219995_
                                               _hd219699219998_
                                               _tl219698220000_
                                               _e219703220003_
                                               _hd219702220006_
                                               _tl219701220008_
                                               _e219706220011_
                                               _hd219705220014_
                                               _tl219704220016_
                                               _e219709220019_
                                               _hd219708220022_
                                               _tl219707220024_
                                               _e219712220027_
                                               _hd219711220030_
                                               _tl219710220032_
                                               _e219715220035_
                                               _hd219714220038_
                                               _tl219713220040_
                                               _e219718220043_
                                               _hd219717220046_
                                               _tl219716220048_
                                               _e219721220051_
                                               _hd219720220054_
                                               _tl219719220056_)
                                              (___kont225681225682_))
                                          (___kont225681225682_))))
                                  (___kont225681225682_))
                              (___kont225681225682_))
                          (___kont225681225682_))))
                  (___kont225681225682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl219704220016_))
                                                      (if (let ((__tmp225988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp225988 'bind-method!))
                  (let ((_L219885_ _hd219711220030_)
                        (_L219886_ _hd219702220006_)
                        (_L219887_ _hd219693219982_)
                        (_L219888_ _hd219684219958_))
                    (___kont225679225680_
                     _L219885_
                     _L219886_
                     _L219887_
                     _L219888_))
                  (___kont225681225682_))
              (___kont225681225682_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225681225682_))))
                                      (___kont225681225682_))
                                  (___kont225681225682_))
                              (___kont225681225682_))))
                      (___kont225681225682_))))
              (___kont225681225682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225681225682_))))
                                          (___kont225681225682_))
                                      (___kont225681225682_))
                                  (___kont225681225682_))))
                          (___kont225681225682_))))
                  (___kont225681225682_))
              (___kont225681225682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont225681225682_))
                                          (___kont225681225682_))
                                      (___kont225681225682_))))
                              (___kont225681225682_))))
                      (___kont225681225682_))
                  (___kont225681225682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont225681225682_))
                                              (___kont225681225682_))
                                          (___kont225681225682_))))
                                  (___kont225681225682_))))
                          (___kont225681225682_))))
                  (___kont225681225682_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx219610_ _id219611_ _new-id219612_)
        (let* ((_g219614219627_
                (lambda (_g219615219624_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219615219624_))))
               (_g219613219660_
                (lambda (_g219615219630_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219615219630_))
                      (let ((_e219619219632_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219615219630_))))
                        (let ((_hd219618219635_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219619219632_)))
                              (_tl219617219637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219619219632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219617219637_))
                              (let ((_e219622219640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219617219637_))))
                                (let ((_hd219621219643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219622219640_)))
                                      (_tl219620219645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219622219640_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219620219645_))
                                      ((lambda (_L219648_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L219648_
                                                _id219611_))
                                             (let ((__tmp225989
                                                    (let ((__tmp225990
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id219612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp225990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp225989
                                                _stx219610_))
                                             _stx219610_))
                                       _hd219621219643_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219614219627_ _g219615219630_)))))
                              (let ()
                                (declare (not safe))
                                (_g219614219627_ _g219615219630_)))))
                      (let ()
                        (declare (not safe))
                        (_g219614219627_ _g219615219630_))))))
          (declare (not safe))
          (_g219613219660_ _stx219610_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx219551_ _subst219552_)
        (let* ((_g219554219567_
                (lambda (_g219555219564_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219555219564_))))
               (_g219553219607_
                (lambda (_g219555219570_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219555219570_))
                      (let ((_e219559219572_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219555219570_))))
                        (let ((_hd219558219575_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219559219572_)))
                              (_tl219557219577_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219559219572_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219557219577_))
                              (let ((_e219562219580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219557219577_))))
                                (let ((_hd219561219583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219562219580_)))
                                      (_tl219560219585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219562219580_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219560219585_))
                                      ((lambda (_L219588_)
                                         (let ((_$e219602_
                                                (let ((__tmp225991
                                                       (lambda (_sub219600_)
                                                         (let ((__tmp225992
                                                                (car _sub219600_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L219588_
                                                            __tmp225992)))))
                                                  (declare (not safe))
                                                  (find __tmp225991
                                                        _subst219552_))))
                                           (if _$e219602_
                                               ((lambda (_sub219605_)
                                                  (let ((__tmp225993
                                                         (let ((__tmp225994
                                                                (let ((__tmp225995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub219605_)))
                          (declare (not safe))
                          (cons __tmp225995 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp225994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp225993
                                                     _stx219551_)))
                                                _$e219602_)
                                               _stx219551_)))
                                       _hd219561219583_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219554219567_ _g219555219570_)))))
                              (let ()
                                (declare (not safe))
                                (_g219554219567_ _g219555219570_)))))
                      (let ()
                        (declare (not safe))
                        (_g219554219567_ _g219555219570_))))))
          (declare (not safe))
          (_g219553219607_ _stx219551_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx219479_ _id219480_ _new-id219481_)
        (let* ((_g219483219500_
                (lambda (_g219484219497_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219484219497_))))
               (_g219482219548_
                (lambda (_g219484219503_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219484219503_))
                      (let ((_e219489219505_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219484219503_))))
                        (let ((_hd219488219508_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219489219505_)))
                              (_tl219487219510_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219489219505_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219487219510_))
                              (let ((_e219492219513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219487219510_))))
                                (let ((_hd219491219516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219492219513_)))
                                      (_tl219490219518_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219492219513_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219490219518_))
                                      (let ((_e219495219521_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219490219518_))))
                                        (let ((_hd219494219524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219495219521_)))
                                              (_tl219493219526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219495219521_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219493219526_))
                                              ((lambda (_L219529_ _L219530_)
                                                 (let ((_new-expr219545_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L219529_
                                                           _id219480_
                                                           _new-id219481_)))
                                                       (_new-xid219546_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L219530_
                                                               _id219480_))
                                                            _new-id219481_
                                                            _L219530_)))
                                                   (let ((__tmp225996
                                                          (let ((__tmp225997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp225998
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219545_ '()))))
                           (declare (not safe))
                           (cons _new-xid219546_ __tmp225998))))
                    (declare (not safe))
                    (cons '%#set! __tmp225997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp225996
                                                      _stx219479_))))
                                               _hd219494219524_
                                               _hd219491219516_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219483219500_
                                                 _g219484219503_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219483219500_ _g219484219503_)))))
                              (let ()
                                (declare (not safe))
                                (_g219483219500_ _g219484219503_)))))
                      (let ()
                        (declare (not safe))
                        (_g219483219500_ _g219484219503_))))))
          (declare (not safe))
          (_g219482219548_ _stx219479_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx219403_ _subst219404_)
        (let* ((_g219406219423_
                (lambda (_g219407219420_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219407219420_))))
               (_g219405219476_
                (lambda (_g219407219426_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219407219426_))
                      (let ((_e219412219428_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219407219426_))))
                        (let ((_hd219411219431_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219412219428_)))
                              (_tl219410219433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219412219428_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219410219433_))
                              (let ((_e219415219436_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219410219433_))))
                                (let ((_hd219414219439_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219415219436_)))
                                      (_tl219413219441_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219415219436_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219413219441_))
                                      (let ((_e219418219444_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219413219441_))))
                                        (let ((_hd219417219447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219418219444_)))
                                              (_tl219416219449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219418219444_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219416219449_))
                                              ((lambda (_L219452_ _L219453_)
                                                 (let ((_new-expr219473_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L219452_
                                                           _subst219404_)))
                                                       (_new-xid219474_
                                                        (let ((_$e219470_
                                                               (let ((__tmp225999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub219468_)
                                (let ((__tmp226000 (car _sub219468_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L219453_
                                   __tmp226000)))))
                         (declare (not safe))
                         (find __tmp225999 _subst219404_))))
                  (if _$e219470_ (cdr _$e219470_) _L219453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp226001
                                                          (let ((__tmp226002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226003
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr219473_ '()))))
                           (declare (not safe))
                           (cons _new-xid219474_ __tmp226003))))
                    (declare (not safe))
                    (cons '%#set! __tmp226002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp226001
                                                      _stx219403_))))
                                               _hd219417219447_
                                               _hd219414219439_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219406219423_
                                                 _g219407219426_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219406219423_ _g219407219426_)))))
                              (let ()
                                (declare (not safe))
                                (_g219406219423_ _g219407219426_)))))
                      (let ()
                        (declare (not safe))
                        (_g219406219423_ _g219407219426_))))))
          (declare (not safe))
          (_g219405219476_ _stx219403_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx219349_ _ht219350_)
        (let* ((_g219352219365_
                (lambda (_g219353219362_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219353219362_))))
               (_g219351219400_
                (lambda (_g219353219368_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219353219368_))
                      (let ((_e219357219370_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219353219368_))))
                        (let ((_hd219356219373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219357219370_)))
                              (_tl219355219375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219357219370_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219355219375_))
                              (let ((_e219360219378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219355219375_))))
                                (let ((_hd219359219381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219360219378_)))
                                      (_tl219358219383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219360219378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl219358219383_))
                                      ((lambda (_L219386_)
                                         (let ((_eid219398_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L219386_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht219350_
                                            _eid219398_
                                            1+
                                            '0)))
                                       _hd219359219381_)
                                      (let ()
                                        (declare (not safe))
                                        (_g219352219365_ _g219353219368_)))))
                              (let ()
                                (declare (not safe))
                                (_g219352219365_ _g219353219368_)))))
                      (let ()
                        (declare (not safe))
                        (_g219352219365_ _g219353219368_))))))
          (declare (not safe))
          (_g219351219400_ _stx219349_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx219279_ _ht219280_)
        (let* ((_g219282219299_
                (lambda (_g219283219296_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219283219296_))))
               (_g219281219346_
                (lambda (_g219283219302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219283219302_))
                      (let ((_e219288219304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219283219302_))))
                        (let ((_hd219287219307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219288219304_)))
                              (_tl219286219309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219288219304_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219286219309_))
                              (let ((_e219291219312_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219286219309_))))
                                (let ((_hd219290219315_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219291219312_)))
                                      (_tl219289219317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219291219312_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219289219317_))
                                      (let ((_e219294219320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219289219317_))))
                                        (let ((_hd219293219323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219294219320_)))
                                              (_tl219292219325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219294219320_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219292219325_))
                                              ((lambda (_L219328_ _L219329_)
                                                 (let ((_eid219344_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L219329_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht219280_
                                                      _eid219344_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L219328_
                                                      _ht219280_))))
                                               _hd219293219323_
                                               _hd219290219315_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219282219299_
                                                 _g219283219302_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219282219299_ _g219283219302_)))))
                              (let ()
                                (declare (not safe))
                                (_g219282219299_ _g219283219302_)))))
                      (let ()
                        (declare (not safe))
                        (_g219282219299_ _g219283219302_))))))
          (declare (not safe))
          (_g219281219346_ _stx219279_))))
    (define gxc#find-body%
      (lambda (_stx219192_ _arg219193_)
        (let* ((_g219195219214_
                (lambda (_g219196219211_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219196219211_))))
               (_g219194219276_
                (lambda (_g219196219217_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219196219217_))
                      (let ((_e219200219219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219196219217_))))
                        (let ((_hd219199219222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219200219219_)))
                              (_tl219198219224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219200219219_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl219198219224_))
                              (let ((_g226004_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl219198219224_
                                        '0))))
                                (begin
                                  (let ((_g226005_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226004_)
                                               (##vector-length _g226004_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226005_ 2)))
                                        (error "Context expects 2 values"
                                               _g226005_)))
                                  (let ((_target219201219227_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226004_ 0)))
                                        (_tl219203219229_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226004_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl219203219229_))
                                        (letrec ((_loop219204219232_
                                                  (lambda (_hd219202219235_
                                                           _expr219208219237_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd219202219235_))
                                                        (let ((_e219205219240_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd219202219235_))))
                  (let ((_lp-hd219206219243_
                         (let () (declare (not safe)) (##car _e219205219240_)))
                        (_lp-tl219207219245_
                         (let ()
                           (declare (not safe))
                           (##cdr _e219205219240_))))
                    (let ((__tmp226009
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd219206219243_ _expr219208219237_))))
                      (declare (not safe))
                      (_loop219204219232_ _lp-tl219207219245_ __tmp226009))))
                (let ((_expr219209219248_ (reverse _expr219208219237_)))
                  ((lambda (_L219251_)
                     (let ((__tmp226008
                            (lambda (_g219264219266_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219264219266_
                                 _arg219193_))))
                           (__tmp226006
                            (let ((__tmp226007
                                   (lambda (_g219268219271_ _g219269219273_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219268219271_
                                             _g219269219273_)))))
                              (declare (not safe))
                              (foldr1 __tmp226007 '() _L219251_))))
                       (declare (not safe))
                       (ormap1 __tmp226008 __tmp226006)))
                   _expr219209219248_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop219204219232_
                                             _target219201219227_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g219195219214_
                                           _g219196219217_))))))
                              (let ()
                                (declare (not safe))
                                (_g219195219214_ _g219196219217_)))))
                      (let ()
                        (declare (not safe))
                        (_g219195219214_ _g219196219217_))))))
          (declare (not safe))
          (_g219194219276_ _stx219192_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx219124_ _arg219125_)
        (let* ((_g219127219144_
                (lambda (_g219128219141_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219128219141_))))
               (_g219126219189_
                (lambda (_g219128219147_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219128219147_))
                      (let ((_e219133219149_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219128219147_))))
                        (let ((_hd219132219152_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219133219149_)))
                              (_tl219131219154_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219133219149_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219131219154_))
                              (let ((_e219136219157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219131219154_))))
                                (let ((_hd219135219160_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219136219157_)))
                                      (_tl219134219162_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219136219157_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219134219162_))
                                      (let ((_e219139219165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219134219162_))))
                                        (let ((_hd219138219168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219139219165_)))
                                              (_tl219137219170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219139219165_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219137219170_))
                                              ((lambda (_L219173_ _L219174_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219173_
                                                    _arg219125_)))
                                               _hd219138219168_
                                               _hd219135219160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219127219144_
                                                 _g219128219147_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219127219144_ _g219128219147_)))))
                              (let ()
                                (declare (not safe))
                                (_g219127219144_ _g219128219147_)))))
                      (let ()
                        (declare (not safe))
                        (_g219127219144_ _g219128219147_))))))
          (declare (not safe))
          (_g219126219189_ _stx219124_))))
    (define gxc#find-lambda%
      (lambda (_stx219056_ _arg219057_)
        (let* ((_g219059219076_
                (lambda (_g219060219073_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g219060219073_))))
               (_g219058219121_
                (lambda (_g219060219079_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g219060219079_))
                      (let ((_e219065219081_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g219060219079_))))
                        (let ((_hd219064219084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e219065219081_)))
                              (_tl219063219086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e219065219081_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl219063219086_))
                              (let ((_e219068219089_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl219063219086_))))
                                (let ((_hd219067219092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e219068219089_)))
                                      (_tl219066219094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e219068219089_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl219066219094_))
                                      (let ((_e219071219097_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl219066219094_))))
                                        (let ((_hd219070219100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e219071219097_)))
                                              (_tl219069219102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e219071219097_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl219069219102_))
                                              ((lambda (_L219105_ _L219106_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L219105_
                                                    _arg219057_)))
                                               _hd219070219100_
                                               _hd219067219092_)
                                              (let ()
                                                (declare (not safe))
                                                (_g219059219076_
                                                 _g219060219079_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g219059219076_ _g219060219079_)))))
                              (let ()
                                (declare (not safe))
                                (_g219059219076_ _g219060219079_)))))
                      (let ()
                        (declare (not safe))
                        (_g219059219076_ _g219060219079_))))))
          (declare (not safe))
          (_g219058219121_ _stx219056_))))
    (define gxc#find-case-lambda%
      (lambda (_stx218938_ _arg218939_)
        (let* ((_g218941218969_
                (lambda (_g218942218966_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218942218966_))))
               (_g218940219053_
                (lambda (_g218942218972_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218942218972_))
                      (let ((_e218947218974_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218942218972_))))
                        (let ((_hd218946218977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218947218974_)))
                              (_tl218945218979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218947218974_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl218945218979_))
                              (let ((_g226010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl218945218979_
                                        '0))))
                                (begin
                                  (let ((_g226011_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226010_)
                                               (##vector-length _g226010_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226011_ 2)))
                                        (error "Context expects 2 values"
                                               _g226011_)))
                                  (let ((_target218948218982_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226010_ 0)))
                                        (_tl218950218984_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226010_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218950218984_))
                                        (letrec ((_loop218951218987_
                                                  (lambda (_hd218949218990_
                                                           _body218955218992_
                                                           _hd218956218994_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd218949218990_))
                                                        (let ((_e218952218997_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd218949218990_))))
                  (let ((_lp-hd218953219000_
                         (let () (declare (not safe)) (##car _e218952218997_)))
                        (_lp-tl218954219002_
                         (let ()
                           (declare (not safe))
                           (##cdr _e218952218997_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd218953219000_))
                        (let ((_e218961219005_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd218953219000_))))
                          (let ((_hd218960219008_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218961219005_)))
                                (_tl218959219010_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218961219005_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl218959219010_))
                                (let ((_e218964219013_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl218959219010_))))
                                  (let ((_hd218963219016_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218964219013_)))
                                        (_tl218962219018_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218964219013_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl218962219018_))
                                        (let ((__tmp226016
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218963219016_
                                                       _body218955218992_)))
                                              (__tmp226015
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd218960219008_
                                                       _hd218956218994_))))
                                          (declare (not safe))
                                          (_loop218951218987_
                                           _lp-tl218954219002_
                                           __tmp226016
                                           __tmp226015))
                                        (let ()
                                          (declare (not safe))
                                          (_g218941218969_ _g218942218972_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218941218969_ _g218942218972_)))))
                        (let ()
                          (declare (not safe))
                          (_g218941218969_ _g218942218972_)))))
                (let ((_body218957219021_ (reverse _body218955218992_))
                      (_hd218958219023_ (reverse _hd218956218994_)))
                  ((lambda (_L219026_ _L219027_)
                     (let ((__tmp226014
                            (lambda (_g219041219043_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g219041219043_
                                 _arg218939_))))
                           (__tmp226012
                            (let ((__tmp226013
                                   (lambda (_g219045219048_ _g219046219050_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g219045219048_
                                             _g219046219050_)))))
                              (declare (not safe))
                              (foldr1 __tmp226013 '() _L219026_))))
                       (declare (not safe))
                       (ormap1 __tmp226014 __tmp226012)))
                   _body218957219021_
                   _hd218958219023_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop218951218987_
                                             _target218948218982_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g218941218969_
                                           _g218942218972_))))))
                              (let ()
                                (declare (not safe))
                                (_g218941218969_ _g218942218972_)))))
                      (let ()
                        (declare (not safe))
                        (_g218941218969_ _g218942218972_))))))
          (declare (not safe))
          (_g218940219053_ _stx218938_))))
    (define gxc#find-let-values%
      (lambda (_stx218788_ _arg218789_)
        (let* ((_g218791218826_
                (lambda (_g218792218823_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218792218823_))))
               (_g218790218935_
                (lambda (_g218792218829_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218792218829_))
                      (let ((_e218798218831_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218792218829_))))
                        (let ((_hd218797218834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218798218831_)))
                              (_tl218796218836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218798218831_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218796218836_))
                              (let ((_e218801218839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218796218836_))))
                                (let ((_hd218800218842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218801218839_)))
                                      (_tl218799218844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218801218839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd218800218842_))
                                      (let ((_g226017_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd218800218842_
                                                '0))))
                                        (begin
                                          (let ((_g226018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g226017_)
                                                       (##vector-length
                                                        _g226017_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g226018_ 2)))
                                                (error "Context expects 2 values"
                                                       _g226018_)))
                                          (let ((_target218802218847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g226017_ 0)))
                                                (_tl218804218849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g226017_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218804218849_))
                                                (letrec ((_loop218805218852_
                                                          (lambda (_hd218803218855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr218809218857_
                           _bind218810218859_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd218803218855_))
                        (let ((_e218806218862_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd218803218855_))))
                          (let ((_lp-hd218807218865_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e218806218862_)))
                                (_lp-tl218808218867_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e218806218862_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd218807218865_))
                                (let ((_e218815218870_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd218807218865_))))
                                  (let ((_hd218814218873_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e218815218870_)))
                                        (_tl218813218875_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e218815218870_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl218813218875_))
                                        (let ((_e218818218878_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl218813218875_))))
                                          (let ((_hd218817218881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e218818218878_)))
                                                (_tl218816218883_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e218818218878_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl218816218883_))
                                                (let ((__tmp226023
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218817218881_
                                                               _expr218809218857_)))
                                                      (__tmp226022
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd218814218873_
                                                               _bind218810218859_))))
                                                  (declare (not safe))
                                                  (_loop218805218852_
                                                   _lp-tl218808218867_
                                                   __tmp226023
                                                   __tmp226022))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218791218826_
                                                   _g218792218829_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g218791218826_ _g218792218829_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g218791218826_ _g218792218829_)))))
                        (let ((_expr218811218886_ (reverse _expr218809218857_))
                              (_bind218812218888_
                               (reverse _bind218810218859_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218799218844_))
                              (let ((_e218821218891_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218799218844_))))
                                (let ((_hd218820218894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218821218891_)))
                                      (_tl218819218896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218821218891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218819218896_))
                                      ((lambda (_L218899_ _L218900_ _L218901_)
                                         (let ((_$e218932_
                                                (let ((__tmp226021
                                                       (lambda (_g218920218922_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g218920218922_
                                                            _arg218789_))))
                                                      (__tmp226019
                                                       (let ((__tmp226020
                                                              (lambda (_g218924218927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g218925218929_)
                        (let ()
                          (declare (not safe))
                          (cons _g218924218927_ _g218925218929_)))))
                 (declare (not safe))
                 (foldr1 __tmp226020 '() _L218900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp226021
                                                          __tmp226019))))
                                           (if _$e218932_
                                               _$e218932_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L218899_
                                                  _arg218789_)))))
                                       _hd218820218894_
                                       _expr218811218886_
                                       _bind218812218888_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218791218826_ _g218792218829_)))))
                              (let ()
                                (declare (not safe))
                                (_g218791218826_ _g218792218829_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop218805218852_
                                                     _target218802218847_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g218791218826_
                                                   _g218792218829_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218791218826_ _g218792218829_)))))
                              (let ()
                                (declare (not safe))
                                (_g218791218826_ _g218792218829_)))))
                      (let ()
                        (declare (not safe))
                        (_g218791218826_ _g218792218829_))))))
          (declare (not safe))
          (_g218790218935_ _stx218788_))))
    (define gxc#find-setq%
      (lambda (_stx218720_ _arg218721_)
        (let* ((_g218723218740_
                (lambda (_g218724218737_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218724218737_))))
               (_g218722218785_
                (lambda (_g218724218743_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218724218743_))
                      (let ((_e218729218745_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218724218743_))))
                        (let ((_hd218728218748_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218729218745_)))
                              (_tl218727218750_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218729218745_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218727218750_))
                              (let ((_e218732218753_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218727218750_))))
                                (let ((_hd218731218756_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218732218753_)))
                                      (_tl218730218758_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218732218753_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218730218758_))
                                      (let ((_e218735218761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218730218758_))))
                                        (let ((_hd218734218764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218735218761_)))
                                              (_tl218733218766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218735218761_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218733218766_))
                                              ((lambda (_L218769_ _L218770_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L218769_
                                                    _arg218721_)))
                                               _hd218734218764_
                                               _hd218731218756_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218723218740_
                                                 _g218724218743_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218723218740_ _g218724218743_)))))
                              (let ()
                                (declare (not safe))
                                (_g218723218740_ _g218724218743_)))))
                      (let ()
                        (declare (not safe))
                        (_g218723218740_ _g218724218743_))))))
          (declare (not safe))
          (_g218722218785_ _stx218720_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx218664_ _ids218665_)
        (let* ((_g218667218680_
                (lambda (_g218668218677_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218668218677_))))
               (_g218666218717_
                (lambda (_g218668218683_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218668218683_))
                      (let ((_e218672218685_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218668218683_))))
                        (let ((_hd218671218688_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218672218685_)))
                              (_tl218670218690_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218672218685_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218670218690_))
                              (let ((_e218675218693_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218670218690_))))
                                (let ((_hd218674218696_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218675218693_)))
                                      (_tl218673218698_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218675218693_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl218673218698_))
                                      ((lambda (_L218701_)
                                         (let ((__tmp226024
                                                (lambda (_g218712218714_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L218701_
                                                     _g218712218714_)))))
                                           (declare (not safe))
                                           (find __tmp226024 _ids218665_)))
                                       _hd218674218696_)
                                      (let ()
                                        (declare (not safe))
                                        (_g218667218680_ _g218668218683_)))))
                              (let ()
                                (declare (not safe))
                                (_g218667218680_ _g218668218683_)))))
                      (let ()
                        (declare (not safe))
                        (_g218667218680_ _g218668218683_))))))
          (declare (not safe))
          (_g218666218717_ _stx218664_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx218588_ _ids218589_)
        (let* ((_g218591218608_
                (lambda (_g218592218605_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g218592218605_))))
               (_g218590218661_
                (lambda (_g218592218611_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g218592218611_))
                      (let ((_e218597218613_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g218592218611_))))
                        (let ((_hd218596218616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e218597218613_)))
                              (_tl218595218618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e218597218613_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl218595218618_))
                              (let ((_e218600218621_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl218595218618_))))
                                (let ((_hd218599218624_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e218600218621_)))
                                      (_tl218598218626_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e218600218621_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl218598218626_))
                                      (let ((_e218603218629_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl218598218626_))))
                                        (let ((_hd218602218632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e218603218629_)))
                                              (_tl218601218634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e218603218629_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl218601218634_))
                                              ((lambda (_L218637_ _L218638_)
                                                 (let ((_$e218658_
                                                        (let ((__tmp226025
                                                               (lambda (_g218653218655_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L218638_ _g218653218655_)))))
                  (declare (not safe))
                  (find __tmp226025 _ids218589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e218658_
                                                       _$e218658_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L218637_
                                                          _ids218589_)))))
                                               _hd218602218632_
                                               _hd218599218624_)
                                              (let ()
                                                (declare (not safe))
                                                (_g218591218608_
                                                 _g218592218611_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g218591218608_ _g218592218611_)))))
                              (let ()
                                (declare (not safe))
                                (_g218591218608_ _g218592218611_)))))
                      (let ()
                        (declare (not safe))
                        (_g218591218608_ _g218592218611_))))))
          (declare (not safe))
          (_g218590218661_ _stx218588_))))))
