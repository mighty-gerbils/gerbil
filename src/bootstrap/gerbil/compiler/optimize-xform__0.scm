(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1707674933)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl223599_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223599_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223599_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223599_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223599_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl223599_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl223595_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223595_ '%#declare gxc#xform-identity))
           _tbl223595_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl223591_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228413 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl223591_ __tmp228413))
           (let ((__tmp228414 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl223591_ __tmp228414))
           _tbl223591_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl223587_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223587_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223587_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl223587_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl223583_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228415 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223583_ __tmp228415))
           (let ((__tmp228416 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl223583_ __tmp228416))
           (let ()
             (declare (not safe))
             (table-set! _tbl223583_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223583_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223583_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223583_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223583_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl223583_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl223579_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228417 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223579_ __tmp228417))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223579_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223579_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl223579_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx223562_ . _args223564_)
        (let ((__tmp228419
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223564_)
                     (gxc#compile-e__0 _stx223562_)
                     (let ((_arg1223569_ (car _args223564_))
                           (_rest223571_ (cdr _args223564_)))
                       (if (null? _rest223571_)
                           (gxc#compile-e__1 _stx223562_ _arg1223569_)
                           (let ((_arg2223574_ (car _rest223571_))
                                 (_rest223576_ (cdr _rest223571_)))
                             (if (null? _rest223576_)
                                 (gxc#compile-e__2
                                  _stx223562_
                                  _arg1223569_
                                  _arg2223574_)
                                 (apply gxc#compile-e
                                        _stx223562_
                                        _arg1223569_
                                        _arg2223574_
                                        _rest223576_))))))))
              (__tmp228418 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp228419
           gxc#current-compile-methods
           __tmp228418))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl223559_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228420 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223559_ __tmp228420))
           (let ()
             (declare (not safe))
             (table-set! _tbl223559_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223559_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223559_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223559_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223559_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl223559_))))
    (define gxc#apply-collect-methods
      (lambda (_stx223542_ . _args223544_)
        (let ((__tmp228422
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223544_)
                     (gxc#compile-e__0 _stx223542_)
                     (let ((_arg1223549_ (car _args223544_))
                           (_rest223551_ (cdr _args223544_)))
                       (if (null? _rest223551_)
                           (gxc#compile-e__1 _stx223542_ _arg1223549_)
                           (let ((_arg2223554_ (car _rest223551_))
                                 (_rest223556_ (cdr _rest223551_)))
                             (if (null? _rest223556_)
                                 (gxc#compile-e__2
                                  _stx223542_
                                  _arg1223549_
                                  _arg2223554_)
                                 (apply gxc#compile-e
                                        _stx223542_
                                        _arg1223549_
                                        _arg2223554_
                                        _rest223556_))))))))
              (__tmp228421 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp228422
           gxc#current-compile-methods
           __tmp228421))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl223539_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228423 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223539_ __tmp228423))
           (let ()
             (declare (not safe))
             (table-set! _tbl223539_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223539_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223539_ '%#set! gxc#expression-subst-setq%))
           _tbl223539_))))
    (define gxc#apply-expression-subst
      (lambda (_stx223522_ . _args223524_)
        (let ((__tmp228425
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223524_)
                     (gxc#compile-e__0 _stx223522_)
                     (let ((_arg1223529_ (car _args223524_))
                           (_rest223531_ (cdr _args223524_)))
                       (if (null? _rest223531_)
                           (gxc#compile-e__1 _stx223522_ _arg1223529_)
                           (let ((_arg2223534_ (car _rest223531_))
                                 (_rest223536_ (cdr _rest223531_)))
                             (if (null? _rest223536_)
                                 (gxc#compile-e__2
                                  _stx223522_
                                  _arg1223529_
                                  _arg2223534_)
                                 (apply gxc#compile-e
                                        _stx223522_
                                        _arg1223529_
                                        _arg2223534_
                                        _rest223536_))))))))
              (__tmp228424 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp228425
           gxc#current-compile-methods
           __tmp228424))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl223519_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228426 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl223519_ __tmp228426))
           (let ()
             (declare (not safe))
             (table-set! _tbl223519_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223519_ '%#set! gxc#expression-subst*-setq%))
           _tbl223519_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx223502_ . _args223504_)
        (let ((__tmp228428
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223504_)
                     (gxc#compile-e__0 _stx223502_)
                     (let ((_arg1223509_ (car _args223504_))
                           (_rest223511_ (cdr _args223504_)))
                       (if (null? _rest223511_)
                           (gxc#compile-e__1 _stx223502_ _arg1223509_)
                           (let ((_arg2223514_ (car _rest223511_))
                                 (_rest223516_ (cdr _rest223511_)))
                             (if (null? _rest223516_)
                                 (gxc#compile-e__2
                                  _stx223502_
                                  _arg1223509_
                                  _arg2223514_)
                                 (apply gxc#compile-e
                                        _stx223502_
                                        _arg1223509_
                                        _arg2223514_
                                        _rest223516_))))))))
              (__tmp228427 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp228428
           gxc#current-compile-methods
           __tmp228427))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl223499_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228429 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl223499_ __tmp228429))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223499_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223499_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223499_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl223499_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl223495_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228430 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl223495_ __tmp228430))
           (let ()
             (declare (not safe))
             (table-set! _tbl223495_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223495_ '%#set! gxc#find-var-refs-setq%))
           _tbl223495_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx223478_ . _args223480_)
        (let ((__tmp228432
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223480_)
                     (gxc#compile-e__0 _stx223478_)
                     (let ((_arg1223485_ (car _args223480_))
                           (_rest223487_ (cdr _args223480_)))
                       (if (null? _rest223487_)
                           (gxc#compile-e__1 _stx223478_ _arg1223485_)
                           (let ((_arg2223490_ (car _rest223487_))
                                 (_rest223492_ (cdr _rest223487_)))
                             (if (null? _rest223492_)
                                 (gxc#compile-e__2
                                  _stx223478_
                                  _arg1223485_
                                  _arg2223490_)
                                 (apply gxc#compile-e
                                        _stx223478_
                                        _arg1223485_
                                        _arg2223490_
                                        _rest223492_))))))))
              (__tmp228431 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228432
           gxc#current-compile-methods
           __tmp228431))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl223475_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp228433 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl223475_ __tmp228433))
           (let ()
             (declare (not safe))
             (table-set! _tbl223475_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223475_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl223475_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx223458_ . _args223460_)
        (let ((__tmp228435
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223460_)
                     (gxc#compile-e__0 _stx223458_)
                     (let ((_arg1223465_ (car _args223460_))
                           (_rest223467_ (cdr _args223460_)))
                       (if (null? _rest223467_)
                           (gxc#compile-e__1 _stx223458_ _arg1223465_)
                           (let ((_arg2223470_ (car _rest223467_))
                                 (_rest223472_ (cdr _rest223467_)))
                             (if (null? _rest223472_)
                                 (gxc#compile-e__2
                                  _stx223458_
                                  _arg1223465_
                                  _arg2223470_)
                                 (apply gxc#compile-e
                                        _stx223458_
                                        _arg1223465_
                                        _arg2223470_
                                        _rest223472_))))))))
              (__tmp228434 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp228435
           gxc#current-compile-methods
           __tmp228434))))
    (define gxc#xform-identity
      (lambda (_stx223455_ . _args223456_) _stx223455_))
    (define gxc#xform-wrap-source
      (lambda (_stx223452_ _src-stx223453_)
        (let ((__tmp228436
               (let () (declare (not safe)) (gx#stx-source _src-stx223453_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx223452_ __tmp228436))))
    (define gxc#xform-apply-compile-e
      (lambda (_args223439_)
        (lambda (_stx223441_)
          (if (let () (declare (not safe)) (null? _args223439_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx223441_))
              (let ((_arg1223443_ (car _args223439_))
                    (_rest223445_ (cdr _args223439_)))
                (if (let () (declare (not safe)) (null? _rest223445_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx223441_ _arg1223443_))
                    (let ((_arg2223448_ (car _rest223445_))
                          (_rest223450_ (cdr _rest223445_)))
                      (if (let () (declare (not safe)) (null? _rest223450_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx223441_
                             _arg1223443_
                             _arg2223448_))
                          (apply gxc#compile-e
                                 _stx223441_
                                 _arg1223443_
                                 _arg2223448_
                                 _rest223450_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx223398_ . _args223399_)
        (let* ((_g223401223411_
                (lambda (_g223402223408_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223402223408_))))
               (_g223400223436_
                (lambda (_g223402223414_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223402223414_))
                      (let ((_e223406223416_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223402223414_))))
                        (let ((_hd223405223419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223406223416_)))
                              (_tl223404223421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223406223416_))))
                          ((lambda (_L223424_)
                             (let* ((_forms223434_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223399_))
                                          _L223424_))
                                    (__tmp228437
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms223434_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228437
                                _stx223398_)))
                           _tl223404223421_)))
                      (let ()
                        (declare (not safe))
                        (_g223401223411_ _g223402223414_))))))
          (declare (not safe))
          (_g223400223436_ _stx223398_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx223356_ . _args223357_)
        (let* ((_g223359223369_
                (lambda (_g223360223366_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223360223366_))))
               (_g223358223395_
                (lambda (_g223360223372_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223360223372_))
                      (let ((_e223364223374_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223360223372_))))
                        (let ((_hd223363223377_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223364223374_)))
                              (_tl223362223379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223364223374_))))
                          ((lambda (_L223382_)
                             (let ((__tmp228440
                                    (lambda ()
                                      (let* ((_forms223393_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args223357_))
                                                   _L223382_))
                                             (__tmp228441
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms223393_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp228441
                                         _stx223356_))))
                                   (__tmp228438
                                    (let ((__tmp228439
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp228439 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp228440
                                gx#current-expander-phi
                                __tmp228438)))
                           _tl223362223379_)))
                      (let ()
                        (declare (not safe))
                        (_g223359223369_ _g223360223372_))))))
          (declare (not safe))
          (_g223358223395_ _stx223356_))))
    (define gxc#xform-module%
      (lambda (_stx223284_ . _args223285_)
        (let* ((_g223287223301_
                (lambda (_g223288223298_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223288223298_))))
               (_g223286223353_
                (lambda (_g223288223304_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223288223304_))
                      (let ((_e223293223306_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223288223304_))))
                        (let ((_hd223292223309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223293223306_)))
                              (_tl223291223311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223293223306_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223291223311_))
                              (let ((_e223296223314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223291223311_))))
                                (let ((_hd223295223317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223296223314_)))
                                      (_tl223294223319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223296223314_))))
                                  ((lambda (_L223322_ _L223323_)
                                     (let* ((_ctx223336_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L223323_)))
                                            (_code223338_
                                             (##structure-ref
                                              _ctx223336_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code223350_
                                             (let ((__tmp228442
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args223285_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code223338_))
                                                          (let ((_arg1223341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args223285_))
                        (_rest223343_ (cdr _args223285_)))
                    (if (let () (declare (not safe)) (null? _rest223343_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code223338_ _arg1223341_))
                        (let ((_arg2223346_ (car _rest223343_))
                              (_rest223348_ (cdr _rest223343_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest223348_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code223338_
                                 _arg1223341_
                                 _arg2223346_))
                              (apply gxc#compile-e
                                     _code223338_
                                     _arg1223341_
                                     _arg2223346_
                                     _rest223348_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp228442
                                                gx#current-expander-context
                                                _ctx223336_))))
                                       (##structure-set!
                                        _ctx223336_
                                        _code223350_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp228443
                                              (let ((__tmp228444
                                                     (let ((__tmp228445
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code223350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L223323_ __tmp228445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp228444))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp228443
                                          _stx223284_))))
                                   _tl223294223319_
                                   _hd223295223317_)))
                              (let ()
                                (declare (not safe))
                                (_g223287223301_ _g223288223304_)))))
                      (let ()
                        (declare (not safe))
                        (_g223287223301_ _g223288223304_))))))
          (declare (not safe))
          (_g223286223353_ _stx223284_))))
    (define gxc#xform-define-values%
      (lambda (_stx223205_ . _args223206_)
        (let* ((_g223208223225_
                (lambda (_g223209223222_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223209223222_))))
               (_g223207223281_
                (lambda (_g223209223228_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223209223228_))
                      (let ((_e223214223230_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223209223228_))))
                        (let ((_hd223213223233_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223214223230_)))
                              (_tl223212223235_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223214223230_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223212223235_))
                              (let ((_e223217223238_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223212223235_))))
                                (let ((_hd223216223241_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223217223238_)))
                                      (_tl223215223243_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223217223238_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223215223243_))
                                      (let ((_e223220223246_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223215223243_))))
                                        (let ((_hd223219223249_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223220223246_)))
                                              (_tl223218223251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223220223246_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223218223251_))
                                              ((lambda (_L223254_ _L223255_)
                                                 (let* ((_expr223279_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223206_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223254_))
                     (let ((_arg1223270_ (car _args223206_))
                           (_rest223272_ (cdr _args223206_)))
                       (if (let () (declare (not safe)) (null? _rest223272_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223254_ _arg1223270_))
                           (let ((_arg2223275_ (car _rest223272_))
                                 (_rest223277_ (cdr _rest223272_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223277_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223254_
                                    _arg1223270_
                                    _arg2223275_))
                                 (apply gxc#compile-e
                                        _L223254_
                                        _arg1223270_
                                        _arg2223275_
                                        _rest223277_)))))))
                (__tmp228446
                 (let ((__tmp228447
                        (let ((__tmp228448
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223279_ '()))))
                          (declare (not safe))
                          (cons _L223255_ __tmp228448))))
                   (declare (not safe))
                   (cons '%#define-values __tmp228447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228446
                                                    _stx223205_)))
                                               _hd223219223249_
                                               _hd223216223241_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223208223225_
                                                 _g223209223228_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223208223225_ _g223209223228_)))))
                              (let ()
                                (declare (not safe))
                                (_g223208223225_ _g223209223228_)))))
                      (let ()
                        (declare (not safe))
                        (_g223208223225_ _g223209223228_))))))
          (declare (not safe))
          (_g223207223281_ _stx223205_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx223125_ . _args223126_)
        (let* ((_g223128223145_
                (lambda (_g223129223142_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223129223142_))))
               (_g223127223202_
                (lambda (_g223129223148_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223129223148_))
                      (let ((_e223134223150_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223129223148_))))
                        (let ((_hd223133223153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223134223150_)))
                              (_tl223132223155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223134223150_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223132223155_))
                              (let ((_e223137223158_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223132223155_))))
                                (let ((_hd223136223161_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223137223158_)))
                                      (_tl223135223163_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223137223158_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223135223163_))
                                      (let ((_e223140223166_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223135223163_))))
                                        (let ((_hd223139223169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223140223166_)))
                                              (_tl223138223171_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223140223166_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223138223171_))
                                              ((lambda (_L223174_ _L223175_)
                                                 (let ((__tmp228451
                                                        (lambda ()
                                                          (let* ((_expr223200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args223126_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L223174_))
                              (let ((_arg1223191_ (car _args223126_))
                                    (_rest223193_ (cdr _args223126_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest223193_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L223174_
                                       _arg1223191_))
                                    (let ((_arg2223196_ (car _rest223193_))
                                          (_rest223198_ (cdr _rest223193_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest223198_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L223174_
                                             _arg1223191_
                                             _arg2223196_))
                                          (apply gxc#compile-e
                                                 _L223174_
                                                 _arg1223191_
                                                 _arg2223196_
                                                 _rest223198_)))))))
                         (__tmp228452
                          (let ((__tmp228453
                                 (let ((__tmp228454
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr223200_ '()))))
                                   (declare (not safe))
                                   (cons _L223175_ __tmp228454))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp228453))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp228452 _stx223125_))))
               (__tmp228449
                (let ((__tmp228450 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp228450 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp228451
                                                    gx#current-expander-phi
                                                    __tmp228449)))
                                               _hd223139223169_
                                               _hd223136223161_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223128223145_
                                                 _g223129223148_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223128223145_ _g223129223148_)))))
                              (let ()
                                (declare (not safe))
                                (_g223128223145_ _g223129223148_)))))
                      (let ()
                        (declare (not safe))
                        (_g223128223145_ _g223129223148_))))))
          (declare (not safe))
          (_g223127223202_ _stx223125_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx223046_ . _args223047_)
        (let* ((_g223049223066_
                (lambda (_g223050223063_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223050223063_))))
               (_g223048223122_
                (lambda (_g223050223069_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223050223069_))
                      (let ((_e223055223071_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223050223069_))))
                        (let ((_hd223054223074_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223055223071_)))
                              (_tl223053223076_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223055223071_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223053223076_))
                              (let ((_e223058223079_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223053223076_))))
                                (let ((_hd223057223082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223058223079_)))
                                      (_tl223056223084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223058223079_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223056223084_))
                                      (let ((_e223061223087_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223056223084_))))
                                        (let ((_hd223060223090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223061223087_)))
                                              (_tl223059223092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223061223087_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223059223092_))
                                              ((lambda (_L223095_ _L223096_)
                                                 (let* ((_expr223120_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223047_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223095_))
                     (let ((_arg1223111_ (car _args223047_))
                           (_rest223113_ (cdr _args223047_)))
                       (if (let () (declare (not safe)) (null? _rest223113_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223095_ _arg1223111_))
                           (let ((_arg2223116_ (car _rest223113_))
                                 (_rest223118_ (cdr _rest223113_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223118_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223095_
                                    _arg1223111_
                                    _arg2223116_))
                                 (apply gxc#compile-e
                                        _L223095_
                                        _arg1223111_
                                        _arg2223116_
                                        _rest223118_)))))))
                (__tmp228455
                 (let ((__tmp228456
                        (let ((__tmp228457
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223120_ '()))))
                          (declare (not safe))
                          (cons _L223096_ __tmp228457))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp228456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228455
                                                    _stx223046_)))
                                               _hd223060223090_
                                               _hd223057223082_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223049223066_
                                                 _g223050223069_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223049223066_ _g223050223069_)))))
                              (let ()
                                (declare (not safe))
                                (_g223049223066_ _g223050223069_)))))
                      (let ()
                        (declare (not safe))
                        (_g223049223066_ _g223050223069_))))))
          (declare (not safe))
          (_g223048223122_ _stx223046_))))
    (define gxc#xform-lambda%
      (lambda (_stx222989_ . _args222990_)
        (let* ((_g222992223006_
                (lambda (_g222993223003_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222993223003_))))
               (_g222991223043_
                (lambda (_g222993223009_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222993223009_))
                      (let ((_e222998223011_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222993223009_))))
                        (let ((_hd222997223014_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222998223011_)))
                              (_tl222996223016_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222998223011_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222996223016_))
                              (let ((_e223001223019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222996223016_))))
                                (let ((_hd223000223022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223001223019_)))
                                      (_tl222999223024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223001223019_))))
                                  ((lambda (_L223027_ _L223028_)
                                     (let* ((_body223041_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args222990_))
                                                  _L223027_))
                                            (__tmp228458
                                             (let ((__tmp228459
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L223028_
                                                            _body223041_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp228459))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp228458
                                        _stx222989_)))
                                   _tl222999223024_
                                   _hd223000223022_)))
                              (let ()
                                (declare (not safe))
                                (_g222992223006_ _g222993223009_)))))
                      (let ()
                        (declare (not safe))
                        (_g222992223006_ _g222993223009_))))))
          (declare (not safe))
          (_g222991223043_ _stx222989_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx222902_ . _args222903_)
        (letrec ((_clause-e222905_
                  (lambda (_clause222946_)
                    (let* ((_g222948222959_
                            (lambda (_g222949222956_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g222949222956_))))
                           (_g222947222986_
                            (lambda (_g222949222962_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g222949222962_))
                                  (let ((_e222954222964_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g222949222962_))))
                                    (let ((_hd222953222967_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222954222964_)))
                                          (_tl222952222969_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222954222964_))))
                                      ((lambda (_L222972_ _L222973_)
                                         (let ((_body222984_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args222903_))
                                                     _L222972_)))
                                           (declare (not safe))
                                           (cons _L222973_ _body222984_)))
                                       _tl222952222969_
                                       _hd222953222967_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222948222959_ _g222949222962_))))))
                      (declare (not safe))
                      (_g222947222986_ _clause222946_)))))
          (let* ((_g222907222917_
                  (lambda (_g222908222914_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g222908222914_))))
                 (_g222906222943_
                  (lambda (_g222908222920_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g222908222920_))
                        (let ((_e222912222922_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g222908222920_))))
                          (let ((_hd222911222925_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222912222922_)))
                                (_tl222910222927_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222912222922_))))
                            ((lambda (_L222930_)
                               (let* ((_clauses222941_
                                       (map _clause-e222905_ _L222930_))
                                      (__tmp228460
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses222941_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp228460
                                  _stx222902_)))
                             _tl222910222927_)))
                        (let ()
                          (declare (not safe))
                          (_g222907222917_ _g222908222920_))))))
            (declare (not safe))
            (_g222906222943_ _stx222902_)))))
    (define gxc#xform-let-values%
      (lambda (_stx222696_ . _args222697_)
        (let* ((_g222699222732_
                (lambda (_g222700222729_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222700222729_))))
               (_g222698222899_
                (lambda (_g222700222735_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222700222735_))
                      (let ((_e222707222737_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222700222735_))))
                        (let ((_hd222706222740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222707222737_)))
                              (_tl222705222742_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222707222737_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222705222742_))
                              (let ((_e222710222745_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222705222742_))))
                                (let ((_hd222709222748_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222710222745_)))
                                      (_tl222708222750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222710222745_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222709222748_))
                                      (let ((_g228461_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222709222748_
                                                '0))))
                                        (begin
                                          (let ((_g228462_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228461_)
                                                       (##vector-length
                                                        _g228461_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228462_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228462_)))
                                          (let ((_target222711222753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228461_ 0)))
                                                (_tl222713222755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228461_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222713222755_))
                                                (letrec ((_loop222714222758_
                                                          (lambda (_hd222712222761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222718222763_
                           _hd222719222765_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222712222761_))
                        (let ((_e222715222768_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222712222761_))))
                          (let ((_lp-hd222716222771_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222715222768_)))
                                (_lp-tl222717222773_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222715222768_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222716222771_))
                                (let ((_e222724222776_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222716222771_))))
                                  (let ((_hd222723222779_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222724222776_)))
                                        (_tl222722222781_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222724222776_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222722222781_))
                                        (let ((_e222727222784_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222722222781_))))
                                          (let ((_hd222726222787_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222727222784_)))
                                                (_tl222725222789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222727222784_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222725222789_))
                                                (let ((__tmp228475
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222726222787_
                                                               _expr222718222763_)))
                                                      (__tmp228474
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222723222779_
                                                               _hd222719222765_))))
                                                  (declare (not safe))
                                                  (_loop222714222758_
                                                   _lp-tl222717222773_
                                                   __tmp228475
                                                   __tmp228474))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222699222732_
                                                   _g222700222735_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222699222732_ _g222700222735_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222699222732_ _g222700222735_)))))
                        (let ((_expr222720222792_ (reverse _expr222718222763_))
                              (_hd222721222794_ (reverse _hd222719222765_)))
                          ((lambda (_L222797_ _L222798_ _L222799_ _L222800_)
                             (let* ((_g222819222835_
                                     (lambda (_g222820222832_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g222820222832_))))
                                    (_g222818222889_
                                     (lambda (_g222820222838_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g222820222838_))
                                           (let ((_g228463_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g222820222838_
                                                     '0))))
                                             (begin
                                               (let ((_g228464_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g228463_)
                                                            (##vector-length
                                                             _g228463_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g228464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g228464_)))
                                               (let ((_target222822222840_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228463_
                                                         0)))
                                                     (_tl222824222842_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g228463_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222824222842_))
                                                     (letrec ((_loop222825222845_
                                                               (lambda (_hd222823222848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr222829222850_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd222823222848_))
                             (let ((_e222826222853_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd222823222848_))))
                               (let ((_lp-hd222827222856_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e222826222853_)))
                                     (_lp-tl222828222858_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e222826222853_))))
                                 (let ((__tmp228471
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd222827222856_
                                                _expr222829222850_))))
                                   (declare (not safe))
                                   (_loop222825222845_
                                    _lp-tl222828222858_
                                    __tmp228471))))
                             (let ((_expr222830222861_
                                    (reverse _expr222829222850_)))
                               ((lambda (_L222864_)
                                  (let ()
                                    (let* ((_body222877_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args222697_))
                                                 _L222797_))
                                           (__tmp228465
                                            (let ((__tmp228466
                                                   (let ((__tmp228467
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L222864_
                                                               _L222799_))
                                                            (let ((__tmp228468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222878222882_
                                    _g222879222884_
                                    _g222880222886_)
                             (let ((__tmp228469
                                    (let ((__tmp228470
                                           (let ()
                                             (declare (not safe))
                                             (cons _g222878222882_ '()))))
                                      (declare (not safe))
                                      (cons _g222879222884_ __tmp228470))))
                               (declare (not safe))
                               (cons __tmp228469 _g222880222886_)))))
                      (declare (not safe))
                      (foldr2 __tmp228468 '() _L222864_ _L222799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp228467
                                                           _body222877_))))
                                              (declare (not safe))
                                              (cons _L222800_ __tmp228466))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp228465
                                       _stx222696_))))
                                _expr222830222861_))))))
               (let ()
                 (declare (not safe))
                 (_loop222825222845_ _target222822222840_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g222819222835_
                                                        _g222820222838_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g222819222835_
                                              _g222820222838_)))))
                                    (__tmp228472
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222697_))
                                          (let ((__tmp228473
                                                 (lambda (_g222891222894_
                                                          _g222892222896_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g222891222894_
                                                           _g222892222896_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp228473
                                                    '()
                                                    _L222798_)))))
                               (declare (not safe))
                               (_g222818222889_ __tmp228472)))
                           _tl222708222750_
                           _expr222720222792_
                           _hd222721222794_
                           _hd222706222740_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222714222758_
                                                     _target222711222753_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222699222732_
                                                   _g222700222735_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222699222732_ _g222700222735_)))))
                              (let ()
                                (declare (not safe))
                                (_g222699222732_ _g222700222735_)))))
                      (let ()
                        (declare (not safe))
                        (_g222699222732_ _g222700222735_))))))
          (declare (not safe))
          (_g222698222899_ _stx222696_))))
    (define gxc#xform-operands
      (lambda (_stx222652_ . _args222653_)
        (let* ((_g222655222666_
                (lambda (_g222656222663_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222656222663_))))
               (_g222654222693_
                (lambda (_g222656222669_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222656222669_))
                      (let ((_e222661222671_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222656222669_))))
                        (let ((_hd222660222674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222661222671_)))
                              (_tl222659222676_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222661222671_))))
                          ((lambda (_L222679_ _L222680_)
                             (let* ((_rands222691_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222653_))
                                          _L222679_))
                                    (__tmp228476
                                     (let ()
                                       (declare (not safe))
                                       (cons _L222680_ _rands222691_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp228476
                                _stx222652_)))
                           _tl222659222676_
                           _hd222660222674_)))
                      (let ()
                        (declare (not safe))
                        (_g222655222666_ _g222656222669_))))))
          (declare (not safe))
          (_g222654222693_ _stx222652_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx222573_ . _args222574_)
        (let* ((_g222576222593_
                (lambda (_g222577222590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222577222590_))))
               (_g222575222649_
                (lambda (_g222577222596_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222577222596_))
                      (let ((_e222582222598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222577222596_))))
                        (let ((_hd222581222601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222582222598_)))
                              (_tl222580222603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222582222598_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222580222603_))
                              (let ((_e222585222606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222580222603_))))
                                (let ((_hd222584222609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222585222606_)))
                                      (_tl222583222611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222585222606_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222583222611_))
                                      (let ((_e222588222614_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222583222611_))))
                                        (let ((_hd222587222617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222588222614_)))
                                              (_tl222586222619_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222588222614_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222586222619_))
                                              ((lambda (_L222622_ _L222623_)
                                                 (let* ((_expr222647_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args222574_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L222622_))
                     (let ((_arg1222638_ (car _args222574_))
                           (_rest222640_ (cdr _args222574_)))
                       (if (let () (declare (not safe)) (null? _rest222640_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L222622_ _arg1222638_))
                           (let ((_arg2222643_ (car _rest222640_))
                                 (_rest222645_ (cdr _rest222640_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest222645_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L222622_
                                    _arg1222638_
                                    _arg2222643_))
                                 (apply gxc#compile-e
                                        _L222622_
                                        _arg1222638_
                                        _arg2222643_
                                        _rest222645_)))))))
                (__tmp228477
                 (let ((__tmp228478
                        (let ((__tmp228479
                               (let ()
                                 (declare (not safe))
                                 (cons _expr222647_ '()))))
                          (declare (not safe))
                          (cons _L222623_ __tmp228479))))
                   (declare (not safe))
                   (cons '%#set! __tmp228478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp228477
                                                    _stx222573_)))
                                               _hd222587222617_
                                               _hd222584222609_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222576222593_
                                                 _g222577222596_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222576222593_ _g222577222596_)))))
                              (let ()
                                (declare (not safe))
                                (_g222576222593_ _g222577222596_)))))
                      (let ()
                        (declare (not safe))
                        (_g222576222593_ _g222577222596_))))))
          (declare (not safe))
          (_g222575222649_ _stx222573_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx222504_)
        (let* ((_g222506222523_
                (lambda (_g222507222520_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222507222520_))))
               (_g222505222570_
                (lambda (_g222507222526_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222507222526_))
                      (let ((_e222512222528_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222507222526_))))
                        (let ((_hd222511222531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222512222528_)))
                              (_tl222510222533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222512222528_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222510222533_))
                              (let ((_e222515222536_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222510222533_))))
                                (let ((_hd222514222539_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222515222536_)))
                                      (_tl222513222541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222515222536_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222513222541_))
                                      (let ((_e222518222544_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222513222541_))))
                                        (let ((_hd222517222547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222518222544_)))
                                              (_tl222516222549_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222518222544_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222516222549_))
                                              ((lambda (_L222552_ _L222553_)
                                                 (let ((_sym222568_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L222553_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym222568_))
                                                   (let ((__tmp228480
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp228480
                                                      _sym222568_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L222552_))))
                                               _hd222517222547_
                                               _hd222514222539_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222506222523_
                                                 _g222507222526_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222506222523_ _g222507222526_)))))
                              (let ()
                                (declare (not safe))
                                (_g222506222523_ _g222507222526_)))))
                      (let ()
                        (declare (not safe))
                        (_g222506222523_ _g222507222526_))))))
          (declare (not safe))
          (_g222505222570_ _stx222504_))))
    (define gxc#collect-methods-call%
      (lambda (_stx222058_)
        (let* ((___stx228170228171_ _stx222058_)
               (_g222062222164_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx228170228171_)))))
          (let ((___kont228172228173_
                 (lambda (_L222454_ _L222455_ _L222456_ _L222457_ _L222458_)
                   (let ((__tmp228481
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222455_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228481))))
                (___kont228174228175_
                 (lambda (_L222280_ _L222281_ _L222282_ _L222283_)
                   (let ((__tmp228482
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222280_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp228482))))
                (___kont228176228177_ (lambda () '#!void)))
            (let ((___match228305228306_
                   (lambda (_e222071222326_
                            _hd222070222329_
                            _tl222069222331_
                            _e222074222334_
                            _hd222073222337_
                            _tl222072222339_
                            _e222077222342_
                            _hd222076222345_
                            _tl222075222347_
                            _e222080222350_
                            _hd222079222353_
                            _tl222078222355_
                            _e222083222358_
                            _hd222082222361_
                            _tl222081222363_
                            _e222086222366_
                            _hd222085222369_
                            _tl222084222371_
                            _e222089222374_
                            _hd222088222377_
                            _tl222087222379_
                            _e222092222382_
                            _hd222091222385_
                            _tl222090222387_
                            _e222095222390_
                            _hd222094222393_
                            _tl222093222395_
                            _e222098222398_
                            _hd222097222401_
                            _tl222096222403_
                            _e222101222406_
                            _hd222100222409_
                            _tl222099222411_
                            _e222104222414_
                            _hd222103222417_
                            _tl222102222419_
                            _e222107222422_
                            _hd222106222425_
                            _tl222105222427_
                            _e222110222430_
                            _hd222109222433_
                            _tl222108222435_
                            _e222113222438_
                            _hd222112222441_
                            _tl222111222443_
                            _e222116222446_
                            _hd222115222449_
                            _tl222114222451_)
                     (let ((_L222454_ _hd222115222449_)
                           (_L222455_ _hd222106222425_)
                           (_L222456_ _hd222097222401_)
                           (_L222457_ _hd222088222377_)
                           (_L222458_ _hd222079222353_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L222458_
                              'bind-method!))
                           (___kont228172228173_
                            _L222454_
                            _L222455_
                            _L222456_
                            _L222457_
                            _L222458_)
                           (___kont228176228177_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx228170228171_))
                  (let ((_e222071222326_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx228170228171_))))
                    (let ((_tl222069222331_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222071222326_)))
                          (_hd222070222329_
                           (let ()
                             (declare (not safe))
                             (##car _e222071222326_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl222069222331_))
                          (let ((_e222074222334_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl222069222331_))))
                            (let ((_tl222072222339_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222074222334_)))
                                  (_hd222073222337_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222074222334_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd222073222337_))
                                  (let ((_e222077222342_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd222073222337_))))
                                    (let ((_tl222075222347_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222077222342_)))
                                          (_hd222076222345_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222077222342_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd222076222345_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd222076222345_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222075222347_))
                                                  (let ((_e222080222350_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222075222347_))))
                                                    (let ((_tl222078222355_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222080222350_)))
                                                          (_hd222079222353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222080222350_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl222078222355_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl222072222339_))
                      (let ((_e222083222358_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl222072222339_))))
                        (let ((_tl222081222363_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222083222358_)))
                              (_hd222082222361_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222083222358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd222082222361_))
                              (let ((_e222086222366_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd222082222361_))))
                                (let ((_tl222084222371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222086222366_)))
                                      (_hd222085222369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222086222366_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd222085222369_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd222085222369_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl222084222371_))
                                              (let ((_e222089222374_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl222084222371_))))
                                                (let ((_tl222087222379_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e222089222374_)))
                                                      (_hd222088222377_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e222089222374_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222087222379_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl222081222363_))
                                                          (let ((_e222092222382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl222081222363_))))
                    (let ((_tl222090222387_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222092222382_)))
                          (_hd222091222385_
                           (let ()
                             (declare (not safe))
                             (##car _e222092222382_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd222091222385_))
                          (let ((_e222095222390_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd222091222385_))))
                            (let ((_tl222093222395_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e222095222390_)))
                                  (_hd222094222393_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e222095222390_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd222094222393_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd222094222393_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl222093222395_))
                                          (let ((_e222098222398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl222093222395_))))
                                            (let ((_tl222096222403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e222098222398_)))
                                                  (_hd222097222401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e222098222398_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl222096222403_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl222090222387_))
                                                      (let ((_e222101222406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl222090222387_))))
                (let ((_tl222099222411_
                       (let () (declare (not safe)) (##cdr _e222101222406_)))
                      (_hd222100222409_
                       (let () (declare (not safe)) (##car _e222101222406_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd222100222409_))
                      (let ((_e222104222414_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd222100222409_))))
                        (let ((_tl222102222419_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222104222414_)))
                              (_hd222103222417_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222104222414_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd222103222417_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd222103222417_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222102222419_))
                                      (let ((_e222107222422_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222102222419_))))
                                        (let ((_tl222105222427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222107222422_)))
                                              (_hd222106222425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222107222422_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222105222427_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl222099222411_))
                                                  (let ((_e222110222430_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl222099222411_))))
                                                    (let ((_tl222108222435_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e222110222430_)))
                                                          (_hd222109222433_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e222110222430_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd222109222433_))
                                                          (let ((_e222113222438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd222109222433_))))
                    (let ((_tl222111222443_
                           (let ()
                             (declare (not safe))
                             (##cdr _e222113222438_)))
                          (_hd222112222441_
                           (let ()
                             (declare (not safe))
                             (##car _e222113222438_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd222112222441_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd222112222441_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl222111222443_))
                                  (let ((_e222116222446_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl222111222443_))))
                                    (let ((_tl222114222451_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222116222446_)))
                                          (_hd222115222449_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222116222446_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl222114222451_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222108222435_))
                                              (___match228305228306_
                                               _e222071222326_
                                               _hd222070222329_
                                               _tl222069222331_
                                               _e222074222334_
                                               _hd222073222337_
                                               _tl222072222339_
                                               _e222077222342_
                                               _hd222076222345_
                                               _tl222075222347_
                                               _e222080222350_
                                               _hd222079222353_
                                               _tl222078222355_
                                               _e222083222358_
                                               _hd222082222361_
                                               _tl222081222363_
                                               _e222086222366_
                                               _hd222085222369_
                                               _tl222084222371_
                                               _e222089222374_
                                               _hd222088222377_
                                               _tl222087222379_
                                               _e222092222382_
                                               _hd222091222385_
                                               _tl222090222387_
                                               _e222095222390_
                                               _hd222094222393_
                                               _tl222093222395_
                                               _e222098222398_
                                               _hd222097222401_
                                               _tl222096222403_
                                               _e222101222406_
                                               _hd222100222409_
                                               _tl222099222411_
                                               _e222104222414_
                                               _hd222103222417_
                                               _tl222102222419_
                                               _e222107222422_
                                               _hd222106222425_
                                               _tl222105222427_
                                               _e222110222430_
                                               _hd222109222433_
                                               _tl222108222435_
                                               _e222113222438_
                                               _hd222112222441_
                                               _tl222111222443_
                                               _e222116222446_
                                               _hd222115222449_
                                               _tl222114222451_)
                                              (___kont228176228177_))
                                          (___kont228176228177_))))
                                  (___kont228176228177_))
                              (___kont228176228177_))
                          (___kont228176228177_))))
                  (___kont228176228177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl222099222411_))
                                                      (if (let ((__tmp228483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp228483 'bind-method!))
                  (let ((_L222280_ _hd222106222425_)
                        (_L222281_ _hd222097222401_)
                        (_L222282_ _hd222088222377_)
                        (_L222283_ _hd222079222353_))
                    (___kont228174228175_
                     _L222280_
                     _L222281_
                     _L222282_
                     _L222283_))
                  (___kont228176228177_))
              (___kont228176228177_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228176228177_))))
                                      (___kont228176228177_))
                                  (___kont228176228177_))
                              (___kont228176228177_))))
                      (___kont228176228177_))))
              (___kont228176228177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228176228177_))))
                                          (___kont228176228177_))
                                      (___kont228176228177_))
                                  (___kont228176228177_))))
                          (___kont228176228177_))))
                  (___kont228176228177_))
              (___kont228176228177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont228176228177_))
                                          (___kont228176228177_))
                                      (___kont228176228177_))))
                              (___kont228176228177_))))
                      (___kont228176228177_))
                  (___kont228176228177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont228176228177_))
                                              (___kont228176228177_))
                                          (___kont228176228177_))))
                                  (___kont228176228177_))))
                          (___kont228176228177_))))
                  (___kont228176228177_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx222005_ _id222006_ _new-id222007_)
        (let* ((_g222009222022_
                (lambda (_g222010222019_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222010222019_))))
               (_g222008222055_
                (lambda (_g222010222025_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222010222025_))
                      (let ((_e222014222027_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222010222025_))))
                        (let ((_hd222013222030_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222014222027_)))
                              (_tl222012222032_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222014222027_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222012222032_))
                              (let ((_e222017222035_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222012222032_))))
                                (let ((_hd222016222038_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222017222035_)))
                                      (_tl222015222040_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222017222035_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222015222040_))
                                      ((lambda (_L222043_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L222043_
                                                _id222006_))
                                             (let ((__tmp228484
                                                    (let ((__tmp228485
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id222007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp228485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp228484
                                                _stx222005_))
                                             _stx222005_))
                                       _hd222016222038_)
                                      (let ()
                                        (declare (not safe))
                                        (_g222009222022_ _g222010222025_)))))
                              (let ()
                                (declare (not safe))
                                (_g222009222022_ _g222010222025_)))))
                      (let ()
                        (declare (not safe))
                        (_g222009222022_ _g222010222025_))))))
          (declare (not safe))
          (_g222008222055_ _stx222005_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx221946_ _subst221947_)
        (let* ((_g221949221962_
                (lambda (_g221950221959_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221950221959_))))
               (_g221948222002_
                (lambda (_g221950221965_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221950221965_))
                      (let ((_e221954221967_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221950221965_))))
                        (let ((_hd221953221970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221954221967_)))
                              (_tl221952221972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221954221967_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221952221972_))
                              (let ((_e221957221975_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221952221972_))))
                                (let ((_hd221956221978_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221957221975_)))
                                      (_tl221955221980_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221957221975_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221955221980_))
                                      ((lambda (_L221983_)
                                         (let ((_$e221997_
                                                (let ((__tmp228486
                                                       (lambda (_sub221995_)
                                                         (let ((__tmp228487
                                                                (car _sub221995_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L221983_
                                                            __tmp228487)))))
                                                  (declare (not safe))
                                                  (find __tmp228486
                                                        _subst221947_))))
                                           (if _$e221997_
                                               ((lambda (_sub222000_)
                                                  (let ((__tmp228488
                                                         (let ((__tmp228489
                                                                (let ((__tmp228490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub222000_)))
                          (declare (not safe))
                          (cons __tmp228490 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp228489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp228488
                                                     _stx221946_)))
                                                _$e221997_)
                                               _stx221946_)))
                                       _hd221956221978_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221949221962_ _g221950221965_)))))
                              (let ()
                                (declare (not safe))
                                (_g221949221962_ _g221950221965_)))))
                      (let ()
                        (declare (not safe))
                        (_g221949221962_ _g221950221965_))))))
          (declare (not safe))
          (_g221948222002_ _stx221946_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx221874_ _id221875_ _new-id221876_)
        (let* ((_g221878221895_
                (lambda (_g221879221892_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221879221892_))))
               (_g221877221943_
                (lambda (_g221879221898_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221879221898_))
                      (let ((_e221884221900_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221879221898_))))
                        (let ((_hd221883221903_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221884221900_)))
                              (_tl221882221905_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221884221900_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221882221905_))
                              (let ((_e221887221908_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221882221905_))))
                                (let ((_hd221886221911_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221887221908_)))
                                      (_tl221885221913_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221887221908_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221885221913_))
                                      (let ((_e221890221916_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221885221913_))))
                                        (let ((_hd221889221919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221890221916_)))
                                              (_tl221888221921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221890221916_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221888221921_))
                                              ((lambda (_L221924_ _L221925_)
                                                 (let ((_new-expr221940_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L221924_
                                                           _id221875_
                                                           _new-id221876_)))
                                                       (_new-xid221941_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L221925_
                                                               _id221875_))
                                                            _new-id221876_
                                                            _L221925_)))
                                                   (let ((__tmp228491
                                                          (let ((__tmp228492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228493
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221940_ '()))))
                           (declare (not safe))
                           (cons _new-xid221941_ __tmp228493))))
                    (declare (not safe))
                    (cons '%#set! __tmp228492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228491
                                                      _stx221874_))))
                                               _hd221889221919_
                                               _hd221886221911_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221878221895_
                                                 _g221879221898_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221878221895_ _g221879221898_)))))
                              (let ()
                                (declare (not safe))
                                (_g221878221895_ _g221879221898_)))))
                      (let ()
                        (declare (not safe))
                        (_g221878221895_ _g221879221898_))))))
          (declare (not safe))
          (_g221877221943_ _stx221874_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx221798_ _subst221799_)
        (let* ((_g221801221818_
                (lambda (_g221802221815_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221802221815_))))
               (_g221800221871_
                (lambda (_g221802221821_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221802221821_))
                      (let ((_e221807221823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221802221821_))))
                        (let ((_hd221806221826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221807221823_)))
                              (_tl221805221828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221807221823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221805221828_))
                              (let ((_e221810221831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221805221828_))))
                                (let ((_hd221809221834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221810221831_)))
                                      (_tl221808221836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221810221831_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221808221836_))
                                      (let ((_e221813221839_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221808221836_))))
                                        (let ((_hd221812221842_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221813221839_)))
                                              (_tl221811221844_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221813221839_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221811221844_))
                                              ((lambda (_L221847_ _L221848_)
                                                 (let ((_new-expr221868_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L221847_
                                                           _subst221799_)))
                                                       (_new-xid221869_
                                                        (let ((_$e221865_
                                                               (let ((__tmp228494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub221863_)
                                (let ((__tmp228495 (car _sub221863_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L221848_
                                   __tmp228495)))))
                         (declare (not safe))
                         (find __tmp228494 _subst221799_))))
                  (if _$e221865_ (cdr _$e221865_) _L221848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp228496
                                                          (let ((__tmp228497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp228498
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221868_ '()))))
                           (declare (not safe))
                           (cons _new-xid221869_ __tmp228498))))
                    (declare (not safe))
                    (cons '%#set! __tmp228497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp228496
                                                      _stx221798_))))
                                               _hd221812221842_
                                               _hd221809221834_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221801221818_
                                                 _g221802221821_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221801221818_ _g221802221821_)))))
                              (let ()
                                (declare (not safe))
                                (_g221801221818_ _g221802221821_)))))
                      (let ()
                        (declare (not safe))
                        (_g221801221818_ _g221802221821_))))))
          (declare (not safe))
          (_g221800221871_ _stx221798_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx221744_ _ht221745_)
        (let* ((_g221747221760_
                (lambda (_g221748221757_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221748221757_))))
               (_g221746221795_
                (lambda (_g221748221763_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221748221763_))
                      (let ((_e221752221765_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221748221763_))))
                        (let ((_hd221751221768_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221752221765_)))
                              (_tl221750221770_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221752221765_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221750221770_))
                              (let ((_e221755221773_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221750221770_))))
                                (let ((_hd221754221776_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221755221773_)))
                                      (_tl221753221778_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221755221773_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221753221778_))
                                      ((lambda (_L221781_)
                                         (let ((_eid221793_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L221781_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht221745_
                                            _eid221793_
                                            1+
                                            '0)))
                                       _hd221754221776_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221747221760_ _g221748221763_)))))
                              (let ()
                                (declare (not safe))
                                (_g221747221760_ _g221748221763_)))))
                      (let ()
                        (declare (not safe))
                        (_g221747221760_ _g221748221763_))))))
          (declare (not safe))
          (_g221746221795_ _stx221744_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx221674_ _ht221675_)
        (let* ((_g221677221694_
                (lambda (_g221678221691_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221678221691_))))
               (_g221676221741_
                (lambda (_g221678221697_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221678221697_))
                      (let ((_e221683221699_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221678221697_))))
                        (let ((_hd221682221702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221683221699_)))
                              (_tl221681221704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221683221699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221681221704_))
                              (let ((_e221686221707_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221681221704_))))
                                (let ((_hd221685221710_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221686221707_)))
                                      (_tl221684221712_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221686221707_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221684221712_))
                                      (let ((_e221689221715_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221684221712_))))
                                        (let ((_hd221688221718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221689221715_)))
                                              (_tl221687221720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221689221715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221687221720_))
                                              ((lambda (_L221723_ _L221724_)
                                                 (let ((_eid221739_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L221724_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht221675_
                                                      _eid221739_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L221723_
                                                      _ht221675_))))
                                               _hd221688221718_
                                               _hd221685221710_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221677221694_
                                                 _g221678221697_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221677221694_ _g221678221697_)))))
                              (let ()
                                (declare (not safe))
                                (_g221677221694_ _g221678221697_)))))
                      (let ()
                        (declare (not safe))
                        (_g221677221694_ _g221678221697_))))))
          (declare (not safe))
          (_g221676221741_ _stx221674_))))
    (define gxc#find-body%
      (lambda (_stx221587_ _arg221588_)
        (let* ((_g221590221609_
                (lambda (_g221591221606_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221591221606_))))
               (_g221589221671_
                (lambda (_g221591221612_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221591221612_))
                      (let ((_e221595221614_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221591221612_))))
                        (let ((_hd221594221617_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221595221614_)))
                              (_tl221593221619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221595221614_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221593221619_))
                              (let ((_g228499_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221593221619_
                                        '0))))
                                (begin
                                  (let ((_g228500_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228499_)
                                               (##vector-length _g228499_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228500_ 2)))
                                        (error "Context expects 2 values"
                                               _g228500_)))
                                  (let ((_target221596221622_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228499_ 0)))
                                        (_tl221598221624_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228499_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221598221624_))
                                        (letrec ((_loop221599221627_
                                                  (lambda (_hd221597221630_
                                                           _expr221603221632_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221597221630_))
                                                        (let ((_e221600221635_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221597221630_))))
                  (let ((_lp-hd221601221638_
                         (let () (declare (not safe)) (##car _e221600221635_)))
                        (_lp-tl221602221640_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221600221635_))))
                    (let ((__tmp228504
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd221601221638_ _expr221603221632_))))
                      (declare (not safe))
                      (_loop221599221627_ _lp-tl221602221640_ __tmp228504))))
                (let ((_expr221604221643_ (reverse _expr221603221632_)))
                  ((lambda (_L221646_)
                     (let ((__tmp228503
                            (lambda (_g221659221661_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221659221661_
                                 _arg221588_))))
                           (__tmp228501
                            (let ((__tmp228502
                                   (lambda (_g221663221666_ _g221664221668_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221663221666_
                                             _g221664221668_)))))
                              (declare (not safe))
                              (foldr1 __tmp228502 '() _L221646_))))
                       (declare (not safe))
                       (ormap1 __tmp228503 __tmp228501)))
                   _expr221604221643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221599221627_
                                             _target221596221622_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221590221609_
                                           _g221591221612_))))))
                              (let ()
                                (declare (not safe))
                                (_g221590221609_ _g221591221612_)))))
                      (let ()
                        (declare (not safe))
                        (_g221590221609_ _g221591221612_))))))
          (declare (not safe))
          (_g221589221671_ _stx221587_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx221519_ _arg221520_)
        (let* ((_g221522221539_
                (lambda (_g221523221536_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221523221536_))))
               (_g221521221584_
                (lambda (_g221523221542_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221523221542_))
                      (let ((_e221528221544_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221523221542_))))
                        (let ((_hd221527221547_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221528221544_)))
                              (_tl221526221549_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221528221544_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221526221549_))
                              (let ((_e221531221552_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221526221549_))))
                                (let ((_hd221530221555_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221531221552_)))
                                      (_tl221529221557_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221531221552_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221529221557_))
                                      (let ((_e221534221560_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221529221557_))))
                                        (let ((_hd221533221563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221534221560_)))
                                              (_tl221532221565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221534221560_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221532221565_))
                                              ((lambda (_L221568_ _L221569_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221568_
                                                    _arg221520_)))
                                               _hd221533221563_
                                               _hd221530221555_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221522221539_
                                                 _g221523221542_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221522221539_ _g221523221542_)))))
                              (let ()
                                (declare (not safe))
                                (_g221522221539_ _g221523221542_)))))
                      (let ()
                        (declare (not safe))
                        (_g221522221539_ _g221523221542_))))))
          (declare (not safe))
          (_g221521221584_ _stx221519_))))
    (define gxc#find-lambda%
      (lambda (_stx221451_ _arg221452_)
        (let* ((_g221454221471_
                (lambda (_g221455221468_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221455221468_))))
               (_g221453221516_
                (lambda (_g221455221474_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221455221474_))
                      (let ((_e221460221476_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221455221474_))))
                        (let ((_hd221459221479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221460221476_)))
                              (_tl221458221481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221460221476_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221458221481_))
                              (let ((_e221463221484_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221458221481_))))
                                (let ((_hd221462221487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221463221484_)))
                                      (_tl221461221489_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221463221484_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221461221489_))
                                      (let ((_e221466221492_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221461221489_))))
                                        (let ((_hd221465221495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221466221492_)))
                                              (_tl221464221497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221466221492_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221464221497_))
                                              ((lambda (_L221500_ _L221501_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221500_
                                                    _arg221452_)))
                                               _hd221465221495_
                                               _hd221462221487_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221454221471_
                                                 _g221455221474_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221454221471_ _g221455221474_)))))
                              (let ()
                                (declare (not safe))
                                (_g221454221471_ _g221455221474_)))))
                      (let ()
                        (declare (not safe))
                        (_g221454221471_ _g221455221474_))))))
          (declare (not safe))
          (_g221453221516_ _stx221451_))))
    (define gxc#find-case-lambda%
      (lambda (_stx221333_ _arg221334_)
        (let* ((_g221336221364_
                (lambda (_g221337221361_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221337221361_))))
               (_g221335221448_
                (lambda (_g221337221367_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221337221367_))
                      (let ((_e221342221369_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221337221367_))))
                        (let ((_hd221341221372_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221342221369_)))
                              (_tl221340221374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221342221369_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221340221374_))
                              (let ((_g228505_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221340221374_
                                        '0))))
                                (begin
                                  (let ((_g228506_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228505_)
                                               (##vector-length _g228505_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228506_ 2)))
                                        (error "Context expects 2 values"
                                               _g228506_)))
                                  (let ((_target221343221377_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228505_ 0)))
                                        (_tl221345221379_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228505_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221345221379_))
                                        (letrec ((_loop221346221382_
                                                  (lambda (_hd221344221385_
                                                           _body221350221387_
                                                           _hd221351221389_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221344221385_))
                                                        (let ((_e221347221392_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221344221385_))))
                  (let ((_lp-hd221348221395_
                         (let () (declare (not safe)) (##car _e221347221392_)))
                        (_lp-tl221349221397_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221347221392_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd221348221395_))
                        (let ((_e221356221400_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd221348221395_))))
                          (let ((_hd221355221403_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221356221400_)))
                                (_tl221354221405_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221356221400_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221354221405_))
                                (let ((_e221359221408_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221354221405_))))
                                  (let ((_hd221358221411_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221359221408_)))
                                        (_tl221357221413_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221359221408_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221357221413_))
                                        (let ((__tmp228511
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221358221411_
                                                       _body221350221387_)))
                                              (__tmp228510
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221355221403_
                                                       _hd221351221389_))))
                                          (declare (not safe))
                                          (_loop221346221382_
                                           _lp-tl221349221397_
                                           __tmp228511
                                           __tmp228510))
                                        (let ()
                                          (declare (not safe))
                                          (_g221336221364_ _g221337221367_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221336221364_ _g221337221367_)))))
                        (let ()
                          (declare (not safe))
                          (_g221336221364_ _g221337221367_)))))
                (let ((_body221352221416_ (reverse _body221350221387_))
                      (_hd221353221418_ (reverse _hd221351221389_)))
                  ((lambda (_L221421_ _L221422_)
                     (let ((__tmp228509
                            (lambda (_g221436221438_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221436221438_
                                 _arg221334_))))
                           (__tmp228507
                            (let ((__tmp228508
                                   (lambda (_g221440221443_ _g221441221445_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221440221443_
                                             _g221441221445_)))))
                              (declare (not safe))
                              (foldr1 __tmp228508 '() _L221421_))))
                       (declare (not safe))
                       (ormap1 __tmp228509 __tmp228507)))
                   _body221352221416_
                   _hd221353221418_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221346221382_
                                             _target221343221377_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221336221364_
                                           _g221337221367_))))))
                              (let ()
                                (declare (not safe))
                                (_g221336221364_ _g221337221367_)))))
                      (let ()
                        (declare (not safe))
                        (_g221336221364_ _g221337221367_))))))
          (declare (not safe))
          (_g221335221448_ _stx221333_))))
    (define gxc#find-let-values%
      (lambda (_stx221183_ _arg221184_)
        (let* ((_g221186221221_
                (lambda (_g221187221218_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221187221218_))))
               (_g221185221330_
                (lambda (_g221187221224_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221187221224_))
                      (let ((_e221193221226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221187221224_))))
                        (let ((_hd221192221229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221193221226_)))
                              (_tl221191221231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221193221226_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221191221231_))
                              (let ((_e221196221234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221191221231_))))
                                (let ((_hd221195221237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221196221234_)))
                                      (_tl221194221239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221196221234_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd221195221237_))
                                      (let ((_g228512_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd221195221237_
                                                '0))))
                                        (begin
                                          (let ((_g228513_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g228512_)
                                                       (##vector-length
                                                        _g228512_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g228513_ 2)))
                                                (error "Context expects 2 values"
                                                       _g228513_)))
                                          (let ((_target221197221242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g228512_ 0)))
                                                (_tl221199221244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g228512_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221199221244_))
                                                (letrec ((_loop221200221247_
                                                          (lambda (_hd221198221250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr221204221252_
                           _bind221205221254_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221198221250_))
                        (let ((_e221201221257_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221198221250_))))
                          (let ((_lp-hd221202221260_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221201221257_)))
                                (_lp-tl221203221262_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221201221257_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd221202221260_))
                                (let ((_e221210221265_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd221202221260_))))
                                  (let ((_hd221209221268_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221210221265_)))
                                        (_tl221208221270_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221210221265_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221208221270_))
                                        (let ((_e221213221273_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221208221270_))))
                                          (let ((_hd221212221276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221213221273_)))
                                                (_tl221211221278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221213221273_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221211221278_))
                                                (let ((__tmp228518
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221212221276_
                                                               _expr221204221252_)))
                                                      (__tmp228517
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221209221268_
                                                               _bind221205221254_))))
                                                  (declare (not safe))
                                                  (_loop221200221247_
                                                   _lp-tl221203221262_
                                                   __tmp228518
                                                   __tmp228517))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221186221221_
                                                   _g221187221224_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g221186221221_ _g221187221224_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221186221221_ _g221187221224_)))))
                        (let ((_expr221206221281_ (reverse _expr221204221252_))
                              (_bind221207221283_
                               (reverse _bind221205221254_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221194221239_))
                              (let ((_e221216221286_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221194221239_))))
                                (let ((_hd221215221289_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221216221286_)))
                                      (_tl221214221291_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221216221286_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221214221291_))
                                      ((lambda (_L221294_ _L221295_ _L221296_)
                                         (let ((_$e221327_
                                                (let ((__tmp228516
                                                       (lambda (_g221315221317_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g221315221317_
                                                            _arg221184_))))
                                                      (__tmp228514
                                                       (let ((__tmp228515
                                                              (lambda (_g221319221322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g221320221324_)
                        (let ()
                          (declare (not safe))
                          (cons _g221319221322_ _g221320221324_)))))
                 (declare (not safe))
                 (foldr1 __tmp228515 '() _L221295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp228516
                                                          __tmp228514))))
                                           (if _$e221327_
                                               _$e221327_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L221294_
                                                  _arg221184_)))))
                                       _hd221215221289_
                                       _expr221206221281_
                                       _bind221207221283_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221186221221_ _g221187221224_)))))
                              (let ()
                                (declare (not safe))
                                (_g221186221221_ _g221187221224_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop221200221247_
                                                     _target221197221242_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221186221221_
                                                   _g221187221224_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221186221221_ _g221187221224_)))))
                              (let ()
                                (declare (not safe))
                                (_g221186221221_ _g221187221224_)))))
                      (let ()
                        (declare (not safe))
                        (_g221186221221_ _g221187221224_))))))
          (declare (not safe))
          (_g221185221330_ _stx221183_))))
    (define gxc#find-setq%
      (lambda (_stx221115_ _arg221116_)
        (let* ((_g221118221135_
                (lambda (_g221119221132_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221119221132_))))
               (_g221117221180_
                (lambda (_g221119221138_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221119221138_))
                      (let ((_e221124221140_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221119221138_))))
                        (let ((_hd221123221143_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221124221140_)))
                              (_tl221122221145_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221124221140_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221122221145_))
                              (let ((_e221127221148_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221122221145_))))
                                (let ((_hd221126221151_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221127221148_)))
                                      (_tl221125221153_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221127221148_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221125221153_))
                                      (let ((_e221130221156_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221125221153_))))
                                        (let ((_hd221129221159_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221130221156_)))
                                              (_tl221128221161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221130221156_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221128221161_))
                                              ((lambda (_L221164_ _L221165_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221164_
                                                    _arg221116_)))
                                               _hd221129221159_
                                               _hd221126221151_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221118221135_
                                                 _g221119221138_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221118221135_ _g221119221138_)))))
                              (let ()
                                (declare (not safe))
                                (_g221118221135_ _g221119221138_)))))
                      (let ()
                        (declare (not safe))
                        (_g221118221135_ _g221119221138_))))))
          (declare (not safe))
          (_g221117221180_ _stx221115_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx221059_ _ids221060_)
        (let* ((_g221062221075_
                (lambda (_g221063221072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221063221072_))))
               (_g221061221112_
                (lambda (_g221063221078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221063221078_))
                      (let ((_e221067221080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221063221078_))))
                        (let ((_hd221066221083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221067221080_)))
                              (_tl221065221085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221067221080_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221065221085_))
                              (let ((_e221070221088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221065221085_))))
                                (let ((_hd221069221091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221070221088_)))
                                      (_tl221068221093_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221070221088_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221068221093_))
                                      ((lambda (_L221096_)
                                         (let ((__tmp228519
                                                (lambda (_g221107221109_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L221096_
                                                     _g221107221109_)))))
                                           (declare (not safe))
                                           (find __tmp228519 _ids221060_)))
                                       _hd221069221091_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221062221075_ _g221063221078_)))))
                              (let ()
                                (declare (not safe))
                                (_g221062221075_ _g221063221078_)))))
                      (let ()
                        (declare (not safe))
                        (_g221062221075_ _g221063221078_))))))
          (declare (not safe))
          (_g221061221112_ _stx221059_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx220983_ _ids220984_)
        (let* ((_g220986221003_
                (lambda (_g220987221000_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220987221000_))))
               (_g220985221056_
                (lambda (_g220987221006_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220987221006_))
                      (let ((_e220992221008_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220987221006_))))
                        (let ((_hd220991221011_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220992221008_)))
                              (_tl220990221013_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220992221008_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220990221013_))
                              (let ((_e220995221016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220990221013_))))
                                (let ((_hd220994221019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220995221016_)))
                                      (_tl220993221021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220995221016_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220993221021_))
                                      (let ((_e220998221024_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220993221021_))))
                                        (let ((_hd220997221027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220998221024_)))
                                              (_tl220996221029_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220998221024_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220996221029_))
                                              ((lambda (_L221032_ _L221033_)
                                                 (let ((_$e221053_
                                                        (let ((__tmp228520
                                                               (lambda (_g221048221050_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L221033_ _g221048221050_)))))
                  (declare (not safe))
                  (find __tmp228520 _ids220984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e221053_
                                                       _$e221053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L221032_
                                                          _ids220984_)))))
                                               _hd220997221027_
                                               _hd220994221019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220986221003_
                                                 _g220987221006_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220986221003_ _g220987221006_)))))
                              (let ()
                                (declare (not safe))
                                (_g220986221003_ _g220987221006_)))))
                      (let ()
                        (declare (not safe))
                        (_g220986221003_ _g220987221006_))))))
          (declare (not safe))
          (_g220985221056_ _stx220983_))))))
