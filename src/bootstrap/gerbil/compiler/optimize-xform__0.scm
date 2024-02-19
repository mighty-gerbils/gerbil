(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708334577)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl232198_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232198_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232198_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232198_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232198_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl232198_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl232194_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232194_ '%#declare gxc#xform-identity))
           _tbl232194_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl232190_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236511 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl232190_ __tmp236511))
           (let ((__tmp236512 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl232190_ __tmp236512))
           _tbl232190_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl232186_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232186_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232186_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232186_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232186_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232186_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl232186_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl232182_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236513 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl232182_ __tmp236513))
           (let ((__tmp236514 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl232182_ __tmp236514))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232182_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232182_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232182_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232182_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232182_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl232182_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl232178_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236515 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl232178_ __tmp236515))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232178_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232178_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl232178_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx232161_ . _args232163_)
        (let ((__tmp236517
               (lambda ()
                 (declare (not safe))
                 (if (null? _args232163_)
                     (gxc#compile-e__0 _stx232161_)
                     (let ((_arg1232168_ (car _args232163_))
                           (_rest232170_ (cdr _args232163_)))
                       (if (null? _rest232170_)
                           (gxc#compile-e__1 _stx232161_ _arg1232168_)
                           (let ((_arg2232173_ (car _rest232170_))
                                 (_rest232175_ (cdr _rest232170_)))
                             (if (null? _rest232175_)
                                 (gxc#compile-e__2
                                  _stx232161_
                                  _arg1232168_
                                  _arg2232173_)
                                 (apply gxc#compile-e
                                        _stx232161_
                                        _arg1232168_
                                        _arg2232173_
                                        _rest232175_))))))))
              (__tmp236516 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp236517
           gxc#current-compile-methods
           __tmp236516))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl232158_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236518 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl232158_ __tmp236518))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232158_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232158_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232158_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232158_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232158_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl232158_))))
    (define gxc#apply-collect-methods
      (lambda (_stx232141_ . _args232143_)
        (let ((__tmp236520
               (lambda ()
                 (declare (not safe))
                 (if (null? _args232143_)
                     (gxc#compile-e__0 _stx232141_)
                     (let ((_arg1232148_ (car _args232143_))
                           (_rest232150_ (cdr _args232143_)))
                       (if (null? _rest232150_)
                           (gxc#compile-e__1 _stx232141_ _arg1232148_)
                           (let ((_arg2232153_ (car _rest232150_))
                                 (_rest232155_ (cdr _rest232150_)))
                             (if (null? _rest232155_)
                                 (gxc#compile-e__2
                                  _stx232141_
                                  _arg1232148_
                                  _arg2232153_)
                                 (apply gxc#compile-e
                                        _stx232141_
                                        _arg1232148_
                                        _arg2232153_
                                        _rest232155_))))))))
              (__tmp236519 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp236520
           gxc#current-compile-methods
           __tmp236519))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl232138_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236521 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl232138_ __tmp236521))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232138_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232138_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232138_ '%#set! gxc#expression-subst-setq%))
           _tbl232138_))))
    (define gxc#apply-expression-subst
      (lambda (_stx232121_ . _args232123_)
        (let ((__tmp236523
               (lambda ()
                 (declare (not safe))
                 (if (null? _args232123_)
                     (gxc#compile-e__0 _stx232121_)
                     (let ((_arg1232128_ (car _args232123_))
                           (_rest232130_ (cdr _args232123_)))
                       (if (null? _rest232130_)
                           (gxc#compile-e__1 _stx232121_ _arg1232128_)
                           (let ((_arg2232133_ (car _rest232130_))
                                 (_rest232135_ (cdr _rest232130_)))
                             (if (null? _rest232135_)
                                 (gxc#compile-e__2
                                  _stx232121_
                                  _arg1232128_
                                  _arg2232133_)
                                 (apply gxc#compile-e
                                        _stx232121_
                                        _arg1232128_
                                        _arg2232133_
                                        _rest232135_))))))))
              (__tmp236522 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp236523
           gxc#current-compile-methods
           __tmp236522))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl232118_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236524 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl232118_ __tmp236524))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232118_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232118_ '%#set! gxc#expression-subst*-setq%))
           _tbl232118_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx232101_ . _args232103_)
        (let ((__tmp236526
               (lambda ()
                 (declare (not safe))
                 (if (null? _args232103_)
                     (gxc#compile-e__0 _stx232101_)
                     (let ((_arg1232108_ (car _args232103_))
                           (_rest232110_ (cdr _args232103_)))
                       (if (null? _rest232110_)
                           (gxc#compile-e__1 _stx232101_ _arg1232108_)
                           (let ((_arg2232113_ (car _rest232110_))
                                 (_rest232115_ (cdr _rest232110_)))
                             (if (null? _rest232115_)
                                 (gxc#compile-e__2
                                  _stx232101_
                                  _arg1232108_
                                  _arg2232113_)
                                 (apply gxc#compile-e
                                        _stx232101_
                                        _arg1232108_
                                        _arg2232113_
                                        _rest232115_))))))))
              (__tmp236525 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp236526
           gxc#current-compile-methods
           __tmp236525))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl232098_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236527 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl232098_ __tmp236527))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232098_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232098_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl232098_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl232094_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236528 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl232094_ __tmp236528))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232094_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232094_ '%#set! gxc#find-var-refs-setq%))
           _tbl232094_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx232077_ . _args232079_)
        (let ((__tmp236530
               (lambda ()
                 (declare (not safe))
                 (if (null? _args232079_)
                     (gxc#compile-e__0 _stx232077_)
                     (let ((_arg1232084_ (car _args232079_))
                           (_rest232086_ (cdr _args232079_)))
                       (if (null? _rest232086_)
                           (gxc#compile-e__1 _stx232077_ _arg1232084_)
                           (let ((_arg2232089_ (car _rest232086_))
                                 (_rest232091_ (cdr _rest232086_)))
                             (if (null? _rest232091_)
                                 (gxc#compile-e__2
                                  _stx232077_
                                  _arg1232084_
                                  _arg2232089_)
                                 (apply gxc#compile-e
                                        _stx232077_
                                        _arg1232084_
                                        _arg2232089_
                                        _rest232091_))))))))
              (__tmp236529 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236530
           gxc#current-compile-methods
           __tmp236529))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl232074_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236531 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl232074_ __tmp236531))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232074_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232074_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl232074_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx232057_ . _args232059_)
        (let ((__tmp236533
               (lambda ()
                 (declare (not safe))
                 (if (null? _args232059_)
                     (gxc#compile-e__0 _stx232057_)
                     (let ((_arg1232064_ (car _args232059_))
                           (_rest232066_ (cdr _args232059_)))
                       (if (null? _rest232066_)
                           (gxc#compile-e__1 _stx232057_ _arg1232064_)
                           (let ((_arg2232069_ (car _rest232066_))
                                 (_rest232071_ (cdr _rest232066_)))
                             (if (null? _rest232071_)
                                 (gxc#compile-e__2
                                  _stx232057_
                                  _arg1232064_
                                  _arg2232069_)
                                 (apply gxc#compile-e
                                        _stx232057_
                                        _arg1232064_
                                        _arg2232069_
                                        _rest232071_))))))))
              (__tmp236532 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236533
           gxc#current-compile-methods
           __tmp236532))))
    (define gxc#xform-identity
      (lambda (_stx232054_ . _args232055_) _stx232054_))
    (define gxc#xform-wrap-source
      (lambda (_stx232051_ _src-stx232052_)
        (let ((__tmp236534
               (let () (declare (not safe)) (gx#stx-source _src-stx232052_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx232051_ __tmp236534))))
    (define gxc#xform-apply-compile-e
      (lambda (_args232038_)
        (lambda (_stx232040_)
          (if (let () (declare (not safe)) (null? _args232038_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx232040_))
              (let ((_arg1232042_ (car _args232038_))
                    (_rest232044_ (cdr _args232038_)))
                (if (let () (declare (not safe)) (null? _rest232044_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx232040_ _arg1232042_))
                    (let ((_arg2232047_ (car _rest232044_))
                          (_rest232049_ (cdr _rest232044_)))
                      (if (let () (declare (not safe)) (null? _rest232049_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx232040_
                             _arg1232042_
                             _arg2232047_))
                          (apply gxc#compile-e
                                 _stx232040_
                                 _arg1232042_
                                 _arg2232047_
                                 _rest232049_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx231997_ . _args231998_)
        (let* ((_g232000232010_
                (lambda (_g232001232007_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232001232007_))))
               (_g231999232035_
                (lambda (_g232001232013_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232001232013_))
                      (let ((_e232005232015_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232001232013_))))
                        (let ((_hd232004232018_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232005232015_)))
                              (_tl232003232020_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232005232015_))))
                          ((lambda (_L232023_)
                             (let* ((_forms232033_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231998_))
                                          _L232023_))
                                    (__tmp236535
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms232033_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236535
                                _stx231997_)))
                           _tl232003232020_)))
                      (let ()
                        (declare (not safe))
                        (_g232000232010_ _g232001232013_))))))
          (declare (not safe))
          (_g231999232035_ _stx231997_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx231955_ . _args231956_)
        (let* ((_g231958231968_
                (lambda (_g231959231965_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231959231965_))))
               (_g231957231994_
                (lambda (_g231959231971_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231959231971_))
                      (let ((_e231963231973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231959231971_))))
                        (let ((_hd231962231976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231963231973_)))
                              (_tl231961231978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231963231973_))))
                          ((lambda (_L231981_)
                             (let ((__tmp236538
                                    (lambda ()
                                      (let* ((_forms231992_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args231956_))
                                                   _L231981_))
                                             (__tmp236539
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms231992_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236539
                                         _stx231955_))))
                                   (__tmp236536
                                    (let ((__tmp236537
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp236537 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp236538
                                gx#current-expander-phi
                                __tmp236536)))
                           _tl231961231978_)))
                      (let ()
                        (declare (not safe))
                        (_g231958231968_ _g231959231971_))))))
          (declare (not safe))
          (_g231957231994_ _stx231955_))))
    (define gxc#xform-module%
      (lambda (_stx231883_ . _args231884_)
        (let* ((_g231886231900_
                (lambda (_g231887231897_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231887231897_))))
               (_g231885231952_
                (lambda (_g231887231903_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231887231903_))
                      (let ((_e231892231905_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231887231903_))))
                        (let ((_hd231891231908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231892231905_)))
                              (_tl231890231910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231892231905_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231890231910_))
                              (let ((_e231895231913_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231890231910_))))
                                (let ((_hd231894231916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231895231913_)))
                                      (_tl231893231918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231895231913_))))
                                  ((lambda (_L231921_ _L231922_)
                                     (let* ((_ctx231935_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L231922_)))
                                            (_code231937_
                                             (##structure-ref
                                              _ctx231935_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code231949_
                                             (let ((__tmp236540
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args231884_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code231937_))
                                                          (let ((_arg1231940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args231884_))
                        (_rest231942_ (cdr _args231884_)))
                    (if (let () (declare (not safe)) (null? _rest231942_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code231937_ _arg1231940_))
                        (let ((_arg2231945_ (car _rest231942_))
                              (_rest231947_ (cdr _rest231942_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest231947_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code231937_
                                 _arg1231940_
                                 _arg2231945_))
                              (apply gxc#compile-e
                                     _code231937_
                                     _arg1231940_
                                     _arg2231945_
                                     _rest231947_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp236540
                                                gx#current-expander-context
                                                _ctx231935_))))
                                       (##structure-set!
                                        _ctx231935_
                                        _code231949_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp236541
                                              (let ((__tmp236542
                                                     (let ((__tmp236543
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code231949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L231922_ __tmp236543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp236542))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp236541
                                          _stx231883_))))
                                   _tl231893231918_
                                   _hd231894231916_)))
                              (let ()
                                (declare (not safe))
                                (_g231886231900_ _g231887231903_)))))
                      (let ()
                        (declare (not safe))
                        (_g231886231900_ _g231887231903_))))))
          (declare (not safe))
          (_g231885231952_ _stx231883_))))
    (define gxc#xform-define-values%
      (lambda (_stx231804_ . _args231805_)
        (let* ((_g231807231824_
                (lambda (_g231808231821_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231808231821_))))
               (_g231806231880_
                (lambda (_g231808231827_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231808231827_))
                      (let ((_e231813231829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231808231827_))))
                        (let ((_hd231812231832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231813231829_)))
                              (_tl231811231834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231813231829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231811231834_))
                              (let ((_e231816231837_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231811231834_))))
                                (let ((_hd231815231840_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231816231837_)))
                                      (_tl231814231842_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231816231837_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231814231842_))
                                      (let ((_e231819231845_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231814231842_))))
                                        (let ((_hd231818231848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231819231845_)))
                                              (_tl231817231850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231819231845_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231817231850_))
                                              ((lambda (_L231853_ _L231854_)
                                                 (let* ((_expr231878_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231805_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231853_))
                     (let ((_arg1231869_ (car _args231805_))
                           (_rest231871_ (cdr _args231805_)))
                       (if (let () (declare (not safe)) (null? _rest231871_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231853_ _arg1231869_))
                           (let ((_arg2231874_ (car _rest231871_))
                                 (_rest231876_ (cdr _rest231871_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231876_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231853_
                                    _arg1231869_
                                    _arg2231874_))
                                 (apply gxc#compile-e
                                        _L231853_
                                        _arg1231869_
                                        _arg2231874_
                                        _rest231876_)))))))
                (__tmp236544
                 (let ((__tmp236545
                        (let ((__tmp236546
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231878_ '()))))
                          (declare (not safe))
                          (cons _L231854_ __tmp236546))))
                   (declare (not safe))
                   (cons '%#define-values __tmp236545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236544
                                                    _stx231804_)))
                                               _hd231818231848_
                                               _hd231815231840_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231807231824_
                                                 _g231808231827_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231807231824_ _g231808231827_)))))
                              (let ()
                                (declare (not safe))
                                (_g231807231824_ _g231808231827_)))))
                      (let ()
                        (declare (not safe))
                        (_g231807231824_ _g231808231827_))))))
          (declare (not safe))
          (_g231806231880_ _stx231804_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx231724_ . _args231725_)
        (let* ((_g231727231744_
                (lambda (_g231728231741_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231728231741_))))
               (_g231726231801_
                (lambda (_g231728231747_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231728231747_))
                      (let ((_e231733231749_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231728231747_))))
                        (let ((_hd231732231752_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231733231749_)))
                              (_tl231731231754_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231733231749_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231731231754_))
                              (let ((_e231736231757_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231731231754_))))
                                (let ((_hd231735231760_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231736231757_)))
                                      (_tl231734231762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231736231757_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231734231762_))
                                      (let ((_e231739231765_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231734231762_))))
                                        (let ((_hd231738231768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231739231765_)))
                                              (_tl231737231770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231739231765_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231737231770_))
                                              ((lambda (_L231773_ _L231774_)
                                                 (let ((__tmp236549
                                                        (lambda ()
                                                          (let* ((_expr231799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args231725_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L231773_))
                              (let ((_arg1231790_ (car _args231725_))
                                    (_rest231792_ (cdr _args231725_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest231792_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L231773_
                                       _arg1231790_))
                                    (let ((_arg2231795_ (car _rest231792_))
                                          (_rest231797_ (cdr _rest231792_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest231797_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L231773_
                                             _arg1231790_
                                             _arg2231795_))
                                          (apply gxc#compile-e
                                                 _L231773_
                                                 _arg1231790_
                                                 _arg2231795_
                                                 _rest231797_)))))))
                         (__tmp236550
                          (let ((__tmp236551
                                 (let ((__tmp236552
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr231799_ '()))))
                                   (declare (not safe))
                                   (cons _L231774_ __tmp236552))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp236551))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236550 _stx231724_))))
               (__tmp236547
                (let ((__tmp236548 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp236548 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp236549
                                                    gx#current-expander-phi
                                                    __tmp236547)))
                                               _hd231738231768_
                                               _hd231735231760_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231727231744_
                                                 _g231728231747_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231727231744_ _g231728231747_)))))
                              (let ()
                                (declare (not safe))
                                (_g231727231744_ _g231728231747_)))))
                      (let ()
                        (declare (not safe))
                        (_g231727231744_ _g231728231747_))))))
          (declare (not safe))
          (_g231726231801_ _stx231724_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx231645_ . _args231646_)
        (let* ((_g231648231665_
                (lambda (_g231649231662_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231649231662_))))
               (_g231647231721_
                (lambda (_g231649231668_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231649231668_))
                      (let ((_e231654231670_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231649231668_))))
                        (let ((_hd231653231673_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231654231670_)))
                              (_tl231652231675_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231654231670_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231652231675_))
                              (let ((_e231657231678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231652231675_))))
                                (let ((_hd231656231681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231657231678_)))
                                      (_tl231655231683_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231657231678_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231655231683_))
                                      (let ((_e231660231686_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231655231683_))))
                                        (let ((_hd231659231689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231660231686_)))
                                              (_tl231658231691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231660231686_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231658231691_))
                                              ((lambda (_L231694_ _L231695_)
                                                 (let* ((_expr231719_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231646_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231694_))
                     (let ((_arg1231710_ (car _args231646_))
                           (_rest231712_ (cdr _args231646_)))
                       (if (let () (declare (not safe)) (null? _rest231712_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231694_ _arg1231710_))
                           (let ((_arg2231715_ (car _rest231712_))
                                 (_rest231717_ (cdr _rest231712_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231717_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231694_
                                    _arg1231710_
                                    _arg2231715_))
                                 (apply gxc#compile-e
                                        _L231694_
                                        _arg1231710_
                                        _arg2231715_
                                        _rest231717_)))))))
                (__tmp236553
                 (let ((__tmp236554
                        (let ((__tmp236555
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231719_ '()))))
                          (declare (not safe))
                          (cons _L231695_ __tmp236555))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp236554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236553
                                                    _stx231645_)))
                                               _hd231659231689_
                                               _hd231656231681_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231648231665_
                                                 _g231649231668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231648231665_ _g231649231668_)))))
                              (let ()
                                (declare (not safe))
                                (_g231648231665_ _g231649231668_)))))
                      (let ()
                        (declare (not safe))
                        (_g231648231665_ _g231649231668_))))))
          (declare (not safe))
          (_g231647231721_ _stx231645_))))
    (define gxc#xform-lambda%
      (lambda (_stx231588_ . _args231589_)
        (let* ((_g231591231605_
                (lambda (_g231592231602_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231592231602_))))
               (_g231590231642_
                (lambda (_g231592231608_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231592231608_))
                      (let ((_e231597231610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231592231608_))))
                        (let ((_hd231596231613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231597231610_)))
                              (_tl231595231615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231597231610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231595231615_))
                              (let ((_e231600231618_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231595231615_))))
                                (let ((_hd231599231621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231600231618_)))
                                      (_tl231598231623_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231600231618_))))
                                  ((lambda (_L231626_ _L231627_)
                                     (let* ((_body231640_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args231589_))
                                                  _L231626_))
                                            (__tmp236556
                                             (let ((__tmp236557
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L231627_
                                                            _body231640_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp236557))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp236556
                                        _stx231588_)))
                                   _tl231598231623_
                                   _hd231599231621_)))
                              (let ()
                                (declare (not safe))
                                (_g231591231605_ _g231592231608_)))))
                      (let ()
                        (declare (not safe))
                        (_g231591231605_ _g231592231608_))))))
          (declare (not safe))
          (_g231590231642_ _stx231588_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx231501_ . _args231502_)
        (letrec ((_clause-e231504_
                  (lambda (_clause231545_)
                    (let* ((_g231547231558_
                            (lambda (_g231548231555_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g231548231555_))))
                           (_g231546231585_
                            (lambda (_g231548231561_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g231548231561_))
                                  (let ((_e231553231563_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g231548231561_))))
                                    (let ((_hd231552231566_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231553231563_)))
                                          (_tl231551231568_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231553231563_))))
                                      ((lambda (_L231571_ _L231572_)
                                         (let ((_body231583_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args231502_))
                                                     _L231571_)))
                                           (declare (not safe))
                                           (cons _L231572_ _body231583_)))
                                       _tl231551231568_
                                       _hd231552231566_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g231547231558_ _g231548231561_))))))
                      (declare (not safe))
                      (_g231546231585_ _clause231545_)))))
          (let* ((_g231506231516_
                  (lambda (_g231507231513_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g231507231513_))))
                 (_g231505231542_
                  (lambda (_g231507231519_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g231507231519_))
                        (let ((_e231511231521_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g231507231519_))))
                          (let ((_hd231510231524_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231511231521_)))
                                (_tl231509231526_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231511231521_))))
                            ((lambda (_L231529_)
                               (let* ((_clauses231540_
                                       (map _clause-e231504_ _L231529_))
                                      (__tmp236558
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses231540_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp236558
                                  _stx231501_)))
                             _tl231509231526_)))
                        (let ()
                          (declare (not safe))
                          (_g231506231516_ _g231507231519_))))))
            (declare (not safe))
            (_g231505231542_ _stx231501_)))))
    (define gxc#xform-let-values%
      (lambda (_stx231295_ . _args231296_)
        (let* ((_g231298231331_
                (lambda (_g231299231328_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231299231328_))))
               (_g231297231498_
                (lambda (_g231299231334_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231299231334_))
                      (let ((_e231306231336_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231299231334_))))
                        (let ((_hd231305231339_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231306231336_)))
                              (_tl231304231341_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231306231336_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231304231341_))
                              (let ((_e231309231344_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231304231341_))))
                                (let ((_hd231308231347_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231309231344_)))
                                      (_tl231307231349_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231309231344_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd231308231347_))
                                      (let ((_g236559_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd231308231347_
                                                '0))))
                                        (begin
                                          (let ((_g236560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236559_)
                                                       (##vector-length
                                                        _g236559_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236560_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236560_)))
                                          (let ((_target231310231352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236559_ 0)))
                                                (_tl231312231354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236559_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231312231354_))
                                                (letrec ((_loop231313231357_
                                                          (lambda (_hd231311231360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr231317231362_
                           _hd231318231364_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd231311231360_))
                        (let ((_e231314231367_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd231311231360_))))
                          (let ((_lp-hd231315231370_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231314231367_)))
                                (_lp-tl231316231372_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231314231367_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd231315231370_))
                                (let ((_e231323231375_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd231315231370_))))
                                  (let ((_hd231322231378_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231323231375_)))
                                        (_tl231321231380_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231323231375_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231321231380_))
                                        (let ((_e231326231383_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231321231380_))))
                                          (let ((_hd231325231386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231326231383_)))
                                                (_tl231324231388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231326231383_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231324231388_))
                                                (let ((__tmp236573
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd231325231386_
                                                               _expr231317231362_)))
                                                      (__tmp236572
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd231322231378_
                                                               _hd231318231364_))))
                                                  (declare (not safe))
                                                  (_loop231313231357_
                                                   _lp-tl231316231372_
                                                   __tmp236573
                                                   __tmp236572))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231298231331_
                                                   _g231299231334_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g231298231331_ _g231299231334_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g231298231331_ _g231299231334_)))))
                        (let ((_expr231319231391_ (reverse _expr231317231362_))
                              (_hd231320231393_ (reverse _hd231318231364_)))
                          ((lambda (_L231396_ _L231397_ _L231398_ _L231399_)
                             (let* ((_g231418231434_
                                     (lambda (_g231419231431_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g231419231431_))))
                                    (_g231417231488_
                                     (lambda (_g231419231437_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g231419231437_))
                                           (let ((_g236561_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g231419231437_
                                                     '0))))
                                             (begin
                                               (let ((_g236562_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g236561_)
                                                            (##vector-length
                                                             _g236561_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g236562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g236562_)))
                                               (let ((_target231421231439_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236561_
                                                         0)))
                                                     (_tl231423231441_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236561_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl231423231441_))
                                                     (letrec ((_loop231424231444_
                                                               (lambda (_hd231422231447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr231428231449_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd231422231447_))
                             (let ((_e231425231452_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd231422231447_))))
                               (let ((_lp-hd231426231455_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e231425231452_)))
                                     (_lp-tl231427231457_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e231425231452_))))
                                 (let ((__tmp236569
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd231426231455_
                                                _expr231428231449_))))
                                   (declare (not safe))
                                   (_loop231424231444_
                                    _lp-tl231427231457_
                                    __tmp236569))))
                             (let ((_expr231429231460_
                                    (reverse _expr231428231449_)))
                               ((lambda (_L231463_)
                                  (let ()
                                    (let* ((_body231476_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args231296_))
                                                 _L231396_))
                                           (__tmp236563
                                            (let ((__tmp236564
                                                   (let ((__tmp236565
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L231463_
                                                               _L231398_))
                                                            (let ((__tmp236566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g231477231481_
                                    _g231478231483_
                                    _g231479231485_)
                             (let ((__tmp236567
                                    (let ((__tmp236568
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231477231481_ '()))))
                                      (declare (not safe))
                                      (cons _g231478231483_ __tmp236568))))
                               (declare (not safe))
                               (cons __tmp236567 _g231479231485_)))))
                      (declare (not safe))
                      (foldr2 __tmp236566 '() _L231463_ _L231398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp236565
                                                           _body231476_))))
                                              (declare (not safe))
                                              (cons _L231399_ __tmp236564))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp236563
                                       _stx231295_))))
                                _expr231429231460_))))))
               (let ()
                 (declare (not safe))
                 (_loop231424231444_ _target231421231439_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g231418231434_
                                                        _g231419231437_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231418231434_
                                              _g231419231437_)))))
                                    (__tmp236570
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231296_))
                                          (let ((__tmp236571
                                                 (lambda (_g231490231493_
                                                          _g231491231495_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g231490231493_
                                                           _g231491231495_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp236571
                                                    '()
                                                    _L231397_)))))
                               (declare (not safe))
                               (_g231417231488_ __tmp236570)))
                           _tl231307231349_
                           _expr231319231391_
                           _hd231320231393_
                           _hd231305231339_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop231313231357_
                                                     _target231310231352_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231298231331_
                                                   _g231299231334_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231298231331_ _g231299231334_)))))
                              (let ()
                                (declare (not safe))
                                (_g231298231331_ _g231299231334_)))))
                      (let ()
                        (declare (not safe))
                        (_g231298231331_ _g231299231334_))))))
          (declare (not safe))
          (_g231297231498_ _stx231295_))))
    (define gxc#xform-operands
      (lambda (_stx231251_ . _args231252_)
        (let* ((_g231254231265_
                (lambda (_g231255231262_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231255231262_))))
               (_g231253231292_
                (lambda (_g231255231268_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231255231268_))
                      (let ((_e231260231270_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231255231268_))))
                        (let ((_hd231259231273_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231260231270_)))
                              (_tl231258231275_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231260231270_))))
                          ((lambda (_L231278_ _L231279_)
                             (let* ((_rands231290_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231252_))
                                          _L231278_))
                                    (__tmp236574
                                     (let ()
                                       (declare (not safe))
                                       (cons _L231279_ _rands231290_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236574
                                _stx231251_)))
                           _tl231258231275_
                           _hd231259231273_)))
                      (let ()
                        (declare (not safe))
                        (_g231254231265_ _g231255231268_))))))
          (declare (not safe))
          (_g231253231292_ _stx231251_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx231172_ . _args231173_)
        (let* ((_g231175231192_
                (lambda (_g231176231189_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231176231189_))))
               (_g231174231248_
                (lambda (_g231176231195_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231176231195_))
                      (let ((_e231181231197_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231176231195_))))
                        (let ((_hd231180231200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231181231197_)))
                              (_tl231179231202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231181231197_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231179231202_))
                              (let ((_e231184231205_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231179231202_))))
                                (let ((_hd231183231208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231184231205_)))
                                      (_tl231182231210_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231184231205_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231182231210_))
                                      (let ((_e231187231213_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231182231210_))))
                                        (let ((_hd231186231216_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231187231213_)))
                                              (_tl231185231218_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231187231213_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231185231218_))
                                              ((lambda (_L231221_ _L231222_)
                                                 (let* ((_expr231246_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231173_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231221_))
                     (let ((_arg1231237_ (car _args231173_))
                           (_rest231239_ (cdr _args231173_)))
                       (if (let () (declare (not safe)) (null? _rest231239_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231221_ _arg1231237_))
                           (let ((_arg2231242_ (car _rest231239_))
                                 (_rest231244_ (cdr _rest231239_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231244_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231221_
                                    _arg1231237_
                                    _arg2231242_))
                                 (apply gxc#compile-e
                                        _L231221_
                                        _arg1231237_
                                        _arg2231242_
                                        _rest231244_)))))))
                (__tmp236575
                 (let ((__tmp236576
                        (let ((__tmp236577
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231246_ '()))))
                          (declare (not safe))
                          (cons _L231222_ __tmp236577))))
                   (declare (not safe))
                   (cons '%#set! __tmp236576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236575
                                                    _stx231172_)))
                                               _hd231186231216_
                                               _hd231183231208_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231175231192_
                                                 _g231176231195_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231175231192_ _g231176231195_)))))
                              (let ()
                                (declare (not safe))
                                (_g231175231192_ _g231176231195_)))))
                      (let ()
                        (declare (not safe))
                        (_g231175231192_ _g231176231195_))))))
          (declare (not safe))
          (_g231174231248_ _stx231172_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx231103_)
        (let* ((_g231105231122_
                (lambda (_g231106231119_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231106231119_))))
               (_g231104231169_
                (lambda (_g231106231125_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231106231125_))
                      (let ((_e231111231127_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231106231125_))))
                        (let ((_hd231110231130_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231111231127_)))
                              (_tl231109231132_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231111231127_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231109231132_))
                              (let ((_e231114231135_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231109231132_))))
                                (let ((_hd231113231138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231114231135_)))
                                      (_tl231112231140_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231114231135_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231112231140_))
                                      (let ((_e231117231143_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231112231140_))))
                                        (let ((_hd231116231146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231117231143_)))
                                              (_tl231115231148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231117231143_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231115231148_))
                                              ((lambda (_L231151_ _L231152_)
                                                 (let ((_sym231167_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L231152_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym231167_))
                                                   (let ((__tmp236578
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp236578
                                                      _sym231167_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L231151_))))
                                               _hd231116231146_
                                               _hd231113231138_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231105231122_
                                                 _g231106231125_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231105231122_ _g231106231125_)))))
                              (let ()
                                (declare (not safe))
                                (_g231105231122_ _g231106231125_)))))
                      (let ()
                        (declare (not safe))
                        (_g231105231122_ _g231106231125_))))))
          (declare (not safe))
          (_g231104231169_ _stx231103_))))
    (define gxc#collect-methods-call%
      (lambda (_stx230657_)
        (let* ((___stx236268236269_ _stx230657_)
               (_g230661230763_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx236268236269_)))))
          (let ((___kont236270236271_
                 (lambda (_L231053_ _L231054_ _L231055_ _L231056_ _L231057_)
                   (let ((__tmp236579
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L231054_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236579))))
                (___kont236272236273_
                 (lambda (_L230879_ _L230880_ _L230881_ _L230882_)
                   (let ((__tmp236580
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230879_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236580))))
                (___kont236274236275_ (lambda () '#!void)))
            (let ((___match236403236404_
                   (lambda (_e230670230925_
                            _hd230669230928_
                            _tl230668230930_
                            _e230673230933_
                            _hd230672230936_
                            _tl230671230938_
                            _e230676230941_
                            _hd230675230944_
                            _tl230674230946_
                            _e230679230949_
                            _hd230678230952_
                            _tl230677230954_
                            _e230682230957_
                            _hd230681230960_
                            _tl230680230962_
                            _e230685230965_
                            _hd230684230968_
                            _tl230683230970_
                            _e230688230973_
                            _hd230687230976_
                            _tl230686230978_
                            _e230691230981_
                            _hd230690230984_
                            _tl230689230986_
                            _e230694230989_
                            _hd230693230992_
                            _tl230692230994_
                            _e230697230997_
                            _hd230696231000_
                            _tl230695231002_
                            _e230700231005_
                            _hd230699231008_
                            _tl230698231010_
                            _e230703231013_
                            _hd230702231016_
                            _tl230701231018_
                            _e230706231021_
                            _hd230705231024_
                            _tl230704231026_
                            _e230709231029_
                            _hd230708231032_
                            _tl230707231034_
                            _e230712231037_
                            _hd230711231040_
                            _tl230710231042_
                            _e230715231045_
                            _hd230714231048_
                            _tl230713231050_)
                     (let ((_L231053_ _hd230714231048_)
                           (_L231054_ _hd230705231024_)
                           (_L231055_ _hd230696231000_)
                           (_L231056_ _hd230687230976_)
                           (_L231057_ _hd230678230952_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L231057_
                              'bind-method!))
                           (___kont236270236271_
                            _L231053_
                            _L231054_
                            _L231055_
                            _L231056_
                            _L231057_)
                           (___kont236274236275_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx236268236269_))
                  (let ((_e230670230925_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx236268236269_))))
                    (let ((_tl230668230930_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230670230925_)))
                          (_hd230669230928_
                           (let ()
                             (declare (not safe))
                             (##car _e230670230925_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230668230930_))
                          (let ((_e230673230933_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230668230930_))))
                            (let ((_tl230671230938_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230673230933_)))
                                  (_hd230672230936_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230673230933_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230672230936_))
                                  (let ((_e230676230941_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230672230936_))))
                                    (let ((_tl230674230946_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230676230941_)))
                                          (_hd230675230944_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230676230941_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd230675230944_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd230675230944_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230674230946_))
                                                  (let ((_e230679230949_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230674230946_))))
                                                    (let ((_tl230677230954_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230679230949_)))
                                                          (_hd230678230952_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230679230949_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230677230954_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230671230938_))
                      (let ((_e230682230957_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230671230938_))))
                        (let ((_tl230680230962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230682230957_)))
                              (_hd230681230960_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230682230957_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230681230960_))
                              (let ((_e230685230965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230681230960_))))
                                (let ((_tl230683230970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230685230965_)))
                                      (_hd230684230968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230685230965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd230684230968_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd230684230968_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230683230970_))
                                              (let ((_e230688230973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230683230970_))))
                                                (let ((_tl230686230978_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230688230973_)))
                                                      (_hd230687230976_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230688230973_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230686230978_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl230680230962_))
                                                          (let ((_e230691230981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl230680230962_))))
                    (let ((_tl230689230986_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230691230981_)))
                          (_hd230690230984_
                           (let ()
                             (declare (not safe))
                             (##car _e230691230981_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd230690230984_))
                          (let ((_e230694230989_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd230690230984_))))
                            (let ((_tl230692230994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230694230989_)))
                                  (_hd230693230992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230694230989_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd230693230992_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd230693230992_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl230692230994_))
                                          (let ((_e230697230997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl230692230994_))))
                                            (let ((_tl230695231002_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230697230997_)))
                                                  (_hd230696231000_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230697230997_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230695231002_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230689230986_))
                                                      (let ((_e230700231005_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230689230986_))))
                (let ((_tl230698231010_
                       (let () (declare (not safe)) (##cdr _e230700231005_)))
                      (_hd230699231008_
                       (let () (declare (not safe)) (##car _e230700231005_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230699231008_))
                      (let ((_e230703231013_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230699231008_))))
                        (let ((_tl230701231018_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230703231013_)))
                              (_hd230702231016_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230703231013_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230702231016_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230702231016_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230701231018_))
                                      (let ((_e230706231021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230701231018_))))
                                        (let ((_tl230704231026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230706231021_)))
                                              (_hd230705231024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230706231021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230704231026_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230698231010_))
                                                  (let ((_e230709231029_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230698231010_))))
                                                    (let ((_tl230707231034_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230709231029_)))
                                                          (_hd230708231032_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230709231029_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230708231032_))
                                                          (let ((_e230712231037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230708231032_))))
                    (let ((_tl230710231042_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230712231037_)))
                          (_hd230711231040_
                           (let ()
                             (declare (not safe))
                             (##car _e230712231037_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230711231040_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd230711231040_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230710231042_))
                                  (let ((_e230715231045_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230710231042_))))
                                    (let ((_tl230713231050_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230715231045_)))
                                          (_hd230714231048_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230715231045_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230713231050_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230707231034_))
                                              (___match236403236404_
                                               _e230670230925_
                                               _hd230669230928_
                                               _tl230668230930_
                                               _e230673230933_
                                               _hd230672230936_
                                               _tl230671230938_
                                               _e230676230941_
                                               _hd230675230944_
                                               _tl230674230946_
                                               _e230679230949_
                                               _hd230678230952_
                                               _tl230677230954_
                                               _e230682230957_
                                               _hd230681230960_
                                               _tl230680230962_
                                               _e230685230965_
                                               _hd230684230968_
                                               _tl230683230970_
                                               _e230688230973_
                                               _hd230687230976_
                                               _tl230686230978_
                                               _e230691230981_
                                               _hd230690230984_
                                               _tl230689230986_
                                               _e230694230989_
                                               _hd230693230992_
                                               _tl230692230994_
                                               _e230697230997_
                                               _hd230696231000_
                                               _tl230695231002_
                                               _e230700231005_
                                               _hd230699231008_
                                               _tl230698231010_
                                               _e230703231013_
                                               _hd230702231016_
                                               _tl230701231018_
                                               _e230706231021_
                                               _hd230705231024_
                                               _tl230704231026_
                                               _e230709231029_
                                               _hd230708231032_
                                               _tl230707231034_
                                               _e230712231037_
                                               _hd230711231040_
                                               _tl230710231042_
                                               _e230715231045_
                                               _hd230714231048_
                                               _tl230713231050_)
                                              (___kont236274236275_))
                                          (___kont236274236275_))))
                                  (___kont236274236275_))
                              (___kont236274236275_))
                          (___kont236274236275_))))
                  (___kont236274236275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230698231010_))
                                                      (if (let ((__tmp236581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp236581 'bind-method!))
                  (let ((_L230879_ _hd230705231024_)
                        (_L230880_ _hd230696231000_)
                        (_L230881_ _hd230687230976_)
                        (_L230882_ _hd230678230952_))
                    (___kont236272236273_
                     _L230879_
                     _L230880_
                     _L230881_
                     _L230882_))
                  (___kont236274236275_))
              (___kont236274236275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont236274236275_))))
                                      (___kont236274236275_))
                                  (___kont236274236275_))
                              (___kont236274236275_))))
                      (___kont236274236275_))))
              (___kont236274236275_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont236274236275_))))
                                          (___kont236274236275_))
                                      (___kont236274236275_))
                                  (___kont236274236275_))))
                          (___kont236274236275_))))
                  (___kont236274236275_))
              (___kont236274236275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont236274236275_))
                                          (___kont236274236275_))
                                      (___kont236274236275_))))
                              (___kont236274236275_))))
                      (___kont236274236275_))
                  (___kont236274236275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont236274236275_))
                                              (___kont236274236275_))
                                          (___kont236274236275_))))
                                  (___kont236274236275_))))
                          (___kont236274236275_))))
                  (___kont236274236275_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx230604_ _id230605_ _new-id230606_)
        (let* ((_g230608230621_
                (lambda (_g230609230618_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230609230618_))))
               (_g230607230654_
                (lambda (_g230609230624_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230609230624_))
                      (let ((_e230613230626_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230609230624_))))
                        (let ((_hd230612230629_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230613230626_)))
                              (_tl230611230631_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230613230626_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230611230631_))
                              (let ((_e230616230634_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230611230631_))))
                                (let ((_hd230615230637_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230616230634_)))
                                      (_tl230614230639_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230616230634_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230614230639_))
                                      ((lambda (_L230642_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L230642_
                                                _id230605_))
                                             (let ((__tmp236582
                                                    (let ((__tmp236583
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id230606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp236583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236582
                                                _stx230604_))
                                             _stx230604_))
                                       _hd230615230637_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230608230621_ _g230609230624_)))))
                              (let ()
                                (declare (not safe))
                                (_g230608230621_ _g230609230624_)))))
                      (let ()
                        (declare (not safe))
                        (_g230608230621_ _g230609230624_))))))
          (declare (not safe))
          (_g230607230654_ _stx230604_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx230545_ _subst230546_)
        (let* ((_g230548230561_
                (lambda (_g230549230558_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230549230558_))))
               (_g230547230601_
                (lambda (_g230549230564_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230549230564_))
                      (let ((_e230553230566_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230549230564_))))
                        (let ((_hd230552230569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230553230566_)))
                              (_tl230551230571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230553230566_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230551230571_))
                              (let ((_e230556230574_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230551230571_))))
                                (let ((_hd230555230577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230556230574_)))
                                      (_tl230554230579_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230556230574_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230554230579_))
                                      ((lambda (_L230582_)
                                         (let ((_$e230596_
                                                (let ((__tmp236584
                                                       (lambda (_sub230594_)
                                                         (let ((__tmp236585
                                                                (car _sub230594_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L230582_
                                                            __tmp236585)))))
                                                  (declare (not safe))
                                                  (find __tmp236584
                                                        _subst230546_))))
                                           (if _$e230596_
                                               ((lambda (_sub230599_)
                                                  (let ((__tmp236586
                                                         (let ((__tmp236587
                                                                (let ((__tmp236588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub230599_)))
                          (declare (not safe))
                          (cons __tmp236588 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp236587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp236586
                                                     _stx230545_)))
                                                _$e230596_)
                                               _stx230545_)))
                                       _hd230555230577_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230548230561_ _g230549230564_)))))
                              (let ()
                                (declare (not safe))
                                (_g230548230561_ _g230549230564_)))))
                      (let ()
                        (declare (not safe))
                        (_g230548230561_ _g230549230564_))))))
          (declare (not safe))
          (_g230547230601_ _stx230545_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx230473_ _id230474_ _new-id230475_)
        (let* ((_g230477230494_
                (lambda (_g230478230491_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230478230491_))))
               (_g230476230542_
                (lambda (_g230478230497_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230478230497_))
                      (let ((_e230483230499_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230478230497_))))
                        (let ((_hd230482230502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230483230499_)))
                              (_tl230481230504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230483230499_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230481230504_))
                              (let ((_e230486230507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230481230504_))))
                                (let ((_hd230485230510_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230486230507_)))
                                      (_tl230484230512_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230486230507_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230484230512_))
                                      (let ((_e230489230515_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230484230512_))))
                                        (let ((_hd230488230518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230489230515_)))
                                              (_tl230487230520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230489230515_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230487230520_))
                                              ((lambda (_L230523_ _L230524_)
                                                 (let ((_new-expr230539_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L230523_
                                                           _id230474_
                                                           _new-id230475_)))
                                                       (_new-xid230540_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L230524_
                                                               _id230474_))
                                                            _new-id230475_
                                                            _L230524_)))
                                                   (let ((__tmp236589
                                                          (let ((__tmp236590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236591
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr230539_ '()))))
                           (declare (not safe))
                           (cons _new-xid230540_ __tmp236591))))
                    (declare (not safe))
                    (cons '%#set! __tmp236590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236589
                                                      _stx230473_))))
                                               _hd230488230518_
                                               _hd230485230510_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230477230494_
                                                 _g230478230497_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230477230494_ _g230478230497_)))))
                              (let ()
                                (declare (not safe))
                                (_g230477230494_ _g230478230497_)))))
                      (let ()
                        (declare (not safe))
                        (_g230477230494_ _g230478230497_))))))
          (declare (not safe))
          (_g230476230542_ _stx230473_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx230397_ _subst230398_)
        (let* ((_g230400230417_
                (lambda (_g230401230414_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230401230414_))))
               (_g230399230470_
                (lambda (_g230401230420_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230401230420_))
                      (let ((_e230406230422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230401230420_))))
                        (let ((_hd230405230425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230406230422_)))
                              (_tl230404230427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230406230422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230404230427_))
                              (let ((_e230409230430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230404230427_))))
                                (let ((_hd230408230433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230409230430_)))
                                      (_tl230407230435_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230409230430_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230407230435_))
                                      (let ((_e230412230438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230407230435_))))
                                        (let ((_hd230411230441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230412230438_)))
                                              (_tl230410230443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230412230438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230410230443_))
                                              ((lambda (_L230446_ _L230447_)
                                                 (let ((_new-expr230467_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L230446_
                                                           _subst230398_)))
                                                       (_new-xid230468_
                                                        (let ((_$e230464_
                                                               (let ((__tmp236592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub230462_)
                                (let ((__tmp236593 (car _sub230462_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L230447_
                                   __tmp236593)))))
                         (declare (not safe))
                         (find __tmp236592 _subst230398_))))
                  (if _$e230464_ (cdr _$e230464_) _L230447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp236594
                                                          (let ((__tmp236595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236596
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr230467_ '()))))
                           (declare (not safe))
                           (cons _new-xid230468_ __tmp236596))))
                    (declare (not safe))
                    (cons '%#set! __tmp236595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236594
                                                      _stx230397_))))
                                               _hd230411230441_
                                               _hd230408230433_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230400230417_
                                                 _g230401230420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230400230417_ _g230401230420_)))))
                              (let ()
                                (declare (not safe))
                                (_g230400230417_ _g230401230420_)))))
                      (let ()
                        (declare (not safe))
                        (_g230400230417_ _g230401230420_))))))
          (declare (not safe))
          (_g230399230470_ _stx230397_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx230343_ _ht230344_)
        (let* ((_g230346230359_
                (lambda (_g230347230356_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230347230356_))))
               (_g230345230394_
                (lambda (_g230347230362_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230347230362_))
                      (let ((_e230351230364_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230347230362_))))
                        (let ((_hd230350230367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230351230364_)))
                              (_tl230349230369_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230351230364_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230349230369_))
                              (let ((_e230354230372_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230349230369_))))
                                (let ((_hd230353230375_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230354230372_)))
                                      (_tl230352230377_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230354230372_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230352230377_))
                                      ((lambda (_L230380_)
                                         (let ((_eid230392_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L230380_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht230344_
                                            _eid230392_
                                            1+
                                            '0)))
                                       _hd230353230375_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230346230359_ _g230347230362_)))))
                              (let ()
                                (declare (not safe))
                                (_g230346230359_ _g230347230362_)))))
                      (let ()
                        (declare (not safe))
                        (_g230346230359_ _g230347230362_))))))
          (declare (not safe))
          (_g230345230394_ _stx230343_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx230273_ _ht230274_)
        (let* ((_g230276230293_
                (lambda (_g230277230290_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230277230290_))))
               (_g230275230340_
                (lambda (_g230277230296_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230277230296_))
                      (let ((_e230282230298_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230277230296_))))
                        (let ((_hd230281230301_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230282230298_)))
                              (_tl230280230303_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230282230298_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230280230303_))
                              (let ((_e230285230306_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230280230303_))))
                                (let ((_hd230284230309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230285230306_)))
                                      (_tl230283230311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230285230306_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230283230311_))
                                      (let ((_e230288230314_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230283230311_))))
                                        (let ((_hd230287230317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230288230314_)))
                                              (_tl230286230319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230288230314_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230286230319_))
                                              ((lambda (_L230322_ _L230323_)
                                                 (let ((_eid230338_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L230323_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht230274_
                                                      _eid230338_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L230322_
                                                      _ht230274_))))
                                               _hd230287230317_
                                               _hd230284230309_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230276230293_
                                                 _g230277230296_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230276230293_ _g230277230296_)))))
                              (let ()
                                (declare (not safe))
                                (_g230276230293_ _g230277230296_)))))
                      (let ()
                        (declare (not safe))
                        (_g230276230293_ _g230277230296_))))))
          (declare (not safe))
          (_g230275230340_ _stx230273_))))
    (define gxc#find-body%
      (lambda (_stx230186_ _arg230187_)
        (let* ((_g230189230208_
                (lambda (_g230190230205_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230190230205_))))
               (_g230188230270_
                (lambda (_g230190230211_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230190230211_))
                      (let ((_e230194230213_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230190230211_))))
                        (let ((_hd230193230216_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230194230213_)))
                              (_tl230192230218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230194230213_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl230192230218_))
                              (let ((_g236597_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl230192230218_
                                        '0))))
                                (begin
                                  (let ((_g236598_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236597_)
                                               (##vector-length _g236597_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236598_ 2)))
                                        (error "Context expects 2 values"
                                               _g236598_)))
                                  (let ((_target230195230221_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236597_ 0)))
                                        (_tl230197230223_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236597_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230197230223_))
                                        (letrec ((_loop230198230226_
                                                  (lambda (_hd230196230229_
                                                           _expr230202230231_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd230196230229_))
                                                        (let ((_e230199230234_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd230196230229_))))
                  (let ((_lp-hd230200230237_
                         (let () (declare (not safe)) (##car _e230199230234_)))
                        (_lp-tl230201230239_
                         (let ()
                           (declare (not safe))
                           (##cdr _e230199230234_))))
                    (let ((__tmp236602
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd230200230237_ _expr230202230231_))))
                      (declare (not safe))
                      (_loop230198230226_ _lp-tl230201230239_ __tmp236602))))
                (let ((_expr230203230242_ (reverse _expr230202230231_)))
                  ((lambda (_L230245_)
                     (let ((__tmp236601
                            (lambda (_g230258230260_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g230258230260_
                                 _arg230187_))))
                           (__tmp236599
                            (let ((__tmp236600
                                   (lambda (_g230262230265_ _g230263230267_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g230262230265_
                                             _g230263230267_)))))
                              (declare (not safe))
                              (foldr1 __tmp236600 '() _L230245_))))
                       (declare (not safe))
                       (ormap1 __tmp236601 __tmp236599)))
                   _expr230203230242_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop230198230226_
                                             _target230195230221_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g230189230208_
                                           _g230190230211_))))))
                              (let ()
                                (declare (not safe))
                                (_g230189230208_ _g230190230211_)))))
                      (let ()
                        (declare (not safe))
                        (_g230189230208_ _g230190230211_))))))
          (declare (not safe))
          (_g230188230270_ _stx230186_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx230118_ _arg230119_)
        (let* ((_g230121230138_
                (lambda (_g230122230135_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230122230135_))))
               (_g230120230183_
                (lambda (_g230122230141_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230122230141_))
                      (let ((_e230127230143_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230122230141_))))
                        (let ((_hd230126230146_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230127230143_)))
                              (_tl230125230148_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230127230143_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230125230148_))
                              (let ((_e230130230151_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230125230148_))))
                                (let ((_hd230129230154_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230130230151_)))
                                      (_tl230128230156_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230130230151_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230128230156_))
                                      (let ((_e230133230159_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230128230156_))))
                                        (let ((_hd230132230162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230133230159_)))
                                              (_tl230131230164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230133230159_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230131230164_))
                                              ((lambda (_L230167_ _L230168_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L230167_
                                                    _arg230119_)))
                                               _hd230132230162_
                                               _hd230129230154_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230121230138_
                                                 _g230122230141_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230121230138_ _g230122230141_)))))
                              (let ()
                                (declare (not safe))
                                (_g230121230138_ _g230122230141_)))))
                      (let ()
                        (declare (not safe))
                        (_g230121230138_ _g230122230141_))))))
          (declare (not safe))
          (_g230120230183_ _stx230118_))))
    (define gxc#find-lambda%
      (lambda (_stx230050_ _arg230051_)
        (let* ((_g230053230070_
                (lambda (_g230054230067_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230054230067_))))
               (_g230052230115_
                (lambda (_g230054230073_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230054230073_))
                      (let ((_e230059230075_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230054230073_))))
                        (let ((_hd230058230078_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230059230075_)))
                              (_tl230057230080_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230059230075_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230057230080_))
                              (let ((_e230062230083_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230057230080_))))
                                (let ((_hd230061230086_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230062230083_)))
                                      (_tl230060230088_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230062230083_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230060230088_))
                                      (let ((_e230065230091_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230060230088_))))
                                        (let ((_hd230064230094_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230065230091_)))
                                              (_tl230063230096_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230065230091_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230063230096_))
                                              ((lambda (_L230099_ _L230100_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L230099_
                                                    _arg230051_)))
                                               _hd230064230094_
                                               _hd230061230086_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230053230070_
                                                 _g230054230073_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230053230070_ _g230054230073_)))))
                              (let ()
                                (declare (not safe))
                                (_g230053230070_ _g230054230073_)))))
                      (let ()
                        (declare (not safe))
                        (_g230053230070_ _g230054230073_))))))
          (declare (not safe))
          (_g230052230115_ _stx230050_))))
    (define gxc#find-case-lambda%
      (lambda (_stx229932_ _arg229933_)
        (let* ((_g229935229963_
                (lambda (_g229936229960_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229936229960_))))
               (_g229934230047_
                (lambda (_g229936229966_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229936229966_))
                      (let ((_e229941229968_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229936229966_))))
                        (let ((_hd229940229971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229941229968_)))
                              (_tl229939229973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229941229968_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229939229973_))
                              (let ((_g236603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229939229973_
                                        '0))))
                                (begin
                                  (let ((_g236604_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236603_)
                                               (##vector-length _g236603_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236604_ 2)))
                                        (error "Context expects 2 values"
                                               _g236604_)))
                                  (let ((_target229942229976_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236603_ 0)))
                                        (_tl229944229978_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236603_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229944229978_))
                                        (letrec ((_loop229945229981_
                                                  (lambda (_hd229943229984_
                                                           _body229949229986_
                                                           _hd229950229988_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229943229984_))
                                                        (let ((_e229946229991_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229943229984_))))
                  (let ((_lp-hd229947229994_
                         (let () (declare (not safe)) (##car _e229946229991_)))
                        (_lp-tl229948229996_
                         (let ()
                           (declare (not safe))
                           (##cdr _e229946229991_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd229947229994_))
                        (let ((_e229955229999_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd229947229994_))))
                          (let ((_hd229954230002_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229955229999_)))
                                (_tl229953230004_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229955229999_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229953230004_))
                                (let ((_e229958230007_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229953230004_))))
                                  (let ((_hd229957230010_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229958230007_)))
                                        (_tl229956230012_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229958230007_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229956230012_))
                                        (let ((__tmp236609
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229957230010_
                                                       _body229949229986_)))
                                              (__tmp236608
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229954230002_
                                                       _hd229950229988_))))
                                          (declare (not safe))
                                          (_loop229945229981_
                                           _lp-tl229948229996_
                                           __tmp236609
                                           __tmp236608))
                                        (let ()
                                          (declare (not safe))
                                          (_g229935229963_ _g229936229966_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229935229963_ _g229936229966_)))))
                        (let ()
                          (declare (not safe))
                          (_g229935229963_ _g229936229966_)))))
                (let ((_body229951230015_ (reverse _body229949229986_))
                      (_hd229952230017_ (reverse _hd229950229988_)))
                  ((lambda (_L230020_ _L230021_)
                     (let ((__tmp236607
                            (lambda (_g230035230037_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g230035230037_
                                 _arg229933_))))
                           (__tmp236605
                            (let ((__tmp236606
                                   (lambda (_g230039230042_ _g230040230044_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g230039230042_
                                             _g230040230044_)))))
                              (declare (not safe))
                              (foldr1 __tmp236606 '() _L230020_))))
                       (declare (not safe))
                       (ormap1 __tmp236607 __tmp236605)))
                   _body229951230015_
                   _hd229952230017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop229945229981_
                                             _target229942229976_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g229935229963_
                                           _g229936229966_))))))
                              (let ()
                                (declare (not safe))
                                (_g229935229963_ _g229936229966_)))))
                      (let ()
                        (declare (not safe))
                        (_g229935229963_ _g229936229966_))))))
          (declare (not safe))
          (_g229934230047_ _stx229932_))))
    (define gxc#find-let-values%
      (lambda (_stx229782_ _arg229783_)
        (let* ((_g229785229820_
                (lambda (_g229786229817_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229786229817_))))
               (_g229784229929_
                (lambda (_g229786229823_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229786229823_))
                      (let ((_e229792229825_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229786229823_))))
                        (let ((_hd229791229828_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229792229825_)))
                              (_tl229790229830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229792229825_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229790229830_))
                              (let ((_e229795229833_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229790229830_))))
                                (let ((_hd229794229836_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229795229833_)))
                                      (_tl229793229838_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229795229833_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd229794229836_))
                                      (let ((_g236610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd229794229836_
                                                '0))))
                                        (begin
                                          (let ((_g236611_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236610_)
                                                       (##vector-length
                                                        _g236610_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236611_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236611_)))
                                          (let ((_target229796229841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236610_ 0)))
                                                (_tl229798229843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236610_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229798229843_))
                                                (letrec ((_loop229799229846_
                                                          (lambda (_hd229797229849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr229803229851_
                           _bind229804229853_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229797229849_))
                        (let ((_e229800229856_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229797229849_))))
                          (let ((_lp-hd229801229859_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229800229856_)))
                                (_lp-tl229802229861_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229800229856_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd229801229859_))
                                (let ((_e229809229864_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd229801229859_))))
                                  (let ((_hd229808229867_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229809229864_)))
                                        (_tl229807229869_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229809229864_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229807229869_))
                                        (let ((_e229812229872_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229807229869_))))
                                          (let ((_hd229811229875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229812229872_)))
                                                (_tl229810229877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229812229872_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229810229877_))
                                                (let ((__tmp236616
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229811229875_
                                                               _expr229803229851_)))
                                                      (__tmp236615
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229808229867_
                                                               _bind229804229853_))))
                                                  (declare (not safe))
                                                  (_loop229799229846_
                                                   _lp-tl229802229861_
                                                   __tmp236616
                                                   __tmp236615))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229785229820_
                                                   _g229786229823_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g229785229820_ _g229786229823_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229785229820_ _g229786229823_)))))
                        (let ((_expr229805229880_ (reverse _expr229803229851_))
                              (_bind229806229882_
                               (reverse _bind229804229853_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229793229838_))
                              (let ((_e229815229885_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229793229838_))))
                                (let ((_hd229814229888_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229815229885_)))
                                      (_tl229813229890_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229815229885_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229813229890_))
                                      ((lambda (_L229893_ _L229894_ _L229895_)
                                         (let ((_$e229926_
                                                (let ((__tmp236614
                                                       (lambda (_g229914229916_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g229914229916_
                                                            _arg229783_))))
                                                      (__tmp236612
                                                       (let ((__tmp236613
                                                              (lambda (_g229918229921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g229919229923_)
                        (let ()
                          (declare (not safe))
                          (cons _g229918229921_ _g229919229923_)))))
                 (declare (not safe))
                 (foldr1 __tmp236613 '() _L229894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp236614
                                                          __tmp236612))))
                                           (if _$e229926_
                                               _$e229926_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L229893_
                                                  _arg229783_)))))
                                       _hd229814229888_
                                       _expr229805229880_
                                       _bind229806229882_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229785229820_ _g229786229823_)))))
                              (let ()
                                (declare (not safe))
                                (_g229785229820_ _g229786229823_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop229799229846_
                                                     _target229796229841_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229785229820_
                                                   _g229786229823_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229785229820_ _g229786229823_)))))
                              (let ()
                                (declare (not safe))
                                (_g229785229820_ _g229786229823_)))))
                      (let ()
                        (declare (not safe))
                        (_g229785229820_ _g229786229823_))))))
          (declare (not safe))
          (_g229784229929_ _stx229782_))))
    (define gxc#find-setq%
      (lambda (_stx229714_ _arg229715_)
        (let* ((_g229717229734_
                (lambda (_g229718229731_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229718229731_))))
               (_g229716229779_
                (lambda (_g229718229737_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229718229737_))
                      (let ((_e229723229739_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229718229737_))))
                        (let ((_hd229722229742_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229723229739_)))
                              (_tl229721229744_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229723229739_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229721229744_))
                              (let ((_e229726229747_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229721229744_))))
                                (let ((_hd229725229750_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229726229747_)))
                                      (_tl229724229752_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229726229747_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229724229752_))
                                      (let ((_e229729229755_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229724229752_))))
                                        (let ((_hd229728229758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229729229755_)))
                                              (_tl229727229760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229729229755_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229727229760_))
                                              ((lambda (_L229763_ _L229764_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229763_
                                                    _arg229715_)))
                                               _hd229728229758_
                                               _hd229725229750_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229717229734_
                                                 _g229718229737_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229717229734_ _g229718229737_)))))
                              (let ()
                                (declare (not safe))
                                (_g229717229734_ _g229718229737_)))))
                      (let ()
                        (declare (not safe))
                        (_g229717229734_ _g229718229737_))))))
          (declare (not safe))
          (_g229716229779_ _stx229714_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx229658_ _ids229659_)
        (let* ((_g229661229674_
                (lambda (_g229662229671_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229662229671_))))
               (_g229660229711_
                (lambda (_g229662229677_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229662229677_))
                      (let ((_e229666229679_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229662229677_))))
                        (let ((_hd229665229682_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229666229679_)))
                              (_tl229664229684_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229666229679_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229664229684_))
                              (let ((_e229669229687_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229664229684_))))
                                (let ((_hd229668229690_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229669229687_)))
                                      (_tl229667229692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229669229687_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229667229692_))
                                      ((lambda (_L229695_)
                                         (let ((__tmp236617
                                                (lambda (_g229706229708_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L229695_
                                                     _g229706229708_)))))
                                           (declare (not safe))
                                           (find __tmp236617 _ids229659_)))
                                       _hd229668229690_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229661229674_ _g229662229677_)))))
                              (let ()
                                (declare (not safe))
                                (_g229661229674_ _g229662229677_)))))
                      (let ()
                        (declare (not safe))
                        (_g229661229674_ _g229662229677_))))))
          (declare (not safe))
          (_g229660229711_ _stx229658_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx229582_ _ids229583_)
        (let* ((_g229585229602_
                (lambda (_g229586229599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229586229599_))))
               (_g229584229655_
                (lambda (_g229586229605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229586229605_))
                      (let ((_e229591229607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229586229605_))))
                        (let ((_hd229590229610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229591229607_)))
                              (_tl229589229612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229591229607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229589229612_))
                              (let ((_e229594229615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229589229612_))))
                                (let ((_hd229593229618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229594229615_)))
                                      (_tl229592229620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229594229615_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229592229620_))
                                      (let ((_e229597229623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229592229620_))))
                                        (let ((_hd229596229626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229597229623_)))
                                              (_tl229595229628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229597229623_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229595229628_))
                                              ((lambda (_L229631_ _L229632_)
                                                 (let ((_$e229652_
                                                        (let ((__tmp236618
                                                               (lambda (_g229647229649_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L229632_ _g229647229649_)))))
                  (declare (not safe))
                  (find __tmp236618 _ids229583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e229652_
                                                       _$e229652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L229631_
                                                          _ids229583_)))))
                                               _hd229596229626_
                                               _hd229593229618_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229585229602_
                                                 _g229586229605_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229585229602_ _g229586229605_)))))
                              (let ()
                                (declare (not safe))
                                (_g229585229602_ _g229586229605_)))))
                      (let ()
                        (declare (not safe))
                        (_g229585229602_ _g229586229605_))))))
          (declare (not safe))
          (_g229584229655_ _stx229582_))))))
