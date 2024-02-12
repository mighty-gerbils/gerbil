(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707742543)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl223607_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223607_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223607_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223607_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223607_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl223607_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl223603_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223603_ '%#declare gxc#xform-identity))
           _tbl223603_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl223599_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228421 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl223599_ __tmp228421))
           (let ((__tmp228422 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl223599_ __tmp228422))
           _tbl223599_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl223595_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223595_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223595_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223595_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223595_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl223595_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl223591_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228423 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223591_ __tmp228423))
           (let ((__tmp228424 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl223591_ __tmp228424))
           (let ()
             (declare (not safe))
             (table-set! _tbl223591_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223591_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223591_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223591_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223591_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl223591_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl223587_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228425 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223587_ __tmp228425))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl223587_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx223570_ . _args223572_)
        (let ((__tmp228427
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223572_)
                     (gxc#compile-e__0 _stx223570_)
                     (let ((_arg1223577_ (car _args223572_))
                           (_rest223579_ (cdr _args223572_)))
                       (if (null? _rest223579_)
                           (gxc#compile-e__1 _stx223570_ _arg1223577_)
                           (let ((_arg2223582_ (car _rest223579_))
                                 (_rest223584_ (cdr _rest223579_)))
                             (if (null? _rest223584_)
                                 (gxc#compile-e__2
                                  _stx223570_
                                  _arg1223577_
                                  _arg2223582_)
                                 (apply gxc#compile-e
                                        _stx223570_
                                        _arg1223577_
                                        _arg2223582_
                                        _rest223584_))))))))
              (__tmp228426 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp228427
           gxc#current-compile-methods
           __tmp228426))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl223567_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228428 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223567_ __tmp228428))
           (let ()
             (declare (not safe))
             (table-set! _tbl223567_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223567_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223567_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223567_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223567_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl223567_))))
    (define gxc#apply-collect-methods
      (lambda (_stx223550_ . _args223552_)
        (let ((__tmp228430
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223552_)
                     (gxc#compile-e__0 _stx223550_)
                     (let ((_arg1223557_ (car _args223552_))
                           (_rest223559_ (cdr _args223552_)))
                       (if (null? _rest223559_)
                           (gxc#compile-e__1 _stx223550_ _arg1223557_)
                           (let ((_arg2223562_ (car _rest223559_))
                                 (_rest223564_ (cdr _rest223559_)))
                             (if (null? _rest223564_)
                                 (gxc#compile-e__2
                                  _stx223550_
                                  _arg1223557_
                                  _arg2223562_)
                                 (apply gxc#compile-e
                                        _stx223550_
                                        _arg1223557_
                                        _arg2223562_
                                        _rest223564_))))))))
              (__tmp228429 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp228430
           gxc#current-compile-methods
           __tmp228429))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl223547_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228431 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223547_ __tmp228431))
           (let ()
             (declare (not safe))
             (table-set! _tbl223547_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223547_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223547_ '%#set! gxc#expression-subst-setq%))
           _tbl223547_))))
    (define gxc#apply-expression-subst
      (lambda (_stx223530_ . _args223532_)
        (let ((__tmp228433
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223532_)
                     (gxc#compile-e__0 _stx223530_)
                     (let ((_arg1223537_ (car _args223532_))
                           (_rest223539_ (cdr _args223532_)))
                       (if (null? _rest223539_)
                           (gxc#compile-e__1 _stx223530_ _arg1223537_)
                           (let ((_arg2223542_ (car _rest223539_))
                                 (_rest223544_ (cdr _rest223539_)))
                             (if (null? _rest223544_)
                                 (gxc#compile-e__2
                                  _stx223530_
                                  _arg1223537_
                                  _arg2223542_)
                                 (apply gxc#compile-e
                                        _stx223530_
                                        _arg1223537_
                                        _arg2223542_
                                        _rest223544_))))))))
              (__tmp228432 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp228433
           gxc#current-compile-methods
           __tmp228432))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl223527_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228434 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl223527_ __tmp228434))
           (let ()
             (declare (not safe))
             (table-set! _tbl223527_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223527_ '%#set! gxc#expression-subst*-setq%))
           _tbl223527_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx223510_ . _args223512_)
        (let ((__tmp228436
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223512_)
                     (gxc#compile-e__0 _stx223510_)
                     (let ((_arg1223517_ (car _args223512_))
                           (_rest223519_ (cdr _args223512_)))
                       (if (null? _rest223519_)
                           (gxc#compile-e__1 _stx223510_ _arg1223517_)
                           (let ((_arg2223522_ (car _rest223519_))
                                 (_rest223524_ (cdr _rest223519_)))
                             (if (null? _rest223524_)
                                 (gxc#compile-e__2
                                  _stx223510_
                                  _arg1223517_
                                  _arg2223522_)
                                 (apply gxc#compile-e
                                        _stx223510_
                                        _arg1223517_
                                        _arg2223522_
                                        _rest223524_))))))))
              (__tmp228435 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp228436
           gxc#current-compile-methods
           __tmp228435))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl223507_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228437 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl223507_ __tmp228437))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223507_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223507_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223507_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl223507_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl223503_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228438 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl223503_ __tmp228438))
           (let ()
             (declare (not safe))
             (table-set! _tbl223503_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223503_ '%#set! gxc#find-var-refs-setq%))
           _tbl223503_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx223486_ . _args223488_)
        (let ((__tmp228440
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223488_)
                     (gxc#compile-e__0 _stx223486_)
                     (let ((_arg1223493_ (car _args223488_))
                           (_rest223495_ (cdr _args223488_)))
                       (if (null? _rest223495_)
                           (gxc#compile-e__1 _stx223486_ _arg1223493_)
                           (let ((_arg2223498_ (car _rest223495_))
                                 (_rest223500_ (cdr _rest223495_)))
                             (if (null? _rest223500_)
                                 (gxc#compile-e__2
                                  _stx223486_
                                  _arg1223493_
                                  _arg2223498_)
                                 (apply gxc#compile-e
                                        _stx223486_
                                        _arg1223493_
                                        _arg2223498_
                                        _rest223500_))))))))
              (__tmp228439 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228440
           gxc#current-compile-methods
           __tmp228439))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl223483_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228441 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl223483_ __tmp228441))
           (let ()
             (declare (not safe))
             (table-set! _tbl223483_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223483_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl223483_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx223466_ . _args223468_)
        (let ((__tmp228443
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223468_)
                     (gxc#compile-e__0 _stx223466_)
                     (let ((_arg1223473_ (car _args223468_))
                           (_rest223475_ (cdr _args223468_)))
                       (if (null? _rest223475_)
                           (gxc#compile-e__1 _stx223466_ _arg1223473_)
                           (let ((_arg2223478_ (car _rest223475_))
                                 (_rest223480_ (cdr _rest223475_)))
                             (if (null? _rest223480_)
                                 (gxc#compile-e__2
                                  _stx223466_
                                  _arg1223473_
                                  _arg2223478_)
                                 (apply gxc#compile-e
                                        _stx223466_
                                        _arg1223473_
                                        _arg2223478_
                                        _rest223480_))))))))
              (__tmp228442 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228443
           gxc#current-compile-methods
           __tmp228442))))
    (define gxc#xform-identity
      (lambda (_stx223463_ . _args223464_) _stx223463_))
    (define gxc#xform-wrap-source
      (lambda (_stx223460_ _src-stx223461_)
        (let ((__tmp228444
               (let () (declare (not safe)) (gx#stx-source _src-stx223461_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx223460_ __tmp228444))))
    (define gxc#xform-apply-compile-e
      (lambda (_args223447_)
        (lambda (_stx223449_)
          (if (let () (declare (not safe)) (null? _args223447_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx223449_))
              (let ((_arg1223451_ (car _args223447_))
                    (_rest223453_ (cdr _args223447_)))
                (if (let () (declare (not safe)) (null? _rest223453_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx223449_ _arg1223451_))
                    (let ((_arg2223456_ (car _rest223453_))
                          (_rest223458_ (cdr _rest223453_)))
                      (if (let () (declare (not safe)) (null? _rest223458_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx223449_
                             _arg1223451_
                             _arg2223456_))
                          (apply gxc#compile-e
                                 _stx223449_
                                 _arg1223451_
                                 _arg2223456_
                                 _rest223458_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx223406_ . _args223407_)
        (let* ((_g223409223419_
                (lambda (_g223410223416_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223410223416_))))
               (_g223408223444_
                (lambda (_g223410223422_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223410223422_))
                      (let ((_e223414223424_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223410223422_))))
                        (let ((_hd223413223427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223414223424_)))
                              (_tl223412223429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223414223424_))))
                          ((lambda (_L223432_)
                             (let* ((_forms223442_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223407_))
                                          _L223432_))
                                    (__tmp228445
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms223442_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228445
                                _stx223406_)))
                           _tl223412223429_)))
                      (let ()
                        (declare (not safe))
                        (_g223409223419_ _g223410223422_))))))
          (declare (not safe))
          (_g223408223444_ _stx223406_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx223364_ . _args223365_)
        (let* ((_g223367223377_
                (lambda (_g223368223374_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223368223374_))))
               (_g223366223403_
                (lambda (_g223368223380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223368223380_))
                      (let ((_e223372223382_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223368223380_))))
                        (let ((_hd223371223385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223372223382_)))
                              (_tl223370223387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223372223382_))))
                          ((lambda (_L223390_)
                             (let ((__tmp228448
                                    (lambda ()
                                      (let* ((_forms223401_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args223365_))
                                                   _L223390_))
                                             (__tmp228449
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms223401_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp228449
                                         _stx223364_))))
                                   (__tmp228446
                                    (let ((__tmp228447
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp228447 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp228448
                                gx#current-expander-phi
                                __tmp228446)))
                           _tl223370223387_)))
                      (let ()
                        (declare (not safe))
                        (_g223367223377_ _g223368223380_))))))
          (declare (not safe))
          (_g223366223403_ _stx223364_))))
    (define gxc#xform-module%
      (lambda (_stx223292_ . _args223293_)
        (let* ((_g223295223309_
                (lambda (_g223296223306_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223296223306_))))
               (_g223294223361_
                (lambda (_g223296223312_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223296223312_))
                      (let ((_e223301223314_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223296223312_))))
                        (let ((_hd223300223317_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223301223314_)))
                              (_tl223299223319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223301223314_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223299223319_))
                              (let ((_e223304223322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223299223319_))))
                                (let ((_hd223303223325_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223304223322_)))
                                      (_tl223302223327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223304223322_))))
                                  ((lambda (_L223330_ _L223331_)
                                     (let* ((_ctx223344_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L223331_)))
                                            (_code223346_
                                             (##structure-ref
                                              _ctx223344_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code223358_
                                             (let ((__tmp228450
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args223293_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code223346_))
                                                          (let ((_arg1223349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args223293_))
                        (_rest223351_ (cdr _args223293_)))
                    (if (let () (declare (not safe)) (null? _rest223351_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code223346_ _arg1223349_))
                        (let ((_arg2223354_ (car _rest223351_))
                              (_rest223356_ (cdr _rest223351_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest223356_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code223346_
                                 _arg1223349_
                                 _arg2223354_))
                              (apply gxc#compile-e
                                     _code223346_
                                     _arg1223349_
                                     _arg2223354_
                                     _rest223356_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp228450
                                                gx#current-expander-context
                                                _ctx223344_))))
                                       (##structure-set!
                                        _ctx223344_
                                        _code223358_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp228451
                                              (let ((__tmp228452
                                                     (let ((__tmp228453
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code223358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L223331_ __tmp228453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp228452))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp228451
                                          _stx223292_))))
                                   _tl223302223327_
                                   _hd223303223325_)))
                              (let ()
                                (declare (not safe))
                                (_g223295223309_ _g223296223312_)))))
                      (let ()
                        (declare (not safe))
                        (_g223295223309_ _g223296223312_))))))
          (declare (not safe))
          (_g223294223361_ _stx223292_))))
    (define gxc#xform-define-values%
      (lambda (_stx223213_ . _args223214_)
        (let* ((_g223216223233_
                (lambda (_g223217223230_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223217223230_))))
               (_g223215223289_
                (lambda (_g223217223236_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223217223236_))
                      (let ((_e223222223238_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223217223236_))))
                        (let ((_hd223221223241_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223222223238_)))
                              (_tl223220223243_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223222223238_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223220223243_))
                              (let ((_e223225223246_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223220223243_))))
                                (let ((_hd223224223249_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223225223246_)))
                                      (_tl223223223251_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223225223246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223223223251_))
                                      (let ((_e223228223254_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223223223251_))))
                                        (let ((_hd223227223257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223228223254_)))
                                              (_tl223226223259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223228223254_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223226223259_))
                                              ((lambda (_L223262_ _L223263_)
                                                 (let* ((_expr223287_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223214_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223262_))
                     (let ((_arg1223278_ (car _args223214_))
                           (_rest223280_ (cdr _args223214_)))
                       (if (let () (declare (not safe)) (null? _rest223280_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223262_ _arg1223278_))
                           (let ((_arg2223283_ (car _rest223280_))
                                 (_rest223285_ (cdr _rest223280_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223285_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223262_
                                    _arg1223278_
                                    _arg2223283_))
                                 (apply gxc#compile-e
                                        _L223262_
                                        _arg1223278_
                                        _arg2223283_
                                        _rest223285_)))))))
                (__tmp228454
                 (let ((__tmp228455
                        (let ((__tmp228456
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223287_ '()))))
                          (declare (not safe))
                          (cons _L223263_ __tmp228456))))
                   (declare (not safe))
                   (cons '%#define-values __tmp228455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228454
                                                    _stx223213_)))
                                               _hd223227223257_
                                               _hd223224223249_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223216223233_
                                                 _g223217223236_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223216223233_ _g223217223236_)))))
                              (let ()
                                (declare (not safe))
                                (_g223216223233_ _g223217223236_)))))
                      (let ()
                        (declare (not safe))
                        (_g223216223233_ _g223217223236_))))))
          (declare (not safe))
          (_g223215223289_ _stx223213_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx223133_ . _args223134_)
        (let* ((_g223136223153_
                (lambda (_g223137223150_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223137223150_))))
               (_g223135223210_
                (lambda (_g223137223156_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223137223156_))
                      (let ((_e223142223158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223137223156_))))
                        (let ((_hd223141223161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223142223158_)))
                              (_tl223140223163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223142223158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223140223163_))
                              (let ((_e223145223166_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223140223163_))))
                                (let ((_hd223144223169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223145223166_)))
                                      (_tl223143223171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223145223166_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223143223171_))
                                      (let ((_e223148223174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223143223171_))))
                                        (let ((_hd223147223177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223148223174_)))
                                              (_tl223146223179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223148223174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223146223179_))
                                              ((lambda (_L223182_ _L223183_)
                                                 (let ((__tmp228459
                                                        (lambda ()
                                                          (let* ((_expr223208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args223134_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L223182_))
                              (let ((_arg1223199_ (car _args223134_))
                                    (_rest223201_ (cdr _args223134_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest223201_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L223182_
                                       _arg1223199_))
                                    (let ((_arg2223204_ (car _rest223201_))
                                          (_rest223206_ (cdr _rest223201_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest223206_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L223182_
                                             _arg1223199_
                                             _arg2223204_))
                                          (apply gxc#compile-e
                                                 _L223182_
                                                 _arg1223199_
                                                 _arg2223204_
                                                 _rest223206_)))))))
                         (__tmp228460
                          (let ((__tmp228461
                                 (let ((__tmp228462
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr223208_ '()))))
                                   (declare (not safe))
                                   (cons _L223183_ __tmp228462))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp228461))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp228460 _stx223133_))))
               (__tmp228457
                (let ((__tmp228458 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp228458 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp228459
                                                    gx#current-expander-phi
                                                    __tmp228457)))
                                               _hd223147223177_
                                               _hd223144223169_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223136223153_
                                                 _g223137223156_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223136223153_ _g223137223156_)))))
                              (let ()
                                (declare (not safe))
                                (_g223136223153_ _g223137223156_)))))
                      (let ()
                        (declare (not safe))
                        (_g223136223153_ _g223137223156_))))))
          (declare (not safe))
          (_g223135223210_ _stx223133_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx223054_ . _args223055_)
        (let* ((_g223057223074_
                (lambda (_g223058223071_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223058223071_))))
               (_g223056223130_
                (lambda (_g223058223077_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223058223077_))
                      (let ((_e223063223079_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223058223077_))))
                        (let ((_hd223062223082_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223063223079_)))
                              (_tl223061223084_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223063223079_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223061223084_))
                              (let ((_e223066223087_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223061223084_))))
                                (let ((_hd223065223090_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223066223087_)))
                                      (_tl223064223092_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223066223087_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223064223092_))
                                      (let ((_e223069223095_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223064223092_))))
                                        (let ((_hd223068223098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223069223095_)))
                                              (_tl223067223100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223069223095_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223067223100_))
                                              ((lambda (_L223103_ _L223104_)
                                                 (let* ((_expr223128_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223055_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223103_))
                     (let ((_arg1223119_ (car _args223055_))
                           (_rest223121_ (cdr _args223055_)))
                       (if (let () (declare (not safe)) (null? _rest223121_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223103_ _arg1223119_))
                           (let ((_arg2223124_ (car _rest223121_))
                                 (_rest223126_ (cdr _rest223121_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223126_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223103_
                                    _arg1223119_
                                    _arg2223124_))
                                 (apply gxc#compile-e
                                        _L223103_
                                        _arg1223119_
                                        _arg2223124_
                                        _rest223126_)))))))
                (__tmp228463
                 (let ((__tmp228464
                        (let ((__tmp228465
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223128_ '()))))
                          (declare (not safe))
                          (cons _L223104_ __tmp228465))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp228464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228463
                                                    _stx223054_)))
                                               _hd223068223098_
                                               _hd223065223090_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223057223074_
                                                 _g223058223077_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223057223074_ _g223058223077_)))))
                              (let ()
                                (declare (not safe))
                                (_g223057223074_ _g223058223077_)))))
                      (let ()
                        (declare (not safe))
                        (_g223057223074_ _g223058223077_))))))
          (declare (not safe))
          (_g223056223130_ _stx223054_))))
    (define gxc#xform-lambda%
      (lambda (_stx222997_ . _args222998_)
        (let* ((_g223000223014_
                (lambda (_g223001223011_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223001223011_))))
               (_g222999223051_
                (lambda (_g223001223017_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223001223017_))
                      (let ((_e223006223019_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223001223017_))))
                        (let ((_hd223005223022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223006223019_)))
                              (_tl223004223024_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223006223019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223004223024_))
                              (let ((_e223009223027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223004223024_))))
                                (let ((_hd223008223030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223009223027_)))
                                      (_tl223007223032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223009223027_))))
                                  ((lambda (_L223035_ _L223036_)
                                     (let* ((_body223049_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args222998_))
                                                  _L223035_))
                                            (__tmp228466
                                             (let ((__tmp228467
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L223036_
                                                            _body223049_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp228467))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp228466
                                        _stx222997_)))
                                   _tl223007223032_
                                   _hd223008223030_)))
                              (let ()
                                (declare (not safe))
                                (_g223000223014_ _g223001223017_)))))
                      (let ()
                        (declare (not safe))
                        (_g223000223014_ _g223001223017_))))))
          (declare (not safe))
          (_g222999223051_ _stx222997_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx222910_ . _args222911_)
        (letrec ((_clause-e222913_
                  (lambda (_clause222954_)
                    (let* ((_g222956222967_
                            (lambda (_g222957222964_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g222957222964_))))
                           (_g222955222994_
                            (lambda (_g222957222970_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g222957222970_))
                                  (let ((_e222962222972_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g222957222970_))))
                                    (let ((_hd222961222975_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222962222972_)))
                                          (_tl222960222977_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222962222972_))))
                                      ((lambda (_L222980_ _L222981_)
                                         (let ((_body222992_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args222911_))
                                                     _L222980_)))
                                           (declare (not safe))
                                           (cons _L222981_ _body222992_)))
                                       _tl222960222977_
                                       _hd222961222975_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222956222967_ _g222957222970_))))))
                      (declare (not safe))
                      (_g222955222994_ _clause222954_)))))
          (let* ((_g222915222925_
                  (lambda (_g222916222922_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g222916222922_))))
                 (_g222914222951_
                  (lambda (_g222916222928_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g222916222928_))
                        (let ((_e222920222930_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g222916222928_))))
                          (let ((_hd222919222933_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222920222930_)))
                                (_tl222918222935_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222920222930_))))
                            ((lambda (_L222938_)
                               (let* ((_clauses222949_
                                       (map _clause-e222913_ _L222938_))
                                      (__tmp228468
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses222949_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp228468
                                  _stx222910_)))
                             _tl222918222935_)))
                        (let ()
                          (declare (not safe))
                          (_g222915222925_ _g222916222928_))))))
            (declare (not safe))
            (_g222914222951_ _stx222910_)))))
    (define gxc#xform-let-values%
      (lambda (_stx222704_ . _args222705_)
        (let* ((_g222707222740_
                (lambda (_g222708222737_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222708222737_))))
               (_g222706222907_
                (lambda (_g222708222743_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222708222743_))
                      (let ((_e222715222745_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222708222743_))))
                        (let ((_hd222714222748_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222715222745_)))
                              (_tl222713222750_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222715222745_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222713222750_))
                              (let ((_e222718222753_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222713222750_))))
                                (let ((_hd222717222756_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222718222753_)))
                                      (_tl222716222758_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222718222753_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222717222756_))
                                      (let ((_g228469_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222717222756_
                                                '0))))
                                        (begin
                                          (let ((_g228470_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228469_)
                                                       (##vector-length
                                                        _g228469_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228470_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228470_)))
                                          (let ((_target222719222761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228469_ 0)))
                                                (_tl222721222763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228469_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222721222763_))
                                                (letrec ((_loop222722222766_
                                                          (lambda (_hd222720222769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222726222771_
                           _hd222727222773_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222720222769_))
                        (let ((_e222723222776_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222720222769_))))
                          (let ((_lp-hd222724222779_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222723222776_)))
                                (_lp-tl222725222781_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222723222776_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222724222779_))
                                (let ((_e222732222784_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222724222779_))))
                                  (let ((_hd222731222787_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222732222784_)))
                                        (_tl222730222789_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222732222784_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222730222789_))
                                        (let ((_e222735222792_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222730222789_))))
                                          (let ((_hd222734222795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222735222792_)))
                                                (_tl222733222797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222735222792_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222733222797_))
                                                (let ((__tmp228483
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222734222795_
                                                               _expr222726222771_)))
                                                      (__tmp228482
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222731222787_
                                                               _hd222727222773_))))
                                                  (declare (not safe))
                                                  (_loop222722222766_
                                                   _lp-tl222725222781_
                                                   __tmp228483
                                                   __tmp228482))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222707222740_
                                                   _g222708222743_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222707222740_ _g222708222743_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222707222740_ _g222708222743_)))))
                        (let ((_expr222728222800_ (reverse _expr222726222771_))
                              (_hd222729222802_ (reverse _hd222727222773_)))
                          ((lambda (_L222805_ _L222806_ _L222807_ _L222808_)
                             (let* ((_g222827222843_
                                     (lambda (_g222828222840_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g222828222840_))))
                                    (_g222826222897_
                                     (lambda (_g222828222846_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g222828222846_))
                                           (let ((_g228471_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g222828222846_
                                                     '0))))
                                             (begin
                                               (let ((_g228472_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g228471_)
                                                            (##vector-length
                                                             _g228471_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g228472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g228472_)))
                                               (let ((_target222830222848_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228471_
                                                         0)))
                                                     (_tl222832222850_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228471_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222832222850_))
                                                     (letrec ((_loop222833222853_
                                                               (lambda (_hd222831222856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr222837222858_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd222831222856_))
                             (let ((_e222834222861_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd222831222856_))))
                               (let ((_lp-hd222835222864_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e222834222861_)))
                                     (_lp-tl222836222866_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e222834222861_))))
                                 (let ((__tmp228479
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd222835222864_
                                                _expr222837222858_))))
                                   (declare (not safe))
                                   (_loop222833222853_
                                    _lp-tl222836222866_
                                    __tmp228479))))
                             (let ((_expr222838222869_
                                    (reverse _expr222837222858_)))
                               ((lambda (_L222872_)
                                  (let ()
                                    (let* ((_body222885_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args222705_))
                                                 _L222805_))
                                           (__tmp228473
                                            (let ((__tmp228474
                                                   (let ((__tmp228475
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L222872_
                                                               _L222807_))
                                                            (let ((__tmp228476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222886222890_
                                    _g222887222892_
                                    _g222888222894_)
                             (let ((__tmp228477
                                    (let ((__tmp228478
                                           (let ()
                                             (declare (not safe))
                                             (cons _g222886222890_ '()))))
                                      (declare (not safe))
                                      (cons _g222887222892_ __tmp228478))))
                               (declare (not safe))
                               (cons __tmp228477 _g222888222894_)))))
                      (declare (not safe))
                      (foldr2 __tmp228476 '() _L222872_ _L222807_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp228475
                                                           _body222885_))))
                                              (declare (not safe))
                                              (cons _L222808_ __tmp228474))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp228473
                                       _stx222704_))))
                                _expr222838222869_))))))
               (let ()
                 (declare (not safe))
                 (_loop222833222853_ _target222830222848_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g222827222843_
                                                        _g222828222846_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g222827222843_
                                              _g222828222846_)))))
                                    (__tmp228480
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222705_))
                                          (let ((__tmp228481
                                                 (lambda (_g222899222902_
                                                          _g222900222904_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g222899222902_
                                                           _g222900222904_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp228481
                                                    '()
                                                    _L222806_)))))
                               (declare (not safe))
                               (_g222826222897_ __tmp228480)))
                           _tl222716222758_
                           _expr222728222800_
                           _hd222729222802_
                           _hd222714222748_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222722222766_
                                                     _target222719222761_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222707222740_
                                                   _g222708222743_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222707222740_ _g222708222743_)))))
                              (let ()
                                (declare (not safe))
                                (_g222707222740_ _g222708222743_)))))
                      (let ()
                        (declare (not safe))
                        (_g222707222740_ _g222708222743_))))))
          (declare (not safe))
          (_g222706222907_ _stx222704_))))
    (define gxc#xform-operands
      (lambda (_stx222660_ . _args222661_)
        (let* ((_g222663222674_
                (lambda (_g222664222671_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222664222671_))))
               (_g222662222701_
                (lambda (_g222664222677_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222664222677_))
                      (let ((_e222669222679_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222664222677_))))
                        (let ((_hd222668222682_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222669222679_)))
                              (_tl222667222684_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222669222679_))))
                          ((lambda (_L222687_ _L222688_)
                             (let* ((_rands222699_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222661_))
                                          _L222687_))
                                    (__tmp228484
                                     (let ()
                                       (declare (not safe))
                                       (cons _L222688_ _rands222699_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228484
                                _stx222660_)))
                           _tl222667222684_
                           _hd222668222682_)))
                      (let ()
                        (declare (not safe))
                        (_g222663222674_ _g222664222677_))))))
          (declare (not safe))
          (_g222662222701_ _stx222660_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx222581_ . _args222582_)
        (let* ((_g222584222601_
                (lambda (_g222585222598_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222585222598_))))
               (_g222583222657_
                (lambda (_g222585222604_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222585222604_))
                      (let ((_e222590222606_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222585222604_))))
                        (let ((_hd222589222609_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222590222606_)))
                              (_tl222588222611_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222590222606_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222588222611_))
                              (let ((_e222593222614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222588222611_))))
                                (let ((_hd222592222617_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222593222614_)))
                                      (_tl222591222619_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222593222614_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222591222619_))
                                      (let ((_e222596222622_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222591222619_))))
                                        (let ((_hd222595222625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222596222622_)))
                                              (_tl222594222627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222596222622_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222594222627_))
                                              ((lambda (_L222630_ _L222631_)
                                                 (let* ((_expr222655_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args222582_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L222630_))
                     (let ((_arg1222646_ (car _args222582_))
                           (_rest222648_ (cdr _args222582_)))
                       (if (let () (declare (not safe)) (null? _rest222648_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L222630_ _arg1222646_))
                           (let ((_arg2222651_ (car _rest222648_))
                                 (_rest222653_ (cdr _rest222648_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest222653_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L222630_
                                    _arg1222646_
                                    _arg2222651_))
                                 (apply gxc#compile-e
                                        _L222630_
                                        _arg1222646_
                                        _arg2222651_
                                        _rest222653_)))))))
                (__tmp228485
                 (let ((__tmp228486
                        (let ((__tmp228487
                               (let ()
                                 (declare (not safe))
                                 (cons _expr222655_ '()))))
                          (declare (not safe))
                          (cons _L222631_ __tmp228487))))
                   (declare (not safe))
                   (cons '%#set! __tmp228486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228485
                                                    _stx222581_)))
                                               _hd222595222625_
                                               _hd222592222617_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222584222601_
                                                 _g222585222604_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222584222601_ _g222585222604_)))))
                              (let ()
                                (declare (not safe))
                                (_g222584222601_ _g222585222604_)))))
                      (let ()
                        (declare (not safe))
                        (_g222584222601_ _g222585222604_))))))
          (declare (not safe))
          (_g222583222657_ _stx222581_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx222512_)
        (let* ((_g222514222531_
                (lambda (_g222515222528_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222515222528_))))
               (_g222513222578_
                (lambda (_g222515222534_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222515222534_))
                      (let ((_e222520222536_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222515222534_))))
                        (let ((_hd222519222539_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222520222536_)))
                              (_tl222518222541_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222520222536_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222518222541_))
                              (let ((_e222523222544_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222518222541_))))
                                (let ((_hd222522222547_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222523222544_)))
                                      (_tl222521222549_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222523222544_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222521222549_))
                                      (let ((_e222526222552_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222521222549_))))
                                        (let ((_hd222525222555_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222526222552_)))
                                              (_tl222524222557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222526222552_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222524222557_))
                                              ((lambda (_L222560_ _L222561_)
                                                 (let ((_sym222576_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L222561_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym222576_))
                                                   (let ((__tmp228488
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp228488
                                                      _sym222576_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L222560_))))
                                               _hd222525222555_
                                               _hd222522222547_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222514222531_
                                                 _g222515222534_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222514222531_ _g222515222534_)))))
                              (let ()
                                (declare (not safe))
                                (_g222514222531_ _g222515222534_)))))
                      (let ()
                        (declare (not safe))
                        (_g222514222531_ _g222515222534_))))))
          (declare (not safe))
          (_g222513222578_ _stx222512_))))
    (define gxc#collect-methods-call%
      (lambda (_stx222066_)
        (let* ((___stx228178228179_ _stx222066_)
               (_g222070222172_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx228178228179_)))))
          (let ((___kont228180228181_
                 (lambda (_L222462_ _L222463_ _L222464_ _L222465_ _L222466_)
                   (let ((__tmp228489
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222463_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228489))))
                (___kont228182228183_
                 (lambda (_L222288_ _L222289_ _L222290_ _L222291_)
                   (let ((__tmp228490
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222288_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228490))))
                (___kont228184228185_ (lambda () '#!void)))
            (let ((___match228313228314_
                   (lambda (_e222079222334_
                            _hd222078222337_
                            _tl222077222339_
                            _e222082222342_
                            _hd222081222345_
                            _tl222080222347_
                            _e222085222350_
                            _hd222084222353_
                            _tl222083222355_
                            _e222088222358_
                            _hd222087222361_
                            _tl222086222363_
                            _e222091222366_
                            _hd222090222369_
                            _tl222089222371_
                            _e222094222374_
                            _hd222093222377_
                            _tl222092222379_
                            _e222097222382_
                            _hd222096222385_
                            _tl222095222387_
                            _e222100222390_
                            _hd222099222393_
                            _tl222098222395_
                            _e222103222398_
                            _hd222102222401_
                            _tl222101222403_
                            _e222106222406_
                            _hd222105222409_
                            _tl222104222411_
                            _e222109222414_
                            _hd222108222417_
                            _tl222107222419_
                            _e222112222422_
                            _hd222111222425_
                            _tl222110222427_
                            _e222115222430_
                            _hd222114222433_
                            _tl222113222435_
                            _e222118222438_
                            _hd222117222441_
                            _tl222116222443_
                            _e222121222446_
                            _hd222120222449_
                            _tl222119222451_
                            _e222124222454_
                            _hd222123222457_
                            _tl222122222459_)
                     (let ((_L222462_ _hd222123222457_)
                           (_L222463_ _hd222114222433_)
                           (_L222464_ _hd222105222409_)
                           (_L222465_ _hd222096222385_)
                           (_L222466_ _hd222087222361_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L222466_
                              'bind-method!))
                           (___kont228180228181_
                            _L222462_
                            _L222463_
                            _L222464_
                            _L222465_
                            _L222466_)
                           (___kont228184228185_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx228178228179_))
                  (let ((_e222079222334_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx228178228179_))))
                    (let ((_tl222077222339_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222079222334_)))
                          (_hd222078222337_
                           (let ()
                             (declare (not safe))
                             (##car _e222079222334_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222077222339_))
                          (let ((_e222082222342_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222077222339_))))
                            (let ((_tl222080222347_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222082222342_)))
                                  (_hd222081222345_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222082222342_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222081222345_))
                                  (let ((_e222085222350_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222081222345_))))
                                    (let ((_tl222083222355_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222085222350_)))
                                          (_hd222084222353_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222085222350_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd222084222353_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd222084222353_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222083222355_))
                                                  (let ((_e222088222358_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222083222355_))))
                                                    (let ((_tl222086222363_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222088222358_)))
                                                          (_hd222087222361_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222088222358_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222086222363_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222080222347_))
                      (let ((_e222091222366_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222080222347_))))
                        (let ((_tl222089222371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222091222366_)))
                              (_hd222090222369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222091222366_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222090222369_))
                              (let ((_e222094222374_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222090222369_))))
                                (let ((_tl222092222379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222094222374_)))
                                      (_hd222093222377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222094222374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd222093222377_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd222093222377_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222092222379_))
                                              (let ((_e222097222382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222092222379_))))
                                                (let ((_tl222095222387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222097222382_)))
                                                      (_hd222096222385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222097222382_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222095222387_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl222089222371_))
                                                          (let ((_e222100222390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl222089222371_))))
                    (let ((_tl222098222395_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222100222390_)))
                          (_hd222099222393_
                           (let ()
                             (declare (not safe))
                             (##car _e222100222390_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd222099222393_))
                          (let ((_e222103222398_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd222099222393_))))
                            (let ((_tl222101222403_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222103222398_)))
                                  (_hd222102222401_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222103222398_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd222102222401_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd222102222401_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl222101222403_))
                                          (let ((_e222106222406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl222101222403_))))
                                            (let ((_tl222104222411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222106222406_)))
                                                  (_hd222105222409_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222106222406_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl222104222411_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222098222395_))
                                                      (let ((_e222109222414_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222098222395_))))
                (let ((_tl222107222419_
                       (let () (declare (not safe)) (##cdr _e222109222414_)))
                      (_hd222108222417_
                       (let () (declare (not safe)) (##car _e222109222414_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222108222417_))
                      (let ((_e222112222422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222108222417_))))
                        (let ((_tl222110222427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222112222422_)))
                              (_hd222111222425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222112222422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222111222425_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222111222425_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222110222427_))
                                      (let ((_e222115222430_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222110222427_))))
                                        (let ((_tl222113222435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222115222430_)))
                                              (_hd222114222433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222115222430_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222113222435_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222107222419_))
                                                  (let ((_e222118222438_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222107222419_))))
                                                    (let ((_tl222116222443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222118222438_)))
                                                          (_hd222117222441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222118222438_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222117222441_))
                                                          (let ((_e222121222446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222117222441_))))
                    (let ((_tl222119222451_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222121222446_)))
                          (_hd222120222449_
                           (let ()
                             (declare (not safe))
                             (##car _e222121222446_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222120222449_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd222120222449_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222119222451_))
                                  (let ((_e222124222454_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222119222451_))))
                                    (let ((_tl222122222459_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222124222454_)))
                                          (_hd222123222457_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222124222454_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222122222459_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222116222443_))
                                              (___match228313228314_
                                               _e222079222334_
                                               _hd222078222337_
                                               _tl222077222339_
                                               _e222082222342_
                                               _hd222081222345_
                                               _tl222080222347_
                                               _e222085222350_
                                               _hd222084222353_
                                               _tl222083222355_
                                               _e222088222358_
                                               _hd222087222361_
                                               _tl222086222363_
                                               _e222091222366_
                                               _hd222090222369_
                                               _tl222089222371_
                                               _e222094222374_
                                               _hd222093222377_
                                               _tl222092222379_
                                               _e222097222382_
                                               _hd222096222385_
                                               _tl222095222387_
                                               _e222100222390_
                                               _hd222099222393_
                                               _tl222098222395_
                                               _e222103222398_
                                               _hd222102222401_
                                               _tl222101222403_
                                               _e222106222406_
                                               _hd222105222409_
                                               _tl222104222411_
                                               _e222109222414_
                                               _hd222108222417_
                                               _tl222107222419_
                                               _e222112222422_
                                               _hd222111222425_
                                               _tl222110222427_
                                               _e222115222430_
                                               _hd222114222433_
                                               _tl222113222435_
                                               _e222118222438_
                                               _hd222117222441_
                                               _tl222116222443_
                                               _e222121222446_
                                               _hd222120222449_
                                               _tl222119222451_
                                               _e222124222454_
                                               _hd222123222457_
                                               _tl222122222459_)
                                              (___kont228184228185_))
                                          (___kont228184228185_))))
                                  (___kont228184228185_))
                              (___kont228184228185_))
                          (___kont228184228185_))))
                  (___kont228184228185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222107222419_))
                                                      (if (let ((__tmp228491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp228491 'bind-method!))
                  (let ((_L222288_ _hd222114222433_)
                        (_L222289_ _hd222105222409_)
                        (_L222290_ _hd222096222385_)
                        (_L222291_ _hd222087222361_))
                    (___kont228182228183_
                     _L222288_
                     _L222289_
                     _L222290_
                     _L222291_))
                  (___kont228184228185_))
              (___kont228184228185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228184228185_))))
                                      (___kont228184228185_))
                                  (___kont228184228185_))
                              (___kont228184228185_))))
                      (___kont228184228185_))))
              (___kont228184228185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228184228185_))))
                                          (___kont228184228185_))
                                      (___kont228184228185_))
                                  (___kont228184228185_))))
                          (___kont228184228185_))))
                  (___kont228184228185_))
              (___kont228184228185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228184228185_))
                                          (___kont228184228185_))
                                      (___kont228184228185_))))
                              (___kont228184228185_))))
                      (___kont228184228185_))
                  (___kont228184228185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228184228185_))
                                              (___kont228184228185_))
                                          (___kont228184228185_))))
                                  (___kont228184228185_))))
                          (___kont228184228185_))))
                  (___kont228184228185_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx222013_ _id222014_ _new-id222015_)
        (let* ((_g222017222030_
                (lambda (_g222018222027_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222018222027_))))
               (_g222016222063_
                (lambda (_g222018222033_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222018222033_))
                      (let ((_e222022222035_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222018222033_))))
                        (let ((_hd222021222038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222022222035_)))
                              (_tl222020222040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222022222035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222020222040_))
                              (let ((_e222025222043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222020222040_))))
                                (let ((_hd222024222046_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222025222043_)))
                                      (_tl222023222048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222025222043_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222023222048_))
                                      ((lambda (_L222051_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L222051_
                                                _id222014_))
                                             (let ((__tmp228492
                                                    (let ((__tmp228493
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id222015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp228493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp228492
                                                _stx222013_))
                                             _stx222013_))
                                       _hd222024222046_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222017222030_ _g222018222033_)))))
                              (let ()
                                (declare (not safe))
                                (_g222017222030_ _g222018222033_)))))
                      (let ()
                        (declare (not safe))
                        (_g222017222030_ _g222018222033_))))))
          (declare (not safe))
          (_g222016222063_ _stx222013_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx221954_ _subst221955_)
        (let* ((_g221957221970_
                (lambda (_g221958221967_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221958221967_))))
               (_g221956222010_
                (lambda (_g221958221973_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221958221973_))
                      (let ((_e221962221975_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221958221973_))))
                        (let ((_hd221961221978_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221962221975_)))
                              (_tl221960221980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221962221975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221960221980_))
                              (let ((_e221965221983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221960221980_))))
                                (let ((_hd221964221986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221965221983_)))
                                      (_tl221963221988_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221965221983_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221963221988_))
                                      ((lambda (_L221991_)
                                         (let ((_$e222005_
                                                (let ((__tmp228494
                                                       (lambda (_sub222003_)
                                                         (let ((__tmp228495
                                                                (car _sub222003_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L221991_
                                                            __tmp228495)))))
                                                  (declare (not safe))
                                                  (find __tmp228494
                                                        _subst221955_))))
                                           (if _$e222005_
                                               ((lambda (_sub222008_)
                                                  (let ((__tmp228496
                                                         (let ((__tmp228497
                                                                (let ((__tmp228498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub222008_)))
                          (declare (not safe))
                          (cons __tmp228498 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp228497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp228496
                                                     _stx221954_)))
                                                _$e222005_)
                                               _stx221954_)))
                                       _hd221964221986_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221957221970_ _g221958221973_)))))
                              (let ()
                                (declare (not safe))
                                (_g221957221970_ _g221958221973_)))))
                      (let ()
                        (declare (not safe))
                        (_g221957221970_ _g221958221973_))))))
          (declare (not safe))
          (_g221956222010_ _stx221954_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx221882_ _id221883_ _new-id221884_)
        (let* ((_g221886221903_
                (lambda (_g221887221900_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221887221900_))))
               (_g221885221951_
                (lambda (_g221887221906_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221887221906_))
                      (let ((_e221892221908_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221887221906_))))
                        (let ((_hd221891221911_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221892221908_)))
                              (_tl221890221913_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221892221908_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221890221913_))
                              (let ((_e221895221916_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221890221913_))))
                                (let ((_hd221894221919_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221895221916_)))
                                      (_tl221893221921_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221895221916_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221893221921_))
                                      (let ((_e221898221924_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221893221921_))))
                                        (let ((_hd221897221927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221898221924_)))
                                              (_tl221896221929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221898221924_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221896221929_))
                                              ((lambda (_L221932_ _L221933_)
                                                 (let ((_new-expr221948_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L221932_
                                                           _id221883_
                                                           _new-id221884_)))
                                                       (_new-xid221949_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L221933_
                                                               _id221883_))
                                                            _new-id221884_
                                                            _L221933_)))
                                                   (let ((__tmp228499
                                                          (let ((__tmp228500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228501
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221948_ '()))))
                           (declare (not safe))
                           (cons _new-xid221949_ __tmp228501))))
                    (declare (not safe))
                    (cons '%#set! __tmp228500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228499
                                                      _stx221882_))))
                                               _hd221897221927_
                                               _hd221894221919_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221886221903_
                                                 _g221887221906_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221886221903_ _g221887221906_)))))
                              (let ()
                                (declare (not safe))
                                (_g221886221903_ _g221887221906_)))))
                      (let ()
                        (declare (not safe))
                        (_g221886221903_ _g221887221906_))))))
          (declare (not safe))
          (_g221885221951_ _stx221882_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx221806_ _subst221807_)
        (let* ((_g221809221826_
                (lambda (_g221810221823_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221810221823_))))
               (_g221808221879_
                (lambda (_g221810221829_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221810221829_))
                      (let ((_e221815221831_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221810221829_))))
                        (let ((_hd221814221834_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221815221831_)))
                              (_tl221813221836_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221815221831_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221813221836_))
                              (let ((_e221818221839_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221813221836_))))
                                (let ((_hd221817221842_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221818221839_)))
                                      (_tl221816221844_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221818221839_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221816221844_))
                                      (let ((_e221821221847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221816221844_))))
                                        (let ((_hd221820221850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221821221847_)))
                                              (_tl221819221852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221821221847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221819221852_))
                                              ((lambda (_L221855_ _L221856_)
                                                 (let ((_new-expr221876_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L221855_
                                                           _subst221807_)))
                                                       (_new-xid221877_
                                                        (let ((_$e221873_
                                                               (let ((__tmp228502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub221871_)
                                (let ((__tmp228503 (car _sub221871_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L221856_
                                   __tmp228503)))))
                         (declare (not safe))
                         (find __tmp228502 _subst221807_))))
                  (if _$e221873_ (cdr _$e221873_) _L221856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp228504
                                                          (let ((__tmp228505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228506
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221876_ '()))))
                           (declare (not safe))
                           (cons _new-xid221877_ __tmp228506))))
                    (declare (not safe))
                    (cons '%#set! __tmp228505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228504
                                                      _stx221806_))))
                                               _hd221820221850_
                                               _hd221817221842_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221809221826_
                                                 _g221810221829_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221809221826_ _g221810221829_)))))
                              (let ()
                                (declare (not safe))
                                (_g221809221826_ _g221810221829_)))))
                      (let ()
                        (declare (not safe))
                        (_g221809221826_ _g221810221829_))))))
          (declare (not safe))
          (_g221808221879_ _stx221806_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx221752_ _ht221753_)
        (let* ((_g221755221768_
                (lambda (_g221756221765_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221756221765_))))
               (_g221754221803_
                (lambda (_g221756221771_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221756221771_))
                      (let ((_e221760221773_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221756221771_))))
                        (let ((_hd221759221776_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221760221773_)))
                              (_tl221758221778_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221760221773_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221758221778_))
                              (let ((_e221763221781_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221758221778_))))
                                (let ((_hd221762221784_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221763221781_)))
                                      (_tl221761221786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221763221781_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221761221786_))
                                      ((lambda (_L221789_)
                                         (let ((_eid221801_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L221789_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht221753_
                                            _eid221801_
                                            1+
                                            '0)))
                                       _hd221762221784_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221755221768_ _g221756221771_)))))
                              (let ()
                                (declare (not safe))
                                (_g221755221768_ _g221756221771_)))))
                      (let ()
                        (declare (not safe))
                        (_g221755221768_ _g221756221771_))))))
          (declare (not safe))
          (_g221754221803_ _stx221752_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx221682_ _ht221683_)
        (let* ((_g221685221702_
                (lambda (_g221686221699_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221686221699_))))
               (_g221684221749_
                (lambda (_g221686221705_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221686221705_))
                      (let ((_e221691221707_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221686221705_))))
                        (let ((_hd221690221710_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221691221707_)))
                              (_tl221689221712_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221691221707_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221689221712_))
                              (let ((_e221694221715_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221689221712_))))
                                (let ((_hd221693221718_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221694221715_)))
                                      (_tl221692221720_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221694221715_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221692221720_))
                                      (let ((_e221697221723_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221692221720_))))
                                        (let ((_hd221696221726_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221697221723_)))
                                              (_tl221695221728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221697221723_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221695221728_))
                                              ((lambda (_L221731_ _L221732_)
                                                 (let ((_eid221747_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L221732_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht221683_
                                                      _eid221747_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L221731_
                                                      _ht221683_))))
                                               _hd221696221726_
                                               _hd221693221718_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221685221702_
                                                 _g221686221705_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221685221702_ _g221686221705_)))))
                              (let ()
                                (declare (not safe))
                                (_g221685221702_ _g221686221705_)))))
                      (let ()
                        (declare (not safe))
                        (_g221685221702_ _g221686221705_))))))
          (declare (not safe))
          (_g221684221749_ _stx221682_))))
    (define gxc#find-body%
      (lambda (_stx221595_ _arg221596_)
        (let* ((_g221598221617_
                (lambda (_g221599221614_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221599221614_))))
               (_g221597221679_
                (lambda (_g221599221620_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221599221620_))
                      (let ((_e221603221622_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221599221620_))))
                        (let ((_hd221602221625_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221603221622_)))
                              (_tl221601221627_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221603221622_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221601221627_))
                              (let ((_g228507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221601221627_
                                        '0))))
                                (begin
                                  (let ((_g228508_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228507_)
                                               (##vector-length _g228507_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228508_ 2)))
                                        (error "Context expects 2 values"
                                               _g228508_)))
                                  (let ((_target221604221630_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228507_ 0)))
                                        (_tl221606221632_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228507_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221606221632_))
                                        (letrec ((_loop221607221635_
                                                  (lambda (_hd221605221638_
                                                           _expr221611221640_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221605221638_))
                                                        (let ((_e221608221643_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221605221638_))))
                  (let ((_lp-hd221609221646_
                         (let () (declare (not safe)) (##car _e221608221643_)))
                        (_lp-tl221610221648_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221608221643_))))
                    (let ((__tmp228512
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd221609221646_ _expr221611221640_))))
                      (declare (not safe))
                      (_loop221607221635_ _lp-tl221610221648_ __tmp228512))))
                (let ((_expr221612221651_ (reverse _expr221611221640_)))
                  ((lambda (_L221654_)
                     (let ((__tmp228511
                            (lambda (_g221667221669_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221667221669_
                                 _arg221596_))))
                           (__tmp228509
                            (let ((__tmp228510
                                   (lambda (_g221671221674_ _g221672221676_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221671221674_
                                             _g221672221676_)))))
                              (declare (not safe))
                              (foldr1 __tmp228510 '() _L221654_))))
                       (declare (not safe))
                       (ormap1 __tmp228511 __tmp228509)))
                   _expr221612221651_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221607221635_
                                             _target221604221630_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221598221617_
                                           _g221599221620_))))))
                              (let ()
                                (declare (not safe))
                                (_g221598221617_ _g221599221620_)))))
                      (let ()
                        (declare (not safe))
                        (_g221598221617_ _g221599221620_))))))
          (declare (not safe))
          (_g221597221679_ _stx221595_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx221527_ _arg221528_)
        (let* ((_g221530221547_
                (lambda (_g221531221544_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221531221544_))))
               (_g221529221592_
                (lambda (_g221531221550_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221531221550_))
                      (let ((_e221536221552_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221531221550_))))
                        (let ((_hd221535221555_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221536221552_)))
                              (_tl221534221557_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221536221552_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221534221557_))
                              (let ((_e221539221560_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221534221557_))))
                                (let ((_hd221538221563_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221539221560_)))
                                      (_tl221537221565_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221539221560_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221537221565_))
                                      (let ((_e221542221568_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221537221565_))))
                                        (let ((_hd221541221571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221542221568_)))
                                              (_tl221540221573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221542221568_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221540221573_))
                                              ((lambda (_L221576_ _L221577_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221576_
                                                    _arg221528_)))
                                               _hd221541221571_
                                               _hd221538221563_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221530221547_
                                                 _g221531221550_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221530221547_ _g221531221550_)))))
                              (let ()
                                (declare (not safe))
                                (_g221530221547_ _g221531221550_)))))
                      (let ()
                        (declare (not safe))
                        (_g221530221547_ _g221531221550_))))))
          (declare (not safe))
          (_g221529221592_ _stx221527_))))
    (define gxc#find-lambda%
      (lambda (_stx221459_ _arg221460_)
        (let* ((_g221462221479_
                (lambda (_g221463221476_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221463221476_))))
               (_g221461221524_
                (lambda (_g221463221482_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221463221482_))
                      (let ((_e221468221484_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221463221482_))))
                        (let ((_hd221467221487_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221468221484_)))
                              (_tl221466221489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221468221484_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221466221489_))
                              (let ((_e221471221492_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221466221489_))))
                                (let ((_hd221470221495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221471221492_)))
                                      (_tl221469221497_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221471221492_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221469221497_))
                                      (let ((_e221474221500_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221469221497_))))
                                        (let ((_hd221473221503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221474221500_)))
                                              (_tl221472221505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221474221500_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221472221505_))
                                              ((lambda (_L221508_ _L221509_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221508_
                                                    _arg221460_)))
                                               _hd221473221503_
                                               _hd221470221495_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221462221479_
                                                 _g221463221482_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221462221479_ _g221463221482_)))))
                              (let ()
                                (declare (not safe))
                                (_g221462221479_ _g221463221482_)))))
                      (let ()
                        (declare (not safe))
                        (_g221462221479_ _g221463221482_))))))
          (declare (not safe))
          (_g221461221524_ _stx221459_))))
    (define gxc#find-case-lambda%
      (lambda (_stx221341_ _arg221342_)
        (let* ((_g221344221372_
                (lambda (_g221345221369_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221345221369_))))
               (_g221343221456_
                (lambda (_g221345221375_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221345221375_))
                      (let ((_e221350221377_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221345221375_))))
                        (let ((_hd221349221380_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221350221377_)))
                              (_tl221348221382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221350221377_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221348221382_))
                              (let ((_g228513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221348221382_
                                        '0))))
                                (begin
                                  (let ((_g228514_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228513_)
                                               (##vector-length _g228513_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228514_ 2)))
                                        (error "Context expects 2 values"
                                               _g228514_)))
                                  (let ((_target221351221385_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228513_ 0)))
                                        (_tl221353221387_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228513_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221353221387_))
                                        (letrec ((_loop221354221390_
                                                  (lambda (_hd221352221393_
                                                           _body221358221395_
                                                           _hd221359221397_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221352221393_))
                                                        (let ((_e221355221400_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221352221393_))))
                  (let ((_lp-hd221356221403_
                         (let () (declare (not safe)) (##car _e221355221400_)))
                        (_lp-tl221357221405_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221355221400_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd221356221403_))
                        (let ((_e221364221408_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd221356221403_))))
                          (let ((_hd221363221411_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221364221408_)))
                                (_tl221362221413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221364221408_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221362221413_))
                                (let ((_e221367221416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221362221413_))))
                                  (let ((_hd221366221419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221367221416_)))
                                        (_tl221365221421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221367221416_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221365221421_))
                                        (let ((__tmp228519
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221366221419_
                                                       _body221358221395_)))
                                              (__tmp228518
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221363221411_
                                                       _hd221359221397_))))
                                          (declare (not safe))
                                          (_loop221354221390_
                                           _lp-tl221357221405_
                                           __tmp228519
                                           __tmp228518))
                                        (let ()
                                          (declare (not safe))
                                          (_g221344221372_ _g221345221375_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221344221372_ _g221345221375_)))))
                        (let ()
                          (declare (not safe))
                          (_g221344221372_ _g221345221375_)))))
                (let ((_body221360221424_ (reverse _body221358221395_))
                      (_hd221361221426_ (reverse _hd221359221397_)))
                  ((lambda (_L221429_ _L221430_)
                     (let ((__tmp228517
                            (lambda (_g221444221446_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221444221446_
                                 _arg221342_))))
                           (__tmp228515
                            (let ((__tmp228516
                                   (lambda (_g221448221451_ _g221449221453_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221448221451_
                                             _g221449221453_)))))
                              (declare (not safe))
                              (foldr1 __tmp228516 '() _L221429_))))
                       (declare (not safe))
                       (ormap1 __tmp228517 __tmp228515)))
                   _body221360221424_
                   _hd221361221426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221354221390_
                                             _target221351221385_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221344221372_
                                           _g221345221375_))))))
                              (let ()
                                (declare (not safe))
                                (_g221344221372_ _g221345221375_)))))
                      (let ()
                        (declare (not safe))
                        (_g221344221372_ _g221345221375_))))))
          (declare (not safe))
          (_g221343221456_ _stx221341_))))
    (define gxc#find-let-values%
      (lambda (_stx221191_ _arg221192_)
        (let* ((_g221194221229_
                (lambda (_g221195221226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221195221226_))))
               (_g221193221338_
                (lambda (_g221195221232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221195221232_))
                      (let ((_e221201221234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221195221232_))))
                        (let ((_hd221200221237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221201221234_)))
                              (_tl221199221239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221201221234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221199221239_))
                              (let ((_e221204221242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221199221239_))))
                                (let ((_hd221203221245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221204221242_)))
                                      (_tl221202221247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221204221242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd221203221245_))
                                      (let ((_g228520_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd221203221245_
                                                '0))))
                                        (begin
                                          (let ((_g228521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228520_)
                                                       (##vector-length
                                                        _g228520_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228521_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228521_)))
                                          (let ((_target221205221250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228520_ 0)))
                                                (_tl221207221252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228520_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221207221252_))
                                                (letrec ((_loop221208221255_
                                                          (lambda (_hd221206221258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr221212221260_
                           _bind221213221262_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221206221258_))
                        (let ((_e221209221265_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221206221258_))))
                          (let ((_lp-hd221210221268_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221209221265_)))
                                (_lp-tl221211221270_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221209221265_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd221210221268_))
                                (let ((_e221218221273_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd221210221268_))))
                                  (let ((_hd221217221276_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221218221273_)))
                                        (_tl221216221278_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221218221273_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221216221278_))
                                        (let ((_e221221221281_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221216221278_))))
                                          (let ((_hd221220221284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221221221281_)))
                                                (_tl221219221286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221221221281_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221219221286_))
                                                (let ((__tmp228526
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221220221284_
                                                               _expr221212221260_)))
                                                      (__tmp228525
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221217221276_
                                                               _bind221213221262_))))
                                                  (declare (not safe))
                                                  (_loop221208221255_
                                                   _lp-tl221211221270_
                                                   __tmp228526
                                                   __tmp228525))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221194221229_
                                                   _g221195221232_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g221194221229_ _g221195221232_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221194221229_ _g221195221232_)))))
                        (let ((_expr221214221289_ (reverse _expr221212221260_))
                              (_bind221215221291_
                               (reverse _bind221213221262_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221202221247_))
                              (let ((_e221224221294_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221202221247_))))
                                (let ((_hd221223221297_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221224221294_)))
                                      (_tl221222221299_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221224221294_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221222221299_))
                                      ((lambda (_L221302_ _L221303_ _L221304_)
                                         (let ((_$e221335_
                                                (let ((__tmp228524
                                                       (lambda (_g221323221325_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g221323221325_
                                                            _arg221192_))))
                                                      (__tmp228522
                                                       (let ((__tmp228523
                                                              (lambda (_g221327221330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g221328221332_)
                        (let ()
                          (declare (not safe))
                          (cons _g221327221330_ _g221328221332_)))))
                 (declare (not safe))
                 (foldr1 __tmp228523 '() _L221303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp228524
                                                          __tmp228522))))
                                           (if _$e221335_
                                               _$e221335_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L221302_
                                                  _arg221192_)))))
                                       _hd221223221297_
                                       _expr221214221289_
                                       _bind221215221291_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221194221229_ _g221195221232_)))))
                              (let ()
                                (declare (not safe))
                                (_g221194221229_ _g221195221232_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop221208221255_
                                                     _target221205221250_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221194221229_
                                                   _g221195221232_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221194221229_ _g221195221232_)))))
                              (let ()
                                (declare (not safe))
                                (_g221194221229_ _g221195221232_)))))
                      (let ()
                        (declare (not safe))
                        (_g221194221229_ _g221195221232_))))))
          (declare (not safe))
          (_g221193221338_ _stx221191_))))
    (define gxc#find-setq%
      (lambda (_stx221123_ _arg221124_)
        (let* ((_g221126221143_
                (lambda (_g221127221140_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221127221140_))))
               (_g221125221188_
                (lambda (_g221127221146_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221127221146_))
                      (let ((_e221132221148_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221127221146_))))
                        (let ((_hd221131221151_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221132221148_)))
                              (_tl221130221153_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221132221148_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221130221153_))
                              (let ((_e221135221156_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221130221153_))))
                                (let ((_hd221134221159_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221135221156_)))
                                      (_tl221133221161_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221135221156_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221133221161_))
                                      (let ((_e221138221164_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221133221161_))))
                                        (let ((_hd221137221167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221138221164_)))
                                              (_tl221136221169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221138221164_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221136221169_))
                                              ((lambda (_L221172_ _L221173_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221172_
                                                    _arg221124_)))
                                               _hd221137221167_
                                               _hd221134221159_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221126221143_
                                                 _g221127221146_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221126221143_ _g221127221146_)))))
                              (let ()
                                (declare (not safe))
                                (_g221126221143_ _g221127221146_)))))
                      (let ()
                        (declare (not safe))
                        (_g221126221143_ _g221127221146_))))))
          (declare (not safe))
          (_g221125221188_ _stx221123_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx221067_ _ids221068_)
        (let* ((_g221070221083_
                (lambda (_g221071221080_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221071221080_))))
               (_g221069221120_
                (lambda (_g221071221086_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221071221086_))
                      (let ((_e221075221088_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221071221086_))))
                        (let ((_hd221074221091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221075221088_)))
                              (_tl221073221093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221075221088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221073221093_))
                              (let ((_e221078221096_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221073221093_))))
                                (let ((_hd221077221099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221078221096_)))
                                      (_tl221076221101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221078221096_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221076221101_))
                                      ((lambda (_L221104_)
                                         (let ((__tmp228527
                                                (lambda (_g221115221117_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L221104_
                                                     _g221115221117_)))))
                                           (declare (not safe))
                                           (find __tmp228527 _ids221068_)))
                                       _hd221077221099_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221070221083_ _g221071221086_)))))
                              (let ()
                                (declare (not safe))
                                (_g221070221083_ _g221071221086_)))))
                      (let ()
                        (declare (not safe))
                        (_g221070221083_ _g221071221086_))))))
          (declare (not safe))
          (_g221069221120_ _stx221067_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx220991_ _ids220992_)
        (let* ((_g220994221011_
                (lambda (_g220995221008_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220995221008_))))
               (_g220993221064_
                (lambda (_g220995221014_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220995221014_))
                      (let ((_e221000221016_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220995221014_))))
                        (let ((_hd220999221019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221000221016_)))
                              (_tl220998221021_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221000221016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220998221021_))
                              (let ((_e221003221024_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220998221021_))))
                                (let ((_hd221002221027_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221003221024_)))
                                      (_tl221001221029_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221003221024_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221001221029_))
                                      (let ((_e221006221032_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221001221029_))))
                                        (let ((_hd221005221035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221006221032_)))
                                              (_tl221004221037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221006221032_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221004221037_))
                                              ((lambda (_L221040_ _L221041_)
                                                 (let ((_$e221061_
                                                        (let ((__tmp228528
                                                               (lambda (_g221056221058_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L221041_ _g221056221058_)))))
                  (declare (not safe))
                  (find __tmp228528 _ids220992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e221061_
                                                       _$e221061_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L221040_
                                                          _ids220992_)))))
                                               _hd221005221035_
                                               _hd221002221027_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220994221011_
                                                 _g220995221014_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220994221011_ _g220995221014_)))))
                              (let ()
                                (declare (not safe))
                                (_g220994221011_ _g220995221014_)))))
                      (let ()
                        (declare (not safe))
                        (_g220994221011_ _g220995221014_))))))
          (declare (not safe))
          (_g220993221064_ _stx220991_))))))
