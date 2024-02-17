(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708168071)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl231704_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231704_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231704_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231704_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231704_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl231704_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl231700_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231700_ '%#declare gxc#xform-identity))
           _tbl231700_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl231696_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236518 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl231696_ __tmp236518))
           (let ((__tmp236519 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl231696_ __tmp236519))
           _tbl231696_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl231692_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231692_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231692_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231692_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231692_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231692_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl231692_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl231688_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236520 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl231688_ __tmp236520))
           (let ((__tmp236521 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl231688_ __tmp236521))
           (let ()
             (declare (not safe))
             (table-set! _tbl231688_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231688_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231688_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231688_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231688_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl231688_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl231684_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236522 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl231684_ __tmp236522))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl231684_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231684_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl231684_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx231667_ . _args231669_)
        (let ((__tmp236524
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231669_)
                     (gxc#compile-e__0 _stx231667_)
                     (let ((_arg1231674_ (car _args231669_))
                           (_rest231676_ (cdr _args231669_)))
                       (if (null? _rest231676_)
                           (gxc#compile-e__1 _stx231667_ _arg1231674_)
                           (let ((_arg2231679_ (car _rest231676_))
                                 (_rest231681_ (cdr _rest231676_)))
                             (if (null? _rest231681_)
                                 (gxc#compile-e__2
                                  _stx231667_
                                  _arg1231674_
                                  _arg2231679_)
                                 (apply gxc#compile-e
                                        _stx231667_
                                        _arg1231674_
                                        _arg2231679_
                                        _rest231681_))))))))
              (__tmp236523 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp236524
           gxc#current-compile-methods
           __tmp236523))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl231664_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236525 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl231664_ __tmp236525))
           (let ()
             (declare (not safe))
             (table-set! _tbl231664_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231664_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231664_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231664_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231664_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl231664_))))
    (define gxc#apply-collect-methods
      (lambda (_stx231647_ . _args231649_)
        (let ((__tmp236527
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231649_)
                     (gxc#compile-e__0 _stx231647_)
                     (let ((_arg1231654_ (car _args231649_))
                           (_rest231656_ (cdr _args231649_)))
                       (if (null? _rest231656_)
                           (gxc#compile-e__1 _stx231647_ _arg1231654_)
                           (let ((_arg2231659_ (car _rest231656_))
                                 (_rest231661_ (cdr _rest231656_)))
                             (if (null? _rest231661_)
                                 (gxc#compile-e__2
                                  _stx231647_
                                  _arg1231654_
                                  _arg2231659_)
                                 (apply gxc#compile-e
                                        _stx231647_
                                        _arg1231654_
                                        _arg2231659_
                                        _rest231661_))))))))
              (__tmp236526 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp236527
           gxc#current-compile-methods
           __tmp236526))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl231644_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236528 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl231644_ __tmp236528))
           (let ()
             (declare (not safe))
             (table-set! _tbl231644_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231644_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231644_ '%#set! gxc#expression-subst-setq%))
           _tbl231644_))))
    (define gxc#apply-expression-subst
      (lambda (_stx231627_ . _args231629_)
        (let ((__tmp236530
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231629_)
                     (gxc#compile-e__0 _stx231627_)
                     (let ((_arg1231634_ (car _args231629_))
                           (_rest231636_ (cdr _args231629_)))
                       (if (null? _rest231636_)
                           (gxc#compile-e__1 _stx231627_ _arg1231634_)
                           (let ((_arg2231639_ (car _rest231636_))
                                 (_rest231641_ (cdr _rest231636_)))
                             (if (null? _rest231641_)
                                 (gxc#compile-e__2
                                  _stx231627_
                                  _arg1231634_
                                  _arg2231639_)
                                 (apply gxc#compile-e
                                        _stx231627_
                                        _arg1231634_
                                        _arg2231639_
                                        _rest231641_))))))))
              (__tmp236529 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp236530
           gxc#current-compile-methods
           __tmp236529))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl231624_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236531 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl231624_ __tmp236531))
           (let ()
             (declare (not safe))
             (table-set! _tbl231624_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231624_ '%#set! gxc#expression-subst*-setq%))
           _tbl231624_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx231607_ . _args231609_)
        (let ((__tmp236533
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231609_)
                     (gxc#compile-e__0 _stx231607_)
                     (let ((_arg1231614_ (car _args231609_))
                           (_rest231616_ (cdr _args231609_)))
                       (if (null? _rest231616_)
                           (gxc#compile-e__1 _stx231607_ _arg1231614_)
                           (let ((_arg2231619_ (car _rest231616_))
                                 (_rest231621_ (cdr _rest231616_)))
                             (if (null? _rest231621_)
                                 (gxc#compile-e__2
                                  _stx231607_
                                  _arg1231614_
                                  _arg2231619_)
                                 (apply gxc#compile-e
                                        _stx231607_
                                        _arg1231614_
                                        _arg2231619_
                                        _rest231621_))))))))
              (__tmp236532 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp236533
           gxc#current-compile-methods
           __tmp236532))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl231604_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236534 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl231604_ __tmp236534))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231604_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl231604_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231604_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl231604_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl231600_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236535 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl231600_ __tmp236535))
           (let ()
             (declare (not safe))
             (table-set! _tbl231600_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231600_ '%#set! gxc#find-var-refs-setq%))
           _tbl231600_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx231583_ . _args231585_)
        (let ((__tmp236537
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231585_)
                     (gxc#compile-e__0 _stx231583_)
                     (let ((_arg1231590_ (car _args231585_))
                           (_rest231592_ (cdr _args231585_)))
                       (if (null? _rest231592_)
                           (gxc#compile-e__1 _stx231583_ _arg1231590_)
                           (let ((_arg2231595_ (car _rest231592_))
                                 (_rest231597_ (cdr _rest231592_)))
                             (if (null? _rest231597_)
                                 (gxc#compile-e__2
                                  _stx231583_
                                  _arg1231590_
                                  _arg2231595_)
                                 (apply gxc#compile-e
                                        _stx231583_
                                        _arg1231590_
                                        _arg2231595_
                                        _rest231597_))))))))
              (__tmp236536 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236537
           gxc#current-compile-methods
           __tmp236536))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl231580_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp236538 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl231580_ __tmp236538))
           (let ()
             (declare (not safe))
             (table-set! _tbl231580_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl231580_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl231580_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx231563_ . _args231565_)
        (let ((__tmp236540
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231565_)
                     (gxc#compile-e__0 _stx231563_)
                     (let ((_arg1231570_ (car _args231565_))
                           (_rest231572_ (cdr _args231565_)))
                       (if (null? _rest231572_)
                           (gxc#compile-e__1 _stx231563_ _arg1231570_)
                           (let ((_arg2231575_ (car _rest231572_))
                                 (_rest231577_ (cdr _rest231572_)))
                             (if (null? _rest231577_)
                                 (gxc#compile-e__2
                                  _stx231563_
                                  _arg1231570_
                                  _arg2231575_)
                                 (apply gxc#compile-e
                                        _stx231563_
                                        _arg1231570_
                                        _arg2231575_
                                        _rest231577_))))))))
              (__tmp236539 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236540
           gxc#current-compile-methods
           __tmp236539))))
    (define gxc#xform-identity
      (lambda (_stx231560_ . _args231561_) _stx231560_))
    (define gxc#xform-wrap-source
      (lambda (_stx231557_ _src-stx231558_)
        (let ((__tmp236541
               (let () (declare (not safe)) (gx#stx-source _src-stx231558_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx231557_ __tmp236541))))
    (define gxc#xform-apply-compile-e
      (lambda (_args231544_)
        (lambda (_stx231546_)
          (if (let () (declare (not safe)) (null? _args231544_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx231546_))
              (let ((_arg1231548_ (car _args231544_))
                    (_rest231550_ (cdr _args231544_)))
                (if (let () (declare (not safe)) (null? _rest231550_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx231546_ _arg1231548_))
                    (let ((_arg2231553_ (car _rest231550_))
                          (_rest231555_ (cdr _rest231550_)))
                      (if (let () (declare (not safe)) (null? _rest231555_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx231546_
                             _arg1231548_
                             _arg2231553_))
                          (apply gxc#compile-e
                                 _stx231546_
                                 _arg1231548_
                                 _arg2231553_
                                 _rest231555_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx231503_ . _args231504_)
        (let* ((_g231506231516_
                (lambda (_g231507231513_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231507231513_))))
               (_g231505231541_
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
                             (let* ((_forms231539_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231504_))
                                          _L231529_))
                                    (__tmp236542
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms231539_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236542
                                _stx231503_)))
                           _tl231509231526_)))
                      (let ()
                        (declare (not safe))
                        (_g231506231516_ _g231507231519_))))))
          (declare (not safe))
          (_g231505231541_ _stx231503_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx231461_ . _args231462_)
        (let* ((_g231464231474_
                (lambda (_g231465231471_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231465231471_))))
               (_g231463231500_
                (lambda (_g231465231477_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231465231477_))
                      (let ((_e231469231479_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231465231477_))))
                        (let ((_hd231468231482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231469231479_)))
                              (_tl231467231484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231469231479_))))
                          ((lambda (_L231487_)
                             (let ((__tmp236545
                                    (lambda ()
                                      (let* ((_forms231498_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args231462_))
                                                   _L231487_))
                                             (__tmp236546
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms231498_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236546
                                         _stx231461_))))
                                   (__tmp236543
                                    (let ((__tmp236544
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp236544 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp236545
                                gx#current-expander-phi
                                __tmp236543)))
                           _tl231467231484_)))
                      (let ()
                        (declare (not safe))
                        (_g231464231474_ _g231465231477_))))))
          (declare (not safe))
          (_g231463231500_ _stx231461_))))
    (define gxc#xform-module%
      (lambda (_stx231389_ . _args231390_)
        (let* ((_g231392231406_
                (lambda (_g231393231403_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231393231403_))))
               (_g231391231458_
                (lambda (_g231393231409_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231393231409_))
                      (let ((_e231398231411_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231393231409_))))
                        (let ((_hd231397231414_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231398231411_)))
                              (_tl231396231416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231398231411_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231396231416_))
                              (let ((_e231401231419_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231396231416_))))
                                (let ((_hd231400231422_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231401231419_)))
                                      (_tl231399231424_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231401231419_))))
                                  ((lambda (_L231427_ _L231428_)
                                     (let* ((_ctx231441_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L231428_)))
                                            (_code231443_
                                             (##structure-ref
                                              _ctx231441_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code231455_
                                             (let ((__tmp236547
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args231390_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code231443_))
                                                          (let ((_arg1231446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args231390_))
                        (_rest231448_ (cdr _args231390_)))
                    (if (let () (declare (not safe)) (null? _rest231448_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code231443_ _arg1231446_))
                        (let ((_arg2231451_ (car _rest231448_))
                              (_rest231453_ (cdr _rest231448_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest231453_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code231443_
                                 _arg1231446_
                                 _arg2231451_))
                              (apply gxc#compile-e
                                     _code231443_
                                     _arg1231446_
                                     _arg2231451_
                                     _rest231453_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp236547
                                                gx#current-expander-context
                                                _ctx231441_))))
                                       (##structure-set!
                                        _ctx231441_
                                        _code231455_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp236548
                                              (let ((__tmp236549
                                                     (let ((__tmp236550
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code231455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L231428_ __tmp236550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp236549))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp236548
                                          _stx231389_))))
                                   _tl231399231424_
                                   _hd231400231422_)))
                              (let ()
                                (declare (not safe))
                                (_g231392231406_ _g231393231409_)))))
                      (let ()
                        (declare (not safe))
                        (_g231392231406_ _g231393231409_))))))
          (declare (not safe))
          (_g231391231458_ _stx231389_))))
    (define gxc#xform-define-values%
      (lambda (_stx231310_ . _args231311_)
        (let* ((_g231313231330_
                (lambda (_g231314231327_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231314231327_))))
               (_g231312231386_
                (lambda (_g231314231333_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231314231333_))
                      (let ((_e231319231335_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231314231333_))))
                        (let ((_hd231318231338_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231319231335_)))
                              (_tl231317231340_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231319231335_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231317231340_))
                              (let ((_e231322231343_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231317231340_))))
                                (let ((_hd231321231346_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231322231343_)))
                                      (_tl231320231348_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231322231343_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231320231348_))
                                      (let ((_e231325231351_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231320231348_))))
                                        (let ((_hd231324231354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231325231351_)))
                                              (_tl231323231356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231325231351_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231323231356_))
                                              ((lambda (_L231359_ _L231360_)
                                                 (let* ((_expr231384_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231311_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231359_))
                     (let ((_arg1231375_ (car _args231311_))
                           (_rest231377_ (cdr _args231311_)))
                       (if (let () (declare (not safe)) (null? _rest231377_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231359_ _arg1231375_))
                           (let ((_arg2231380_ (car _rest231377_))
                                 (_rest231382_ (cdr _rest231377_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231382_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231359_
                                    _arg1231375_
                                    _arg2231380_))
                                 (apply gxc#compile-e
                                        _L231359_
                                        _arg1231375_
                                        _arg2231380_
                                        _rest231382_)))))))
                (__tmp236551
                 (let ((__tmp236552
                        (let ((__tmp236553
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231384_ '()))))
                          (declare (not safe))
                          (cons _L231360_ __tmp236553))))
                   (declare (not safe))
                   (cons '%#define-values __tmp236552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236551
                                                    _stx231310_)))
                                               _hd231324231354_
                                               _hd231321231346_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231313231330_
                                                 _g231314231333_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231313231330_ _g231314231333_)))))
                              (let ()
                                (declare (not safe))
                                (_g231313231330_ _g231314231333_)))))
                      (let ()
                        (declare (not safe))
                        (_g231313231330_ _g231314231333_))))))
          (declare (not safe))
          (_g231312231386_ _stx231310_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx231230_ . _args231231_)
        (let* ((_g231233231250_
                (lambda (_g231234231247_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231234231247_))))
               (_g231232231307_
                (lambda (_g231234231253_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231234231253_))
                      (let ((_e231239231255_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231234231253_))))
                        (let ((_hd231238231258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231239231255_)))
                              (_tl231237231260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231239231255_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231237231260_))
                              (let ((_e231242231263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231237231260_))))
                                (let ((_hd231241231266_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231242231263_)))
                                      (_tl231240231268_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231242231263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231240231268_))
                                      (let ((_e231245231271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231240231268_))))
                                        (let ((_hd231244231274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231245231271_)))
                                              (_tl231243231276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231245231271_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231243231276_))
                                              ((lambda (_L231279_ _L231280_)
                                                 (let ((__tmp236556
                                                        (lambda ()
                                                          (let* ((_expr231305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args231231_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L231279_))
                              (let ((_arg1231296_ (car _args231231_))
                                    (_rest231298_ (cdr _args231231_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest231298_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L231279_
                                       _arg1231296_))
                                    (let ((_arg2231301_ (car _rest231298_))
                                          (_rest231303_ (cdr _rest231298_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest231303_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L231279_
                                             _arg1231296_
                                             _arg2231301_))
                                          (apply gxc#compile-e
                                                 _L231279_
                                                 _arg1231296_
                                                 _arg2231301_
                                                 _rest231303_)))))))
                         (__tmp236557
                          (let ((__tmp236558
                                 (let ((__tmp236559
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr231305_ '()))))
                                   (declare (not safe))
                                   (cons _L231280_ __tmp236559))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp236558))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236557 _stx231230_))))
               (__tmp236554
                (let ((__tmp236555 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp236555 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp236556
                                                    gx#current-expander-phi
                                                    __tmp236554)))
                                               _hd231244231274_
                                               _hd231241231266_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231233231250_
                                                 _g231234231253_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231233231250_ _g231234231253_)))))
                              (let ()
                                (declare (not safe))
                                (_g231233231250_ _g231234231253_)))))
                      (let ()
                        (declare (not safe))
                        (_g231233231250_ _g231234231253_))))))
          (declare (not safe))
          (_g231232231307_ _stx231230_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx231151_ . _args231152_)
        (let* ((_g231154231171_
                (lambda (_g231155231168_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231155231168_))))
               (_g231153231227_
                (lambda (_g231155231174_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231155231174_))
                      (let ((_e231160231176_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231155231174_))))
                        (let ((_hd231159231179_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231160231176_)))
                              (_tl231158231181_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231160231176_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231158231181_))
                              (let ((_e231163231184_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231158231181_))))
                                (let ((_hd231162231187_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231163231184_)))
                                      (_tl231161231189_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231163231184_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231161231189_))
                                      (let ((_e231166231192_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231161231189_))))
                                        (let ((_hd231165231195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231166231192_)))
                                              (_tl231164231197_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231166231192_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231164231197_))
                                              ((lambda (_L231200_ _L231201_)
                                                 (let* ((_expr231225_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231152_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231200_))
                     (let ((_arg1231216_ (car _args231152_))
                           (_rest231218_ (cdr _args231152_)))
                       (if (let () (declare (not safe)) (null? _rest231218_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231200_ _arg1231216_))
                           (let ((_arg2231221_ (car _rest231218_))
                                 (_rest231223_ (cdr _rest231218_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231223_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231200_
                                    _arg1231216_
                                    _arg2231221_))
                                 (apply gxc#compile-e
                                        _L231200_
                                        _arg1231216_
                                        _arg2231221_
                                        _rest231223_)))))))
                (__tmp236560
                 (let ((__tmp236561
                        (let ((__tmp236562
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231225_ '()))))
                          (declare (not safe))
                          (cons _L231201_ __tmp236562))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp236561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236560
                                                    _stx231151_)))
                                               _hd231165231195_
                                               _hd231162231187_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231154231171_
                                                 _g231155231174_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231154231171_ _g231155231174_)))))
                              (let ()
                                (declare (not safe))
                                (_g231154231171_ _g231155231174_)))))
                      (let ()
                        (declare (not safe))
                        (_g231154231171_ _g231155231174_))))))
          (declare (not safe))
          (_g231153231227_ _stx231151_))))
    (define gxc#xform-lambda%
      (lambda (_stx231094_ . _args231095_)
        (let* ((_g231097231111_
                (lambda (_g231098231108_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231098231108_))))
               (_g231096231148_
                (lambda (_g231098231114_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231098231114_))
                      (let ((_e231103231116_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231098231114_))))
                        (let ((_hd231102231119_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231103231116_)))
                              (_tl231101231121_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231103231116_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231101231121_))
                              (let ((_e231106231124_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231101231121_))))
                                (let ((_hd231105231127_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231106231124_)))
                                      (_tl231104231129_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231106231124_))))
                                  ((lambda (_L231132_ _L231133_)
                                     (let* ((_body231146_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args231095_))
                                                  _L231132_))
                                            (__tmp236563
                                             (let ((__tmp236564
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L231133_
                                                            _body231146_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp236564))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp236563
                                        _stx231094_)))
                                   _tl231104231129_
                                   _hd231105231127_)))
                              (let ()
                                (declare (not safe))
                                (_g231097231111_ _g231098231114_)))))
                      (let ()
                        (declare (not safe))
                        (_g231097231111_ _g231098231114_))))))
          (declare (not safe))
          (_g231096231148_ _stx231094_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx231007_ . _args231008_)
        (letrec ((_clause-e231010_
                  (lambda (_clause231051_)
                    (let* ((_g231053231064_
                            (lambda (_g231054231061_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g231054231061_))))
                           (_g231052231091_
                            (lambda (_g231054231067_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g231054231067_))
                                  (let ((_e231059231069_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g231054231067_))))
                                    (let ((_hd231058231072_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231059231069_)))
                                          (_tl231057231074_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231059231069_))))
                                      ((lambda (_L231077_ _L231078_)
                                         (let ((_body231089_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args231008_))
                                                     _L231077_)))
                                           (declare (not safe))
                                           (cons _L231078_ _body231089_)))
                                       _tl231057231074_
                                       _hd231058231072_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g231053231064_ _g231054231067_))))))
                      (declare (not safe))
                      (_g231052231091_ _clause231051_)))))
          (let* ((_g231012231022_
                  (lambda (_g231013231019_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g231013231019_))))
                 (_g231011231048_
                  (lambda (_g231013231025_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g231013231025_))
                        (let ((_e231017231027_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g231013231025_))))
                          (let ((_hd231016231030_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231017231027_)))
                                (_tl231015231032_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231017231027_))))
                            ((lambda (_L231035_)
                               (let* ((_clauses231046_
                                       (map _clause-e231010_ _L231035_))
                                      (__tmp236565
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses231046_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp236565
                                  _stx231007_)))
                             _tl231015231032_)))
                        (let ()
                          (declare (not safe))
                          (_g231012231022_ _g231013231025_))))))
            (declare (not safe))
            (_g231011231048_ _stx231007_)))))
    (define gxc#xform-let-values%
      (lambda (_stx230801_ . _args230802_)
        (let* ((_g230804230837_
                (lambda (_g230805230834_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230805230834_))))
               (_g230803231004_
                (lambda (_g230805230840_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230805230840_))
                      (let ((_e230812230842_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230805230840_))))
                        (let ((_hd230811230845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230812230842_)))
                              (_tl230810230847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230812230842_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230810230847_))
                              (let ((_e230815230850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230810230847_))))
                                (let ((_hd230814230853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230815230850_)))
                                      (_tl230813230855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230815230850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd230814230853_))
                                      (let ((_g236566_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd230814230853_
                                                '0))))
                                        (begin
                                          (let ((_g236567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236566_)
                                                       (##vector-length
                                                        _g236566_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236567_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236567_)))
                                          (let ((_target230816230858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236566_ 0)))
                                                (_tl230818230860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236566_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230818230860_))
                                                (letrec ((_loop230819230863_
                                                          (lambda (_hd230817230866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr230823230868_
                           _hd230824230870_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd230817230866_))
                        (let ((_e230820230873_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd230817230866_))))
                          (let ((_lp-hd230821230876_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230820230873_)))
                                (_lp-tl230822230878_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230820230873_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd230821230876_))
                                (let ((_e230829230881_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd230821230876_))))
                                  (let ((_hd230828230884_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230829230881_)))
                                        (_tl230827230886_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230829230881_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230827230886_))
                                        (let ((_e230832230889_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230827230886_))))
                                          (let ((_hd230831230892_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230832230889_)))
                                                (_tl230830230894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230832230889_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230830230894_))
                                                (let ((__tmp236580
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd230831230892_
                                                               _expr230823230868_)))
                                                      (__tmp236579
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd230828230884_
                                                               _hd230824230870_))))
                                                  (declare (not safe))
                                                  (_loop230819230863_
                                                   _lp-tl230822230878_
                                                   __tmp236580
                                                   __tmp236579))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230804230837_
                                                   _g230805230840_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230804230837_ _g230805230840_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230804230837_ _g230805230840_)))))
                        (let ((_expr230825230897_ (reverse _expr230823230868_))
                              (_hd230826230899_ (reverse _hd230824230870_)))
                          ((lambda (_L230902_ _L230903_ _L230904_ _L230905_)
                             (let* ((_g230924230940_
                                     (lambda (_g230925230937_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g230925230937_))))
                                    (_g230923230994_
                                     (lambda (_g230925230943_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g230925230943_))
                                           (let ((_g236568_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g230925230943_
                                                     '0))))
                                             (begin
                                               (let ((_g236569_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g236568_)
                                                            (##vector-length
                                                             _g236568_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g236569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g236569_)))
                                               (let ((_target230927230945_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236568_
                                                         0)))
                                                     (_tl230929230947_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236568_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl230929230947_))
                                                     (letrec ((_loop230930230950_
                                                               (lambda (_hd230928230953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr230934230955_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd230928230953_))
                             (let ((_e230931230958_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd230928230953_))))
                               (let ((_lp-hd230932230961_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230931230958_)))
                                     (_lp-tl230933230963_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230931230958_))))
                                 (let ((__tmp236576
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd230932230961_
                                                _expr230934230955_))))
                                   (declare (not safe))
                                   (_loop230930230950_
                                    _lp-tl230933230963_
                                    __tmp236576))))
                             (let ((_expr230935230966_
                                    (reverse _expr230934230955_)))
                               ((lambda (_L230969_)
                                  (let ()
                                    (let* ((_body230982_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args230802_))
                                                 _L230902_))
                                           (__tmp236570
                                            (let ((__tmp236571
                                                   (let ((__tmp236572
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L230969_
                                                               _L230904_))
                                                            (let ((__tmp236573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230983230987_
                                    _g230984230989_
                                    _g230985230991_)
                             (let ((__tmp236574
                                    (let ((__tmp236575
                                           (let ()
                                             (declare (not safe))
                                             (cons _g230983230987_ '()))))
                                      (declare (not safe))
                                      (cons _g230984230989_ __tmp236575))))
                               (declare (not safe))
                               (cons __tmp236574 _g230985230991_)))))
                      (declare (not safe))
                      (foldr2 __tmp236573 '() _L230969_ _L230904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp236572
                                                           _body230982_))))
                                              (declare (not safe))
                                              (cons _L230905_ __tmp236571))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp236570
                                       _stx230801_))))
                                _expr230935230966_))))))
               (let ()
                 (declare (not safe))
                 (_loop230930230950_ _target230927230945_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g230924230940_
                                                        _g230925230943_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230924230940_
                                              _g230925230943_)))))
                                    (__tmp236577
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230802_))
                                          (let ((__tmp236578
                                                 (lambda (_g230996230999_
                                                          _g230997231001_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g230996230999_
                                                           _g230997231001_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp236578
                                                    '()
                                                    _L230903_)))))
                               (declare (not safe))
                               (_g230923230994_ __tmp236577)))
                           _tl230813230855_
                           _expr230825230897_
                           _hd230826230899_
                           _hd230811230845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop230819230863_
                                                     _target230816230858_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230804230837_
                                                   _g230805230840_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230804230837_ _g230805230840_)))))
                              (let ()
                                (declare (not safe))
                                (_g230804230837_ _g230805230840_)))))
                      (let ()
                        (declare (not safe))
                        (_g230804230837_ _g230805230840_))))))
          (declare (not safe))
          (_g230803231004_ _stx230801_))))
    (define gxc#xform-operands
      (lambda (_stx230757_ . _args230758_)
        (let* ((_g230760230771_
                (lambda (_g230761230768_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230761230768_))))
               (_g230759230798_
                (lambda (_g230761230774_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230761230774_))
                      (let ((_e230766230776_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230761230774_))))
                        (let ((_hd230765230779_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230766230776_)))
                              (_tl230764230781_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230766230776_))))
                          ((lambda (_L230784_ _L230785_)
                             (let* ((_rands230796_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230758_))
                                          _L230784_))
                                    (__tmp236581
                                     (let ()
                                       (declare (not safe))
                                       (cons _L230785_ _rands230796_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236581
                                _stx230757_)))
                           _tl230764230781_
                           _hd230765230779_)))
                      (let ()
                        (declare (not safe))
                        (_g230760230771_ _g230761230774_))))))
          (declare (not safe))
          (_g230759230798_ _stx230757_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx230678_ . _args230679_)
        (let* ((_g230681230698_
                (lambda (_g230682230695_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230682230695_))))
               (_g230680230754_
                (lambda (_g230682230701_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230682230701_))
                      (let ((_e230687230703_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230682230701_))))
                        (let ((_hd230686230706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230687230703_)))
                              (_tl230685230708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230687230703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230685230708_))
                              (let ((_e230690230711_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230685230708_))))
                                (let ((_hd230689230714_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230690230711_)))
                                      (_tl230688230716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230690230711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230688230716_))
                                      (let ((_e230693230719_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230688230716_))))
                                        (let ((_hd230692230722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230693230719_)))
                                              (_tl230691230724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230693230719_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230691230724_))
                                              ((lambda (_L230727_ _L230728_)
                                                 (let* ((_expr230752_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230679_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230727_))
                     (let ((_arg1230743_ (car _args230679_))
                           (_rest230745_ (cdr _args230679_)))
                       (if (let () (declare (not safe)) (null? _rest230745_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230727_ _arg1230743_))
                           (let ((_arg2230748_ (car _rest230745_))
                                 (_rest230750_ (cdr _rest230745_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230750_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230727_
                                    _arg1230743_
                                    _arg2230748_))
                                 (apply gxc#compile-e
                                        _L230727_
                                        _arg1230743_
                                        _arg2230748_
                                        _rest230750_)))))))
                (__tmp236582
                 (let ((__tmp236583
                        (let ((__tmp236584
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230752_ '()))))
                          (declare (not safe))
                          (cons _L230728_ __tmp236584))))
                   (declare (not safe))
                   (cons '%#set! __tmp236583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236582
                                                    _stx230678_)))
                                               _hd230692230722_
                                               _hd230689230714_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230681230698_
                                                 _g230682230701_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230681230698_ _g230682230701_)))))
                              (let ()
                                (declare (not safe))
                                (_g230681230698_ _g230682230701_)))))
                      (let ()
                        (declare (not safe))
                        (_g230681230698_ _g230682230701_))))))
          (declare (not safe))
          (_g230680230754_ _stx230678_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx230609_)
        (let* ((_g230611230628_
                (lambda (_g230612230625_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230612230625_))))
               (_g230610230675_
                (lambda (_g230612230631_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230612230631_))
                      (let ((_e230617230633_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230612230631_))))
                        (let ((_hd230616230636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230617230633_)))
                              (_tl230615230638_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230617230633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230615230638_))
                              (let ((_e230620230641_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230615230638_))))
                                (let ((_hd230619230644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230620230641_)))
                                      (_tl230618230646_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230620230641_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230618230646_))
                                      (let ((_e230623230649_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230618230646_))))
                                        (let ((_hd230622230652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230623230649_)))
                                              (_tl230621230654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230623230649_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230621230654_))
                                              ((lambda (_L230657_ _L230658_)
                                                 (let ((_sym230673_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L230658_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym230673_))
                                                   (let ((__tmp236585
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp236585
                                                      _sym230673_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L230657_))))
                                               _hd230622230652_
                                               _hd230619230644_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230611230628_
                                                 _g230612230631_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230611230628_ _g230612230631_)))))
                              (let ()
                                (declare (not safe))
                                (_g230611230628_ _g230612230631_)))))
                      (let ()
                        (declare (not safe))
                        (_g230611230628_ _g230612230631_))))))
          (declare (not safe))
          (_g230610230675_ _stx230609_))))
    (define gxc#collect-methods-call%
      (lambda (_stx230163_)
        (let* ((___stx236275236276_ _stx230163_)
               (_g230167230269_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx236275236276_)))))
          (let ((___kont236277236278_
                 (lambda (_L230559_ _L230560_ _L230561_ _L230562_ _L230563_)
                   (let ((__tmp236586
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230560_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236586))))
                (___kont236279236280_
                 (lambda (_L230385_ _L230386_ _L230387_ _L230388_)
                   (let ((__tmp236587
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230385_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236587))))
                (___kont236281236282_ (lambda () '#!void)))
            (let ((___match236410236411_
                   (lambda (_e230176230431_
                            _hd230175230434_
                            _tl230174230436_
                            _e230179230439_
                            _hd230178230442_
                            _tl230177230444_
                            _e230182230447_
                            _hd230181230450_
                            _tl230180230452_
                            _e230185230455_
                            _hd230184230458_
                            _tl230183230460_
                            _e230188230463_
                            _hd230187230466_
                            _tl230186230468_
                            _e230191230471_
                            _hd230190230474_
                            _tl230189230476_
                            _e230194230479_
                            _hd230193230482_
                            _tl230192230484_
                            _e230197230487_
                            _hd230196230490_
                            _tl230195230492_
                            _e230200230495_
                            _hd230199230498_
                            _tl230198230500_
                            _e230203230503_
                            _hd230202230506_
                            _tl230201230508_
                            _e230206230511_
                            _hd230205230514_
                            _tl230204230516_
                            _e230209230519_
                            _hd230208230522_
                            _tl230207230524_
                            _e230212230527_
                            _hd230211230530_
                            _tl230210230532_
                            _e230215230535_
                            _hd230214230538_
                            _tl230213230540_
                            _e230218230543_
                            _hd230217230546_
                            _tl230216230548_
                            _e230221230551_
                            _hd230220230554_
                            _tl230219230556_)
                     (let ((_L230559_ _hd230220230554_)
                           (_L230560_ _hd230211230530_)
                           (_L230561_ _hd230202230506_)
                           (_L230562_ _hd230193230482_)
                           (_L230563_ _hd230184230458_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L230563_
                              'bind-method!))
                           (___kont236277236278_
                            _L230559_
                            _L230560_
                            _L230561_
                            _L230562_
                            _L230563_)
                           (___kont236281236282_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx236275236276_))
                  (let ((_e230176230431_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx236275236276_))))
                    (let ((_tl230174230436_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230176230431_)))
                          (_hd230175230434_
                           (let ()
                             (declare (not safe))
                             (##car _e230176230431_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230174230436_))
                          (let ((_e230179230439_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230174230436_))))
                            (let ((_tl230177230444_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230179230439_)))
                                  (_hd230178230442_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230179230439_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230178230442_))
                                  (let ((_e230182230447_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230178230442_))))
                                    (let ((_tl230180230452_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230182230447_)))
                                          (_hd230181230450_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230182230447_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd230181230450_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd230181230450_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230180230452_))
                                                  (let ((_e230185230455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230180230452_))))
                                                    (let ((_tl230183230460_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230185230455_)))
                                                          (_hd230184230458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230185230455_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230183230460_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230177230444_))
                      (let ((_e230188230463_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230177230444_))))
                        (let ((_tl230186230468_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230188230463_)))
                              (_hd230187230466_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230188230463_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230187230466_))
                              (let ((_e230191230471_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230187230466_))))
                                (let ((_tl230189230476_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230191230471_)))
                                      (_hd230190230474_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230191230471_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd230190230474_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd230190230474_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230189230476_))
                                              (let ((_e230194230479_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230189230476_))))
                                                (let ((_tl230192230484_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230194230479_)))
                                                      (_hd230193230482_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230194230479_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230192230484_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl230186230468_))
                                                          (let ((_e230197230487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl230186230468_))))
                    (let ((_tl230195230492_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230197230487_)))
                          (_hd230196230490_
                           (let ()
                             (declare (not safe))
                             (##car _e230197230487_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd230196230490_))
                          (let ((_e230200230495_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd230196230490_))))
                            (let ((_tl230198230500_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230200230495_)))
                                  (_hd230199230498_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230200230495_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd230199230498_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd230199230498_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl230198230500_))
                                          (let ((_e230203230503_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl230198230500_))))
                                            (let ((_tl230201230508_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230203230503_)))
                                                  (_hd230202230506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230203230503_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230201230508_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230195230492_))
                                                      (let ((_e230206230511_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230195230492_))))
                (let ((_tl230204230516_
                       (let () (declare (not safe)) (##cdr _e230206230511_)))
                      (_hd230205230514_
                       (let () (declare (not safe)) (##car _e230206230511_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230205230514_))
                      (let ((_e230209230519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230205230514_))))
                        (let ((_tl230207230524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230209230519_)))
                              (_hd230208230522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230209230519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230208230522_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230208230522_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230207230524_))
                                      (let ((_e230212230527_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230207230524_))))
                                        (let ((_tl230210230532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230212230527_)))
                                              (_hd230211230530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230212230527_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230210230532_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230204230516_))
                                                  (let ((_e230215230535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230204230516_))))
                                                    (let ((_tl230213230540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230215230535_)))
                                                          (_hd230214230538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230215230535_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230214230538_))
                                                          (let ((_e230218230543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230214230538_))))
                    (let ((_tl230216230548_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230218230543_)))
                          (_hd230217230546_
                           (let ()
                             (declare (not safe))
                             (##car _e230218230543_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230217230546_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd230217230546_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230216230548_))
                                  (let ((_e230221230551_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230216230548_))))
                                    (let ((_tl230219230556_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230221230551_)))
                                          (_hd230220230554_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230221230551_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230219230556_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230213230540_))
                                              (___match236410236411_
                                               _e230176230431_
                                               _hd230175230434_
                                               _tl230174230436_
                                               _e230179230439_
                                               _hd230178230442_
                                               _tl230177230444_
                                               _e230182230447_
                                               _hd230181230450_
                                               _tl230180230452_
                                               _e230185230455_
                                               _hd230184230458_
                                               _tl230183230460_
                                               _e230188230463_
                                               _hd230187230466_
                                               _tl230186230468_
                                               _e230191230471_
                                               _hd230190230474_
                                               _tl230189230476_
                                               _e230194230479_
                                               _hd230193230482_
                                               _tl230192230484_
                                               _e230197230487_
                                               _hd230196230490_
                                               _tl230195230492_
                                               _e230200230495_
                                               _hd230199230498_
                                               _tl230198230500_
                                               _e230203230503_
                                               _hd230202230506_
                                               _tl230201230508_
                                               _e230206230511_
                                               _hd230205230514_
                                               _tl230204230516_
                                               _e230209230519_
                                               _hd230208230522_
                                               _tl230207230524_
                                               _e230212230527_
                                               _hd230211230530_
                                               _tl230210230532_
                                               _e230215230535_
                                               _hd230214230538_
                                               _tl230213230540_
                                               _e230218230543_
                                               _hd230217230546_
                                               _tl230216230548_
                                               _e230221230551_
                                               _hd230220230554_
                                               _tl230219230556_)
                                              (___kont236281236282_))
                                          (___kont236281236282_))))
                                  (___kont236281236282_))
                              (___kont236281236282_))
                          (___kont236281236282_))))
                  (___kont236281236282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230204230516_))
                                                      (if (let ((__tmp236588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp236588 'bind-method!))
                  (let ((_L230385_ _hd230211230530_)
                        (_L230386_ _hd230202230506_)
                        (_L230387_ _hd230193230482_)
                        (_L230388_ _hd230184230458_))
                    (___kont236279236280_
                     _L230385_
                     _L230386_
                     _L230387_
                     _L230388_))
                  (___kont236281236282_))
              (___kont236281236282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont236281236282_))))
                                      (___kont236281236282_))
                                  (___kont236281236282_))
                              (___kont236281236282_))))
                      (___kont236281236282_))))
              (___kont236281236282_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont236281236282_))))
                                          (___kont236281236282_))
                                      (___kont236281236282_))
                                  (___kont236281236282_))))
                          (___kont236281236282_))))
                  (___kont236281236282_))
              (___kont236281236282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont236281236282_))
                                          (___kont236281236282_))
                                      (___kont236281236282_))))
                              (___kont236281236282_))))
                      (___kont236281236282_))
                  (___kont236281236282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont236281236282_))
                                              (___kont236281236282_))
                                          (___kont236281236282_))))
                                  (___kont236281236282_))))
                          (___kont236281236282_))))
                  (___kont236281236282_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx230110_ _id230111_ _new-id230112_)
        (let* ((_g230114230127_
                (lambda (_g230115230124_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230115230124_))))
               (_g230113230160_
                (lambda (_g230115230130_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230115230130_))
                      (let ((_e230119230132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230115230130_))))
                        (let ((_hd230118230135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230119230132_)))
                              (_tl230117230137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230119230132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230117230137_))
                              (let ((_e230122230140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230117230137_))))
                                (let ((_hd230121230143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230122230140_)))
                                      (_tl230120230145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230122230140_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230120230145_))
                                      ((lambda (_L230148_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L230148_
                                                _id230111_))
                                             (let ((__tmp236589
                                                    (let ((__tmp236590
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id230112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp236590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236589
                                                _stx230110_))
                                             _stx230110_))
                                       _hd230121230143_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230114230127_ _g230115230130_)))))
                              (let ()
                                (declare (not safe))
                                (_g230114230127_ _g230115230130_)))))
                      (let ()
                        (declare (not safe))
                        (_g230114230127_ _g230115230130_))))))
          (declare (not safe))
          (_g230113230160_ _stx230110_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx230051_ _subst230052_)
        (let* ((_g230054230067_
                (lambda (_g230055230064_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230055230064_))))
               (_g230053230107_
                (lambda (_g230055230070_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230055230070_))
                      (let ((_e230059230072_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230055230070_))))
                        (let ((_hd230058230075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230059230072_)))
                              (_tl230057230077_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230059230072_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230057230077_))
                              (let ((_e230062230080_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230057230077_))))
                                (let ((_hd230061230083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230062230080_)))
                                      (_tl230060230085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230062230080_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230060230085_))
                                      ((lambda (_L230088_)
                                         (let ((_$e230102_
                                                (let ((__tmp236591
                                                       (lambda (_sub230100_)
                                                         (let ((__tmp236592
                                                                (car _sub230100_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L230088_
                                                            __tmp236592)))))
                                                  (declare (not safe))
                                                  (find __tmp236591
                                                        _subst230052_))))
                                           (if _$e230102_
                                               ((lambda (_sub230105_)
                                                  (let ((__tmp236593
                                                         (let ((__tmp236594
                                                                (let ((__tmp236595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub230105_)))
                          (declare (not safe))
                          (cons __tmp236595 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp236594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp236593
                                                     _stx230051_)))
                                                _$e230102_)
                                               _stx230051_)))
                                       _hd230061230083_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230054230067_ _g230055230070_)))))
                              (let ()
                                (declare (not safe))
                                (_g230054230067_ _g230055230070_)))))
                      (let ()
                        (declare (not safe))
                        (_g230054230067_ _g230055230070_))))))
          (declare (not safe))
          (_g230053230107_ _stx230051_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx229979_ _id229980_ _new-id229981_)
        (let* ((_g229983230000_
                (lambda (_g229984229997_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229984229997_))))
               (_g229982230048_
                (lambda (_g229984230003_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229984230003_))
                      (let ((_e229989230005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229984230003_))))
                        (let ((_hd229988230008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229989230005_)))
                              (_tl229987230010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229989230005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229987230010_))
                              (let ((_e229992230013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229987230010_))))
                                (let ((_hd229991230016_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229992230013_)))
                                      (_tl229990230018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229992230013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229990230018_))
                                      (let ((_e229995230021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229990230018_))))
                                        (let ((_hd229994230024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229995230021_)))
                                              (_tl229993230026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229995230021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229993230026_))
                                              ((lambda (_L230029_ _L230030_)
                                                 (let ((_new-expr230045_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L230029_
                                                           _id229980_
                                                           _new-id229981_)))
                                                       (_new-xid230046_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L230030_
                                                               _id229980_))
                                                            _new-id229981_
                                                            _L230030_)))
                                                   (let ((__tmp236596
                                                          (let ((__tmp236597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236598
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr230045_ '()))))
                           (declare (not safe))
                           (cons _new-xid230046_ __tmp236598))))
                    (declare (not safe))
                    (cons '%#set! __tmp236597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236596
                                                      _stx229979_))))
                                               _hd229994230024_
                                               _hd229991230016_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229983230000_
                                                 _g229984230003_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229983230000_ _g229984230003_)))))
                              (let ()
                                (declare (not safe))
                                (_g229983230000_ _g229984230003_)))))
                      (let ()
                        (declare (not safe))
                        (_g229983230000_ _g229984230003_))))))
          (declare (not safe))
          (_g229982230048_ _stx229979_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx229903_ _subst229904_)
        (let* ((_g229906229923_
                (lambda (_g229907229920_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229907229920_))))
               (_g229905229976_
                (lambda (_g229907229926_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229907229926_))
                      (let ((_e229912229928_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229907229926_))))
                        (let ((_hd229911229931_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229912229928_)))
                              (_tl229910229933_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229912229928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229910229933_))
                              (let ((_e229915229936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229910229933_))))
                                (let ((_hd229914229939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229915229936_)))
                                      (_tl229913229941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229915229936_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229913229941_))
                                      (let ((_e229918229944_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229913229941_))))
                                        (let ((_hd229917229947_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229918229944_)))
                                              (_tl229916229949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229918229944_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229916229949_))
                                              ((lambda (_L229952_ _L229953_)
                                                 (let ((_new-expr229973_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L229952_
                                                           _subst229904_)))
                                                       (_new-xid229974_
                                                        (let ((_$e229970_
                                                               (let ((__tmp236599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub229968_)
                                (let ((__tmp236600 (car _sub229968_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L229953_
                                   __tmp236600)))))
                         (declare (not safe))
                         (find __tmp236599 _subst229904_))))
                  (if _$e229970_ (cdr _$e229970_) _L229953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp236601
                                                          (let ((__tmp236602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236603
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr229973_ '()))))
                           (declare (not safe))
                           (cons _new-xid229974_ __tmp236603))))
                    (declare (not safe))
                    (cons '%#set! __tmp236602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236601
                                                      _stx229903_))))
                                               _hd229917229947_
                                               _hd229914229939_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229906229923_
                                                 _g229907229926_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229906229923_ _g229907229926_)))))
                              (let ()
                                (declare (not safe))
                                (_g229906229923_ _g229907229926_)))))
                      (let ()
                        (declare (not safe))
                        (_g229906229923_ _g229907229926_))))))
          (declare (not safe))
          (_g229905229976_ _stx229903_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx229849_ _ht229850_)
        (let* ((_g229852229865_
                (lambda (_g229853229862_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229853229862_))))
               (_g229851229900_
                (lambda (_g229853229868_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229853229868_))
                      (let ((_e229857229870_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229853229868_))))
                        (let ((_hd229856229873_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229857229870_)))
                              (_tl229855229875_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229857229870_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229855229875_))
                              (let ((_e229860229878_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229855229875_))))
                                (let ((_hd229859229881_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229860229878_)))
                                      (_tl229858229883_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229860229878_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229858229883_))
                                      ((lambda (_L229886_)
                                         (let ((_eid229898_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229886_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht229850_
                                            _eid229898_
                                            1+
                                            '0)))
                                       _hd229859229881_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229852229865_ _g229853229868_)))))
                              (let ()
                                (declare (not safe))
                                (_g229852229865_ _g229853229868_)))))
                      (let ()
                        (declare (not safe))
                        (_g229852229865_ _g229853229868_))))))
          (declare (not safe))
          (_g229851229900_ _stx229849_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx229779_ _ht229780_)
        (let* ((_g229782229799_
                (lambda (_g229783229796_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229783229796_))))
               (_g229781229846_
                (lambda (_g229783229802_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229783229802_))
                      (let ((_e229788229804_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229783229802_))))
                        (let ((_hd229787229807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229788229804_)))
                              (_tl229786229809_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229788229804_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229786229809_))
                              (let ((_e229791229812_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229786229809_))))
                                (let ((_hd229790229815_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229791229812_)))
                                      (_tl229789229817_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229791229812_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229789229817_))
                                      (let ((_e229794229820_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229789229817_))))
                                        (let ((_hd229793229823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229794229820_)))
                                              (_tl229792229825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229794229820_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229792229825_))
                                              ((lambda (_L229828_ _L229829_)
                                                 (let ((_eid229844_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L229829_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht229780_
                                                      _eid229844_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L229828_
                                                      _ht229780_))))
                                               _hd229793229823_
                                               _hd229790229815_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229782229799_
                                                 _g229783229802_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229782229799_ _g229783229802_)))))
                              (let ()
                                (declare (not safe))
                                (_g229782229799_ _g229783229802_)))))
                      (let ()
                        (declare (not safe))
                        (_g229782229799_ _g229783229802_))))))
          (declare (not safe))
          (_g229781229846_ _stx229779_))))
    (define gxc#find-body%
      (lambda (_stx229692_ _arg229693_)
        (let* ((_g229695229714_
                (lambda (_g229696229711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229696229711_))))
               (_g229694229776_
                (lambda (_g229696229717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229696229717_))
                      (let ((_e229700229719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229696229717_))))
                        (let ((_hd229699229722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229700229719_)))
                              (_tl229698229724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229700229719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229698229724_))
                              (let ((_g236604_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229698229724_
                                        '0))))
                                (begin
                                  (let ((_g236605_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236604_)
                                               (##vector-length _g236604_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236605_ 2)))
                                        (error "Context expects 2 values"
                                               _g236605_)))
                                  (let ((_target229701229727_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236604_ 0)))
                                        (_tl229703229729_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236604_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229703229729_))
                                        (letrec ((_loop229704229732_
                                                  (lambda (_hd229702229735_
                                                           _expr229708229737_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229702229735_))
                                                        (let ((_e229705229740_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229702229735_))))
                  (let ((_lp-hd229706229743_
                         (let () (declare (not safe)) (##car _e229705229740_)))
                        (_lp-tl229707229745_
                         (let ()
                           (declare (not safe))
                           (##cdr _e229705229740_))))
                    (let ((__tmp236609
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd229706229743_ _expr229708229737_))))
                      (declare (not safe))
                      (_loop229704229732_ _lp-tl229707229745_ __tmp236609))))
                (let ((_expr229709229748_ (reverse _expr229708229737_)))
                  ((lambda (_L229751_)
                     (let ((__tmp236608
                            (lambda (_g229764229766_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g229764229766_
                                 _arg229693_))))
                           (__tmp236606
                            (let ((__tmp236607
                                   (lambda (_g229768229771_ _g229769229773_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g229768229771_
                                             _g229769229773_)))))
                              (declare (not safe))
                              (foldr1 __tmp236607 '() _L229751_))))
                       (declare (not safe))
                       (ormap1 __tmp236608 __tmp236606)))
                   _expr229709229748_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop229704229732_
                                             _target229701229727_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g229695229714_
                                           _g229696229717_))))))
                              (let ()
                                (declare (not safe))
                                (_g229695229714_ _g229696229717_)))))
                      (let ()
                        (declare (not safe))
                        (_g229695229714_ _g229696229717_))))))
          (declare (not safe))
          (_g229694229776_ _stx229692_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx229624_ _arg229625_)
        (let* ((_g229627229644_
                (lambda (_g229628229641_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229628229641_))))
               (_g229626229689_
                (lambda (_g229628229647_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229628229647_))
                      (let ((_e229633229649_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229628229647_))))
                        (let ((_hd229632229652_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229633229649_)))
                              (_tl229631229654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229633229649_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229631229654_))
                              (let ((_e229636229657_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229631229654_))))
                                (let ((_hd229635229660_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229636229657_)))
                                      (_tl229634229662_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229636229657_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229634229662_))
                                      (let ((_e229639229665_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229634229662_))))
                                        (let ((_hd229638229668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229639229665_)))
                                              (_tl229637229670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229639229665_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229637229670_))
                                              ((lambda (_L229673_ _L229674_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229673_
                                                    _arg229625_)))
                                               _hd229638229668_
                                               _hd229635229660_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229627229644_
                                                 _g229628229647_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229627229644_ _g229628229647_)))))
                              (let ()
                                (declare (not safe))
                                (_g229627229644_ _g229628229647_)))))
                      (let ()
                        (declare (not safe))
                        (_g229627229644_ _g229628229647_))))))
          (declare (not safe))
          (_g229626229689_ _stx229624_))))
    (define gxc#find-lambda%
      (lambda (_stx229556_ _arg229557_)
        (let* ((_g229559229576_
                (lambda (_g229560229573_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229560229573_))))
               (_g229558229621_
                (lambda (_g229560229579_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229560229579_))
                      (let ((_e229565229581_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229560229579_))))
                        (let ((_hd229564229584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229565229581_)))
                              (_tl229563229586_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229565229581_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229563229586_))
                              (let ((_e229568229589_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229563229586_))))
                                (let ((_hd229567229592_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229568229589_)))
                                      (_tl229566229594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229568229589_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229566229594_))
                                      (let ((_e229571229597_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229566229594_))))
                                        (let ((_hd229570229600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229571229597_)))
                                              (_tl229569229602_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229571229597_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229569229602_))
                                              ((lambda (_L229605_ _L229606_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229605_
                                                    _arg229557_)))
                                               _hd229570229600_
                                               _hd229567229592_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229559229576_
                                                 _g229560229579_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229559229576_ _g229560229579_)))))
                              (let ()
                                (declare (not safe))
                                (_g229559229576_ _g229560229579_)))))
                      (let ()
                        (declare (not safe))
                        (_g229559229576_ _g229560229579_))))))
          (declare (not safe))
          (_g229558229621_ _stx229556_))))
    (define gxc#find-case-lambda%
      (lambda (_stx229438_ _arg229439_)
        (let* ((_g229441229469_
                (lambda (_g229442229466_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229442229466_))))
               (_g229440229553_
                (lambda (_g229442229472_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229442229472_))
                      (let ((_e229447229474_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229442229472_))))
                        (let ((_hd229446229477_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229447229474_)))
                              (_tl229445229479_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229447229474_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229445229479_))
                              (let ((_g236610_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229445229479_
                                        '0))))
                                (begin
                                  (let ((_g236611_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236610_)
                                               (##vector-length _g236610_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236611_ 2)))
                                        (error "Context expects 2 values"
                                               _g236611_)))
                                  (let ((_target229448229482_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236610_ 0)))
                                        (_tl229450229484_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236610_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229450229484_))
                                        (letrec ((_loop229451229487_
                                                  (lambda (_hd229449229490_
                                                           _body229455229492_
                                                           _hd229456229494_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229449229490_))
                                                        (let ((_e229452229497_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229449229490_))))
                  (let ((_lp-hd229453229500_
                         (let () (declare (not safe)) (##car _e229452229497_)))
                        (_lp-tl229454229502_
                         (let ()
                           (declare (not safe))
                           (##cdr _e229452229497_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd229453229500_))
                        (let ((_e229461229505_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd229453229500_))))
                          (let ((_hd229460229508_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229461229505_)))
                                (_tl229459229510_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229461229505_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229459229510_))
                                (let ((_e229464229513_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229459229510_))))
                                  (let ((_hd229463229516_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229464229513_)))
                                        (_tl229462229518_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229464229513_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229462229518_))
                                        (let ((__tmp236616
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229463229516_
                                                       _body229455229492_)))
                                              (__tmp236615
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229460229508_
                                                       _hd229456229494_))))
                                          (declare (not safe))
                                          (_loop229451229487_
                                           _lp-tl229454229502_
                                           __tmp236616
                                           __tmp236615))
                                        (let ()
                                          (declare (not safe))
                                          (_g229441229469_ _g229442229472_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229441229469_ _g229442229472_)))))
                        (let ()
                          (declare (not safe))
                          (_g229441229469_ _g229442229472_)))))
                (let ((_body229457229521_ (reverse _body229455229492_))
                      (_hd229458229523_ (reverse _hd229456229494_)))
                  ((lambda (_L229526_ _L229527_)
                     (let ((__tmp236614
                            (lambda (_g229541229543_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g229541229543_
                                 _arg229439_))))
                           (__tmp236612
                            (let ((__tmp236613
                                   (lambda (_g229545229548_ _g229546229550_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g229545229548_
                                             _g229546229550_)))))
                              (declare (not safe))
                              (foldr1 __tmp236613 '() _L229526_))))
                       (declare (not safe))
                       (ormap1 __tmp236614 __tmp236612)))
                   _body229457229521_
                   _hd229458229523_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop229451229487_
                                             _target229448229482_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g229441229469_
                                           _g229442229472_))))))
                              (let ()
                                (declare (not safe))
                                (_g229441229469_ _g229442229472_)))))
                      (let ()
                        (declare (not safe))
                        (_g229441229469_ _g229442229472_))))))
          (declare (not safe))
          (_g229440229553_ _stx229438_))))
    (define gxc#find-let-values%
      (lambda (_stx229288_ _arg229289_)
        (let* ((_g229291229326_
                (lambda (_g229292229323_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229292229323_))))
               (_g229290229435_
                (lambda (_g229292229329_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229292229329_))
                      (let ((_e229298229331_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229292229329_))))
                        (let ((_hd229297229334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229298229331_)))
                              (_tl229296229336_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229298229331_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229296229336_))
                              (let ((_e229301229339_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229296229336_))))
                                (let ((_hd229300229342_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229301229339_)))
                                      (_tl229299229344_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229301229339_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd229300229342_))
                                      (let ((_g236617_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd229300229342_
                                                '0))))
                                        (begin
                                          (let ((_g236618_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236617_)
                                                       (##vector-length
                                                        _g236617_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236618_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236618_)))
                                          (let ((_target229302229347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236617_ 0)))
                                                (_tl229304229349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236617_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229304229349_))
                                                (letrec ((_loop229305229352_
                                                          (lambda (_hd229303229355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr229309229357_
                           _bind229310229359_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229303229355_))
                        (let ((_e229306229362_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229303229355_))))
                          (let ((_lp-hd229307229365_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229306229362_)))
                                (_lp-tl229308229367_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229306229362_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd229307229365_))
                                (let ((_e229315229370_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd229307229365_))))
                                  (let ((_hd229314229373_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229315229370_)))
                                        (_tl229313229375_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229315229370_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229313229375_))
                                        (let ((_e229318229378_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229313229375_))))
                                          (let ((_hd229317229381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229318229378_)))
                                                (_tl229316229383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229318229378_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229316229383_))
                                                (let ((__tmp236623
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229317229381_
                                                               _expr229309229357_)))
                                                      (__tmp236622
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229314229373_
                                                               _bind229310229359_))))
                                                  (declare (not safe))
                                                  (_loop229305229352_
                                                   _lp-tl229308229367_
                                                   __tmp236623
                                                   __tmp236622))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229291229326_
                                                   _g229292229329_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g229291229326_ _g229292229329_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229291229326_ _g229292229329_)))))
                        (let ((_expr229311229386_ (reverse _expr229309229357_))
                              (_bind229312229388_
                               (reverse _bind229310229359_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229299229344_))
                              (let ((_e229321229391_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229299229344_))))
                                (let ((_hd229320229394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229321229391_)))
                                      (_tl229319229396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229321229391_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229319229396_))
                                      ((lambda (_L229399_ _L229400_ _L229401_)
                                         (let ((_$e229432_
                                                (let ((__tmp236621
                                                       (lambda (_g229420229422_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g229420229422_
                                                            _arg229289_))))
                                                      (__tmp236619
                                                       (let ((__tmp236620
                                                              (lambda (_g229424229427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g229425229429_)
                        (let ()
                          (declare (not safe))
                          (cons _g229424229427_ _g229425229429_)))))
                 (declare (not safe))
                 (foldr1 __tmp236620 '() _L229400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp236621
                                                          __tmp236619))))
                                           (if _$e229432_
                                               _$e229432_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L229399_
                                                  _arg229289_)))))
                                       _hd229320229394_
                                       _expr229311229386_
                                       _bind229312229388_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229291229326_ _g229292229329_)))))
                              (let ()
                                (declare (not safe))
                                (_g229291229326_ _g229292229329_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop229305229352_
                                                     _target229302229347_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229291229326_
                                                   _g229292229329_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229291229326_ _g229292229329_)))))
                              (let ()
                                (declare (not safe))
                                (_g229291229326_ _g229292229329_)))))
                      (let ()
                        (declare (not safe))
                        (_g229291229326_ _g229292229329_))))))
          (declare (not safe))
          (_g229290229435_ _stx229288_))))
    (define gxc#find-setq%
      (lambda (_stx229220_ _arg229221_)
        (let* ((_g229223229240_
                (lambda (_g229224229237_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229224229237_))))
               (_g229222229285_
                (lambda (_g229224229243_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229224229243_))
                      (let ((_e229229229245_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229224229243_))))
                        (let ((_hd229228229248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229229229245_)))
                              (_tl229227229250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229229229245_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229227229250_))
                              (let ((_e229232229253_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229227229250_))))
                                (let ((_hd229231229256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229232229253_)))
                                      (_tl229230229258_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229232229253_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229230229258_))
                                      (let ((_e229235229261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229230229258_))))
                                        (let ((_hd229234229264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229235229261_)))
                                              (_tl229233229266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229235229261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229233229266_))
                                              ((lambda (_L229269_ _L229270_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229269_
                                                    _arg229221_)))
                                               _hd229234229264_
                                               _hd229231229256_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229223229240_
                                                 _g229224229243_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229223229240_ _g229224229243_)))))
                              (let ()
                                (declare (not safe))
                                (_g229223229240_ _g229224229243_)))))
                      (let ()
                        (declare (not safe))
                        (_g229223229240_ _g229224229243_))))))
          (declare (not safe))
          (_g229222229285_ _stx229220_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx229164_ _ids229165_)
        (let* ((_g229167229180_
                (lambda (_g229168229177_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229168229177_))))
               (_g229166229217_
                (lambda (_g229168229183_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229168229183_))
                      (let ((_e229172229185_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229168229183_))))
                        (let ((_hd229171229188_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229172229185_)))
                              (_tl229170229190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229172229185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229170229190_))
                              (let ((_e229175229193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229170229190_))))
                                (let ((_hd229174229196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229175229193_)))
                                      (_tl229173229198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229175229193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229173229198_))
                                      ((lambda (_L229201_)
                                         (let ((__tmp236624
                                                (lambda (_g229212229214_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L229201_
                                                     _g229212229214_)))))
                                           (declare (not safe))
                                           (find __tmp236624 _ids229165_)))
                                       _hd229174229196_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229167229180_ _g229168229183_)))))
                              (let ()
                                (declare (not safe))
                                (_g229167229180_ _g229168229183_)))))
                      (let ()
                        (declare (not safe))
                        (_g229167229180_ _g229168229183_))))))
          (declare (not safe))
          (_g229166229217_ _stx229164_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx229088_ _ids229089_)
        (let* ((_g229091229108_
                (lambda (_g229092229105_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229092229105_))))
               (_g229090229161_
                (lambda (_g229092229111_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229092229111_))
                      (let ((_e229097229113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229092229111_))))
                        (let ((_hd229096229116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229097229113_)))
                              (_tl229095229118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229097229113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229095229118_))
                              (let ((_e229100229121_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229095229118_))))
                                (let ((_hd229099229124_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229100229121_)))
                                      (_tl229098229126_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229100229121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229098229126_))
                                      (let ((_e229103229129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229098229126_))))
                                        (let ((_hd229102229132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229103229129_)))
                                              (_tl229101229134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229103229129_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229101229134_))
                                              ((lambda (_L229137_ _L229138_)
                                                 (let ((_$e229158_
                                                        (let ((__tmp236625
                                                               (lambda (_g229153229155_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L229138_ _g229153229155_)))))
                  (declare (not safe))
                  (find __tmp236625 _ids229089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e229158_
                                                       _$e229158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L229137_
                                                          _ids229089_)))))
                                               _hd229102229132_
                                               _hd229099229124_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229091229108_
                                                 _g229092229111_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229091229108_ _g229092229111_)))))
                              (let ()
                                (declare (not safe))
                                (_g229091229108_ _g229092229111_)))))
                      (let ()
                        (declare (not safe))
                        (_g229091229108_ _g229092229111_))))))
          (declare (not safe))
          (_g229090229161_ _stx229088_))))))
