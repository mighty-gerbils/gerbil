(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707738034)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl223608_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223608_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223608_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223608_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223608_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl223608_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl223604_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223604_ '%#declare gxc#xform-identity))
           _tbl223604_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl223600_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228422 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl223600_ __tmp228422))
           (let ((__tmp228423 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl223600_ __tmp228423))
           _tbl223600_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl223596_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223596_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223596_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223596_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223596_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223596_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl223596_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl223592_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228424 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223592_ __tmp228424))
           (let ((__tmp228425 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl223592_ __tmp228425))
           (let ()
             (declare (not safe))
             (table-set! _tbl223592_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223592_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223592_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223592_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223592_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl223592_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl223588_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228426 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223588_ __tmp228426))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223588_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223588_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl223588_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx223571_ . _args223573_)
        (let ((__tmp228428
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223573_)
                     (gxc#compile-e__0 _stx223571_)
                     (let ((_arg1223578_ (car _args223573_))
                           (_rest223580_ (cdr _args223573_)))
                       (if (null? _rest223580_)
                           (gxc#compile-e__1 _stx223571_ _arg1223578_)
                           (let ((_arg2223583_ (car _rest223580_))
                                 (_rest223585_ (cdr _rest223580_)))
                             (if (null? _rest223585_)
                                 (gxc#compile-e__2
                                  _stx223571_
                                  _arg1223578_
                                  _arg2223583_)
                                 (apply gxc#compile-e
                                        _stx223571_
                                        _arg1223578_
                                        _arg2223583_
                                        _rest223585_))))))))
              (__tmp228427 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp228428
           gxc#current-compile-methods
           __tmp228427))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl223568_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228429 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223568_ __tmp228429))
           (let ()
             (declare (not safe))
             (table-set! _tbl223568_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223568_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223568_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223568_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223568_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl223568_))))
    (define gxc#apply-collect-methods
      (lambda (_stx223551_ . _args223553_)
        (let ((__tmp228431
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223553_)
                     (gxc#compile-e__0 _stx223551_)
                     (let ((_arg1223558_ (car _args223553_))
                           (_rest223560_ (cdr _args223553_)))
                       (if (null? _rest223560_)
                           (gxc#compile-e__1 _stx223551_ _arg1223558_)
                           (let ((_arg2223563_ (car _rest223560_))
                                 (_rest223565_ (cdr _rest223560_)))
                             (if (null? _rest223565_)
                                 (gxc#compile-e__2
                                  _stx223551_
                                  _arg1223558_
                                  _arg2223563_)
                                 (apply gxc#compile-e
                                        _stx223551_
                                        _arg1223558_
                                        _arg2223563_
                                        _rest223565_))))))))
              (__tmp228430 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp228431
           gxc#current-compile-methods
           __tmp228430))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl223548_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228432 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223548_ __tmp228432))
           (let ()
             (declare (not safe))
             (table-set! _tbl223548_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223548_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223548_ '%#set! gxc#expression-subst-setq%))
           _tbl223548_))))
    (define gxc#apply-expression-subst
      (lambda (_stx223531_ . _args223533_)
        (let ((__tmp228434
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223533_)
                     (gxc#compile-e__0 _stx223531_)
                     (let ((_arg1223538_ (car _args223533_))
                           (_rest223540_ (cdr _args223533_)))
                       (if (null? _rest223540_)
                           (gxc#compile-e__1 _stx223531_ _arg1223538_)
                           (let ((_arg2223543_ (car _rest223540_))
                                 (_rest223545_ (cdr _rest223540_)))
                             (if (null? _rest223545_)
                                 (gxc#compile-e__2
                                  _stx223531_
                                  _arg1223538_
                                  _arg2223543_)
                                 (apply gxc#compile-e
                                        _stx223531_
                                        _arg1223538_
                                        _arg2223543_
                                        _rest223545_))))))))
              (__tmp228433 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp228434
           gxc#current-compile-methods
           __tmp228433))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl223528_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228435 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl223528_ __tmp228435))
           (let ()
             (declare (not safe))
             (table-set! _tbl223528_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223528_ '%#set! gxc#expression-subst*-setq%))
           _tbl223528_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx223511_ . _args223513_)
        (let ((__tmp228437
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223513_)
                     (gxc#compile-e__0 _stx223511_)
                     (let ((_arg1223518_ (car _args223513_))
                           (_rest223520_ (cdr _args223513_)))
                       (if (null? _rest223520_)
                           (gxc#compile-e__1 _stx223511_ _arg1223518_)
                           (let ((_arg2223523_ (car _rest223520_))
                                 (_rest223525_ (cdr _rest223520_)))
                             (if (null? _rest223525_)
                                 (gxc#compile-e__2
                                  _stx223511_
                                  _arg1223518_
                                  _arg2223523_)
                                 (apply gxc#compile-e
                                        _stx223511_
                                        _arg1223518_
                                        _arg2223523_
                                        _rest223525_))))))))
              (__tmp228436 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp228437
           gxc#current-compile-methods
           __tmp228436))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl223508_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228438 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl223508_ __tmp228438))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223508_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223508_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223508_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl223508_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl223504_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228439 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl223504_ __tmp228439))
           (let ()
             (declare (not safe))
             (table-set! _tbl223504_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223504_ '%#set! gxc#find-var-refs-setq%))
           _tbl223504_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx223487_ . _args223489_)
        (let ((__tmp228441
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223489_)
                     (gxc#compile-e__0 _stx223487_)
                     (let ((_arg1223494_ (car _args223489_))
                           (_rest223496_ (cdr _args223489_)))
                       (if (null? _rest223496_)
                           (gxc#compile-e__1 _stx223487_ _arg1223494_)
                           (let ((_arg2223499_ (car _rest223496_))
                                 (_rest223501_ (cdr _rest223496_)))
                             (if (null? _rest223501_)
                                 (gxc#compile-e__2
                                  _stx223487_
                                  _arg1223494_
                                  _arg2223499_)
                                 (apply gxc#compile-e
                                        _stx223487_
                                        _arg1223494_
                                        _arg2223499_
                                        _rest223501_))))))))
              (__tmp228440 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228441
           gxc#current-compile-methods
           __tmp228440))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl223484_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228442 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl223484_ __tmp228442))
           (let ()
             (declare (not safe))
             (table-set! _tbl223484_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223484_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl223484_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx223467_ . _args223469_)
        (let ((__tmp228444
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223469_)
                     (gxc#compile-e__0 _stx223467_)
                     (let ((_arg1223474_ (car _args223469_))
                           (_rest223476_ (cdr _args223469_)))
                       (if (null? _rest223476_)
                           (gxc#compile-e__1 _stx223467_ _arg1223474_)
                           (let ((_arg2223479_ (car _rest223476_))
                                 (_rest223481_ (cdr _rest223476_)))
                             (if (null? _rest223481_)
                                 (gxc#compile-e__2
                                  _stx223467_
                                  _arg1223474_
                                  _arg2223479_)
                                 (apply gxc#compile-e
                                        _stx223467_
                                        _arg1223474_
                                        _arg2223479_
                                        _rest223481_))))))))
              (__tmp228443 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228444
           gxc#current-compile-methods
           __tmp228443))))
    (define gxc#xform-identity
      (lambda (_stx223464_ . _args223465_) _stx223464_))
    (define gxc#xform-wrap-source
      (lambda (_stx223461_ _src-stx223462_)
        (let ((__tmp228445
               (let () (declare (not safe)) (gx#stx-source _src-stx223462_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx223461_ __tmp228445))))
    (define gxc#xform-apply-compile-e
      (lambda (_args223448_)
        (lambda (_stx223450_)
          (if (let () (declare (not safe)) (null? _args223448_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx223450_))
              (let ((_arg1223452_ (car _args223448_))
                    (_rest223454_ (cdr _args223448_)))
                (if (let () (declare (not safe)) (null? _rest223454_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx223450_ _arg1223452_))
                    (let ((_arg2223457_ (car _rest223454_))
                          (_rest223459_ (cdr _rest223454_)))
                      (if (let () (declare (not safe)) (null? _rest223459_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx223450_
                             _arg1223452_
                             _arg2223457_))
                          (apply gxc#compile-e
                                 _stx223450_
                                 _arg1223452_
                                 _arg2223457_
                                 _rest223459_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx223407_ . _args223408_)
        (let* ((_g223410223420_
                (lambda (_g223411223417_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223411223417_))))
               (_g223409223445_
                (lambda (_g223411223423_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223411223423_))
                      (let ((_e223415223425_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223411223423_))))
                        (let ((_hd223414223428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223415223425_)))
                              (_tl223413223430_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223415223425_))))
                          ((lambda (_L223433_)
                             (let* ((_forms223443_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223408_))
                                          _L223433_))
                                    (__tmp228446
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms223443_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228446
                                _stx223407_)))
                           _tl223413223430_)))
                      (let ()
                        (declare (not safe))
                        (_g223410223420_ _g223411223423_))))))
          (declare (not safe))
          (_g223409223445_ _stx223407_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx223365_ . _args223366_)
        (let* ((_g223368223378_
                (lambda (_g223369223375_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223369223375_))))
               (_g223367223404_
                (lambda (_g223369223381_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223369223381_))
                      (let ((_e223373223383_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223369223381_))))
                        (let ((_hd223372223386_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223373223383_)))
                              (_tl223371223388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223373223383_))))
                          ((lambda (_L223391_)
                             (let ((__tmp228449
                                    (lambda ()
                                      (let* ((_forms223402_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args223366_))
                                                   _L223391_))
                                             (__tmp228450
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms223402_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp228450
                                         _stx223365_))))
                                   (__tmp228447
                                    (let ((__tmp228448
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp228448 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp228449
                                gx#current-expander-phi
                                __tmp228447)))
                           _tl223371223388_)))
                      (let ()
                        (declare (not safe))
                        (_g223368223378_ _g223369223381_))))))
          (declare (not safe))
          (_g223367223404_ _stx223365_))))
    (define gxc#xform-module%
      (lambda (_stx223293_ . _args223294_)
        (let* ((_g223296223310_
                (lambda (_g223297223307_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223297223307_))))
               (_g223295223362_
                (lambda (_g223297223313_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223297223313_))
                      (let ((_e223302223315_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223297223313_))))
                        (let ((_hd223301223318_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223302223315_)))
                              (_tl223300223320_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223302223315_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223300223320_))
                              (let ((_e223305223323_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223300223320_))))
                                (let ((_hd223304223326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223305223323_)))
                                      (_tl223303223328_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223305223323_))))
                                  ((lambda (_L223331_ _L223332_)
                                     (let* ((_ctx223345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L223332_)))
                                            (_code223347_
                                             (##structure-ref
                                              _ctx223345_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code223359_
                                             (let ((__tmp228451
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args223294_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code223347_))
                                                          (let ((_arg1223350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args223294_))
                        (_rest223352_ (cdr _args223294_)))
                    (if (let () (declare (not safe)) (null? _rest223352_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code223347_ _arg1223350_))
                        (let ((_arg2223355_ (car _rest223352_))
                              (_rest223357_ (cdr _rest223352_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest223357_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code223347_
                                 _arg1223350_
                                 _arg2223355_))
                              (apply gxc#compile-e
                                     _code223347_
                                     _arg1223350_
                                     _arg2223355_
                                     _rest223357_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp228451
                                                gx#current-expander-context
                                                _ctx223345_))))
                                       (##structure-set!
                                        _ctx223345_
                                        _code223359_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp228452
                                              (let ((__tmp228453
                                                     (let ((__tmp228454
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code223359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L223332_ __tmp228454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp228453))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp228452
                                          _stx223293_))))
                                   _tl223303223328_
                                   _hd223304223326_)))
                              (let ()
                                (declare (not safe))
                                (_g223296223310_ _g223297223313_)))))
                      (let ()
                        (declare (not safe))
                        (_g223296223310_ _g223297223313_))))))
          (declare (not safe))
          (_g223295223362_ _stx223293_))))
    (define gxc#xform-define-values%
      (lambda (_stx223214_ . _args223215_)
        (let* ((_g223217223234_
                (lambda (_g223218223231_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223218223231_))))
               (_g223216223290_
                (lambda (_g223218223237_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223218223237_))
                      (let ((_e223223223239_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223218223237_))))
                        (let ((_hd223222223242_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223223223239_)))
                              (_tl223221223244_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223223223239_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223221223244_))
                              (let ((_e223226223247_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223221223244_))))
                                (let ((_hd223225223250_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223226223247_)))
                                      (_tl223224223252_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223226223247_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223224223252_))
                                      (let ((_e223229223255_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223224223252_))))
                                        (let ((_hd223228223258_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223229223255_)))
                                              (_tl223227223260_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223229223255_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223227223260_))
                                              ((lambda (_L223263_ _L223264_)
                                                 (let* ((_expr223288_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223215_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223263_))
                     (let ((_arg1223279_ (car _args223215_))
                           (_rest223281_ (cdr _args223215_)))
                       (if (let () (declare (not safe)) (null? _rest223281_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223263_ _arg1223279_))
                           (let ((_arg2223284_ (car _rest223281_))
                                 (_rest223286_ (cdr _rest223281_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223286_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223263_
                                    _arg1223279_
                                    _arg2223284_))
                                 (apply gxc#compile-e
                                        _L223263_
                                        _arg1223279_
                                        _arg2223284_
                                        _rest223286_)))))))
                (__tmp228455
                 (let ((__tmp228456
                        (let ((__tmp228457
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223288_ '()))))
                          (declare (not safe))
                          (cons _L223264_ __tmp228457))))
                   (declare (not safe))
                   (cons '%#define-values __tmp228456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228455
                                                    _stx223214_)))
                                               _hd223228223258_
                                               _hd223225223250_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223217223234_
                                                 _g223218223237_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223217223234_ _g223218223237_)))))
                              (let ()
                                (declare (not safe))
                                (_g223217223234_ _g223218223237_)))))
                      (let ()
                        (declare (not safe))
                        (_g223217223234_ _g223218223237_))))))
          (declare (not safe))
          (_g223216223290_ _stx223214_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx223134_ . _args223135_)
        (let* ((_g223137223154_
                (lambda (_g223138223151_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223138223151_))))
               (_g223136223211_
                (lambda (_g223138223157_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223138223157_))
                      (let ((_e223143223159_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223138223157_))))
                        (let ((_hd223142223162_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223143223159_)))
                              (_tl223141223164_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223143223159_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223141223164_))
                              (let ((_e223146223167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223141223164_))))
                                (let ((_hd223145223170_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223146223167_)))
                                      (_tl223144223172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223146223167_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223144223172_))
                                      (let ((_e223149223175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223144223172_))))
                                        (let ((_hd223148223178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223149223175_)))
                                              (_tl223147223180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223149223175_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223147223180_))
                                              ((lambda (_L223183_ _L223184_)
                                                 (let ((__tmp228460
                                                        (lambda ()
                                                          (let* ((_expr223209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args223135_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L223183_))
                              (let ((_arg1223200_ (car _args223135_))
                                    (_rest223202_ (cdr _args223135_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest223202_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L223183_
                                       _arg1223200_))
                                    (let ((_arg2223205_ (car _rest223202_))
                                          (_rest223207_ (cdr _rest223202_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest223207_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L223183_
                                             _arg1223200_
                                             _arg2223205_))
                                          (apply gxc#compile-e
                                                 _L223183_
                                                 _arg1223200_
                                                 _arg2223205_
                                                 _rest223207_)))))))
                         (__tmp228461
                          (let ((__tmp228462
                                 (let ((__tmp228463
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr223209_ '()))))
                                   (declare (not safe))
                                   (cons _L223184_ __tmp228463))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp228462))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp228461 _stx223134_))))
               (__tmp228458
                (let ((__tmp228459 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp228459 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp228460
                                                    gx#current-expander-phi
                                                    __tmp228458)))
                                               _hd223148223178_
                                               _hd223145223170_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223137223154_
                                                 _g223138223157_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223137223154_ _g223138223157_)))))
                              (let ()
                                (declare (not safe))
                                (_g223137223154_ _g223138223157_)))))
                      (let ()
                        (declare (not safe))
                        (_g223137223154_ _g223138223157_))))))
          (declare (not safe))
          (_g223136223211_ _stx223134_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx223055_ . _args223056_)
        (let* ((_g223058223075_
                (lambda (_g223059223072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223059223072_))))
               (_g223057223131_
                (lambda (_g223059223078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223059223078_))
                      (let ((_e223064223080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223059223078_))))
                        (let ((_hd223063223083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223064223080_)))
                              (_tl223062223085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223064223080_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223062223085_))
                              (let ((_e223067223088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223062223085_))))
                                (let ((_hd223066223091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223067223088_)))
                                      (_tl223065223093_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223067223088_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223065223093_))
                                      (let ((_e223070223096_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223065223093_))))
                                        (let ((_hd223069223099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223070223096_)))
                                              (_tl223068223101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223070223096_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223068223101_))
                                              ((lambda (_L223104_ _L223105_)
                                                 (let* ((_expr223129_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223056_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223104_))
                     (let ((_arg1223120_ (car _args223056_))
                           (_rest223122_ (cdr _args223056_)))
                       (if (let () (declare (not safe)) (null? _rest223122_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223104_ _arg1223120_))
                           (let ((_arg2223125_ (car _rest223122_))
                                 (_rest223127_ (cdr _rest223122_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223127_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223104_
                                    _arg1223120_
                                    _arg2223125_))
                                 (apply gxc#compile-e
                                        _L223104_
                                        _arg1223120_
                                        _arg2223125_
                                        _rest223127_)))))))
                (__tmp228464
                 (let ((__tmp228465
                        (let ((__tmp228466
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223129_ '()))))
                          (declare (not safe))
                          (cons _L223105_ __tmp228466))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp228465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228464
                                                    _stx223055_)))
                                               _hd223069223099_
                                               _hd223066223091_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223058223075_
                                                 _g223059223078_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223058223075_ _g223059223078_)))))
                              (let ()
                                (declare (not safe))
                                (_g223058223075_ _g223059223078_)))))
                      (let ()
                        (declare (not safe))
                        (_g223058223075_ _g223059223078_))))))
          (declare (not safe))
          (_g223057223131_ _stx223055_))))
    (define gxc#xform-lambda%
      (lambda (_stx222998_ . _args222999_)
        (let* ((_g223001223015_
                (lambda (_g223002223012_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223002223012_))))
               (_g223000223052_
                (lambda (_g223002223018_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223002223018_))
                      (let ((_e223007223020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223002223018_))))
                        (let ((_hd223006223023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223007223020_)))
                              (_tl223005223025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223007223020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223005223025_))
                              (let ((_e223010223028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223005223025_))))
                                (let ((_hd223009223031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223010223028_)))
                                      (_tl223008223033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223010223028_))))
                                  ((lambda (_L223036_ _L223037_)
                                     (let* ((_body223050_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args222999_))
                                                  _L223036_))
                                            (__tmp228467
                                             (let ((__tmp228468
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L223037_
                                                            _body223050_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp228468))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp228467
                                        _stx222998_)))
                                   _tl223008223033_
                                   _hd223009223031_)))
                              (let ()
                                (declare (not safe))
                                (_g223001223015_ _g223002223018_)))))
                      (let ()
                        (declare (not safe))
                        (_g223001223015_ _g223002223018_))))))
          (declare (not safe))
          (_g223000223052_ _stx222998_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx222911_ . _args222912_)
        (letrec ((_clause-e222914_
                  (lambda (_clause222955_)
                    (let* ((_g222957222968_
                            (lambda (_g222958222965_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g222958222965_))))
                           (_g222956222995_
                            (lambda (_g222958222971_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g222958222971_))
                                  (let ((_e222963222973_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g222958222971_))))
                                    (let ((_hd222962222976_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222963222973_)))
                                          (_tl222961222978_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222963222973_))))
                                      ((lambda (_L222981_ _L222982_)
                                         (let ((_body222993_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args222912_))
                                                     _L222981_)))
                                           (declare (not safe))
                                           (cons _L222982_ _body222993_)))
                                       _tl222961222978_
                                       _hd222962222976_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222957222968_ _g222958222971_))))))
                      (declare (not safe))
                      (_g222956222995_ _clause222955_)))))
          (let* ((_g222916222926_
                  (lambda (_g222917222923_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g222917222923_))))
                 (_g222915222952_
                  (lambda (_g222917222929_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g222917222929_))
                        (let ((_e222921222931_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g222917222929_))))
                          (let ((_hd222920222934_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222921222931_)))
                                (_tl222919222936_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222921222931_))))
                            ((lambda (_L222939_)
                               (let* ((_clauses222950_
                                       (map _clause-e222914_ _L222939_))
                                      (__tmp228469
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses222950_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp228469
                                  _stx222911_)))
                             _tl222919222936_)))
                        (let ()
                          (declare (not safe))
                          (_g222916222926_ _g222917222929_))))))
            (declare (not safe))
            (_g222915222952_ _stx222911_)))))
    (define gxc#xform-let-values%
      (lambda (_stx222705_ . _args222706_)
        (let* ((_g222708222741_
                (lambda (_g222709222738_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222709222738_))))
               (_g222707222908_
                (lambda (_g222709222744_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222709222744_))
                      (let ((_e222716222746_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222709222744_))))
                        (let ((_hd222715222749_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222716222746_)))
                              (_tl222714222751_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222716222746_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222714222751_))
                              (let ((_e222719222754_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222714222751_))))
                                (let ((_hd222718222757_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222719222754_)))
                                      (_tl222717222759_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222719222754_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222718222757_))
                                      (let ((_g228470_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222718222757_
                                                '0))))
                                        (begin
                                          (let ((_g228471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228470_)
                                                       (##vector-length
                                                        _g228470_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228471_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228471_)))
                                          (let ((_target222720222762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228470_ 0)))
                                                (_tl222722222764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228470_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222722222764_))
                                                (letrec ((_loop222723222767_
                                                          (lambda (_hd222721222770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222727222772_
                           _hd222728222774_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222721222770_))
                        (let ((_e222724222777_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222721222770_))))
                          (let ((_lp-hd222725222780_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222724222777_)))
                                (_lp-tl222726222782_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222724222777_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222725222780_))
                                (let ((_e222733222785_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222725222780_))))
                                  (let ((_hd222732222788_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222733222785_)))
                                        (_tl222731222790_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222733222785_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222731222790_))
                                        (let ((_e222736222793_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222731222790_))))
                                          (let ((_hd222735222796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222736222793_)))
                                                (_tl222734222798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222736222793_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222734222798_))
                                                (let ((__tmp228484
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222735222796_
                                                               _expr222727222772_)))
                                                      (__tmp228483
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222732222788_
                                                               _hd222728222774_))))
                                                  (declare (not safe))
                                                  (_loop222723222767_
                                                   _lp-tl222726222782_
                                                   __tmp228484
                                                   __tmp228483))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222708222741_
                                                   _g222709222744_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222708222741_ _g222709222744_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222708222741_ _g222709222744_)))))
                        (let ((_expr222729222801_ (reverse _expr222727222772_))
                              (_hd222730222803_ (reverse _hd222728222774_)))
                          ((lambda (_L222806_ _L222807_ _L222808_ _L222809_)
                             (let* ((_g222828222844_
                                     (lambda (_g222829222841_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g222829222841_))))
                                    (_g222827222898_
                                     (lambda (_g222829222847_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g222829222847_))
                                           (let ((_g228472_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g222829222847_
                                                     '0))))
                                             (begin
                                               (let ((_g228473_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g228472_)
                                                            (##vector-length
                                                             _g228472_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g228473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g228473_)))
                                               (let ((_target222831222849_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228472_
                                                         0)))
                                                     (_tl222833222851_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228472_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222833222851_))
                                                     (letrec ((_loop222834222854_
                                                               (lambda (_hd222832222857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr222838222859_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd222832222857_))
                             (let ((_e222835222862_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd222832222857_))))
                               (let ((_lp-hd222836222865_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e222835222862_)))
                                     (_lp-tl222837222867_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e222835222862_))))
                                 (let ((__tmp228480
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd222836222865_
                                                _expr222838222859_))))
                                   (declare (not safe))
                                   (_loop222834222854_
                                    _lp-tl222837222867_
                                    __tmp228480))))
                             (let ((_expr222839222870_
                                    (reverse _expr222838222859_)))
                               ((lambda (_L222873_)
                                  (let ()
                                    (let* ((_body222886_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args222706_))
                                                 _L222806_))
                                           (__tmp228474
                                            (let ((__tmp228475
                                                   (let ((__tmp228476
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L222873_
                                                               _L222808_))
                                                            (let ((__tmp228477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222887222891_
                                    _g222888222893_
                                    _g222889222895_)
                             (let ((__tmp228478
                                    (let ((__tmp228479
                                           (let ()
                                             (declare (not safe))
                                             (cons _g222887222891_ '()))))
                                      (declare (not safe))
                                      (cons _g222888222893_ __tmp228479))))
                               (declare (not safe))
                               (cons __tmp228478 _g222889222895_)))))
                      (declare (not safe))
                      (foldr2 __tmp228477 '() _L222873_ _L222808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp228476
                                                           _body222886_))))
                                              (declare (not safe))
                                              (cons _L222809_ __tmp228475))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp228474
                                       _stx222705_))))
                                _expr222839222870_))))))
               (let ()
                 (declare (not safe))
                 (_loop222834222854_ _target222831222849_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g222828222844_
                                                        _g222829222847_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g222828222844_
                                              _g222829222847_)))))
                                    (__tmp228481
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222706_))
                                          (let ((__tmp228482
                                                 (lambda (_g222900222903_
                                                          _g222901222905_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g222900222903_
                                                           _g222901222905_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp228482
                                                    '()
                                                    _L222807_)))))
                               (declare (not safe))
                               (_g222827222898_ __tmp228481)))
                           _tl222717222759_
                           _expr222729222801_
                           _hd222730222803_
                           _hd222715222749_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222723222767_
                                                     _target222720222762_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222708222741_
                                                   _g222709222744_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222708222741_ _g222709222744_)))))
                              (let ()
                                (declare (not safe))
                                (_g222708222741_ _g222709222744_)))))
                      (let ()
                        (declare (not safe))
                        (_g222708222741_ _g222709222744_))))))
          (declare (not safe))
          (_g222707222908_ _stx222705_))))
    (define gxc#xform-operands
      (lambda (_stx222661_ . _args222662_)
        (let* ((_g222664222675_
                (lambda (_g222665222672_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222665222672_))))
               (_g222663222702_
                (lambda (_g222665222678_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222665222678_))
                      (let ((_e222670222680_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222665222678_))))
                        (let ((_hd222669222683_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222670222680_)))
                              (_tl222668222685_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222670222680_))))
                          ((lambda (_L222688_ _L222689_)
                             (let* ((_rands222700_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222662_))
                                          _L222688_))
                                    (__tmp228485
                                     (let ()
                                       (declare (not safe))
                                       (cons _L222689_ _rands222700_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228485
                                _stx222661_)))
                           _tl222668222685_
                           _hd222669222683_)))
                      (let ()
                        (declare (not safe))
                        (_g222664222675_ _g222665222678_))))))
          (declare (not safe))
          (_g222663222702_ _stx222661_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx222582_ . _args222583_)
        (let* ((_g222585222602_
                (lambda (_g222586222599_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222586222599_))))
               (_g222584222658_
                (lambda (_g222586222605_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222586222605_))
                      (let ((_e222591222607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222586222605_))))
                        (let ((_hd222590222610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222591222607_)))
                              (_tl222589222612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222591222607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222589222612_))
                              (let ((_e222594222615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222589222612_))))
                                (let ((_hd222593222618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222594222615_)))
                                      (_tl222592222620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222594222615_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222592222620_))
                                      (let ((_e222597222623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222592222620_))))
                                        (let ((_hd222596222626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222597222623_)))
                                              (_tl222595222628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222597222623_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222595222628_))
                                              ((lambda (_L222631_ _L222632_)
                                                 (let* ((_expr222656_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args222583_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L222631_))
                     (let ((_arg1222647_ (car _args222583_))
                           (_rest222649_ (cdr _args222583_)))
                       (if (let () (declare (not safe)) (null? _rest222649_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L222631_ _arg1222647_))
                           (let ((_arg2222652_ (car _rest222649_))
                                 (_rest222654_ (cdr _rest222649_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest222654_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L222631_
                                    _arg1222647_
                                    _arg2222652_))
                                 (apply gxc#compile-e
                                        _L222631_
                                        _arg1222647_
                                        _arg2222652_
                                        _rest222654_)))))))
                (__tmp228486
                 (let ((__tmp228487
                        (let ((__tmp228488
                               (let ()
                                 (declare (not safe))
                                 (cons _expr222656_ '()))))
                          (declare (not safe))
                          (cons _L222632_ __tmp228488))))
                   (declare (not safe))
                   (cons '%#set! __tmp228487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228486
                                                    _stx222582_)))
                                               _hd222596222626_
                                               _hd222593222618_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222585222602_
                                                 _g222586222605_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222585222602_ _g222586222605_)))))
                              (let ()
                                (declare (not safe))
                                (_g222585222602_ _g222586222605_)))))
                      (let ()
                        (declare (not safe))
                        (_g222585222602_ _g222586222605_))))))
          (declare (not safe))
          (_g222584222658_ _stx222582_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx222513_)
        (let* ((_g222515222532_
                (lambda (_g222516222529_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222516222529_))))
               (_g222514222579_
                (lambda (_g222516222535_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222516222535_))
                      (let ((_e222521222537_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222516222535_))))
                        (let ((_hd222520222540_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222521222537_)))
                              (_tl222519222542_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222521222537_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222519222542_))
                              (let ((_e222524222545_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222519222542_))))
                                (let ((_hd222523222548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222524222545_)))
                                      (_tl222522222550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222524222545_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222522222550_))
                                      (let ((_e222527222553_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222522222550_))))
                                        (let ((_hd222526222556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222527222553_)))
                                              (_tl222525222558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222527222553_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222525222558_))
                                              ((lambda (_L222561_ _L222562_)
                                                 (let ((_sym222577_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L222562_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym222577_))
                                                   (let ((__tmp228489
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp228489
                                                      _sym222577_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L222561_))))
                                               _hd222526222556_
                                               _hd222523222548_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222515222532_
                                                 _g222516222535_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222515222532_ _g222516222535_)))))
                              (let ()
                                (declare (not safe))
                                (_g222515222532_ _g222516222535_)))))
                      (let ()
                        (declare (not safe))
                        (_g222515222532_ _g222516222535_))))))
          (declare (not safe))
          (_g222514222579_ _stx222513_))))
    (define gxc#collect-methods-call%
      (lambda (_stx222067_)
        (let* ((___stx228179228180_ _stx222067_)
               (_g222071222173_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx228179228180_)))))
          (let ((___kont228181228182_
                 (lambda (_L222463_ _L222464_ _L222465_ _L222466_ _L222467_)
                   (let ((__tmp228490
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222464_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228490))))
                (___kont228183228184_
                 (lambda (_L222289_ _L222290_ _L222291_ _L222292_)
                   (let ((__tmp228491
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222289_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228491))))
                (___kont228185228186_ (lambda () '#!void)))
            (let ((___match228314228315_
                   (lambda (_e222080222335_
                            _hd222079222338_
                            _tl222078222340_
                            _e222083222343_
                            _hd222082222346_
                            _tl222081222348_
                            _e222086222351_
                            _hd222085222354_
                            _tl222084222356_
                            _e222089222359_
                            _hd222088222362_
                            _tl222087222364_
                            _e222092222367_
                            _hd222091222370_
                            _tl222090222372_
                            _e222095222375_
                            _hd222094222378_
                            _tl222093222380_
                            _e222098222383_
                            _hd222097222386_
                            _tl222096222388_
                            _e222101222391_
                            _hd222100222394_
                            _tl222099222396_
                            _e222104222399_
                            _hd222103222402_
                            _tl222102222404_
                            _e222107222407_
                            _hd222106222410_
                            _tl222105222412_
                            _e222110222415_
                            _hd222109222418_
                            _tl222108222420_
                            _e222113222423_
                            _hd222112222426_
                            _tl222111222428_
                            _e222116222431_
                            _hd222115222434_
                            _tl222114222436_
                            _e222119222439_
                            _hd222118222442_
                            _tl222117222444_
                            _e222122222447_
                            _hd222121222450_
                            _tl222120222452_
                            _e222125222455_
                            _hd222124222458_
                            _tl222123222460_)
                     (let ((_L222463_ _hd222124222458_)
                           (_L222464_ _hd222115222434_)
                           (_L222465_ _hd222106222410_)
                           (_L222466_ _hd222097222386_)
                           (_L222467_ _hd222088222362_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L222467_
                              'bind-method!))
                           (___kont228181228182_
                            _L222463_
                            _L222464_
                            _L222465_
                            _L222466_
                            _L222467_)
                           (___kont228185228186_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx228179228180_))
                  (let ((_e222080222335_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx228179228180_))))
                    (let ((_tl222078222340_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222080222335_)))
                          (_hd222079222338_
                           (let ()
                             (declare (not safe))
                             (##car _e222080222335_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222078222340_))
                          (let ((_e222083222343_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222078222340_))))
                            (let ((_tl222081222348_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222083222343_)))
                                  (_hd222082222346_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222083222343_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222082222346_))
                                  (let ((_e222086222351_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222082222346_))))
                                    (let ((_tl222084222356_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222086222351_)))
                                          (_hd222085222354_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222086222351_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd222085222354_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd222085222354_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222084222356_))
                                                  (let ((_e222089222359_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222084222356_))))
                                                    (let ((_tl222087222364_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222089222359_)))
                                                          (_hd222088222362_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222089222359_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222087222364_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222081222348_))
                      (let ((_e222092222367_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222081222348_))))
                        (let ((_tl222090222372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222092222367_)))
                              (_hd222091222370_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222092222367_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222091222370_))
                              (let ((_e222095222375_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222091222370_))))
                                (let ((_tl222093222380_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222095222375_)))
                                      (_hd222094222378_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222095222375_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd222094222378_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd222094222378_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222093222380_))
                                              (let ((_e222098222383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222093222380_))))
                                                (let ((_tl222096222388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222098222383_)))
                                                      (_hd222097222386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222098222383_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222096222388_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl222090222372_))
                                                          (let ((_e222101222391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl222090222372_))))
                    (let ((_tl222099222396_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222101222391_)))
                          (_hd222100222394_
                           (let ()
                             (declare (not safe))
                             (##car _e222101222391_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd222100222394_))
                          (let ((_e222104222399_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd222100222394_))))
                            (let ((_tl222102222404_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222104222399_)))
                                  (_hd222103222402_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222104222399_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd222103222402_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd222103222402_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl222102222404_))
                                          (let ((_e222107222407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl222102222404_))))
                                            (let ((_tl222105222412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222107222407_)))
                                                  (_hd222106222410_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222107222407_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl222105222412_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222099222396_))
                                                      (let ((_e222110222415_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222099222396_))))
                (let ((_tl222108222420_
                       (let () (declare (not safe)) (##cdr _e222110222415_)))
                      (_hd222109222418_
                       (let () (declare (not safe)) (##car _e222110222415_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222109222418_))
                      (let ((_e222113222423_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222109222418_))))
                        (let ((_tl222111222428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222113222423_)))
                              (_hd222112222426_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222113222423_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222112222426_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222112222426_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222111222428_))
                                      (let ((_e222116222431_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222111222428_))))
                                        (let ((_tl222114222436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222116222431_)))
                                              (_hd222115222434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222116222431_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222114222436_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222108222420_))
                                                  (let ((_e222119222439_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222108222420_))))
                                                    (let ((_tl222117222444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222119222439_)))
                                                          (_hd222118222442_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222119222439_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222118222442_))
                                                          (let ((_e222122222447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222118222442_))))
                    (let ((_tl222120222452_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222122222447_)))
                          (_hd222121222450_
                           (let ()
                             (declare (not safe))
                             (##car _e222122222447_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222121222450_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd222121222450_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222120222452_))
                                  (let ((_e222125222455_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222120222452_))))
                                    (let ((_tl222123222460_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222125222455_)))
                                          (_hd222124222458_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222125222455_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222123222460_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222117222444_))
                                              (___match228314228315_
                                               _e222080222335_
                                               _hd222079222338_
                                               _tl222078222340_
                                               _e222083222343_
                                               _hd222082222346_
                                               _tl222081222348_
                                               _e222086222351_
                                               _hd222085222354_
                                               _tl222084222356_
                                               _e222089222359_
                                               _hd222088222362_
                                               _tl222087222364_
                                               _e222092222367_
                                               _hd222091222370_
                                               _tl222090222372_
                                               _e222095222375_
                                               _hd222094222378_
                                               _tl222093222380_
                                               _e222098222383_
                                               _hd222097222386_
                                               _tl222096222388_
                                               _e222101222391_
                                               _hd222100222394_
                                               _tl222099222396_
                                               _e222104222399_
                                               _hd222103222402_
                                               _tl222102222404_
                                               _e222107222407_
                                               _hd222106222410_
                                               _tl222105222412_
                                               _e222110222415_
                                               _hd222109222418_
                                               _tl222108222420_
                                               _e222113222423_
                                               _hd222112222426_
                                               _tl222111222428_
                                               _e222116222431_
                                               _hd222115222434_
                                               _tl222114222436_
                                               _e222119222439_
                                               _hd222118222442_
                                               _tl222117222444_
                                               _e222122222447_
                                               _hd222121222450_
                                               _tl222120222452_
                                               _e222125222455_
                                               _hd222124222458_
                                               _tl222123222460_)
                                              (___kont228185228186_))
                                          (___kont228185228186_))))
                                  (___kont228185228186_))
                              (___kont228185228186_))
                          (___kont228185228186_))))
                  (___kont228185228186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222108222420_))
                                                      (if (let ((__tmp228492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp228492 'bind-method!))
                  (let ((_L222289_ _hd222115222434_)
                        (_L222290_ _hd222106222410_)
                        (_L222291_ _hd222097222386_)
                        (_L222292_ _hd222088222362_))
                    (___kont228183228184_
                     _L222289_
                     _L222290_
                     _L222291_
                     _L222292_))
                  (___kont228185228186_))
              (___kont228185228186_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228185228186_))))
                                      (___kont228185228186_))
                                  (___kont228185228186_))
                              (___kont228185228186_))))
                      (___kont228185228186_))))
              (___kont228185228186_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228185228186_))))
                                          (___kont228185228186_))
                                      (___kont228185228186_))
                                  (___kont228185228186_))))
                          (___kont228185228186_))))
                  (___kont228185228186_))
              (___kont228185228186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228185228186_))
                                          (___kont228185228186_))
                                      (___kont228185228186_))))
                              (___kont228185228186_))))
                      (___kont228185228186_))
                  (___kont228185228186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228185228186_))
                                              (___kont228185228186_))
                                          (___kont228185228186_))))
                                  (___kont228185228186_))))
                          (___kont228185228186_))))
                  (___kont228185228186_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx222014_ _id222015_ _new-id222016_)
        (let* ((_g222018222031_
                (lambda (_g222019222028_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222019222028_))))
               (_g222017222064_
                (lambda (_g222019222034_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222019222034_))
                      (let ((_e222023222036_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222019222034_))))
                        (let ((_hd222022222039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222023222036_)))
                              (_tl222021222041_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222023222036_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222021222041_))
                              (let ((_e222026222044_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222021222041_))))
                                (let ((_hd222025222047_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222026222044_)))
                                      (_tl222024222049_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222026222044_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222024222049_))
                                      ((lambda (_L222052_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L222052_
                                                _id222015_))
                                             (let ((__tmp228493
                                                    (let ((__tmp228494
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id222016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp228494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp228493
                                                _stx222014_))
                                             _stx222014_))
                                       _hd222025222047_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222018222031_ _g222019222034_)))))
                              (let ()
                                (declare (not safe))
                                (_g222018222031_ _g222019222034_)))))
                      (let ()
                        (declare (not safe))
                        (_g222018222031_ _g222019222034_))))))
          (declare (not safe))
          (_g222017222064_ _stx222014_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx221955_ _subst221956_)
        (let* ((_g221958221971_
                (lambda (_g221959221968_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221959221968_))))
               (_g221957222011_
                (lambda (_g221959221974_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221959221974_))
                      (let ((_e221963221976_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221959221974_))))
                        (let ((_hd221962221979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221963221976_)))
                              (_tl221961221981_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221963221976_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221961221981_))
                              (let ((_e221966221984_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221961221981_))))
                                (let ((_hd221965221987_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221966221984_)))
                                      (_tl221964221989_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221966221984_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221964221989_))
                                      ((lambda (_L221992_)
                                         (let ((_$e222006_
                                                (let ((__tmp228495
                                                       (lambda (_sub222004_)
                                                         (let ((__tmp228496
                                                                (car _sub222004_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L221992_
                                                            __tmp228496)))))
                                                  (declare (not safe))
                                                  (find __tmp228495
                                                        _subst221956_))))
                                           (if _$e222006_
                                               ((lambda (_sub222009_)
                                                  (let ((__tmp228497
                                                         (let ((__tmp228498
                                                                (let ((__tmp228499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub222009_)))
                          (declare (not safe))
                          (cons __tmp228499 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp228498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp228497
                                                     _stx221955_)))
                                                _$e222006_)
                                               _stx221955_)))
                                       _hd221965221987_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221958221971_ _g221959221974_)))))
                              (let ()
                                (declare (not safe))
                                (_g221958221971_ _g221959221974_)))))
                      (let ()
                        (declare (not safe))
                        (_g221958221971_ _g221959221974_))))))
          (declare (not safe))
          (_g221957222011_ _stx221955_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx221883_ _id221884_ _new-id221885_)
        (let* ((_g221887221904_
                (lambda (_g221888221901_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221888221901_))))
               (_g221886221952_
                (lambda (_g221888221907_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221888221907_))
                      (let ((_e221893221909_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221888221907_))))
                        (let ((_hd221892221912_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221893221909_)))
                              (_tl221891221914_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221893221909_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221891221914_))
                              (let ((_e221896221917_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221891221914_))))
                                (let ((_hd221895221920_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221896221917_)))
                                      (_tl221894221922_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221896221917_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221894221922_))
                                      (let ((_e221899221925_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221894221922_))))
                                        (let ((_hd221898221928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221899221925_)))
                                              (_tl221897221930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221899221925_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221897221930_))
                                              ((lambda (_L221933_ _L221934_)
                                                 (let ((_new-expr221949_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L221933_
                                                           _id221884_
                                                           _new-id221885_)))
                                                       (_new-xid221950_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L221934_
                                                               _id221884_))
                                                            _new-id221885_
                                                            _L221934_)))
                                                   (let ((__tmp228500
                                                          (let ((__tmp228501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228502
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221949_ '()))))
                           (declare (not safe))
                           (cons _new-xid221950_ __tmp228502))))
                    (declare (not safe))
                    (cons '%#set! __tmp228501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228500
                                                      _stx221883_))))
                                               _hd221898221928_
                                               _hd221895221920_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221887221904_
                                                 _g221888221907_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221887221904_ _g221888221907_)))))
                              (let ()
                                (declare (not safe))
                                (_g221887221904_ _g221888221907_)))))
                      (let ()
                        (declare (not safe))
                        (_g221887221904_ _g221888221907_))))))
          (declare (not safe))
          (_g221886221952_ _stx221883_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx221807_ _subst221808_)
        (let* ((_g221810221827_
                (lambda (_g221811221824_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221811221824_))))
               (_g221809221880_
                (lambda (_g221811221830_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221811221830_))
                      (let ((_e221816221832_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221811221830_))))
                        (let ((_hd221815221835_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221816221832_)))
                              (_tl221814221837_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221816221832_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221814221837_))
                              (let ((_e221819221840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221814221837_))))
                                (let ((_hd221818221843_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221819221840_)))
                                      (_tl221817221845_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221819221840_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221817221845_))
                                      (let ((_e221822221848_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221817221845_))))
                                        (let ((_hd221821221851_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221822221848_)))
                                              (_tl221820221853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221822221848_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221820221853_))
                                              ((lambda (_L221856_ _L221857_)
                                                 (let ((_new-expr221877_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L221856_
                                                           _subst221808_)))
                                                       (_new-xid221878_
                                                        (let ((_$e221874_
                                                               (let ((__tmp228503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub221872_)
                                (let ((__tmp228504 (car _sub221872_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L221857_
                                   __tmp228504)))))
                         (declare (not safe))
                         (find __tmp228503 _subst221808_))))
                  (if _$e221874_ (cdr _$e221874_) _L221857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp228505
                                                          (let ((__tmp228506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228507
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221877_ '()))))
                           (declare (not safe))
                           (cons _new-xid221878_ __tmp228507))))
                    (declare (not safe))
                    (cons '%#set! __tmp228506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228505
                                                      _stx221807_))))
                                               _hd221821221851_
                                               _hd221818221843_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221810221827_
                                                 _g221811221830_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221810221827_ _g221811221830_)))))
                              (let ()
                                (declare (not safe))
                                (_g221810221827_ _g221811221830_)))))
                      (let ()
                        (declare (not safe))
                        (_g221810221827_ _g221811221830_))))))
          (declare (not safe))
          (_g221809221880_ _stx221807_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx221753_ _ht221754_)
        (let* ((_g221756221769_
                (lambda (_g221757221766_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221757221766_))))
               (_g221755221804_
                (lambda (_g221757221772_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221757221772_))
                      (let ((_e221761221774_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221757221772_))))
                        (let ((_hd221760221777_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221761221774_)))
                              (_tl221759221779_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221761221774_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221759221779_))
                              (let ((_e221764221782_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221759221779_))))
                                (let ((_hd221763221785_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221764221782_)))
                                      (_tl221762221787_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221764221782_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221762221787_))
                                      ((lambda (_L221790_)
                                         (let ((_eid221802_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L221790_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht221754_
                                            _eid221802_
                                            1+
                                            '0)))
                                       _hd221763221785_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221756221769_ _g221757221772_)))))
                              (let ()
                                (declare (not safe))
                                (_g221756221769_ _g221757221772_)))))
                      (let ()
                        (declare (not safe))
                        (_g221756221769_ _g221757221772_))))))
          (declare (not safe))
          (_g221755221804_ _stx221753_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx221683_ _ht221684_)
        (let* ((_g221686221703_
                (lambda (_g221687221700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221687221700_))))
               (_g221685221750_
                (lambda (_g221687221706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221687221706_))
                      (let ((_e221692221708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221687221706_))))
                        (let ((_hd221691221711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221692221708_)))
                              (_tl221690221713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221692221708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221690221713_))
                              (let ((_e221695221716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221690221713_))))
                                (let ((_hd221694221719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221695221716_)))
                                      (_tl221693221721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221695221716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221693221721_))
                                      (let ((_e221698221724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221693221721_))))
                                        (let ((_hd221697221727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221698221724_)))
                                              (_tl221696221729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221698221724_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221696221729_))
                                              ((lambda (_L221732_ _L221733_)
                                                 (let ((_eid221748_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L221733_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht221684_
                                                      _eid221748_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L221732_
                                                      _ht221684_))))
                                               _hd221697221727_
                                               _hd221694221719_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221686221703_
                                                 _g221687221706_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221686221703_ _g221687221706_)))))
                              (let ()
                                (declare (not safe))
                                (_g221686221703_ _g221687221706_)))))
                      (let ()
                        (declare (not safe))
                        (_g221686221703_ _g221687221706_))))))
          (declare (not safe))
          (_g221685221750_ _stx221683_))))
    (define gxc#find-body%
      (lambda (_stx221596_ _arg221597_)
        (let* ((_g221599221618_
                (lambda (_g221600221615_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221600221615_))))
               (_g221598221680_
                (lambda (_g221600221621_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221600221621_))
                      (let ((_e221604221623_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221600221621_))))
                        (let ((_hd221603221626_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221604221623_)))
                              (_tl221602221628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221604221623_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221602221628_))
                              (let ((_g228508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221602221628_
                                        '0))))
                                (begin
                                  (let ((_g228509_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228508_)
                                               (##vector-length _g228508_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228509_ 2)))
                                        (error "Context expects 2 values"
                                               _g228509_)))
                                  (let ((_target221605221631_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228508_ 0)))
                                        (_tl221607221633_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228508_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221607221633_))
                                        (letrec ((_loop221608221636_
                                                  (lambda (_hd221606221639_
                                                           _expr221612221641_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221606221639_))
                                                        (let ((_e221609221644_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221606221639_))))
                  (let ((_lp-hd221610221647_
                         (let () (declare (not safe)) (##car _e221609221644_)))
                        (_lp-tl221611221649_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221609221644_))))
                    (let ((__tmp228513
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd221610221647_ _expr221612221641_))))
                      (declare (not safe))
                      (_loop221608221636_ _lp-tl221611221649_ __tmp228513))))
                (let ((_expr221613221652_ (reverse _expr221612221641_)))
                  ((lambda (_L221655_)
                     (let ((__tmp228512
                            (lambda (_g221668221670_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221668221670_
                                 _arg221597_))))
                           (__tmp228510
                            (let ((__tmp228511
                                   (lambda (_g221672221675_ _g221673221677_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221672221675_
                                             _g221673221677_)))))
                              (declare (not safe))
                              (foldr1 __tmp228511 '() _L221655_))))
                       (declare (not safe))
                       (ormap1 __tmp228512 __tmp228510)))
                   _expr221613221652_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221608221636_
                                             _target221605221631_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221599221618_
                                           _g221600221621_))))))
                              (let ()
                                (declare (not safe))
                                (_g221599221618_ _g221600221621_)))))
                      (let ()
                        (declare (not safe))
                        (_g221599221618_ _g221600221621_))))))
          (declare (not safe))
          (_g221598221680_ _stx221596_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx221528_ _arg221529_)
        (let* ((_g221531221548_
                (lambda (_g221532221545_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221532221545_))))
               (_g221530221593_
                (lambda (_g221532221551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221532221551_))
                      (let ((_e221537221553_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221532221551_))))
                        (let ((_hd221536221556_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221537221553_)))
                              (_tl221535221558_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221537221553_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221535221558_))
                              (let ((_e221540221561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221535221558_))))
                                (let ((_hd221539221564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221540221561_)))
                                      (_tl221538221566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221540221561_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221538221566_))
                                      (let ((_e221543221569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221538221566_))))
                                        (let ((_hd221542221572_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221543221569_)))
                                              (_tl221541221574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221543221569_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221541221574_))
                                              ((lambda (_L221577_ _L221578_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221577_
                                                    _arg221529_)))
                                               _hd221542221572_
                                               _hd221539221564_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221531221548_
                                                 _g221532221551_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221531221548_ _g221532221551_)))))
                              (let ()
                                (declare (not safe))
                                (_g221531221548_ _g221532221551_)))))
                      (let ()
                        (declare (not safe))
                        (_g221531221548_ _g221532221551_))))))
          (declare (not safe))
          (_g221530221593_ _stx221528_))))
    (define gxc#find-lambda%
      (lambda (_stx221460_ _arg221461_)
        (let* ((_g221463221480_
                (lambda (_g221464221477_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221464221477_))))
               (_g221462221525_
                (lambda (_g221464221483_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221464221483_))
                      (let ((_e221469221485_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221464221483_))))
                        (let ((_hd221468221488_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221469221485_)))
                              (_tl221467221490_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221469221485_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221467221490_))
                              (let ((_e221472221493_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221467221490_))))
                                (let ((_hd221471221496_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221472221493_)))
                                      (_tl221470221498_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221472221493_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221470221498_))
                                      (let ((_e221475221501_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221470221498_))))
                                        (let ((_hd221474221504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221475221501_)))
                                              (_tl221473221506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221475221501_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221473221506_))
                                              ((lambda (_L221509_ _L221510_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221509_
                                                    _arg221461_)))
                                               _hd221474221504_
                                               _hd221471221496_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221463221480_
                                                 _g221464221483_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221463221480_ _g221464221483_)))))
                              (let ()
                                (declare (not safe))
                                (_g221463221480_ _g221464221483_)))))
                      (let ()
                        (declare (not safe))
                        (_g221463221480_ _g221464221483_))))))
          (declare (not safe))
          (_g221462221525_ _stx221460_))))
    (define gxc#find-case-lambda%
      (lambda (_stx221342_ _arg221343_)
        (let* ((_g221345221373_
                (lambda (_g221346221370_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221346221370_))))
               (_g221344221457_
                (lambda (_g221346221376_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221346221376_))
                      (let ((_e221351221378_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221346221376_))))
                        (let ((_hd221350221381_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221351221378_)))
                              (_tl221349221383_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221351221378_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221349221383_))
                              (let ((_g228514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221349221383_
                                        '0))))
                                (begin
                                  (let ((_g228515_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228514_)
                                               (##vector-length _g228514_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228515_ 2)))
                                        (error "Context expects 2 values"
                                               _g228515_)))
                                  (let ((_target221352221386_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228514_ 0)))
                                        (_tl221354221388_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228514_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221354221388_))
                                        (letrec ((_loop221355221391_
                                                  (lambda (_hd221353221394_
                                                           _body221359221396_
                                                           _hd221360221398_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221353221394_))
                                                        (let ((_e221356221401_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221353221394_))))
                  (let ((_lp-hd221357221404_
                         (let () (declare (not safe)) (##car _e221356221401_)))
                        (_lp-tl221358221406_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221356221401_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd221357221404_))
                        (let ((_e221365221409_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd221357221404_))))
                          (let ((_hd221364221412_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221365221409_)))
                                (_tl221363221414_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221365221409_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221363221414_))
                                (let ((_e221368221417_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221363221414_))))
                                  (let ((_hd221367221420_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221368221417_)))
                                        (_tl221366221422_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221368221417_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221366221422_))
                                        (let ((__tmp228520
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221367221420_
                                                       _body221359221396_)))
                                              (__tmp228519
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221364221412_
                                                       _hd221360221398_))))
                                          (declare (not safe))
                                          (_loop221355221391_
                                           _lp-tl221358221406_
                                           __tmp228520
                                           __tmp228519))
                                        (let ()
                                          (declare (not safe))
                                          (_g221345221373_ _g221346221376_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221345221373_ _g221346221376_)))))
                        (let ()
                          (declare (not safe))
                          (_g221345221373_ _g221346221376_)))))
                (let ((_body221361221425_ (reverse _body221359221396_))
                      (_hd221362221427_ (reverse _hd221360221398_)))
                  ((lambda (_L221430_ _L221431_)
                     (let ((__tmp228518
                            (lambda (_g221445221447_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221445221447_
                                 _arg221343_))))
                           (__tmp228516
                            (let ((__tmp228517
                                   (lambda (_g221449221452_ _g221450221454_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221449221452_
                                             _g221450221454_)))))
                              (declare (not safe))
                              (foldr1 __tmp228517 '() _L221430_))))
                       (declare (not safe))
                       (ormap1 __tmp228518 __tmp228516)))
                   _body221361221425_
                   _hd221362221427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221355221391_
                                             _target221352221386_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221345221373_
                                           _g221346221376_))))))
                              (let ()
                                (declare (not safe))
                                (_g221345221373_ _g221346221376_)))))
                      (let ()
                        (declare (not safe))
                        (_g221345221373_ _g221346221376_))))))
          (declare (not safe))
          (_g221344221457_ _stx221342_))))
    (define gxc#find-let-values%
      (lambda (_stx221192_ _arg221193_)
        (let* ((_g221195221230_
                (lambda (_g221196221227_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221196221227_))))
               (_g221194221339_
                (lambda (_g221196221233_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221196221233_))
                      (let ((_e221202221235_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221196221233_))))
                        (let ((_hd221201221238_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221202221235_)))
                              (_tl221200221240_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221202221235_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221200221240_))
                              (let ((_e221205221243_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221200221240_))))
                                (let ((_hd221204221246_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221205221243_)))
                                      (_tl221203221248_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221205221243_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd221204221246_))
                                      (let ((_g228521_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd221204221246_
                                                '0))))
                                        (begin
                                          (let ((_g228522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228521_)
                                                       (##vector-length
                                                        _g228521_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228522_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228522_)))
                                          (let ((_target221206221251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228521_ 0)))
                                                (_tl221208221253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228521_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221208221253_))
                                                (letrec ((_loop221209221256_
                                                          (lambda (_hd221207221259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr221213221261_
                           _bind221214221263_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221207221259_))
                        (let ((_e221210221266_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221207221259_))))
                          (let ((_lp-hd221211221269_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221210221266_)))
                                (_lp-tl221212221271_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221210221266_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd221211221269_))
                                (let ((_e221219221274_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd221211221269_))))
                                  (let ((_hd221218221277_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221219221274_)))
                                        (_tl221217221279_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221219221274_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221217221279_))
                                        (let ((_e221222221282_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221217221279_))))
                                          (let ((_hd221221221285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221222221282_)))
                                                (_tl221220221287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221222221282_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221220221287_))
                                                (let ((__tmp228527
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221221221285_
                                                               _expr221213221261_)))
                                                      (__tmp228526
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221218221277_
                                                               _bind221214221263_))))
                                                  (declare (not safe))
                                                  (_loop221209221256_
                                                   _lp-tl221212221271_
                                                   __tmp228527
                                                   __tmp228526))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221195221230_
                                                   _g221196221233_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g221195221230_ _g221196221233_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221195221230_ _g221196221233_)))))
                        (let ((_expr221215221290_ (reverse _expr221213221261_))
                              (_bind221216221292_
                               (reverse _bind221214221263_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221203221248_))
                              (let ((_e221225221295_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221203221248_))))
                                (let ((_hd221224221298_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221225221295_)))
                                      (_tl221223221300_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221225221295_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221223221300_))
                                      ((lambda (_L221303_ _L221304_ _L221305_)
                                         (let ((_$e221336_
                                                (let ((__tmp228525
                                                       (lambda (_g221324221326_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g221324221326_
                                                            _arg221193_))))
                                                      (__tmp228523
                                                       (let ((__tmp228524
                                                              (lambda (_g221328221331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g221329221333_)
                        (let ()
                          (declare (not safe))
                          (cons _g221328221331_ _g221329221333_)))))
                 (declare (not safe))
                 (foldr1 __tmp228524 '() _L221304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp228525
                                                          __tmp228523))))
                                           (if _$e221336_
                                               _$e221336_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L221303_
                                                  _arg221193_)))))
                                       _hd221224221298_
                                       _expr221215221290_
                                       _bind221216221292_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221195221230_ _g221196221233_)))))
                              (let ()
                                (declare (not safe))
                                (_g221195221230_ _g221196221233_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop221209221256_
                                                     _target221206221251_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221195221230_
                                                   _g221196221233_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221195221230_ _g221196221233_)))))
                              (let ()
                                (declare (not safe))
                                (_g221195221230_ _g221196221233_)))))
                      (let ()
                        (declare (not safe))
                        (_g221195221230_ _g221196221233_))))))
          (declare (not safe))
          (_g221194221339_ _stx221192_))))
    (define gxc#find-setq%
      (lambda (_stx221124_ _arg221125_)
        (let* ((_g221127221144_
                (lambda (_g221128221141_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221128221141_))))
               (_g221126221189_
                (lambda (_g221128221147_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221128221147_))
                      (let ((_e221133221149_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221128221147_))))
                        (let ((_hd221132221152_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221133221149_)))
                              (_tl221131221154_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221133221149_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221131221154_))
                              (let ((_e221136221157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221131221154_))))
                                (let ((_hd221135221160_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221136221157_)))
                                      (_tl221134221162_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221136221157_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221134221162_))
                                      (let ((_e221139221165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221134221162_))))
                                        (let ((_hd221138221168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221139221165_)))
                                              (_tl221137221170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221139221165_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221137221170_))
                                              ((lambda (_L221173_ _L221174_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221173_
                                                    _arg221125_)))
                                               _hd221138221168_
                                               _hd221135221160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221127221144_
                                                 _g221128221147_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221127221144_ _g221128221147_)))))
                              (let ()
                                (declare (not safe))
                                (_g221127221144_ _g221128221147_)))))
                      (let ()
                        (declare (not safe))
                        (_g221127221144_ _g221128221147_))))))
          (declare (not safe))
          (_g221126221189_ _stx221124_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx221068_ _ids221069_)
        (let* ((_g221071221084_
                (lambda (_g221072221081_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221072221081_))))
               (_g221070221121_
                (lambda (_g221072221087_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221072221087_))
                      (let ((_e221076221089_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221072221087_))))
                        (let ((_hd221075221092_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221076221089_)))
                              (_tl221074221094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221076221089_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221074221094_))
                              (let ((_e221079221097_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221074221094_))))
                                (let ((_hd221078221100_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221079221097_)))
                                      (_tl221077221102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221079221097_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221077221102_))
                                      ((lambda (_L221105_)
                                         (let ((__tmp228528
                                                (lambda (_g221116221118_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L221105_
                                                     _g221116221118_)))))
                                           (declare (not safe))
                                           (find __tmp228528 _ids221069_)))
                                       _hd221078221100_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221071221084_ _g221072221087_)))))
                              (let ()
                                (declare (not safe))
                                (_g221071221084_ _g221072221087_)))))
                      (let ()
                        (declare (not safe))
                        (_g221071221084_ _g221072221087_))))))
          (declare (not safe))
          (_g221070221121_ _stx221068_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx220992_ _ids220993_)
        (let* ((_g220995221012_
                (lambda (_g220996221009_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220996221009_))))
               (_g220994221065_
                (lambda (_g220996221015_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220996221015_))
                      (let ((_e221001221017_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220996221015_))))
                        (let ((_hd221000221020_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221001221017_)))
                              (_tl220999221022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221001221017_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220999221022_))
                              (let ((_e221004221025_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220999221022_))))
                                (let ((_hd221003221028_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221004221025_)))
                                      (_tl221002221030_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221004221025_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221002221030_))
                                      (let ((_e221007221033_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221002221030_))))
                                        (let ((_hd221006221036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221007221033_)))
                                              (_tl221005221038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221007221033_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221005221038_))
                                              ((lambda (_L221041_ _L221042_)
                                                 (let ((_$e221062_
                                                        (let ((__tmp228529
                                                               (lambda (_g221057221059_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L221042_ _g221057221059_)))))
                  (declare (not safe))
                  (find __tmp228529 _ids220993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e221062_
                                                       _$e221062_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L221041_
                                                          _ids220993_)))))
                                               _hd221006221036_
                                               _hd221003221028_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220995221012_
                                                 _g220996221015_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220995221012_ _g220996221015_)))))
                              (let ()
                                (declare (not safe))
                                (_g220995221012_ _g220996221015_)))))
                      (let ()
                        (declare (not safe))
                        (_g220995221012_ _g220996221015_))))))
          (declare (not safe))
          (_g220994221065_ _stx220992_))))))
