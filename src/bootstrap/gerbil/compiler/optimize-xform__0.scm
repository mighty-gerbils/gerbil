(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708280336)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl230529_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230529_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230529_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230529_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230529_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl230529_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl230525_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230525_ '%#declare gxc#xform-identity))
           _tbl230525_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl230521_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234842 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl230521_ __tmp234842))
           (let ((__tmp234843 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl230521_ __tmp234843))
           _tbl230521_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl230517_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230517_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230517_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230517_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230517_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230517_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl230517_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl230513_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234844 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl230513_ __tmp234844))
           (let ((__tmp234845 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl230513_ __tmp234845))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230513_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230513_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230513_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230513_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230513_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl230513_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl230509_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234846 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl230509_ __tmp234846))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230509_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230509_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl230509_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx230492_ . _args230494_)
        (let ((__tmp234848
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230494_)
                     (gxc#compile-e__0 _stx230492_)
                     (let ((_arg1230499_ (car _args230494_))
                           (_rest230501_ (cdr _args230494_)))
                       (if (null? _rest230501_)
                           (gxc#compile-e__1 _stx230492_ _arg1230499_)
                           (let ((_arg2230504_ (car _rest230501_))
                                 (_rest230506_ (cdr _rest230501_)))
                             (if (null? _rest230506_)
                                 (gxc#compile-e__2
                                  _stx230492_
                                  _arg1230499_
                                  _arg2230504_)
                                 (apply gxc#compile-e
                                        _stx230492_
                                        _arg1230499_
                                        _arg2230504_
                                        _rest230506_))))))))
              (__tmp234847 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp234848
           gxc#current-compile-methods
           __tmp234847))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl230489_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234849 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl230489_ __tmp234849))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230489_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230489_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230489_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230489_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230489_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl230489_))))
    (define gxc#apply-collect-methods
      (lambda (_stx230472_ . _args230474_)
        (let ((__tmp234851
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230474_)
                     (gxc#compile-e__0 _stx230472_)
                     (let ((_arg1230479_ (car _args230474_))
                           (_rest230481_ (cdr _args230474_)))
                       (if (null? _rest230481_)
                           (gxc#compile-e__1 _stx230472_ _arg1230479_)
                           (let ((_arg2230484_ (car _rest230481_))
                                 (_rest230486_ (cdr _rest230481_)))
                             (if (null? _rest230486_)
                                 (gxc#compile-e__2
                                  _stx230472_
                                  _arg1230479_
                                  _arg2230484_)
                                 (apply gxc#compile-e
                                        _stx230472_
                                        _arg1230479_
                                        _arg2230484_
                                        _rest230486_))))))))
              (__tmp234850 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp234851
           gxc#current-compile-methods
           __tmp234850))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl230469_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234852 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl230469_ __tmp234852))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230469_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230469_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230469_ '%#set! gxc#expression-subst-setq%))
           _tbl230469_))))
    (define gxc#apply-expression-subst
      (lambda (_stx230452_ . _args230454_)
        (let ((__tmp234854
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230454_)
                     (gxc#compile-e__0 _stx230452_)
                     (let ((_arg1230459_ (car _args230454_))
                           (_rest230461_ (cdr _args230454_)))
                       (if (null? _rest230461_)
                           (gxc#compile-e__1 _stx230452_ _arg1230459_)
                           (let ((_arg2230464_ (car _rest230461_))
                                 (_rest230466_ (cdr _rest230461_)))
                             (if (null? _rest230466_)
                                 (gxc#compile-e__2
                                  _stx230452_
                                  _arg1230459_
                                  _arg2230464_)
                                 (apply gxc#compile-e
                                        _stx230452_
                                        _arg1230459_
                                        _arg2230464_
                                        _rest230466_))))))))
              (__tmp234853 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp234854
           gxc#current-compile-methods
           __tmp234853))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl230449_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234855 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl230449_ __tmp234855))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230449_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230449_ '%#set! gxc#expression-subst*-setq%))
           _tbl230449_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx230432_ . _args230434_)
        (let ((__tmp234857
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230434_)
                     (gxc#compile-e__0 _stx230432_)
                     (let ((_arg1230439_ (car _args230434_))
                           (_rest230441_ (cdr _args230434_)))
                       (if (null? _rest230441_)
                           (gxc#compile-e__1 _stx230432_ _arg1230439_)
                           (let ((_arg2230444_ (car _rest230441_))
                                 (_rest230446_ (cdr _rest230441_)))
                             (if (null? _rest230446_)
                                 (gxc#compile-e__2
                                  _stx230432_
                                  _arg1230439_
                                  _arg2230444_)
                                 (apply gxc#compile-e
                                        _stx230432_
                                        _arg1230439_
                                        _arg2230444_
                                        _rest230446_))))))))
              (__tmp234856 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp234857
           gxc#current-compile-methods
           __tmp234856))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl230429_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234858 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl230429_ __tmp234858))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230429_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230429_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl230429_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl230425_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234859 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl230425_ __tmp234859))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230425_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230425_ '%#set! gxc#find-var-refs-setq%))
           _tbl230425_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx230408_ . _args230410_)
        (let ((__tmp234861
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230410_)
                     (gxc#compile-e__0 _stx230408_)
                     (let ((_arg1230415_ (car _args230410_))
                           (_rest230417_ (cdr _args230410_)))
                       (if (null? _rest230417_)
                           (gxc#compile-e__1 _stx230408_ _arg1230415_)
                           (let ((_arg2230420_ (car _rest230417_))
                                 (_rest230422_ (cdr _rest230417_)))
                             (if (null? _rest230422_)
                                 (gxc#compile-e__2
                                  _stx230408_
                                  _arg1230415_
                                  _arg2230420_)
                                 (apply gxc#compile-e
                                        _stx230408_
                                        _arg1230415_
                                        _arg2230420_
                                        _rest230422_))))))))
              (__tmp234860 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp234861
           gxc#current-compile-methods
           __tmp234860))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl230405_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp234862 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl230405_ __tmp234862))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230405_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230405_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl230405_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx230388_ . _args230390_)
        (let ((__tmp234864
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230390_)
                     (gxc#compile-e__0 _stx230388_)
                     (let ((_arg1230395_ (car _args230390_))
                           (_rest230397_ (cdr _args230390_)))
                       (if (null? _rest230397_)
                           (gxc#compile-e__1 _stx230388_ _arg1230395_)
                           (let ((_arg2230400_ (car _rest230397_))
                                 (_rest230402_ (cdr _rest230397_)))
                             (if (null? _rest230402_)
                                 (gxc#compile-e__2
                                  _stx230388_
                                  _arg1230395_
                                  _arg2230400_)
                                 (apply gxc#compile-e
                                        _stx230388_
                                        _arg1230395_
                                        _arg2230400_
                                        _rest230402_))))))))
              (__tmp234863 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp234864
           gxc#current-compile-methods
           __tmp234863))))
    (define gxc#xform-identity
      (lambda (_stx230385_ . _args230386_) _stx230385_))
    (define gxc#xform-wrap-source
      (lambda (_stx230382_ _src-stx230383_)
        (let ((__tmp234865
               (let () (declare (not safe)) (gx#stx-source _src-stx230383_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx230382_ __tmp234865))))
    (define gxc#xform-apply-compile-e
      (lambda (_args230369_)
        (lambda (_stx230371_)
          (if (let () (declare (not safe)) (null? _args230369_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx230371_))
              (let ((_arg1230373_ (car _args230369_))
                    (_rest230375_ (cdr _args230369_)))
                (if (let () (declare (not safe)) (null? _rest230375_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx230371_ _arg1230373_))
                    (let ((_arg2230378_ (car _rest230375_))
                          (_rest230380_ (cdr _rest230375_)))
                      (if (let () (declare (not safe)) (null? _rest230380_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx230371_
                             _arg1230373_
                             _arg2230378_))
                          (apply gxc#compile-e
                                 _stx230371_
                                 _arg1230373_
                                 _arg2230378_
                                 _rest230380_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx230328_ . _args230329_)
        (let* ((_g230331230341_
                (lambda (_g230332230338_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230332230338_))))
               (_g230330230366_
                (lambda (_g230332230344_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230332230344_))
                      (let ((_e230336230346_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230332230344_))))
                        (let ((_hd230335230349_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230336230346_)))
                              (_tl230334230351_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230336230346_))))
                          ((lambda (_L230354_)
                             (let* ((_forms230364_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230329_))
                                          _L230354_))
                                    (__tmp234866
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms230364_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp234866
                                _stx230328_)))
                           _tl230334230351_)))
                      (let ()
                        (declare (not safe))
                        (_g230331230341_ _g230332230344_))))))
          (declare (not safe))
          (_g230330230366_ _stx230328_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx230286_ . _args230287_)
        (let* ((_g230289230299_
                (lambda (_g230290230296_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230290230296_))))
               (_g230288230325_
                (lambda (_g230290230302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230290230302_))
                      (let ((_e230294230304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230290230302_))))
                        (let ((_hd230293230307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230294230304_)))
                              (_tl230292230309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230294230304_))))
                          ((lambda (_L230312_)
                             (let ((__tmp234869
                                    (lambda ()
                                      (let* ((_forms230323_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args230287_))
                                                   _L230312_))
                                             (__tmp234870
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms230323_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp234870
                                         _stx230286_))))
                                   (__tmp234867
                                    (let ((__tmp234868
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp234868 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp234869
                                gx#current-expander-phi
                                __tmp234867)))
                           _tl230292230309_)))
                      (let ()
                        (declare (not safe))
                        (_g230289230299_ _g230290230302_))))))
          (declare (not safe))
          (_g230288230325_ _stx230286_))))
    (define gxc#xform-module%
      (lambda (_stx230214_ . _args230215_)
        (let* ((_g230217230231_
                (lambda (_g230218230228_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230218230228_))))
               (_g230216230283_
                (lambda (_g230218230234_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230218230234_))
                      (let ((_e230223230236_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230218230234_))))
                        (let ((_hd230222230239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230223230236_)))
                              (_tl230221230241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230223230236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230221230241_))
                              (let ((_e230226230244_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230221230241_))))
                                (let ((_hd230225230247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230226230244_)))
                                      (_tl230224230249_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230226230244_))))
                                  ((lambda (_L230252_ _L230253_)
                                     (let* ((_ctx230266_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L230253_)))
                                            (_code230268_
                                             (##structure-ref
                                              _ctx230266_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code230280_
                                             (let ((__tmp234871
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args230215_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code230268_))
                                                          (let ((_arg1230271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args230215_))
                        (_rest230273_ (cdr _args230215_)))
                    (if (let () (declare (not safe)) (null? _rest230273_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code230268_ _arg1230271_))
                        (let ((_arg2230276_ (car _rest230273_))
                              (_rest230278_ (cdr _rest230273_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest230278_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code230268_
                                 _arg1230271_
                                 _arg2230276_))
                              (apply gxc#compile-e
                                     _code230268_
                                     _arg1230271_
                                     _arg2230276_
                                     _rest230278_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp234871
                                                gx#current-expander-context
                                                _ctx230266_))))
                                       (##structure-set!
                                        _ctx230266_
                                        _code230280_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp234872
                                              (let ((__tmp234873
                                                     (let ((__tmp234874
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code230280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L230253_ __tmp234874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp234873))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp234872
                                          _stx230214_))))
                                   _tl230224230249_
                                   _hd230225230247_)))
                              (let ()
                                (declare (not safe))
                                (_g230217230231_ _g230218230234_)))))
                      (let ()
                        (declare (not safe))
                        (_g230217230231_ _g230218230234_))))))
          (declare (not safe))
          (_g230216230283_ _stx230214_))))
    (define gxc#xform-define-values%
      (lambda (_stx230135_ . _args230136_)
        (let* ((_g230138230155_
                (lambda (_g230139230152_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230139230152_))))
               (_g230137230211_
                (lambda (_g230139230158_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230139230158_))
                      (let ((_e230144230160_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230139230158_))))
                        (let ((_hd230143230163_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230144230160_)))
                              (_tl230142230165_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230144230160_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230142230165_))
                              (let ((_e230147230168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230142230165_))))
                                (let ((_hd230146230171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230147230168_)))
                                      (_tl230145230173_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230147230168_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230145230173_))
                                      (let ((_e230150230176_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230145230173_))))
                                        (let ((_hd230149230179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230150230176_)))
                                              (_tl230148230181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230150230176_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230148230181_))
                                              ((lambda (_L230184_ _L230185_)
                                                 (let* ((_expr230209_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230136_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230184_))
                     (let ((_arg1230200_ (car _args230136_))
                           (_rest230202_ (cdr _args230136_)))
                       (if (let () (declare (not safe)) (null? _rest230202_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230184_ _arg1230200_))
                           (let ((_arg2230205_ (car _rest230202_))
                                 (_rest230207_ (cdr _rest230202_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230207_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230184_
                                    _arg1230200_
                                    _arg2230205_))
                                 (apply gxc#compile-e
                                        _L230184_
                                        _arg1230200_
                                        _arg2230205_
                                        _rest230207_)))))))
                (__tmp234875
                 (let ((__tmp234876
                        (let ((__tmp234877
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230209_ '()))))
                          (declare (not safe))
                          (cons _L230185_ __tmp234877))))
                   (declare (not safe))
                   (cons '%#define-values __tmp234876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp234875
                                                    _stx230135_)))
                                               _hd230149230179_
                                               _hd230146230171_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230138230155_
                                                 _g230139230158_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230138230155_ _g230139230158_)))))
                              (let ()
                                (declare (not safe))
                                (_g230138230155_ _g230139230158_)))))
                      (let ()
                        (declare (not safe))
                        (_g230138230155_ _g230139230158_))))))
          (declare (not safe))
          (_g230137230211_ _stx230135_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx230055_ . _args230056_)
        (let* ((_g230058230075_
                (lambda (_g230059230072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230059230072_))))
               (_g230057230132_
                (lambda (_g230059230078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230059230078_))
                      (let ((_e230064230080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230059230078_))))
                        (let ((_hd230063230083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230064230080_)))
                              (_tl230062230085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230064230080_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230062230085_))
                              (let ((_e230067230088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230062230085_))))
                                (let ((_hd230066230091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230067230088_)))
                                      (_tl230065230093_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230067230088_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230065230093_))
                                      (let ((_e230070230096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230065230093_))))
                                        (let ((_hd230069230099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230070230096_)))
                                              (_tl230068230101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230070230096_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230068230101_))
                                              ((lambda (_L230104_ _L230105_)
                                                 (let ((__tmp234880
                                                        (lambda ()
                                                          (let* ((_expr230130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args230056_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L230104_))
                              (let ((_arg1230121_ (car _args230056_))
                                    (_rest230123_ (cdr _args230056_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest230123_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L230104_
                                       _arg1230121_))
                                    (let ((_arg2230126_ (car _rest230123_))
                                          (_rest230128_ (cdr _rest230123_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest230128_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L230104_
                                             _arg1230121_
                                             _arg2230126_))
                                          (apply gxc#compile-e
                                                 _L230104_
                                                 _arg1230121_
                                                 _arg2230126_
                                                 _rest230128_)))))))
                         (__tmp234881
                          (let ((__tmp234882
                                 (let ((__tmp234883
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr230130_ '()))))
                                   (declare (not safe))
                                   (cons _L230105_ __tmp234883))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp234882))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp234881 _stx230055_))))
               (__tmp234878
                (let ((__tmp234879 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp234879 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp234880
                                                    gx#current-expander-phi
                                                    __tmp234878)))
                                               _hd230069230099_
                                               _hd230066230091_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230058230075_
                                                 _g230059230078_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230058230075_ _g230059230078_)))))
                              (let ()
                                (declare (not safe))
                                (_g230058230075_ _g230059230078_)))))
                      (let ()
                        (declare (not safe))
                        (_g230058230075_ _g230059230078_))))))
          (declare (not safe))
          (_g230057230132_ _stx230055_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx229976_ . _args229977_)
        (let* ((_g229979229996_
                (lambda (_g229980229993_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229980229993_))))
               (_g229978230052_
                (lambda (_g229980229999_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229980229999_))
                      (let ((_e229985230001_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229980229999_))))
                        (let ((_hd229984230004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229985230001_)))
                              (_tl229983230006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229985230001_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229983230006_))
                              (let ((_e229988230009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229983230006_))))
                                (let ((_hd229987230012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229988230009_)))
                                      (_tl229986230014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229988230009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229986230014_))
                                      (let ((_e229991230017_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229986230014_))))
                                        (let ((_hd229990230020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229991230017_)))
                                              (_tl229989230022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229991230017_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229989230022_))
                                              ((lambda (_L230025_ _L230026_)
                                                 (let* ((_expr230050_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args229977_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230025_))
                     (let ((_arg1230041_ (car _args229977_))
                           (_rest230043_ (cdr _args229977_)))
                       (if (let () (declare (not safe)) (null? _rest230043_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230025_ _arg1230041_))
                           (let ((_arg2230046_ (car _rest230043_))
                                 (_rest230048_ (cdr _rest230043_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230048_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230025_
                                    _arg1230041_
                                    _arg2230046_))
                                 (apply gxc#compile-e
                                        _L230025_
                                        _arg1230041_
                                        _arg2230046_
                                        _rest230048_)))))))
                (__tmp234884
                 (let ((__tmp234885
                        (let ((__tmp234886
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230050_ '()))))
                          (declare (not safe))
                          (cons _L230026_ __tmp234886))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp234885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp234884
                                                    _stx229976_)))
                                               _hd229990230020_
                                               _hd229987230012_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229979229996_
                                                 _g229980229999_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229979229996_ _g229980229999_)))))
                              (let ()
                                (declare (not safe))
                                (_g229979229996_ _g229980229999_)))))
                      (let ()
                        (declare (not safe))
                        (_g229979229996_ _g229980229999_))))))
          (declare (not safe))
          (_g229978230052_ _stx229976_))))
    (define gxc#xform-lambda%
      (lambda (_stx229919_ . _args229920_)
        (let* ((_g229922229936_
                (lambda (_g229923229933_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229923229933_))))
               (_g229921229973_
                (lambda (_g229923229939_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229923229939_))
                      (let ((_e229928229941_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229923229939_))))
                        (let ((_hd229927229944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229928229941_)))
                              (_tl229926229946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229928229941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229926229946_))
                              (let ((_e229931229949_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229926229946_))))
                                (let ((_hd229930229952_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229931229949_)))
                                      (_tl229929229954_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229931229949_))))
                                  ((lambda (_L229957_ _L229958_)
                                     (let* ((_body229971_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args229920_))
                                                  _L229957_))
                                            (__tmp234887
                                             (let ((__tmp234888
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L229958_
                                                            _body229971_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp234888))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp234887
                                        _stx229919_)))
                                   _tl229929229954_
                                   _hd229930229952_)))
                              (let ()
                                (declare (not safe))
                                (_g229922229936_ _g229923229939_)))))
                      (let ()
                        (declare (not safe))
                        (_g229922229936_ _g229923229939_))))))
          (declare (not safe))
          (_g229921229973_ _stx229919_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx229832_ . _args229833_)
        (letrec ((_clause-e229835_
                  (lambda (_clause229876_)
                    (let* ((_g229878229889_
                            (lambda (_g229879229886_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g229879229886_))))
                           (_g229877229916_
                            (lambda (_g229879229892_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g229879229892_))
                                  (let ((_e229884229894_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g229879229892_))))
                                    (let ((_hd229883229897_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229884229894_)))
                                          (_tl229882229899_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229884229894_))))
                                      ((lambda (_L229902_ _L229903_)
                                         (let ((_body229914_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args229833_))
                                                     _L229902_)))
                                           (declare (not safe))
                                           (cons _L229903_ _body229914_)))
                                       _tl229882229899_
                                       _hd229883229897_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g229878229889_ _g229879229892_))))))
                      (declare (not safe))
                      (_g229877229916_ _clause229876_)))))
          (let* ((_g229837229847_
                  (lambda (_g229838229844_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g229838229844_))))
                 (_g229836229873_
                  (lambda (_g229838229850_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g229838229850_))
                        (let ((_e229842229852_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g229838229850_))))
                          (let ((_hd229841229855_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229842229852_)))
                                (_tl229840229857_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229842229852_))))
                            ((lambda (_L229860_)
                               (let* ((_clauses229871_
                                       (map _clause-e229835_ _L229860_))
                                      (__tmp234889
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses229871_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp234889
                                  _stx229832_)))
                             _tl229840229857_)))
                        (let ()
                          (declare (not safe))
                          (_g229837229847_ _g229838229850_))))))
            (declare (not safe))
            (_g229836229873_ _stx229832_)))))
    (define gxc#xform-let-values%
      (lambda (_stx229626_ . _args229627_)
        (let* ((_g229629229662_
                (lambda (_g229630229659_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229630229659_))))
               (_g229628229829_
                (lambda (_g229630229665_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229630229665_))
                      (let ((_e229637229667_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229630229665_))))
                        (let ((_hd229636229670_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229637229667_)))
                              (_tl229635229672_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229637229667_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229635229672_))
                              (let ((_e229640229675_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229635229672_))))
                                (let ((_hd229639229678_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229640229675_)))
                                      (_tl229638229680_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229640229675_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd229639229678_))
                                      (let ((_g234890_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd229639229678_
                                                '0))))
                                        (begin
                                          (let ((_g234891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g234890_)
                                                       (##vector-length
                                                        _g234890_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g234891_ 2)))
                                                (error "Context expects 2 values"
                                                       _g234891_)))
                                          (let ((_target229641229683_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g234890_ 0)))
                                                (_tl229643229685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g234890_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229643229685_))
                                                (letrec ((_loop229644229688_
                                                          (lambda (_hd229642229691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr229648229693_
                           _hd229649229695_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229642229691_))
                        (let ((_e229645229698_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229642229691_))))
                          (let ((_lp-hd229646229701_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229645229698_)))
                                (_lp-tl229647229703_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229645229698_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd229646229701_))
                                (let ((_e229654229706_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd229646229701_))))
                                  (let ((_hd229653229709_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229654229706_)))
                                        (_tl229652229711_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229654229706_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229652229711_))
                                        (let ((_e229657229714_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229652229711_))))
                                          (let ((_hd229656229717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229657229714_)))
                                                (_tl229655229719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229657229714_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229655229719_))
                                                (let ((__tmp234904
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229656229717_
                                                               _expr229648229693_)))
                                                      (__tmp234903
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229653229709_
                                                               _hd229649229695_))))
                                                  (declare (not safe))
                                                  (_loop229644229688_
                                                   _lp-tl229647229703_
                                                   __tmp234904
                                                   __tmp234903))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229629229662_
                                                   _g229630229665_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g229629229662_ _g229630229665_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229629229662_ _g229630229665_)))))
                        (let ((_expr229650229722_ (reverse _expr229648229693_))
                              (_hd229651229724_ (reverse _hd229649229695_)))
                          ((lambda (_L229727_ _L229728_ _L229729_ _L229730_)
                             (let* ((_g229749229765_
                                     (lambda (_g229750229762_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g229750229762_))))
                                    (_g229748229819_
                                     (lambda (_g229750229768_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g229750229768_))
                                           (let ((_g234892_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g229750229768_
                                                     '0))))
                                             (begin
                                               (let ((_g234893_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g234892_)
                                                            (##vector-length
                                                             _g234892_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g234893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g234893_)))
                                               (let ((_target229752229770_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g234892_
                                                         0)))
                                                     (_tl229754229772_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g234892_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl229754229772_))
                                                     (letrec ((_loop229755229775_
                                                               (lambda (_hd229753229778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr229759229780_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd229753229778_))
                             (let ((_e229756229783_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd229753229778_))))
                               (let ((_lp-hd229757229786_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e229756229783_)))
                                     (_lp-tl229758229788_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e229756229783_))))
                                 (let ((__tmp234900
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd229757229786_
                                                _expr229759229780_))))
                                   (declare (not safe))
                                   (_loop229755229775_
                                    _lp-tl229758229788_
                                    __tmp234900))))
                             (let ((_expr229760229791_
                                    (reverse _expr229759229780_)))
                               ((lambda (_L229794_)
                                  (let ()
                                    (let* ((_body229807_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args229627_))
                                                 _L229727_))
                                           (__tmp234894
                                            (let ((__tmp234895
                                                   (let ((__tmp234896
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L229794_
                                                               _L229729_))
                                                            (let ((__tmp234897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g229808229812_
                                    _g229809229814_
                                    _g229810229816_)
                             (let ((__tmp234898
                                    (let ((__tmp234899
                                           (let ()
                                             (declare (not safe))
                                             (cons _g229808229812_ '()))))
                                      (declare (not safe))
                                      (cons _g229809229814_ __tmp234899))))
                               (declare (not safe))
                               (cons __tmp234898 _g229810229816_)))))
                      (declare (not safe))
                      (foldr2 __tmp234897 '() _L229794_ _L229729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp234896
                                                           _body229807_))))
                                              (declare (not safe))
                                              (cons _L229730_ __tmp234895))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp234894
                                       _stx229626_))))
                                _expr229760229791_))))))
               (let ()
                 (declare (not safe))
                 (_loop229755229775_ _target229752229770_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g229749229765_
                                                        _g229750229768_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g229749229765_
                                              _g229750229768_)))))
                                    (__tmp234901
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args229627_))
                                          (let ((__tmp234902
                                                 (lambda (_g229821229824_
                                                          _g229822229826_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g229821229824_
                                                           _g229822229826_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp234902
                                                    '()
                                                    _L229728_)))))
                               (declare (not safe))
                               (_g229748229819_ __tmp234901)))
                           _tl229638229680_
                           _expr229650229722_
                           _hd229651229724_
                           _hd229636229670_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop229644229688_
                                                     _target229641229683_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229629229662_
                                                   _g229630229665_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229629229662_ _g229630229665_)))))
                              (let ()
                                (declare (not safe))
                                (_g229629229662_ _g229630229665_)))))
                      (let ()
                        (declare (not safe))
                        (_g229629229662_ _g229630229665_))))))
          (declare (not safe))
          (_g229628229829_ _stx229626_))))
    (define gxc#xform-operands
      (lambda (_stx229582_ . _args229583_)
        (let* ((_g229585229596_
                (lambda (_g229586229593_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229586229593_))))
               (_g229584229623_
                (lambda (_g229586229599_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229586229599_))
                      (let ((_e229591229601_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229586229599_))))
                        (let ((_hd229590229604_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229591229601_)))
                              (_tl229589229606_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229591229601_))))
                          ((lambda (_L229609_ _L229610_)
                             (let* ((_rands229621_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args229583_))
                                          _L229609_))
                                    (__tmp234905
                                     (let ()
                                       (declare (not safe))
                                       (cons _L229610_ _rands229621_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp234905
                                _stx229582_)))
                           _tl229589229606_
                           _hd229590229604_)))
                      (let ()
                        (declare (not safe))
                        (_g229585229596_ _g229586229599_))))))
          (declare (not safe))
          (_g229584229623_ _stx229582_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx229503_ . _args229504_)
        (let* ((_g229506229523_
                (lambda (_g229507229520_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229507229520_))))
               (_g229505229579_
                (lambda (_g229507229526_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229507229526_))
                      (let ((_e229512229528_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229507229526_))))
                        (let ((_hd229511229531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229512229528_)))
                              (_tl229510229533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229512229528_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229510229533_))
                              (let ((_e229515229536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229510229533_))))
                                (let ((_hd229514229539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229515229536_)))
                                      (_tl229513229541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229515229536_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229513229541_))
                                      (let ((_e229518229544_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229513229541_))))
                                        (let ((_hd229517229547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229518229544_)))
                                              (_tl229516229549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229518229544_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229516229549_))
                                              ((lambda (_L229552_ _L229553_)
                                                 (let* ((_expr229577_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args229504_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L229552_))
                     (let ((_arg1229568_ (car _args229504_))
                           (_rest229570_ (cdr _args229504_)))
                       (if (let () (declare (not safe)) (null? _rest229570_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L229552_ _arg1229568_))
                           (let ((_arg2229573_ (car _rest229570_))
                                 (_rest229575_ (cdr _rest229570_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest229575_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L229552_
                                    _arg1229568_
                                    _arg2229573_))
                                 (apply gxc#compile-e
                                        _L229552_
                                        _arg1229568_
                                        _arg2229573_
                                        _rest229575_)))))))
                (__tmp234906
                 (let ((__tmp234907
                        (let ((__tmp234908
                               (let ()
                                 (declare (not safe))
                                 (cons _expr229577_ '()))))
                          (declare (not safe))
                          (cons _L229553_ __tmp234908))))
                   (declare (not safe))
                   (cons '%#set! __tmp234907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp234906
                                                    _stx229503_)))
                                               _hd229517229547_
                                               _hd229514229539_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229506229523_
                                                 _g229507229526_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229506229523_ _g229507229526_)))))
                              (let ()
                                (declare (not safe))
                                (_g229506229523_ _g229507229526_)))))
                      (let ()
                        (declare (not safe))
                        (_g229506229523_ _g229507229526_))))))
          (declare (not safe))
          (_g229505229579_ _stx229503_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx229434_)
        (let* ((_g229436229453_
                (lambda (_g229437229450_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229437229450_))))
               (_g229435229500_
                (lambda (_g229437229456_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229437229456_))
                      (let ((_e229442229458_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229437229456_))))
                        (let ((_hd229441229461_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229442229458_)))
                              (_tl229440229463_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229442229458_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229440229463_))
                              (let ((_e229445229466_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229440229463_))))
                                (let ((_hd229444229469_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229445229466_)))
                                      (_tl229443229471_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229445229466_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229443229471_))
                                      (let ((_e229448229474_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229443229471_))))
                                        (let ((_hd229447229477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229448229474_)))
                                              (_tl229446229479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229448229474_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229446229479_))
                                              ((lambda (_L229482_ _L229483_)
                                                 (let ((_sym229498_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L229483_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym229498_))
                                                   (let ((__tmp234909
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp234909
                                                      _sym229498_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L229482_))))
                                               _hd229447229477_
                                               _hd229444229469_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229436229453_
                                                 _g229437229456_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229436229453_ _g229437229456_)))))
                              (let ()
                                (declare (not safe))
                                (_g229436229453_ _g229437229456_)))))
                      (let ()
                        (declare (not safe))
                        (_g229436229453_ _g229437229456_))))))
          (declare (not safe))
          (_g229435229500_ _stx229434_))))
    (define gxc#collect-methods-call%
      (lambda (_stx228988_)
        (let* ((___stx234599234600_ _stx228988_)
               (_g228992229094_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx234599234600_)))))
          (let ((___kont234601234602_
                 (lambda (_L229384_ _L229385_ _L229386_ _L229387_ _L229388_)
                   (let ((__tmp234910
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229385_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp234910))))
                (___kont234603234604_
                 (lambda (_L229210_ _L229211_ _L229212_ _L229213_)
                   (let ((__tmp234911
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229210_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp234911))))
                (___kont234605234606_ (lambda () '#!void)))
            (let ((___match234734234735_
                   (lambda (_e229001229256_
                            _hd229000229259_
                            _tl228999229261_
                            _e229004229264_
                            _hd229003229267_
                            _tl229002229269_
                            _e229007229272_
                            _hd229006229275_
                            _tl229005229277_
                            _e229010229280_
                            _hd229009229283_
                            _tl229008229285_
                            _e229013229288_
                            _hd229012229291_
                            _tl229011229293_
                            _e229016229296_
                            _hd229015229299_
                            _tl229014229301_
                            _e229019229304_
                            _hd229018229307_
                            _tl229017229309_
                            _e229022229312_
                            _hd229021229315_
                            _tl229020229317_
                            _e229025229320_
                            _hd229024229323_
                            _tl229023229325_
                            _e229028229328_
                            _hd229027229331_
                            _tl229026229333_
                            _e229031229336_
                            _hd229030229339_
                            _tl229029229341_
                            _e229034229344_
                            _hd229033229347_
                            _tl229032229349_
                            _e229037229352_
                            _hd229036229355_
                            _tl229035229357_
                            _e229040229360_
                            _hd229039229363_
                            _tl229038229365_
                            _e229043229368_
                            _hd229042229371_
                            _tl229041229373_
                            _e229046229376_
                            _hd229045229379_
                            _tl229044229381_)
                     (let ((_L229384_ _hd229045229379_)
                           (_L229385_ _hd229036229355_)
                           (_L229386_ _hd229027229331_)
                           (_L229387_ _hd229018229307_)
                           (_L229388_ _hd229009229283_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L229388_
                              'bind-method!))
                           (___kont234601234602_
                            _L229384_
                            _L229385_
                            _L229386_
                            _L229387_
                            _L229388_)
                           (___kont234605234606_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx234599234600_))
                  (let ((_e229001229256_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx234599234600_))))
                    (let ((_tl228999229261_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229001229256_)))
                          (_hd229000229259_
                           (let ()
                             (declare (not safe))
                             (##car _e229001229256_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228999229261_))
                          (let ((_e229004229264_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228999229261_))))
                            (let ((_tl229002229269_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229004229264_)))
                                  (_hd229003229267_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229004229264_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229003229267_))
                                  (let ((_e229007229272_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229003229267_))))
                                    (let ((_tl229005229277_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229007229272_)))
                                          (_hd229006229275_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229007229272_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd229006229275_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd229006229275_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229005229277_))
                                                  (let ((_e229010229280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229005229277_))))
                                                    (let ((_tl229008229285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229010229280_)))
                                                          (_hd229009229283_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229010229280_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229008229285_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229002229269_))
                      (let ((_e229013229288_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229002229269_))))
                        (let ((_tl229011229293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229013229288_)))
                              (_hd229012229291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229013229288_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229012229291_))
                              (let ((_e229016229296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229012229291_))))
                                (let ((_tl229014229301_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229016229296_)))
                                      (_hd229015229299_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229016229296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd229015229299_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd229015229299_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229014229301_))
                                              (let ((_e229019229304_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229014229301_))))
                                                (let ((_tl229017229309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229019229304_)))
                                                      (_hd229018229307_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229019229304_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229017229309_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl229011229293_))
                                                          (let ((_e229022229312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl229011229293_))))
                    (let ((_tl229020229317_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229022229312_)))
                          (_hd229021229315_
                           (let ()
                             (declare (not safe))
                             (##car _e229022229312_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd229021229315_))
                          (let ((_e229025229320_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd229021229315_))))
                            (let ((_tl229023229325_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229025229320_)))
                                  (_hd229024229323_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229025229320_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd229024229323_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd229024229323_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl229023229325_))
                                          (let ((_e229028229328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl229023229325_))))
                                            (let ((_tl229026229333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229028229328_)))
                                                  (_hd229027229331_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229028229328_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229026229333_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229020229317_))
                                                      (let ((_e229031229336_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229020229317_))))
                (let ((_tl229029229341_
                       (let () (declare (not safe)) (##cdr _e229031229336_)))
                      (_hd229030229339_
                       (let () (declare (not safe)) (##car _e229031229336_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229030229339_))
                      (let ((_e229034229344_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229030229339_))))
                        (let ((_tl229032229349_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229034229344_)))
                              (_hd229033229347_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229034229344_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd229033229347_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd229033229347_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229032229349_))
                                      (let ((_e229037229352_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229032229349_))))
                                        (let ((_tl229035229357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229037229352_)))
                                              (_hd229036229355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229037229352_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229035229357_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229029229341_))
                                                  (let ((_e229040229360_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229029229341_))))
                                                    (let ((_tl229038229365_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229040229360_)))
                                                          (_hd229039229363_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229040229360_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd229039229363_))
                                                          (let ((_e229043229368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd229039229363_))))
                    (let ((_tl229041229373_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229043229368_)))
                          (_hd229042229371_
                           (let ()
                             (declare (not safe))
                             (##car _e229043229368_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd229042229371_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd229042229371_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229041229373_))
                                  (let ((_e229046229376_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229041229373_))))
                                    (let ((_tl229044229381_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229046229376_)))
                                          (_hd229045229379_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229046229376_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229044229381_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229038229365_))
                                              (___match234734234735_
                                               _e229001229256_
                                               _hd229000229259_
                                               _tl228999229261_
                                               _e229004229264_
                                               _hd229003229267_
                                               _tl229002229269_
                                               _e229007229272_
                                               _hd229006229275_
                                               _tl229005229277_
                                               _e229010229280_
                                               _hd229009229283_
                                               _tl229008229285_
                                               _e229013229288_
                                               _hd229012229291_
                                               _tl229011229293_
                                               _e229016229296_
                                               _hd229015229299_
                                               _tl229014229301_
                                               _e229019229304_
                                               _hd229018229307_
                                               _tl229017229309_
                                               _e229022229312_
                                               _hd229021229315_
                                               _tl229020229317_
                                               _e229025229320_
                                               _hd229024229323_
                                               _tl229023229325_
                                               _e229028229328_
                                               _hd229027229331_
                                               _tl229026229333_
                                               _e229031229336_
                                               _hd229030229339_
                                               _tl229029229341_
                                               _e229034229344_
                                               _hd229033229347_
                                               _tl229032229349_
                                               _e229037229352_
                                               _hd229036229355_
                                               _tl229035229357_
                                               _e229040229360_
                                               _hd229039229363_
                                               _tl229038229365_
                                               _e229043229368_
                                               _hd229042229371_
                                               _tl229041229373_
                                               _e229046229376_
                                               _hd229045229379_
                                               _tl229044229381_)
                                              (___kont234605234606_))
                                          (___kont234605234606_))))
                                  (___kont234605234606_))
                              (___kont234605234606_))
                          (___kont234605234606_))))
                  (___kont234605234606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229029229341_))
                                                      (if (let ((__tmp234912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp234912 'bind-method!))
                  (let ((_L229210_ _hd229036229355_)
                        (_L229211_ _hd229027229331_)
                        (_L229212_ _hd229018229307_)
                        (_L229213_ _hd229009229283_))
                    (___kont234603234604_
                     _L229210_
                     _L229211_
                     _L229212_
                     _L229213_))
                  (___kont234605234606_))
              (___kont234605234606_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont234605234606_))))
                                      (___kont234605234606_))
                                  (___kont234605234606_))
                              (___kont234605234606_))))
                      (___kont234605234606_))))
              (___kont234605234606_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont234605234606_))))
                                          (___kont234605234606_))
                                      (___kont234605234606_))
                                  (___kont234605234606_))))
                          (___kont234605234606_))))
                  (___kont234605234606_))
              (___kont234605234606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont234605234606_))
                                          (___kont234605234606_))
                                      (___kont234605234606_))))
                              (___kont234605234606_))))
                      (___kont234605234606_))
                  (___kont234605234606_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont234605234606_))
                                              (___kont234605234606_))
                                          (___kont234605234606_))))
                                  (___kont234605234606_))))
                          (___kont234605234606_))))
                  (___kont234605234606_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx228935_ _id228936_ _new-id228937_)
        (let* ((_g228939228952_
                (lambda (_g228940228949_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228940228949_))))
               (_g228938228985_
                (lambda (_g228940228955_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228940228955_))
                      (let ((_e228944228957_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228940228955_))))
                        (let ((_hd228943228960_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228944228957_)))
                              (_tl228942228962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228944228957_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228942228962_))
                              (let ((_e228947228965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228942228962_))))
                                (let ((_hd228946228968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228947228965_)))
                                      (_tl228945228970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228947228965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228945228970_))
                                      ((lambda (_L228973_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L228973_
                                                _id228936_))
                                             (let ((__tmp234913
                                                    (let ((__tmp234914
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id228937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp234914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp234913
                                                _stx228935_))
                                             _stx228935_))
                                       _hd228946228968_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228939228952_ _g228940228955_)))))
                              (let ()
                                (declare (not safe))
                                (_g228939228952_ _g228940228955_)))))
                      (let ()
                        (declare (not safe))
                        (_g228939228952_ _g228940228955_))))))
          (declare (not safe))
          (_g228938228985_ _stx228935_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx228876_ _subst228877_)
        (let* ((_g228879228892_
                (lambda (_g228880228889_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228880228889_))))
               (_g228878228932_
                (lambda (_g228880228895_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228880228895_))
                      (let ((_e228884228897_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228880228895_))))
                        (let ((_hd228883228900_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228884228897_)))
                              (_tl228882228902_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228884228897_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228882228902_))
                              (let ((_e228887228905_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228882228902_))))
                                (let ((_hd228886228908_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228887228905_)))
                                      (_tl228885228910_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228887228905_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228885228910_))
                                      ((lambda (_L228913_)
                                         (let ((_$e228927_
                                                (let ((__tmp234915
                                                       (lambda (_sub228925_)
                                                         (let ((__tmp234916
                                                                (car _sub228925_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L228913_
                                                            __tmp234916)))))
                                                  (declare (not safe))
                                                  (find __tmp234915
                                                        _subst228877_))))
                                           (if _$e228927_
                                               ((lambda (_sub228930_)
                                                  (let ((__tmp234917
                                                         (let ((__tmp234918
                                                                (let ((__tmp234919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub228930_)))
                          (declare (not safe))
                          (cons __tmp234919 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp234918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp234917
                                                     _stx228876_)))
                                                _$e228927_)
                                               _stx228876_)))
                                       _hd228886228908_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228879228892_ _g228880228895_)))))
                              (let ()
                                (declare (not safe))
                                (_g228879228892_ _g228880228895_)))))
                      (let ()
                        (declare (not safe))
                        (_g228879228892_ _g228880228895_))))))
          (declare (not safe))
          (_g228878228932_ _stx228876_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx228804_ _id228805_ _new-id228806_)
        (let* ((_g228808228825_
                (lambda (_g228809228822_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228809228822_))))
               (_g228807228873_
                (lambda (_g228809228828_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228809228828_))
                      (let ((_e228814228830_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228809228828_))))
                        (let ((_hd228813228833_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228814228830_)))
                              (_tl228812228835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228814228830_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228812228835_))
                              (let ((_e228817228838_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228812228835_))))
                                (let ((_hd228816228841_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228817228838_)))
                                      (_tl228815228843_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228817228838_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228815228843_))
                                      (let ((_e228820228846_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228815228843_))))
                                        (let ((_hd228819228849_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228820228846_)))
                                              (_tl228818228851_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228820228846_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228818228851_))
                                              ((lambda (_L228854_ _L228855_)
                                                 (let ((_new-expr228870_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L228854_
                                                           _id228805_
                                                           _new-id228806_)))
                                                       (_new-xid228871_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L228855_
                                                               _id228805_))
                                                            _new-id228806_
                                                            _L228855_)))
                                                   (let ((__tmp234920
                                                          (let ((__tmp234921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp234922
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr228870_ '()))))
                           (declare (not safe))
                           (cons _new-xid228871_ __tmp234922))))
                    (declare (not safe))
                    (cons '%#set! __tmp234921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp234920
                                                      _stx228804_))))
                                               _hd228819228849_
                                               _hd228816228841_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228808228825_
                                                 _g228809228828_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228808228825_ _g228809228828_)))))
                              (let ()
                                (declare (not safe))
                                (_g228808228825_ _g228809228828_)))))
                      (let ()
                        (declare (not safe))
                        (_g228808228825_ _g228809228828_))))))
          (declare (not safe))
          (_g228807228873_ _stx228804_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx228728_ _subst228729_)
        (let* ((_g228731228748_
                (lambda (_g228732228745_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228732228745_))))
               (_g228730228801_
                (lambda (_g228732228751_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228732228751_))
                      (let ((_e228737228753_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228732228751_))))
                        (let ((_hd228736228756_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228737228753_)))
                              (_tl228735228758_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228737228753_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228735228758_))
                              (let ((_e228740228761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228735228758_))))
                                (let ((_hd228739228764_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228740228761_)))
                                      (_tl228738228766_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228740228761_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228738228766_))
                                      (let ((_e228743228769_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228738228766_))))
                                        (let ((_hd228742228772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228743228769_)))
                                              (_tl228741228774_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228743228769_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228741228774_))
                                              ((lambda (_L228777_ _L228778_)
                                                 (let ((_new-expr228798_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L228777_
                                                           _subst228729_)))
                                                       (_new-xid228799_
                                                        (let ((_$e228795_
                                                               (let ((__tmp234923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub228793_)
                                (let ((__tmp234924 (car _sub228793_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L228778_
                                   __tmp234924)))))
                         (declare (not safe))
                         (find __tmp234923 _subst228729_))))
                  (if _$e228795_ (cdr _$e228795_) _L228778_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp234925
                                                          (let ((__tmp234926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp234927
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr228798_ '()))))
                           (declare (not safe))
                           (cons _new-xid228799_ __tmp234927))))
                    (declare (not safe))
                    (cons '%#set! __tmp234926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp234925
                                                      _stx228728_))))
                                               _hd228742228772_
                                               _hd228739228764_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228731228748_
                                                 _g228732228751_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228731228748_ _g228732228751_)))))
                              (let ()
                                (declare (not safe))
                                (_g228731228748_ _g228732228751_)))))
                      (let ()
                        (declare (not safe))
                        (_g228731228748_ _g228732228751_))))))
          (declare (not safe))
          (_g228730228801_ _stx228728_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx228674_ _ht228675_)
        (let* ((_g228677228690_
                (lambda (_g228678228687_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228678228687_))))
               (_g228676228725_
                (lambda (_g228678228693_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228678228693_))
                      (let ((_e228682228695_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228678228693_))))
                        (let ((_hd228681228698_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228682228695_)))
                              (_tl228680228700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228682228695_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228680228700_))
                              (let ((_e228685228703_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228680228700_))))
                                (let ((_hd228684228706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228685228703_)))
                                      (_tl228683228708_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228685228703_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228683228708_))
                                      ((lambda (_L228711_)
                                         (let ((_eid228723_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L228711_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht228675_
                                            _eid228723_
                                            1+
                                            '0)))
                                       _hd228684228706_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228677228690_ _g228678228693_)))))
                              (let ()
                                (declare (not safe))
                                (_g228677228690_ _g228678228693_)))))
                      (let ()
                        (declare (not safe))
                        (_g228677228690_ _g228678228693_))))))
          (declare (not safe))
          (_g228676228725_ _stx228674_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx228604_ _ht228605_)
        (let* ((_g228607228624_
                (lambda (_g228608228621_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228608228621_))))
               (_g228606228671_
                (lambda (_g228608228627_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228608228627_))
                      (let ((_e228613228629_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228608228627_))))
                        (let ((_hd228612228632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228613228629_)))
                              (_tl228611228634_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228613228629_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228611228634_))
                              (let ((_e228616228637_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228611228634_))))
                                (let ((_hd228615228640_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228616228637_)))
                                      (_tl228614228642_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228616228637_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228614228642_))
                                      (let ((_e228619228645_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228614228642_))))
                                        (let ((_hd228618228648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228619228645_)))
                                              (_tl228617228650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228619228645_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228617228650_))
                                              ((lambda (_L228653_ _L228654_)
                                                 (let ((_eid228669_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L228654_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht228605_
                                                      _eid228669_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L228653_
                                                      _ht228605_))))
                                               _hd228618228648_
                                               _hd228615228640_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228607228624_
                                                 _g228608228627_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228607228624_ _g228608228627_)))))
                              (let ()
                                (declare (not safe))
                                (_g228607228624_ _g228608228627_)))))
                      (let ()
                        (declare (not safe))
                        (_g228607228624_ _g228608228627_))))))
          (declare (not safe))
          (_g228606228671_ _stx228604_))))
    (define gxc#find-body%
      (lambda (_stx228517_ _arg228518_)
        (let* ((_g228520228539_
                (lambda (_g228521228536_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228521228536_))))
               (_g228519228601_
                (lambda (_g228521228542_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228521228542_))
                      (let ((_e228525228544_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228521228542_))))
                        (let ((_hd228524228547_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228525228544_)))
                              (_tl228523228549_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228525228544_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl228523228549_))
                              (let ((_g234928_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl228523228549_
                                        '0))))
                                (begin
                                  (let ((_g234929_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234928_)
                                               (##vector-length _g234928_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234929_ 2)))
                                        (error "Context expects 2 values"
                                               _g234929_)))
                                  (let ((_target228526228552_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234928_ 0)))
                                        (_tl228528228554_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234928_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl228528228554_))
                                        (letrec ((_loop228529228557_
                                                  (lambda (_hd228527228560_
                                                           _expr228533228562_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd228527228560_))
                                                        (let ((_e228530228565_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd228527228560_))))
                  (let ((_lp-hd228531228568_
                         (let () (declare (not safe)) (##car _e228530228565_)))
                        (_lp-tl228532228570_
                         (let ()
                           (declare (not safe))
                           (##cdr _e228530228565_))))
                    (let ((__tmp234933
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd228531228568_ _expr228533228562_))))
                      (declare (not safe))
                      (_loop228529228557_ _lp-tl228532228570_ __tmp234933))))
                (let ((_expr228534228573_ (reverse _expr228533228562_)))
                  ((lambda (_L228576_)
                     (let ((__tmp234932
                            (lambda (_g228589228591_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g228589228591_
                                 _arg228518_))))
                           (__tmp234930
                            (let ((__tmp234931
                                   (lambda (_g228593228596_ _g228594228598_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g228593228596_
                                             _g228594228598_)))))
                              (declare (not safe))
                              (foldr1 __tmp234931 '() _L228576_))))
                       (declare (not safe))
                       (ormap1 __tmp234932 __tmp234930)))
                   _expr228534228573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop228529228557_
                                             _target228526228552_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g228520228539_
                                           _g228521228542_))))))
                              (let ()
                                (declare (not safe))
                                (_g228520228539_ _g228521228542_)))))
                      (let ()
                        (declare (not safe))
                        (_g228520228539_ _g228521228542_))))))
          (declare (not safe))
          (_g228519228601_ _stx228517_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx228449_ _arg228450_)
        (let* ((_g228452228469_
                (lambda (_g228453228466_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228453228466_))))
               (_g228451228514_
                (lambda (_g228453228472_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228453228472_))
                      (let ((_e228458228474_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228453228472_))))
                        (let ((_hd228457228477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228458228474_)))
                              (_tl228456228479_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228458228474_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228456228479_))
                              (let ((_e228461228482_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228456228479_))))
                                (let ((_hd228460228485_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228461228482_)))
                                      (_tl228459228487_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228461228482_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228459228487_))
                                      (let ((_e228464228490_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228459228487_))))
                                        (let ((_hd228463228493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228464228490_)))
                                              (_tl228462228495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228464228490_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228462228495_))
                                              ((lambda (_L228498_ _L228499_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L228498_
                                                    _arg228450_)))
                                               _hd228463228493_
                                               _hd228460228485_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228452228469_
                                                 _g228453228472_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228452228469_ _g228453228472_)))))
                              (let ()
                                (declare (not safe))
                                (_g228452228469_ _g228453228472_)))))
                      (let ()
                        (declare (not safe))
                        (_g228452228469_ _g228453228472_))))))
          (declare (not safe))
          (_g228451228514_ _stx228449_))))
    (define gxc#find-lambda%
      (lambda (_stx228381_ _arg228382_)
        (let* ((_g228384228401_
                (lambda (_g228385228398_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228385228398_))))
               (_g228383228446_
                (lambda (_g228385228404_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228385228404_))
                      (let ((_e228390228406_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228385228404_))))
                        (let ((_hd228389228409_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228390228406_)))
                              (_tl228388228411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228390228406_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228388228411_))
                              (let ((_e228393228414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228388228411_))))
                                (let ((_hd228392228417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228393228414_)))
                                      (_tl228391228419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228393228414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228391228419_))
                                      (let ((_e228396228422_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228391228419_))))
                                        (let ((_hd228395228425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228396228422_)))
                                              (_tl228394228427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228396228422_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228394228427_))
                                              ((lambda (_L228430_ _L228431_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L228430_
                                                    _arg228382_)))
                                               _hd228395228425_
                                               _hd228392228417_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228384228401_
                                                 _g228385228404_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228384228401_ _g228385228404_)))))
                              (let ()
                                (declare (not safe))
                                (_g228384228401_ _g228385228404_)))))
                      (let ()
                        (declare (not safe))
                        (_g228384228401_ _g228385228404_))))))
          (declare (not safe))
          (_g228383228446_ _stx228381_))))
    (define gxc#find-case-lambda%
      (lambda (_stx228263_ _arg228264_)
        (let* ((_g228266228294_
                (lambda (_g228267228291_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228267228291_))))
               (_g228265228378_
                (lambda (_g228267228297_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228267228297_))
                      (let ((_e228272228299_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228267228297_))))
                        (let ((_hd228271228302_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228272228299_)))
                              (_tl228270228304_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228272228299_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl228270228304_))
                              (let ((_g234934_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl228270228304_
                                        '0))))
                                (begin
                                  (let ((_g234935_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g234934_)
                                               (##vector-length _g234934_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g234935_ 2)))
                                        (error "Context expects 2 values"
                                               _g234935_)))
                                  (let ((_target228273228307_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234934_ 0)))
                                        (_tl228275228309_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g234934_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl228275228309_))
                                        (letrec ((_loop228276228312_
                                                  (lambda (_hd228274228315_
                                                           _body228280228317_
                                                           _hd228281228319_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd228274228315_))
                                                        (let ((_e228277228322_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd228274228315_))))
                  (let ((_lp-hd228278228325_
                         (let () (declare (not safe)) (##car _e228277228322_)))
                        (_lp-tl228279228327_
                         (let ()
                           (declare (not safe))
                           (##cdr _e228277228322_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd228278228325_))
                        (let ((_e228286228330_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd228278228325_))))
                          (let ((_hd228285228333_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228286228330_)))
                                (_tl228284228335_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228286228330_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl228284228335_))
                                (let ((_e228289228338_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl228284228335_))))
                                  (let ((_hd228288228341_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e228289228338_)))
                                        (_tl228287228343_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e228289228338_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl228287228343_))
                                        (let ((__tmp234940
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd228288228341_
                                                       _body228280228317_)))
                                              (__tmp234939
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd228285228333_
                                                       _hd228281228319_))))
                                          (declare (not safe))
                                          (_loop228276228312_
                                           _lp-tl228279228327_
                                           __tmp234940
                                           __tmp234939))
                                        (let ()
                                          (declare (not safe))
                                          (_g228266228294_ _g228267228297_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g228266228294_ _g228267228297_)))))
                        (let ()
                          (declare (not safe))
                          (_g228266228294_ _g228267228297_)))))
                (let ((_body228282228346_ (reverse _body228280228317_))
                      (_hd228283228348_ (reverse _hd228281228319_)))
                  ((lambda (_L228351_ _L228352_)
                     (let ((__tmp234938
                            (lambda (_g228366228368_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g228366228368_
                                 _arg228264_))))
                           (__tmp234936
                            (let ((__tmp234937
                                   (lambda (_g228370228373_ _g228371228375_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g228370228373_
                                             _g228371228375_)))))
                              (declare (not safe))
                              (foldr1 __tmp234937 '() _L228351_))))
                       (declare (not safe))
                       (ormap1 __tmp234938 __tmp234936)))
                   _body228282228346_
                   _hd228283228348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop228276228312_
                                             _target228273228307_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g228266228294_
                                           _g228267228297_))))))
                              (let ()
                                (declare (not safe))
                                (_g228266228294_ _g228267228297_)))))
                      (let ()
                        (declare (not safe))
                        (_g228266228294_ _g228267228297_))))))
          (declare (not safe))
          (_g228265228378_ _stx228263_))))
    (define gxc#find-let-values%
      (lambda (_stx228113_ _arg228114_)
        (let* ((_g228116228151_
                (lambda (_g228117228148_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228117228148_))))
               (_g228115228260_
                (lambda (_g228117228154_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228117228154_))
                      (let ((_e228123228156_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228117228154_))))
                        (let ((_hd228122228159_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228123228156_)))
                              (_tl228121228161_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228123228156_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228121228161_))
                              (let ((_e228126228164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228121228161_))))
                                (let ((_hd228125228167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228126228164_)))
                                      (_tl228124228169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228126228164_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd228125228167_))
                                      (let ((_g234941_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd228125228167_
                                                '0))))
                                        (begin
                                          (let ((_g234942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g234941_)
                                                       (##vector-length
                                                        _g234941_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g234942_ 2)))
                                                (error "Context expects 2 values"
                                                       _g234942_)))
                                          (let ((_target228127228172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g234941_ 0)))
                                                (_tl228129228174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g234941_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228129228174_))
                                                (letrec ((_loop228130228177_
                                                          (lambda (_hd228128228180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr228134228182_
                           _bind228135228184_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228128228180_))
                        (let ((_e228131228187_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228128228180_))))
                          (let ((_lp-hd228132228190_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228131228187_)))
                                (_lp-tl228133228192_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228131228187_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd228132228190_))
                                (let ((_e228140228195_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd228132228190_))))
                                  (let ((_hd228139228198_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e228140228195_)))
                                        (_tl228138228200_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e228140228195_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228138228200_))
                                        (let ((_e228143228203_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228138228200_))))
                                          (let ((_hd228142228206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228143228203_)))
                                                (_tl228141228208_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228143228203_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228141228208_))
                                                (let ((__tmp234947
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228142228206_
                                                               _expr228134228182_)))
                                                      (__tmp234946
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228139228198_
                                                               _bind228135228184_))))
                                                  (declare (not safe))
                                                  (_loop228130228177_
                                                   _lp-tl228133228192_
                                                   __tmp234947
                                                   __tmp234946))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228116228151_
                                                   _g228117228154_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228116228151_ _g228117228154_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g228116228151_ _g228117228154_)))))
                        (let ((_expr228136228211_ (reverse _expr228134228182_))
                              (_bind228137228213_
                               (reverse _bind228135228184_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228124228169_))
                              (let ((_e228146228216_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228124228169_))))
                                (let ((_hd228145228219_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228146228216_)))
                                      (_tl228144228221_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228146228216_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228144228221_))
                                      ((lambda (_L228224_ _L228225_ _L228226_)
                                         (let ((_$e228257_
                                                (let ((__tmp234945
                                                       (lambda (_g228245228247_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g228245228247_
                                                            _arg228114_))))
                                                      (__tmp234943
                                                       (let ((__tmp234944
                                                              (lambda (_g228249228252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g228250228254_)
                        (let ()
                          (declare (not safe))
                          (cons _g228249228252_ _g228250228254_)))))
                 (declare (not safe))
                 (foldr1 __tmp234944 '() _L228225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp234945
                                                          __tmp234943))))
                                           (if _$e228257_
                                               _$e228257_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L228224_
                                                  _arg228114_)))))
                                       _hd228145228219_
                                       _expr228136228211_
                                       _bind228137228213_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228116228151_ _g228117228154_)))))
                              (let ()
                                (declare (not safe))
                                (_g228116228151_ _g228117228154_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop228130228177_
                                                     _target228127228172_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228116228151_
                                                   _g228117228154_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228116228151_ _g228117228154_)))))
                              (let ()
                                (declare (not safe))
                                (_g228116228151_ _g228117228154_)))))
                      (let ()
                        (declare (not safe))
                        (_g228116228151_ _g228117228154_))))))
          (declare (not safe))
          (_g228115228260_ _stx228113_))))
    (define gxc#find-setq%
      (lambda (_stx228045_ _arg228046_)
        (let* ((_g228048228065_
                (lambda (_g228049228062_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228049228062_))))
               (_g228047228110_
                (lambda (_g228049228068_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228049228068_))
                      (let ((_e228054228070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228049228068_))))
                        (let ((_hd228053228073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228054228070_)))
                              (_tl228052228075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228054228070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228052228075_))
                              (let ((_e228057228078_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228052228075_))))
                                (let ((_hd228056228081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228057228078_)))
                                      (_tl228055228083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228057228078_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228055228083_))
                                      (let ((_e228060228086_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228055228083_))))
                                        (let ((_hd228059228089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228060228086_)))
                                              (_tl228058228091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228060228086_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228058228091_))
                                              ((lambda (_L228094_ _L228095_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L228094_
                                                    _arg228046_)))
                                               _hd228059228089_
                                               _hd228056228081_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228048228065_
                                                 _g228049228068_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228048228065_ _g228049228068_)))))
                              (let ()
                                (declare (not safe))
                                (_g228048228065_ _g228049228068_)))))
                      (let ()
                        (declare (not safe))
                        (_g228048228065_ _g228049228068_))))))
          (declare (not safe))
          (_g228047228110_ _stx228045_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx227989_ _ids227990_)
        (let* ((_g227992228005_
                (lambda (_g227993228002_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227993228002_))))
               (_g227991228042_
                (lambda (_g227993228008_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227993228008_))
                      (let ((_e227997228010_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227993228008_))))
                        (let ((_hd227996228013_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227997228010_)))
                              (_tl227995228015_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227997228010_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227995228015_))
                              (let ((_e228000228018_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227995228015_))))
                                (let ((_hd227999228021_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228000228018_)))
                                      (_tl227998228023_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228000228018_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227998228023_))
                                      ((lambda (_L228026_)
                                         (let ((__tmp234948
                                                (lambda (_g228037228039_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L228026_
                                                     _g228037228039_)))))
                                           (declare (not safe))
                                           (find __tmp234948 _ids227990_)))
                                       _hd227999228021_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227992228005_ _g227993228008_)))))
                              (let ()
                                (declare (not safe))
                                (_g227992228005_ _g227993228008_)))))
                      (let ()
                        (declare (not safe))
                        (_g227992228005_ _g227993228008_))))))
          (declare (not safe))
          (_g227991228042_ _stx227989_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx227913_ _ids227914_)
        (let* ((_g227916227933_
                (lambda (_g227917227930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g227917227930_))))
               (_g227915227986_
                (lambda (_g227917227936_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g227917227936_))
                      (let ((_e227922227938_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g227917227936_))))
                        (let ((_hd227921227941_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227922227938_)))
                              (_tl227920227943_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227922227938_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227920227943_))
                              (let ((_e227925227946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227920227943_))))
                                (let ((_hd227924227949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227925227946_)))
                                      (_tl227923227951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227925227946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227923227951_))
                                      (let ((_e227928227954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227923227951_))))
                                        (let ((_hd227927227957_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227928227954_)))
                                              (_tl227926227959_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227928227954_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227926227959_))
                                              ((lambda (_L227962_ _L227963_)
                                                 (let ((_$e227983_
                                                        (let ((__tmp234949
                                                               (lambda (_g227978227980_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L227963_ _g227978227980_)))))
                  (declare (not safe))
                  (find __tmp234949 _ids227914_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e227983_
                                                       _$e227983_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L227962_
                                                          _ids227914_)))))
                                               _hd227927227957_
                                               _hd227924227949_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227916227933_
                                                 _g227917227936_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227916227933_ _g227917227936_)))))
                              (let ()
                                (declare (not safe))
                                (_g227916227933_ _g227917227936_)))))
                      (let ()
                        (declare (not safe))
                        (_g227916227933_ _g227917227936_))))))
          (declare (not safe))
          (_g227915227986_ _stx227913_))))))
