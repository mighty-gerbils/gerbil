(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707740669)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl223609_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223609_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223609_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223609_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223609_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl223609_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl223605_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223605_ '%#declare gxc#xform-identity))
           _tbl223605_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl223601_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228423 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl223601_ __tmp228423))
           (let ((__tmp228424 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl223601_ __tmp228424))
           _tbl223601_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl223597_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223597_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223597_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223597_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223597_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223597_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl223597_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl223593_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228425 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223593_ __tmp228425))
           (let ((__tmp228426 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl223593_ __tmp228426))
           (let ()
             (declare (not safe))
             (table-set! _tbl223593_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223593_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223593_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223593_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223593_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl223593_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl223589_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228427 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223589_ __tmp228427))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223589_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223589_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl223589_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx223572_ . _args223574_)
        (let ((__tmp228429
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223574_)
                     (gxc#compile-e__0 _stx223572_)
                     (let ((_arg1223579_ (car _args223574_))
                           (_rest223581_ (cdr _args223574_)))
                       (if (null? _rest223581_)
                           (gxc#compile-e__1 _stx223572_ _arg1223579_)
                           (let ((_arg2223584_ (car _rest223581_))
                                 (_rest223586_ (cdr _rest223581_)))
                             (if (null? _rest223586_)
                                 (gxc#compile-e__2
                                  _stx223572_
                                  _arg1223579_
                                  _arg2223584_)
                                 (apply gxc#compile-e
                                        _stx223572_
                                        _arg1223579_
                                        _arg2223584_
                                        _rest223586_))))))))
              (__tmp228428 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp228429
           gxc#current-compile-methods
           __tmp228428))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl223569_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228430 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223569_ __tmp228430))
           (let ()
             (declare (not safe))
             (table-set! _tbl223569_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223569_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223569_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223569_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223569_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl223569_))))
    (define gxc#apply-collect-methods
      (lambda (_stx223552_ . _args223554_)
        (let ((__tmp228432
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223554_)
                     (gxc#compile-e__0 _stx223552_)
                     (let ((_arg1223559_ (car _args223554_))
                           (_rest223561_ (cdr _args223554_)))
                       (if (null? _rest223561_)
                           (gxc#compile-e__1 _stx223552_ _arg1223559_)
                           (let ((_arg2223564_ (car _rest223561_))
                                 (_rest223566_ (cdr _rest223561_)))
                             (if (null? _rest223566_)
                                 (gxc#compile-e__2
                                  _stx223552_
                                  _arg1223559_
                                  _arg2223564_)
                                 (apply gxc#compile-e
                                        _stx223552_
                                        _arg1223559_
                                        _arg2223564_
                                        _rest223566_))))))))
              (__tmp228431 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp228432
           gxc#current-compile-methods
           __tmp228431))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl223549_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228433 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223549_ __tmp228433))
           (let ()
             (declare (not safe))
             (table-set! _tbl223549_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223549_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223549_ '%#set! gxc#expression-subst-setq%))
           _tbl223549_))))
    (define gxc#apply-expression-subst
      (lambda (_stx223532_ . _args223534_)
        (let ((__tmp228435
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223534_)
                     (gxc#compile-e__0 _stx223532_)
                     (let ((_arg1223539_ (car _args223534_))
                           (_rest223541_ (cdr _args223534_)))
                       (if (null? _rest223541_)
                           (gxc#compile-e__1 _stx223532_ _arg1223539_)
                           (let ((_arg2223544_ (car _rest223541_))
                                 (_rest223546_ (cdr _rest223541_)))
                             (if (null? _rest223546_)
                                 (gxc#compile-e__2
                                  _stx223532_
                                  _arg1223539_
                                  _arg2223544_)
                                 (apply gxc#compile-e
                                        _stx223532_
                                        _arg1223539_
                                        _arg2223544_
                                        _rest223546_))))))))
              (__tmp228434 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp228435
           gxc#current-compile-methods
           __tmp228434))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl223529_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228436 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl223529_ __tmp228436))
           (let ()
             (declare (not safe))
             (table-set! _tbl223529_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223529_ '%#set! gxc#expression-subst*-setq%))
           _tbl223529_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx223512_ . _args223514_)
        (let ((__tmp228438
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223514_)
                     (gxc#compile-e__0 _stx223512_)
                     (let ((_arg1223519_ (car _args223514_))
                           (_rest223521_ (cdr _args223514_)))
                       (if (null? _rest223521_)
                           (gxc#compile-e__1 _stx223512_ _arg1223519_)
                           (let ((_arg2223524_ (car _rest223521_))
                                 (_rest223526_ (cdr _rest223521_)))
                             (if (null? _rest223526_)
                                 (gxc#compile-e__2
                                  _stx223512_
                                  _arg1223519_
                                  _arg2223524_)
                                 (apply gxc#compile-e
                                        _stx223512_
                                        _arg1223519_
                                        _arg2223524_
                                        _rest223526_))))))))
              (__tmp228437 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp228438
           gxc#current-compile-methods
           __tmp228437))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl223509_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228439 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl223509_ __tmp228439))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223509_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223509_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223509_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl223509_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl223505_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228440 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl223505_ __tmp228440))
           (let ()
             (declare (not safe))
             (table-set! _tbl223505_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223505_ '%#set! gxc#find-var-refs-setq%))
           _tbl223505_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx223488_ . _args223490_)
        (let ((__tmp228442
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223490_)
                     (gxc#compile-e__0 _stx223488_)
                     (let ((_arg1223495_ (car _args223490_))
                           (_rest223497_ (cdr _args223490_)))
                       (if (null? _rest223497_)
                           (gxc#compile-e__1 _stx223488_ _arg1223495_)
                           (let ((_arg2223500_ (car _rest223497_))
                                 (_rest223502_ (cdr _rest223497_)))
                             (if (null? _rest223502_)
                                 (gxc#compile-e__2
                                  _stx223488_
                                  _arg1223495_
                                  _arg2223500_)
                                 (apply gxc#compile-e
                                        _stx223488_
                                        _arg1223495_
                                        _arg2223500_
                                        _rest223502_))))))))
              (__tmp228441 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228442
           gxc#current-compile-methods
           __tmp228441))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl223485_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228443 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl223485_ __tmp228443))
           (let ()
             (declare (not safe))
             (table-set! _tbl223485_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223485_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl223485_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx223468_ . _args223470_)
        (let ((__tmp228445
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223470_)
                     (gxc#compile-e__0 _stx223468_)
                     (let ((_arg1223475_ (car _args223470_))
                           (_rest223477_ (cdr _args223470_)))
                       (if (null? _rest223477_)
                           (gxc#compile-e__1 _stx223468_ _arg1223475_)
                           (let ((_arg2223480_ (car _rest223477_))
                                 (_rest223482_ (cdr _rest223477_)))
                             (if (null? _rest223482_)
                                 (gxc#compile-e__2
                                  _stx223468_
                                  _arg1223475_
                                  _arg2223480_)
                                 (apply gxc#compile-e
                                        _stx223468_
                                        _arg1223475_
                                        _arg2223480_
                                        _rest223482_))))))))
              (__tmp228444 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228445
           gxc#current-compile-methods
           __tmp228444))))
    (define gxc#xform-identity
      (lambda (_stx223465_ . _args223466_) _stx223465_))
    (define gxc#xform-wrap-source
      (lambda (_stx223462_ _src-stx223463_)
        (let ((__tmp228446
               (let () (declare (not safe)) (gx#stx-source _src-stx223463_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx223462_ __tmp228446))))
    (define gxc#xform-apply-compile-e
      (lambda (_args223449_)
        (lambda (_stx223451_)
          (if (let () (declare (not safe)) (null? _args223449_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx223451_))
              (let ((_arg1223453_ (car _args223449_))
                    (_rest223455_ (cdr _args223449_)))
                (if (let () (declare (not safe)) (null? _rest223455_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx223451_ _arg1223453_))
                    (let ((_arg2223458_ (car _rest223455_))
                          (_rest223460_ (cdr _rest223455_)))
                      (if (let () (declare (not safe)) (null? _rest223460_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx223451_
                             _arg1223453_
                             _arg2223458_))
                          (apply gxc#compile-e
                                 _stx223451_
                                 _arg1223453_
                                 _arg2223458_
                                 _rest223460_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx223408_ . _args223409_)
        (let* ((_g223411223421_
                (lambda (_g223412223418_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223412223418_))))
               (_g223410223446_
                (lambda (_g223412223424_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223412223424_))
                      (let ((_e223416223426_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223412223424_))))
                        (let ((_hd223415223429_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223416223426_)))
                              (_tl223414223431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223416223426_))))
                          ((lambda (_L223434_)
                             (let* ((_forms223444_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223409_))
                                          _L223434_))
                                    (__tmp228447
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms223444_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228447
                                _stx223408_)))
                           _tl223414223431_)))
                      (let ()
                        (declare (not safe))
                        (_g223411223421_ _g223412223424_))))))
          (declare (not safe))
          (_g223410223446_ _stx223408_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx223366_ . _args223367_)
        (let* ((_g223369223379_
                (lambda (_g223370223376_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223370223376_))))
               (_g223368223405_
                (lambda (_g223370223382_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223370223382_))
                      (let ((_e223374223384_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223370223382_))))
                        (let ((_hd223373223387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223374223384_)))
                              (_tl223372223389_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223374223384_))))
                          ((lambda (_L223392_)
                             (let ((__tmp228450
                                    (lambda ()
                                      (let* ((_forms223403_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args223367_))
                                                   _L223392_))
                                             (__tmp228451
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms223403_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp228451
                                         _stx223366_))))
                                   (__tmp228448
                                    (let ((__tmp228449
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp228449 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp228450
                                gx#current-expander-phi
                                __tmp228448)))
                           _tl223372223389_)))
                      (let ()
                        (declare (not safe))
                        (_g223369223379_ _g223370223382_))))))
          (declare (not safe))
          (_g223368223405_ _stx223366_))))
    (define gxc#xform-module%
      (lambda (_stx223294_ . _args223295_)
        (let* ((_g223297223311_
                (lambda (_g223298223308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223298223308_))))
               (_g223296223363_
                (lambda (_g223298223314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223298223314_))
                      (let ((_e223303223316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223298223314_))))
                        (let ((_hd223302223319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223303223316_)))
                              (_tl223301223321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223303223316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223301223321_))
                              (let ((_e223306223324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223301223321_))))
                                (let ((_hd223305223327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223306223324_)))
                                      (_tl223304223329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223306223324_))))
                                  ((lambda (_L223332_ _L223333_)
                                     (let* ((_ctx223346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L223333_)))
                                            (_code223348_
                                             (##structure-ref
                                              _ctx223346_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code223360_
                                             (let ((__tmp228452
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args223295_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code223348_))
                                                          (let ((_arg1223351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args223295_))
                        (_rest223353_ (cdr _args223295_)))
                    (if (let () (declare (not safe)) (null? _rest223353_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code223348_ _arg1223351_))
                        (let ((_arg2223356_ (car _rest223353_))
                              (_rest223358_ (cdr _rest223353_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest223358_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code223348_
                                 _arg1223351_
                                 _arg2223356_))
                              (apply gxc#compile-e
                                     _code223348_
                                     _arg1223351_
                                     _arg2223356_
                                     _rest223358_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp228452
                                                gx#current-expander-context
                                                _ctx223346_))))
                                       (##structure-set!
                                        _ctx223346_
                                        _code223360_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp228453
                                              (let ((__tmp228454
                                                     (let ((__tmp228455
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code223360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L223333_ __tmp228455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp228454))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp228453
                                          _stx223294_))))
                                   _tl223304223329_
                                   _hd223305223327_)))
                              (let ()
                                (declare (not safe))
                                (_g223297223311_ _g223298223314_)))))
                      (let ()
                        (declare (not safe))
                        (_g223297223311_ _g223298223314_))))))
          (declare (not safe))
          (_g223296223363_ _stx223294_))))
    (define gxc#xform-define-values%
      (lambda (_stx223215_ . _args223216_)
        (let* ((_g223218223235_
                (lambda (_g223219223232_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223219223232_))))
               (_g223217223291_
                (lambda (_g223219223238_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223219223238_))
                      (let ((_e223224223240_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223219223238_))))
                        (let ((_hd223223223243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223224223240_)))
                              (_tl223222223245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223224223240_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223222223245_))
                              (let ((_e223227223248_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223222223245_))))
                                (let ((_hd223226223251_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223227223248_)))
                                      (_tl223225223253_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223227223248_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223225223253_))
                                      (let ((_e223230223256_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223225223253_))))
                                        (let ((_hd223229223259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223230223256_)))
                                              (_tl223228223261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223230223256_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223228223261_))
                                              ((lambda (_L223264_ _L223265_)
                                                 (let* ((_expr223289_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223216_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223264_))
                     (let ((_arg1223280_ (car _args223216_))
                           (_rest223282_ (cdr _args223216_)))
                       (if (let () (declare (not safe)) (null? _rest223282_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223264_ _arg1223280_))
                           (let ((_arg2223285_ (car _rest223282_))
                                 (_rest223287_ (cdr _rest223282_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223287_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223264_
                                    _arg1223280_
                                    _arg2223285_))
                                 (apply gxc#compile-e
                                        _L223264_
                                        _arg1223280_
                                        _arg2223285_
                                        _rest223287_)))))))
                (__tmp228456
                 (let ((__tmp228457
                        (let ((__tmp228458
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223289_ '()))))
                          (declare (not safe))
                          (cons _L223265_ __tmp228458))))
                   (declare (not safe))
                   (cons '%#define-values __tmp228457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228456
                                                    _stx223215_)))
                                               _hd223229223259_
                                               _hd223226223251_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223218223235_
                                                 _g223219223238_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223218223235_ _g223219223238_)))))
                              (let ()
                                (declare (not safe))
                                (_g223218223235_ _g223219223238_)))))
                      (let ()
                        (declare (not safe))
                        (_g223218223235_ _g223219223238_))))))
          (declare (not safe))
          (_g223217223291_ _stx223215_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx223135_ . _args223136_)
        (let* ((_g223138223155_
                (lambda (_g223139223152_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223139223152_))))
               (_g223137223212_
                (lambda (_g223139223158_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223139223158_))
                      (let ((_e223144223160_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223139223158_))))
                        (let ((_hd223143223163_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223144223160_)))
                              (_tl223142223165_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223144223160_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223142223165_))
                              (let ((_e223147223168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223142223165_))))
                                (let ((_hd223146223171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223147223168_)))
                                      (_tl223145223173_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223147223168_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223145223173_))
                                      (let ((_e223150223176_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223145223173_))))
                                        (let ((_hd223149223179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223150223176_)))
                                              (_tl223148223181_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223150223176_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223148223181_))
                                              ((lambda (_L223184_ _L223185_)
                                                 (let ((__tmp228461
                                                        (lambda ()
                                                          (let* ((_expr223210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args223136_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L223184_))
                              (let ((_arg1223201_ (car _args223136_))
                                    (_rest223203_ (cdr _args223136_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest223203_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L223184_
                                       _arg1223201_))
                                    (let ((_arg2223206_ (car _rest223203_))
                                          (_rest223208_ (cdr _rest223203_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest223208_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L223184_
                                             _arg1223201_
                                             _arg2223206_))
                                          (apply gxc#compile-e
                                                 _L223184_
                                                 _arg1223201_
                                                 _arg2223206_
                                                 _rest223208_)))))))
                         (__tmp228462
                          (let ((__tmp228463
                                 (let ((__tmp228464
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr223210_ '()))))
                                   (declare (not safe))
                                   (cons _L223185_ __tmp228464))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp228463))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp228462 _stx223135_))))
               (__tmp228459
                (let ((__tmp228460 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp228460 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp228461
                                                    gx#current-expander-phi
                                                    __tmp228459)))
                                               _hd223149223179_
                                               _hd223146223171_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223138223155_
                                                 _g223139223158_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223138223155_ _g223139223158_)))))
                              (let ()
                                (declare (not safe))
                                (_g223138223155_ _g223139223158_)))))
                      (let ()
                        (declare (not safe))
                        (_g223138223155_ _g223139223158_))))))
          (declare (not safe))
          (_g223137223212_ _stx223135_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx223056_ . _args223057_)
        (let* ((_g223059223076_
                (lambda (_g223060223073_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223060223073_))))
               (_g223058223132_
                (lambda (_g223060223079_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223060223079_))
                      (let ((_e223065223081_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223060223079_))))
                        (let ((_hd223064223084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223065223081_)))
                              (_tl223063223086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223065223081_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223063223086_))
                              (let ((_e223068223089_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223063223086_))))
                                (let ((_hd223067223092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223068223089_)))
                                      (_tl223066223094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223068223089_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223066223094_))
                                      (let ((_e223071223097_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223066223094_))))
                                        (let ((_hd223070223100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223071223097_)))
                                              (_tl223069223102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223071223097_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223069223102_))
                                              ((lambda (_L223105_ _L223106_)
                                                 (let* ((_expr223130_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223057_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223105_))
                     (let ((_arg1223121_ (car _args223057_))
                           (_rest223123_ (cdr _args223057_)))
                       (if (let () (declare (not safe)) (null? _rest223123_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223105_ _arg1223121_))
                           (let ((_arg2223126_ (car _rest223123_))
                                 (_rest223128_ (cdr _rest223123_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223128_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223105_
                                    _arg1223121_
                                    _arg2223126_))
                                 (apply gxc#compile-e
                                        _L223105_
                                        _arg1223121_
                                        _arg2223126_
                                        _rest223128_)))))))
                (__tmp228465
                 (let ((__tmp228466
                        (let ((__tmp228467
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223130_ '()))))
                          (declare (not safe))
                          (cons _L223106_ __tmp228467))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp228466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228465
                                                    _stx223056_)))
                                               _hd223070223100_
                                               _hd223067223092_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223059223076_
                                                 _g223060223079_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223059223076_ _g223060223079_)))))
                              (let ()
                                (declare (not safe))
                                (_g223059223076_ _g223060223079_)))))
                      (let ()
                        (declare (not safe))
                        (_g223059223076_ _g223060223079_))))))
          (declare (not safe))
          (_g223058223132_ _stx223056_))))
    (define gxc#xform-lambda%
      (lambda (_stx222999_ . _args223000_)
        (let* ((_g223002223016_
                (lambda (_g223003223013_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223003223013_))))
               (_g223001223053_
                (lambda (_g223003223019_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223003223019_))
                      (let ((_e223008223021_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223003223019_))))
                        (let ((_hd223007223024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223008223021_)))
                              (_tl223006223026_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223008223021_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223006223026_))
                              (let ((_e223011223029_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223006223026_))))
                                (let ((_hd223010223032_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223011223029_)))
                                      (_tl223009223034_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223011223029_))))
                                  ((lambda (_L223037_ _L223038_)
                                     (let* ((_body223051_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args223000_))
                                                  _L223037_))
                                            (__tmp228468
                                             (let ((__tmp228469
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L223038_
                                                            _body223051_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp228469))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp228468
                                        _stx222999_)))
                                   _tl223009223034_
                                   _hd223010223032_)))
                              (let ()
                                (declare (not safe))
                                (_g223002223016_ _g223003223019_)))))
                      (let ()
                        (declare (not safe))
                        (_g223002223016_ _g223003223019_))))))
          (declare (not safe))
          (_g223001223053_ _stx222999_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx222912_ . _args222913_)
        (letrec ((_clause-e222915_
                  (lambda (_clause222956_)
                    (let* ((_g222958222969_
                            (lambda (_g222959222966_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g222959222966_))))
                           (_g222957222996_
                            (lambda (_g222959222972_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g222959222972_))
                                  (let ((_e222964222974_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g222959222972_))))
                                    (let ((_hd222963222977_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222964222974_)))
                                          (_tl222962222979_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222964222974_))))
                                      ((lambda (_L222982_ _L222983_)
                                         (let ((_body222994_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args222913_))
                                                     _L222982_)))
                                           (declare (not safe))
                                           (cons _L222983_ _body222994_)))
                                       _tl222962222979_
                                       _hd222963222977_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222958222969_ _g222959222972_))))))
                      (declare (not safe))
                      (_g222957222996_ _clause222956_)))))
          (let* ((_g222917222927_
                  (lambda (_g222918222924_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g222918222924_))))
                 (_g222916222953_
                  (lambda (_g222918222930_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g222918222930_))
                        (let ((_e222922222932_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g222918222930_))))
                          (let ((_hd222921222935_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222922222932_)))
                                (_tl222920222937_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222922222932_))))
                            ((lambda (_L222940_)
                               (let* ((_clauses222951_
                                       (map _clause-e222915_ _L222940_))
                                      (__tmp228470
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses222951_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp228470
                                  _stx222912_)))
                             _tl222920222937_)))
                        (let ()
                          (declare (not safe))
                          (_g222917222927_ _g222918222930_))))))
            (declare (not safe))
            (_g222916222953_ _stx222912_)))))
    (define gxc#xform-let-values%
      (lambda (_stx222706_ . _args222707_)
        (let* ((_g222709222742_
                (lambda (_g222710222739_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222710222739_))))
               (_g222708222909_
                (lambda (_g222710222745_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222710222745_))
                      (let ((_e222717222747_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222710222745_))))
                        (let ((_hd222716222750_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222717222747_)))
                              (_tl222715222752_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222717222747_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222715222752_))
                              (let ((_e222720222755_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222715222752_))))
                                (let ((_hd222719222758_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222720222755_)))
                                      (_tl222718222760_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222720222755_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222719222758_))
                                      (let ((_g228471_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222719222758_
                                                '0))))
                                        (begin
                                          (let ((_g228472_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228471_)
                                                       (##vector-length
                                                        _g228471_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228472_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228472_)))
                                          (let ((_target222721222763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228471_ 0)))
                                                (_tl222723222765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228471_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222723222765_))
                                                (letrec ((_loop222724222768_
                                                          (lambda (_hd222722222771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222728222773_
                           _hd222729222775_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222722222771_))
                        (let ((_e222725222778_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222722222771_))))
                          (let ((_lp-hd222726222781_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222725222778_)))
                                (_lp-tl222727222783_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222725222778_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222726222781_))
                                (let ((_e222734222786_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222726222781_))))
                                  (let ((_hd222733222789_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222734222786_)))
                                        (_tl222732222791_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222734222786_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222732222791_))
                                        (let ((_e222737222794_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222732222791_))))
                                          (let ((_hd222736222797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222737222794_)))
                                                (_tl222735222799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222737222794_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222735222799_))
                                                (let ((__tmp228485
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222736222797_
                                                               _expr222728222773_)))
                                                      (__tmp228484
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222733222789_
                                                               _hd222729222775_))))
                                                  (declare (not safe))
                                                  (_loop222724222768_
                                                   _lp-tl222727222783_
                                                   __tmp228485
                                                   __tmp228484))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222709222742_
                                                   _g222710222745_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222709222742_ _g222710222745_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222709222742_ _g222710222745_)))))
                        (let ((_expr222730222802_ (reverse _expr222728222773_))
                              (_hd222731222804_ (reverse _hd222729222775_)))
                          ((lambda (_L222807_ _L222808_ _L222809_ _L222810_)
                             (let* ((_g222829222845_
                                     (lambda (_g222830222842_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g222830222842_))))
                                    (_g222828222899_
                                     (lambda (_g222830222848_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g222830222848_))
                                           (let ((_g228473_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g222830222848_
                                                     '0))))
                                             (begin
                                               (let ((_g228474_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g228473_)
                                                            (##vector-length
                                                             _g228473_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g228474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g228474_)))
                                               (let ((_target222832222850_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228473_
                                                         0)))
                                                     (_tl222834222852_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228473_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222834222852_))
                                                     (letrec ((_loop222835222855_
                                                               (lambda (_hd222833222858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr222839222860_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd222833222858_))
                             (let ((_e222836222863_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd222833222858_))))
                               (let ((_lp-hd222837222866_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e222836222863_)))
                                     (_lp-tl222838222868_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e222836222863_))))
                                 (let ((__tmp228481
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd222837222866_
                                                _expr222839222860_))))
                                   (declare (not safe))
                                   (_loop222835222855_
                                    _lp-tl222838222868_
                                    __tmp228481))))
                             (let ((_expr222840222871_
                                    (reverse _expr222839222860_)))
                               ((lambda (_L222874_)
                                  (let ()
                                    (let* ((_body222887_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args222707_))
                                                 _L222807_))
                                           (__tmp228475
                                            (let ((__tmp228476
                                                   (let ((__tmp228477
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L222874_
                                                               _L222809_))
                                                            (let ((__tmp228478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222888222892_
                                    _g222889222894_
                                    _g222890222896_)
                             (let ((__tmp228479
                                    (let ((__tmp228480
                                           (let ()
                                             (declare (not safe))
                                             (cons _g222888222892_ '()))))
                                      (declare (not safe))
                                      (cons _g222889222894_ __tmp228480))))
                               (declare (not safe))
                               (cons __tmp228479 _g222890222896_)))))
                      (declare (not safe))
                      (foldr2 __tmp228478 '() _L222874_ _L222809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp228477
                                                           _body222887_))))
                                              (declare (not safe))
                                              (cons _L222810_ __tmp228476))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp228475
                                       _stx222706_))))
                                _expr222840222871_))))))
               (let ()
                 (declare (not safe))
                 (_loop222835222855_ _target222832222850_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g222829222845_
                                                        _g222830222848_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g222829222845_
                                              _g222830222848_)))))
                                    (__tmp228482
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222707_))
                                          (let ((__tmp228483
                                                 (lambda (_g222901222904_
                                                          _g222902222906_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g222901222904_
                                                           _g222902222906_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp228483
                                                    '()
                                                    _L222808_)))))
                               (declare (not safe))
                               (_g222828222899_ __tmp228482)))
                           _tl222718222760_
                           _expr222730222802_
                           _hd222731222804_
                           _hd222716222750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222724222768_
                                                     _target222721222763_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222709222742_
                                                   _g222710222745_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222709222742_ _g222710222745_)))))
                              (let ()
                                (declare (not safe))
                                (_g222709222742_ _g222710222745_)))))
                      (let ()
                        (declare (not safe))
                        (_g222709222742_ _g222710222745_))))))
          (declare (not safe))
          (_g222708222909_ _stx222706_))))
    (define gxc#xform-operands
      (lambda (_stx222662_ . _args222663_)
        (let* ((_g222665222676_
                (lambda (_g222666222673_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222666222673_))))
               (_g222664222703_
                (lambda (_g222666222679_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222666222679_))
                      (let ((_e222671222681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222666222679_))))
                        (let ((_hd222670222684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222671222681_)))
                              (_tl222669222686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222671222681_))))
                          ((lambda (_L222689_ _L222690_)
                             (let* ((_rands222701_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222663_))
                                          _L222689_))
                                    (__tmp228486
                                     (let ()
                                       (declare (not safe))
                                       (cons _L222690_ _rands222701_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228486
                                _stx222662_)))
                           _tl222669222686_
                           _hd222670222684_)))
                      (let ()
                        (declare (not safe))
                        (_g222665222676_ _g222666222679_))))))
          (declare (not safe))
          (_g222664222703_ _stx222662_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx222583_ . _args222584_)
        (let* ((_g222586222603_
                (lambda (_g222587222600_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222587222600_))))
               (_g222585222659_
                (lambda (_g222587222606_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222587222606_))
                      (let ((_e222592222608_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222587222606_))))
                        (let ((_hd222591222611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222592222608_)))
                              (_tl222590222613_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222592222608_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222590222613_))
                              (let ((_e222595222616_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222590222613_))))
                                (let ((_hd222594222619_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222595222616_)))
                                      (_tl222593222621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222595222616_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222593222621_))
                                      (let ((_e222598222624_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222593222621_))))
                                        (let ((_hd222597222627_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222598222624_)))
                                              (_tl222596222629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222598222624_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222596222629_))
                                              ((lambda (_L222632_ _L222633_)
                                                 (let* ((_expr222657_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args222584_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L222632_))
                     (let ((_arg1222648_ (car _args222584_))
                           (_rest222650_ (cdr _args222584_)))
                       (if (let () (declare (not safe)) (null? _rest222650_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L222632_ _arg1222648_))
                           (let ((_arg2222653_ (car _rest222650_))
                                 (_rest222655_ (cdr _rest222650_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest222655_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L222632_
                                    _arg1222648_
                                    _arg2222653_))
                                 (apply gxc#compile-e
                                        _L222632_
                                        _arg1222648_
                                        _arg2222653_
                                        _rest222655_)))))))
                (__tmp228487
                 (let ((__tmp228488
                        (let ((__tmp228489
                               (let ()
                                 (declare (not safe))
                                 (cons _expr222657_ '()))))
                          (declare (not safe))
                          (cons _L222633_ __tmp228489))))
                   (declare (not safe))
                   (cons '%#set! __tmp228488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228487
                                                    _stx222583_)))
                                               _hd222597222627_
                                               _hd222594222619_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222586222603_
                                                 _g222587222606_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222586222603_ _g222587222606_)))))
                              (let ()
                                (declare (not safe))
                                (_g222586222603_ _g222587222606_)))))
                      (let ()
                        (declare (not safe))
                        (_g222586222603_ _g222587222606_))))))
          (declare (not safe))
          (_g222585222659_ _stx222583_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx222514_)
        (let* ((_g222516222533_
                (lambda (_g222517222530_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222517222530_))))
               (_g222515222580_
                (lambda (_g222517222536_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222517222536_))
                      (let ((_e222522222538_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222517222536_))))
                        (let ((_hd222521222541_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222522222538_)))
                              (_tl222520222543_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222522222538_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222520222543_))
                              (let ((_e222525222546_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222520222543_))))
                                (let ((_hd222524222549_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222525222546_)))
                                      (_tl222523222551_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222525222546_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222523222551_))
                                      (let ((_e222528222554_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222523222551_))))
                                        (let ((_hd222527222557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222528222554_)))
                                              (_tl222526222559_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222528222554_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222526222559_))
                                              ((lambda (_L222562_ _L222563_)
                                                 (let ((_sym222578_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L222563_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym222578_))
                                                   (let ((__tmp228490
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp228490
                                                      _sym222578_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L222562_))))
                                               _hd222527222557_
                                               _hd222524222549_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222516222533_
                                                 _g222517222536_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222516222533_ _g222517222536_)))))
                              (let ()
                                (declare (not safe))
                                (_g222516222533_ _g222517222536_)))))
                      (let ()
                        (declare (not safe))
                        (_g222516222533_ _g222517222536_))))))
          (declare (not safe))
          (_g222515222580_ _stx222514_))))
    (define gxc#collect-methods-call%
      (lambda (_stx222068_)
        (let* ((___stx228180228181_ _stx222068_)
               (_g222072222174_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx228180228181_)))))
          (let ((___kont228182228183_
                 (lambda (_L222464_ _L222465_ _L222466_ _L222467_ _L222468_)
                   (let ((__tmp228491
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222465_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228491))))
                (___kont228184228185_
                 (lambda (_L222290_ _L222291_ _L222292_ _L222293_)
                   (let ((__tmp228492
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222290_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228492))))
                (___kont228186228187_ (lambda () '#!void)))
            (let ((___match228315228316_
                   (lambda (_e222081222336_
                            _hd222080222339_
                            _tl222079222341_
                            _e222084222344_
                            _hd222083222347_
                            _tl222082222349_
                            _e222087222352_
                            _hd222086222355_
                            _tl222085222357_
                            _e222090222360_
                            _hd222089222363_
                            _tl222088222365_
                            _e222093222368_
                            _hd222092222371_
                            _tl222091222373_
                            _e222096222376_
                            _hd222095222379_
                            _tl222094222381_
                            _e222099222384_
                            _hd222098222387_
                            _tl222097222389_
                            _e222102222392_
                            _hd222101222395_
                            _tl222100222397_
                            _e222105222400_
                            _hd222104222403_
                            _tl222103222405_
                            _e222108222408_
                            _hd222107222411_
                            _tl222106222413_
                            _e222111222416_
                            _hd222110222419_
                            _tl222109222421_
                            _e222114222424_
                            _hd222113222427_
                            _tl222112222429_
                            _e222117222432_
                            _hd222116222435_
                            _tl222115222437_
                            _e222120222440_
                            _hd222119222443_
                            _tl222118222445_
                            _e222123222448_
                            _hd222122222451_
                            _tl222121222453_
                            _e222126222456_
                            _hd222125222459_
                            _tl222124222461_)
                     (let ((_L222464_ _hd222125222459_)
                           (_L222465_ _hd222116222435_)
                           (_L222466_ _hd222107222411_)
                           (_L222467_ _hd222098222387_)
                           (_L222468_ _hd222089222363_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L222468_
                              'bind-method!))
                           (___kont228182228183_
                            _L222464_
                            _L222465_
                            _L222466_
                            _L222467_
                            _L222468_)
                           (___kont228186228187_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx228180228181_))
                  (let ((_e222081222336_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx228180228181_))))
                    (let ((_tl222079222341_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222081222336_)))
                          (_hd222080222339_
                           (let ()
                             (declare (not safe))
                             (##car _e222081222336_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222079222341_))
                          (let ((_e222084222344_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222079222341_))))
                            (let ((_tl222082222349_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222084222344_)))
                                  (_hd222083222347_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222084222344_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222083222347_))
                                  (let ((_e222087222352_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222083222347_))))
                                    (let ((_tl222085222357_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222087222352_)))
                                          (_hd222086222355_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222087222352_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd222086222355_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd222086222355_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222085222357_))
                                                  (let ((_e222090222360_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222085222357_))))
                                                    (let ((_tl222088222365_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222090222360_)))
                                                          (_hd222089222363_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222090222360_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222088222365_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222082222349_))
                      (let ((_e222093222368_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222082222349_))))
                        (let ((_tl222091222373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222093222368_)))
                              (_hd222092222371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222093222368_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222092222371_))
                              (let ((_e222096222376_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222092222371_))))
                                (let ((_tl222094222381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222096222376_)))
                                      (_hd222095222379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222096222376_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd222095222379_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd222095222379_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222094222381_))
                                              (let ((_e222099222384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222094222381_))))
                                                (let ((_tl222097222389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222099222384_)))
                                                      (_hd222098222387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222099222384_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222097222389_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl222091222373_))
                                                          (let ((_e222102222392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl222091222373_))))
                    (let ((_tl222100222397_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222102222392_)))
                          (_hd222101222395_
                           (let ()
                             (declare (not safe))
                             (##car _e222102222392_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd222101222395_))
                          (let ((_e222105222400_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd222101222395_))))
                            (let ((_tl222103222405_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222105222400_)))
                                  (_hd222104222403_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222105222400_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd222104222403_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd222104222403_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl222103222405_))
                                          (let ((_e222108222408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl222103222405_))))
                                            (let ((_tl222106222413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222108222408_)))
                                                  (_hd222107222411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222108222408_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl222106222413_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222100222397_))
                                                      (let ((_e222111222416_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222100222397_))))
                (let ((_tl222109222421_
                       (let () (declare (not safe)) (##cdr _e222111222416_)))
                      (_hd222110222419_
                       (let () (declare (not safe)) (##car _e222111222416_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222110222419_))
                      (let ((_e222114222424_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222110222419_))))
                        (let ((_tl222112222429_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222114222424_)))
                              (_hd222113222427_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222114222424_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222113222427_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222113222427_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222112222429_))
                                      (let ((_e222117222432_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222112222429_))))
                                        (let ((_tl222115222437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222117222432_)))
                                              (_hd222116222435_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222117222432_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222115222437_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222109222421_))
                                                  (let ((_e222120222440_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222109222421_))))
                                                    (let ((_tl222118222445_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222120222440_)))
                                                          (_hd222119222443_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222120222440_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222119222443_))
                                                          (let ((_e222123222448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222119222443_))))
                    (let ((_tl222121222453_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222123222448_)))
                          (_hd222122222451_
                           (let ()
                             (declare (not safe))
                             (##car _e222123222448_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222122222451_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd222122222451_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222121222453_))
                                  (let ((_e222126222456_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222121222453_))))
                                    (let ((_tl222124222461_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222126222456_)))
                                          (_hd222125222459_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222126222456_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222124222461_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222118222445_))
                                              (___match228315228316_
                                               _e222081222336_
                                               _hd222080222339_
                                               _tl222079222341_
                                               _e222084222344_
                                               _hd222083222347_
                                               _tl222082222349_
                                               _e222087222352_
                                               _hd222086222355_
                                               _tl222085222357_
                                               _e222090222360_
                                               _hd222089222363_
                                               _tl222088222365_
                                               _e222093222368_
                                               _hd222092222371_
                                               _tl222091222373_
                                               _e222096222376_
                                               _hd222095222379_
                                               _tl222094222381_
                                               _e222099222384_
                                               _hd222098222387_
                                               _tl222097222389_
                                               _e222102222392_
                                               _hd222101222395_
                                               _tl222100222397_
                                               _e222105222400_
                                               _hd222104222403_
                                               _tl222103222405_
                                               _e222108222408_
                                               _hd222107222411_
                                               _tl222106222413_
                                               _e222111222416_
                                               _hd222110222419_
                                               _tl222109222421_
                                               _e222114222424_
                                               _hd222113222427_
                                               _tl222112222429_
                                               _e222117222432_
                                               _hd222116222435_
                                               _tl222115222437_
                                               _e222120222440_
                                               _hd222119222443_
                                               _tl222118222445_
                                               _e222123222448_
                                               _hd222122222451_
                                               _tl222121222453_
                                               _e222126222456_
                                               _hd222125222459_
                                               _tl222124222461_)
                                              (___kont228186228187_))
                                          (___kont228186228187_))))
                                  (___kont228186228187_))
                              (___kont228186228187_))
                          (___kont228186228187_))))
                  (___kont228186228187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222109222421_))
                                                      (if (let ((__tmp228493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp228493 'bind-method!))
                  (let ((_L222290_ _hd222116222435_)
                        (_L222291_ _hd222107222411_)
                        (_L222292_ _hd222098222387_)
                        (_L222293_ _hd222089222363_))
                    (___kont228184228185_
                     _L222290_
                     _L222291_
                     _L222292_
                     _L222293_))
                  (___kont228186228187_))
              (___kont228186228187_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228186228187_))))
                                      (___kont228186228187_))
                                  (___kont228186228187_))
                              (___kont228186228187_))))
                      (___kont228186228187_))))
              (___kont228186228187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228186228187_))))
                                          (___kont228186228187_))
                                      (___kont228186228187_))
                                  (___kont228186228187_))))
                          (___kont228186228187_))))
                  (___kont228186228187_))
              (___kont228186228187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228186228187_))
                                          (___kont228186228187_))
                                      (___kont228186228187_))))
                              (___kont228186228187_))))
                      (___kont228186228187_))
                  (___kont228186228187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228186228187_))
                                              (___kont228186228187_))
                                          (___kont228186228187_))))
                                  (___kont228186228187_))))
                          (___kont228186228187_))))
                  (___kont228186228187_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx222015_ _id222016_ _new-id222017_)
        (let* ((_g222019222032_
                (lambda (_g222020222029_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222020222029_))))
               (_g222018222065_
                (lambda (_g222020222035_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222020222035_))
                      (let ((_e222024222037_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222020222035_))))
                        (let ((_hd222023222040_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222024222037_)))
                              (_tl222022222042_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222024222037_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222022222042_))
                              (let ((_e222027222045_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222022222042_))))
                                (let ((_hd222026222048_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222027222045_)))
                                      (_tl222025222050_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222027222045_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222025222050_))
                                      ((lambda (_L222053_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L222053_
                                                _id222016_))
                                             (let ((__tmp228494
                                                    (let ((__tmp228495
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id222017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp228495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp228494
                                                _stx222015_))
                                             _stx222015_))
                                       _hd222026222048_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222019222032_ _g222020222035_)))))
                              (let ()
                                (declare (not safe))
                                (_g222019222032_ _g222020222035_)))))
                      (let ()
                        (declare (not safe))
                        (_g222019222032_ _g222020222035_))))))
          (declare (not safe))
          (_g222018222065_ _stx222015_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx221956_ _subst221957_)
        (let* ((_g221959221972_
                (lambda (_g221960221969_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221960221969_))))
               (_g221958222012_
                (lambda (_g221960221975_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221960221975_))
                      (let ((_e221964221977_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221960221975_))))
                        (let ((_hd221963221980_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221964221977_)))
                              (_tl221962221982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221964221977_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221962221982_))
                              (let ((_e221967221985_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221962221982_))))
                                (let ((_hd221966221988_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221967221985_)))
                                      (_tl221965221990_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221967221985_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221965221990_))
                                      ((lambda (_L221993_)
                                         (let ((_$e222007_
                                                (let ((__tmp228496
                                                       (lambda (_sub222005_)
                                                         (let ((__tmp228497
                                                                (car _sub222005_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L221993_
                                                            __tmp228497)))))
                                                  (declare (not safe))
                                                  (find __tmp228496
                                                        _subst221957_))))
                                           (if _$e222007_
                                               ((lambda (_sub222010_)
                                                  (let ((__tmp228498
                                                         (let ((__tmp228499
                                                                (let ((__tmp228500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub222010_)))
                          (declare (not safe))
                          (cons __tmp228500 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp228499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp228498
                                                     _stx221956_)))
                                                _$e222007_)
                                               _stx221956_)))
                                       _hd221966221988_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221959221972_ _g221960221975_)))))
                              (let ()
                                (declare (not safe))
                                (_g221959221972_ _g221960221975_)))))
                      (let ()
                        (declare (not safe))
                        (_g221959221972_ _g221960221975_))))))
          (declare (not safe))
          (_g221958222012_ _stx221956_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx221884_ _id221885_ _new-id221886_)
        (let* ((_g221888221905_
                (lambda (_g221889221902_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221889221902_))))
               (_g221887221953_
                (lambda (_g221889221908_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221889221908_))
                      (let ((_e221894221910_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221889221908_))))
                        (let ((_hd221893221913_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221894221910_)))
                              (_tl221892221915_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221894221910_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221892221915_))
                              (let ((_e221897221918_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221892221915_))))
                                (let ((_hd221896221921_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221897221918_)))
                                      (_tl221895221923_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221897221918_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221895221923_))
                                      (let ((_e221900221926_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221895221923_))))
                                        (let ((_hd221899221929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221900221926_)))
                                              (_tl221898221931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221900221926_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221898221931_))
                                              ((lambda (_L221934_ _L221935_)
                                                 (let ((_new-expr221950_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L221934_
                                                           _id221885_
                                                           _new-id221886_)))
                                                       (_new-xid221951_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L221935_
                                                               _id221885_))
                                                            _new-id221886_
                                                            _L221935_)))
                                                   (let ((__tmp228501
                                                          (let ((__tmp228502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228503
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221950_ '()))))
                           (declare (not safe))
                           (cons _new-xid221951_ __tmp228503))))
                    (declare (not safe))
                    (cons '%#set! __tmp228502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228501
                                                      _stx221884_))))
                                               _hd221899221929_
                                               _hd221896221921_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221888221905_
                                                 _g221889221908_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221888221905_ _g221889221908_)))))
                              (let ()
                                (declare (not safe))
                                (_g221888221905_ _g221889221908_)))))
                      (let ()
                        (declare (not safe))
                        (_g221888221905_ _g221889221908_))))))
          (declare (not safe))
          (_g221887221953_ _stx221884_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx221808_ _subst221809_)
        (let* ((_g221811221828_
                (lambda (_g221812221825_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221812221825_))))
               (_g221810221881_
                (lambda (_g221812221831_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221812221831_))
                      (let ((_e221817221833_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221812221831_))))
                        (let ((_hd221816221836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221817221833_)))
                              (_tl221815221838_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221817221833_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221815221838_))
                              (let ((_e221820221841_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221815221838_))))
                                (let ((_hd221819221844_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221820221841_)))
                                      (_tl221818221846_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221820221841_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221818221846_))
                                      (let ((_e221823221849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221818221846_))))
                                        (let ((_hd221822221852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221823221849_)))
                                              (_tl221821221854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221823221849_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221821221854_))
                                              ((lambda (_L221857_ _L221858_)
                                                 (let ((_new-expr221878_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L221857_
                                                           _subst221809_)))
                                                       (_new-xid221879_
                                                        (let ((_$e221875_
                                                               (let ((__tmp228504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub221873_)
                                (let ((__tmp228505 (car _sub221873_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L221858_
                                   __tmp228505)))))
                         (declare (not safe))
                         (find __tmp228504 _subst221809_))))
                  (if _$e221875_ (cdr _$e221875_) _L221858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp228506
                                                          (let ((__tmp228507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228508
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221878_ '()))))
                           (declare (not safe))
                           (cons _new-xid221879_ __tmp228508))))
                    (declare (not safe))
                    (cons '%#set! __tmp228507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228506
                                                      _stx221808_))))
                                               _hd221822221852_
                                               _hd221819221844_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221811221828_
                                                 _g221812221831_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221811221828_ _g221812221831_)))))
                              (let ()
                                (declare (not safe))
                                (_g221811221828_ _g221812221831_)))))
                      (let ()
                        (declare (not safe))
                        (_g221811221828_ _g221812221831_))))))
          (declare (not safe))
          (_g221810221881_ _stx221808_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx221754_ _ht221755_)
        (let* ((_g221757221770_
                (lambda (_g221758221767_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221758221767_))))
               (_g221756221805_
                (lambda (_g221758221773_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221758221773_))
                      (let ((_e221762221775_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221758221773_))))
                        (let ((_hd221761221778_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221762221775_)))
                              (_tl221760221780_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221762221775_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221760221780_))
                              (let ((_e221765221783_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221760221780_))))
                                (let ((_hd221764221786_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221765221783_)))
                                      (_tl221763221788_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221765221783_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221763221788_))
                                      ((lambda (_L221791_)
                                         (let ((_eid221803_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L221791_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht221755_
                                            _eid221803_
                                            1+
                                            '0)))
                                       _hd221764221786_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221757221770_ _g221758221773_)))))
                              (let ()
                                (declare (not safe))
                                (_g221757221770_ _g221758221773_)))))
                      (let ()
                        (declare (not safe))
                        (_g221757221770_ _g221758221773_))))))
          (declare (not safe))
          (_g221756221805_ _stx221754_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx221684_ _ht221685_)
        (let* ((_g221687221704_
                (lambda (_g221688221701_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221688221701_))))
               (_g221686221751_
                (lambda (_g221688221707_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221688221707_))
                      (let ((_e221693221709_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221688221707_))))
                        (let ((_hd221692221712_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221693221709_)))
                              (_tl221691221714_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221693221709_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221691221714_))
                              (let ((_e221696221717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221691221714_))))
                                (let ((_hd221695221720_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221696221717_)))
                                      (_tl221694221722_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221696221717_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221694221722_))
                                      (let ((_e221699221725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221694221722_))))
                                        (let ((_hd221698221728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221699221725_)))
                                              (_tl221697221730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221699221725_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221697221730_))
                                              ((lambda (_L221733_ _L221734_)
                                                 (let ((_eid221749_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L221734_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht221685_
                                                      _eid221749_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L221733_
                                                      _ht221685_))))
                                               _hd221698221728_
                                               _hd221695221720_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221687221704_
                                                 _g221688221707_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221687221704_ _g221688221707_)))))
                              (let ()
                                (declare (not safe))
                                (_g221687221704_ _g221688221707_)))))
                      (let ()
                        (declare (not safe))
                        (_g221687221704_ _g221688221707_))))))
          (declare (not safe))
          (_g221686221751_ _stx221684_))))
    (define gxc#find-body%
      (lambda (_stx221597_ _arg221598_)
        (let* ((_g221600221619_
                (lambda (_g221601221616_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221601221616_))))
               (_g221599221681_
                (lambda (_g221601221622_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221601221622_))
                      (let ((_e221605221624_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221601221622_))))
                        (let ((_hd221604221627_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221605221624_)))
                              (_tl221603221629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221605221624_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221603221629_))
                              (let ((_g228509_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221603221629_
                                        '0))))
                                (begin
                                  (let ((_g228510_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228509_)
                                               (##vector-length _g228509_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228510_ 2)))
                                        (error "Context expects 2 values"
                                               _g228510_)))
                                  (let ((_target221606221632_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228509_ 0)))
                                        (_tl221608221634_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228509_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221608221634_))
                                        (letrec ((_loop221609221637_
                                                  (lambda (_hd221607221640_
                                                           _expr221613221642_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221607221640_))
                                                        (let ((_e221610221645_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221607221640_))))
                  (let ((_lp-hd221611221648_
                         (let () (declare (not safe)) (##car _e221610221645_)))
                        (_lp-tl221612221650_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221610221645_))))
                    (let ((__tmp228514
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd221611221648_ _expr221613221642_))))
                      (declare (not safe))
                      (_loop221609221637_ _lp-tl221612221650_ __tmp228514))))
                (let ((_expr221614221653_ (reverse _expr221613221642_)))
                  ((lambda (_L221656_)
                     (let ((__tmp228513
                            (lambda (_g221669221671_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221669221671_
                                 _arg221598_))))
                           (__tmp228511
                            (let ((__tmp228512
                                   (lambda (_g221673221676_ _g221674221678_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221673221676_
                                             _g221674221678_)))))
                              (declare (not safe))
                              (foldr1 __tmp228512 '() _L221656_))))
                       (declare (not safe))
                       (ormap1 __tmp228513 __tmp228511)))
                   _expr221614221653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221609221637_
                                             _target221606221632_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221600221619_
                                           _g221601221622_))))))
                              (let ()
                                (declare (not safe))
                                (_g221600221619_ _g221601221622_)))))
                      (let ()
                        (declare (not safe))
                        (_g221600221619_ _g221601221622_))))))
          (declare (not safe))
          (_g221599221681_ _stx221597_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx221529_ _arg221530_)
        (let* ((_g221532221549_
                (lambda (_g221533221546_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221533221546_))))
               (_g221531221594_
                (lambda (_g221533221552_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221533221552_))
                      (let ((_e221538221554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221533221552_))))
                        (let ((_hd221537221557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221538221554_)))
                              (_tl221536221559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221538221554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221536221559_))
                              (let ((_e221541221562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221536221559_))))
                                (let ((_hd221540221565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221541221562_)))
                                      (_tl221539221567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221541221562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221539221567_))
                                      (let ((_e221544221570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221539221567_))))
                                        (let ((_hd221543221573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221544221570_)))
                                              (_tl221542221575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221544221570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221542221575_))
                                              ((lambda (_L221578_ _L221579_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221578_
                                                    _arg221530_)))
                                               _hd221543221573_
                                               _hd221540221565_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221532221549_
                                                 _g221533221552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221532221549_ _g221533221552_)))))
                              (let ()
                                (declare (not safe))
                                (_g221532221549_ _g221533221552_)))))
                      (let ()
                        (declare (not safe))
                        (_g221532221549_ _g221533221552_))))))
          (declare (not safe))
          (_g221531221594_ _stx221529_))))
    (define gxc#find-lambda%
      (lambda (_stx221461_ _arg221462_)
        (let* ((_g221464221481_
                (lambda (_g221465221478_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221465221478_))))
               (_g221463221526_
                (lambda (_g221465221484_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221465221484_))
                      (let ((_e221470221486_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221465221484_))))
                        (let ((_hd221469221489_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221470221486_)))
                              (_tl221468221491_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221470221486_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221468221491_))
                              (let ((_e221473221494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221468221491_))))
                                (let ((_hd221472221497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221473221494_)))
                                      (_tl221471221499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221473221494_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221471221499_))
                                      (let ((_e221476221502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221471221499_))))
                                        (let ((_hd221475221505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221476221502_)))
                                              (_tl221474221507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221476221502_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221474221507_))
                                              ((lambda (_L221510_ _L221511_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221510_
                                                    _arg221462_)))
                                               _hd221475221505_
                                               _hd221472221497_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221464221481_
                                                 _g221465221484_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221464221481_ _g221465221484_)))))
                              (let ()
                                (declare (not safe))
                                (_g221464221481_ _g221465221484_)))))
                      (let ()
                        (declare (not safe))
                        (_g221464221481_ _g221465221484_))))))
          (declare (not safe))
          (_g221463221526_ _stx221461_))))
    (define gxc#find-case-lambda%
      (lambda (_stx221343_ _arg221344_)
        (let* ((_g221346221374_
                (lambda (_g221347221371_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221347221371_))))
               (_g221345221458_
                (lambda (_g221347221377_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221347221377_))
                      (let ((_e221352221379_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221347221377_))))
                        (let ((_hd221351221382_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221352221379_)))
                              (_tl221350221384_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221352221379_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221350221384_))
                              (let ((_g228515_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221350221384_
                                        '0))))
                                (begin
                                  (let ((_g228516_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228515_)
                                               (##vector-length _g228515_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228516_ 2)))
                                        (error "Context expects 2 values"
                                               _g228516_)))
                                  (let ((_target221353221387_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228515_ 0)))
                                        (_tl221355221389_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228515_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221355221389_))
                                        (letrec ((_loop221356221392_
                                                  (lambda (_hd221354221395_
                                                           _body221360221397_
                                                           _hd221361221399_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221354221395_))
                                                        (let ((_e221357221402_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221354221395_))))
                  (let ((_lp-hd221358221405_
                         (let () (declare (not safe)) (##car _e221357221402_)))
                        (_lp-tl221359221407_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221357221402_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd221358221405_))
                        (let ((_e221366221410_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd221358221405_))))
                          (let ((_hd221365221413_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221366221410_)))
                                (_tl221364221415_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221366221410_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221364221415_))
                                (let ((_e221369221418_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221364221415_))))
                                  (let ((_hd221368221421_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221369221418_)))
                                        (_tl221367221423_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221369221418_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221367221423_))
                                        (let ((__tmp228521
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221368221421_
                                                       _body221360221397_)))
                                              (__tmp228520
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221365221413_
                                                       _hd221361221399_))))
                                          (declare (not safe))
                                          (_loop221356221392_
                                           _lp-tl221359221407_
                                           __tmp228521
                                           __tmp228520))
                                        (let ()
                                          (declare (not safe))
                                          (_g221346221374_ _g221347221377_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221346221374_ _g221347221377_)))))
                        (let ()
                          (declare (not safe))
                          (_g221346221374_ _g221347221377_)))))
                (let ((_body221362221426_ (reverse _body221360221397_))
                      (_hd221363221428_ (reverse _hd221361221399_)))
                  ((lambda (_L221431_ _L221432_)
                     (let ((__tmp228519
                            (lambda (_g221446221448_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221446221448_
                                 _arg221344_))))
                           (__tmp228517
                            (let ((__tmp228518
                                   (lambda (_g221450221453_ _g221451221455_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221450221453_
                                             _g221451221455_)))))
                              (declare (not safe))
                              (foldr1 __tmp228518 '() _L221431_))))
                       (declare (not safe))
                       (ormap1 __tmp228519 __tmp228517)))
                   _body221362221426_
                   _hd221363221428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221356221392_
                                             _target221353221387_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221346221374_
                                           _g221347221377_))))))
                              (let ()
                                (declare (not safe))
                                (_g221346221374_ _g221347221377_)))))
                      (let ()
                        (declare (not safe))
                        (_g221346221374_ _g221347221377_))))))
          (declare (not safe))
          (_g221345221458_ _stx221343_))))
    (define gxc#find-let-values%
      (lambda (_stx221193_ _arg221194_)
        (let* ((_g221196221231_
                (lambda (_g221197221228_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221197221228_))))
               (_g221195221340_
                (lambda (_g221197221234_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221197221234_))
                      (let ((_e221203221236_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221197221234_))))
                        (let ((_hd221202221239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221203221236_)))
                              (_tl221201221241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221203221236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221201221241_))
                              (let ((_e221206221244_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221201221241_))))
                                (let ((_hd221205221247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221206221244_)))
                                      (_tl221204221249_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221206221244_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd221205221247_))
                                      (let ((_g228522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd221205221247_
                                                '0))))
                                        (begin
                                          (let ((_g228523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228522_)
                                                       (##vector-length
                                                        _g228522_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228523_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228523_)))
                                          (let ((_target221207221252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228522_ 0)))
                                                (_tl221209221254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228522_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221209221254_))
                                                (letrec ((_loop221210221257_
                                                          (lambda (_hd221208221260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr221214221262_
                           _bind221215221264_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221208221260_))
                        (let ((_e221211221267_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221208221260_))))
                          (let ((_lp-hd221212221270_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221211221267_)))
                                (_lp-tl221213221272_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221211221267_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd221212221270_))
                                (let ((_e221220221275_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd221212221270_))))
                                  (let ((_hd221219221278_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221220221275_)))
                                        (_tl221218221280_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221220221275_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221218221280_))
                                        (let ((_e221223221283_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221218221280_))))
                                          (let ((_hd221222221286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221223221283_)))
                                                (_tl221221221288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221223221283_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221221221288_))
                                                (let ((__tmp228528
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221222221286_
                                                               _expr221214221262_)))
                                                      (__tmp228527
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221219221278_
                                                               _bind221215221264_))))
                                                  (declare (not safe))
                                                  (_loop221210221257_
                                                   _lp-tl221213221272_
                                                   __tmp228528
                                                   __tmp228527))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221196221231_
                                                   _g221197221234_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g221196221231_ _g221197221234_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221196221231_ _g221197221234_)))))
                        (let ((_expr221216221291_ (reverse _expr221214221262_))
                              (_bind221217221293_
                               (reverse _bind221215221264_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221204221249_))
                              (let ((_e221226221296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221204221249_))))
                                (let ((_hd221225221299_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221226221296_)))
                                      (_tl221224221301_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221226221296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221224221301_))
                                      ((lambda (_L221304_ _L221305_ _L221306_)
                                         (let ((_$e221337_
                                                (let ((__tmp228526
                                                       (lambda (_g221325221327_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g221325221327_
                                                            _arg221194_))))
                                                      (__tmp228524
                                                       (let ((__tmp228525
                                                              (lambda (_g221329221332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g221330221334_)
                        (let ()
                          (declare (not safe))
                          (cons _g221329221332_ _g221330221334_)))))
                 (declare (not safe))
                 (foldr1 __tmp228525 '() _L221305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp228526
                                                          __tmp228524))))
                                           (if _$e221337_
                                               _$e221337_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L221304_
                                                  _arg221194_)))))
                                       _hd221225221299_
                                       _expr221216221291_
                                       _bind221217221293_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221196221231_ _g221197221234_)))))
                              (let ()
                                (declare (not safe))
                                (_g221196221231_ _g221197221234_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop221210221257_
                                                     _target221207221252_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221196221231_
                                                   _g221197221234_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221196221231_ _g221197221234_)))))
                              (let ()
                                (declare (not safe))
                                (_g221196221231_ _g221197221234_)))))
                      (let ()
                        (declare (not safe))
                        (_g221196221231_ _g221197221234_))))))
          (declare (not safe))
          (_g221195221340_ _stx221193_))))
    (define gxc#find-setq%
      (lambda (_stx221125_ _arg221126_)
        (let* ((_g221128221145_
                (lambda (_g221129221142_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221129221142_))))
               (_g221127221190_
                (lambda (_g221129221148_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221129221148_))
                      (let ((_e221134221150_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221129221148_))))
                        (let ((_hd221133221153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221134221150_)))
                              (_tl221132221155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221134221150_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221132221155_))
                              (let ((_e221137221158_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221132221155_))))
                                (let ((_hd221136221161_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221137221158_)))
                                      (_tl221135221163_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221137221158_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221135221163_))
                                      (let ((_e221140221166_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221135221163_))))
                                        (let ((_hd221139221169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221140221166_)))
                                              (_tl221138221171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221140221166_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221138221171_))
                                              ((lambda (_L221174_ _L221175_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221174_
                                                    _arg221126_)))
                                               _hd221139221169_
                                               _hd221136221161_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221128221145_
                                                 _g221129221148_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221128221145_ _g221129221148_)))))
                              (let ()
                                (declare (not safe))
                                (_g221128221145_ _g221129221148_)))))
                      (let ()
                        (declare (not safe))
                        (_g221128221145_ _g221129221148_))))))
          (declare (not safe))
          (_g221127221190_ _stx221125_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx221069_ _ids221070_)
        (let* ((_g221072221085_
                (lambda (_g221073221082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221073221082_))))
               (_g221071221122_
                (lambda (_g221073221088_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221073221088_))
                      (let ((_e221077221090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221073221088_))))
                        (let ((_hd221076221093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221077221090_)))
                              (_tl221075221095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221077221090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221075221095_))
                              (let ((_e221080221098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221075221095_))))
                                (let ((_hd221079221101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221080221098_)))
                                      (_tl221078221103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221080221098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221078221103_))
                                      ((lambda (_L221106_)
                                         (let ((__tmp228529
                                                (lambda (_g221117221119_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L221106_
                                                     _g221117221119_)))))
                                           (declare (not safe))
                                           (find __tmp228529 _ids221070_)))
                                       _hd221079221101_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221072221085_ _g221073221088_)))))
                              (let ()
                                (declare (not safe))
                                (_g221072221085_ _g221073221088_)))))
                      (let ()
                        (declare (not safe))
                        (_g221072221085_ _g221073221088_))))))
          (declare (not safe))
          (_g221071221122_ _stx221069_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx220993_ _ids220994_)
        (let* ((_g220996221013_
                (lambda (_g220997221010_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220997221010_))))
               (_g220995221066_
                (lambda (_g220997221016_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220997221016_))
                      (let ((_e221002221018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220997221016_))))
                        (let ((_hd221001221021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221002221018_)))
                              (_tl221000221023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221002221018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221000221023_))
                              (let ((_e221005221026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221000221023_))))
                                (let ((_hd221004221029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221005221026_)))
                                      (_tl221003221031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221005221026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221003221031_))
                                      (let ((_e221008221034_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221003221031_))))
                                        (let ((_hd221007221037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221008221034_)))
                                              (_tl221006221039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221008221034_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221006221039_))
                                              ((lambda (_L221042_ _L221043_)
                                                 (let ((_$e221063_
                                                        (let ((__tmp228530
                                                               (lambda (_g221058221060_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L221043_ _g221058221060_)))))
                  (declare (not safe))
                  (find __tmp228530 _ids220994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e221063_
                                                       _$e221063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L221042_
                                                          _ids220994_)))))
                                               _hd221007221037_
                                               _hd221004221029_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220996221013_
                                                 _g220997221016_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220996221013_ _g220997221016_)))))
                              (let ()
                                (declare (not safe))
                                (_g220996221013_ _g220997221016_)))))
                      (let ()
                        (declare (not safe))
                        (_g220996221013_ _g220997221016_))))))
          (declare (not safe))
          (_g220995221066_ _stx220993_))))))
