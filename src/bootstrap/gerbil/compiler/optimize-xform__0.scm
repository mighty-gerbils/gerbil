(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708247276)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl223427_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223427_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223427_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223427_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223427_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl223427_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl223423_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223423_ '%#declare gxc#xform-identity))
           _tbl223423_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl223419_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227740 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-copy! _tbl223419_ __tmp227740))
           (let ((__tmp227741 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-copy! _tbl223419_ __tmp227741))
           _tbl223419_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl223415_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223415_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223415_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223415_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223415_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223415_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl223415_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl223411_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227742 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223411_ __tmp227742))
           (let ((__tmp227743 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl223411_ __tmp227743))
           (let ()
             (declare (not safe))
             (table-set! _tbl223411_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223411_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223411_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223411_
              '%#define-values
              gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223411_
              '%#define-syntax
              gxc#xform-define-syntax%))
           _tbl223411_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl223407_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227744 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223407_ __tmp227744))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl223407_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223407_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl223407_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx223390_ . _args223392_)
        (let ((__tmp227746
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223392_)
                     (gxc#compile-e__0 _stx223390_)
                     (let ((_arg1223397_ (car _args223392_))
                           (_rest223399_ (cdr _args223392_)))
                       (if (null? _rest223399_)
                           (gxc#compile-e__1 _stx223390_ _arg1223397_)
                           (let ((_arg2223402_ (car _rest223399_))
                                 (_rest223404_ (cdr _rest223399_)))
                             (if (null? _rest223404_)
                                 (gxc#compile-e__2
                                  _stx223390_
                                  _arg1223397_
                                  _arg2223402_)
                                 (apply gxc#compile-e
                                        _stx223390_
                                        _arg1223397_
                                        _arg2223402_
                                        _rest223404_))))))))
              (__tmp227745 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp227746
           gxc#current-compile-methods
           __tmp227745))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl223387_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227747 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl223387_ __tmp227747))
           (let ()
             (declare (not safe))
             (table-set! _tbl223387_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223387_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223387_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223387_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223387_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl223387_))))
    (define gxc#apply-collect-methods
      (lambda (_stx223370_ . _args223372_)
        (let ((__tmp227749
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223372_)
                     (gxc#compile-e__0 _stx223370_)
                     (let ((_arg1223377_ (car _args223372_))
                           (_rest223379_ (cdr _args223372_)))
                       (if (null? _rest223379_)
                           (gxc#compile-e__1 _stx223370_ _arg1223377_)
                           (let ((_arg2223382_ (car _rest223379_))
                                 (_rest223384_ (cdr _rest223379_)))
                             (if (null? _rest223384_)
                                 (gxc#compile-e__2
                                  _stx223370_
                                  _arg1223377_
                                  _arg2223382_)
                                 (apply gxc#compile-e
                                        _stx223370_
                                        _arg1223377_
                                        _arg2223382_
                                        _rest223384_))))))))
              (__tmp227748 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp227749
           gxc#current-compile-methods
           __tmp227748))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl223367_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227750 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl223367_ __tmp227750))
           (let ()
             (declare (not safe))
             (table-set! _tbl223367_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223367_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223367_ '%#set! gxc#expression-subst-setq%))
           _tbl223367_))))
    (define gxc#apply-expression-subst
      (lambda (_stx223350_ . _args223352_)
        (let ((__tmp227752
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223352_)
                     (gxc#compile-e__0 _stx223350_)
                     (let ((_arg1223357_ (car _args223352_))
                           (_rest223359_ (cdr _args223352_)))
                       (if (null? _rest223359_)
                           (gxc#compile-e__1 _stx223350_ _arg1223357_)
                           (let ((_arg2223362_ (car _rest223359_))
                                 (_rest223364_ (cdr _rest223359_)))
                             (if (null? _rest223364_)
                                 (gxc#compile-e__2
                                  _stx223350_
                                  _arg1223357_
                                  _arg2223362_)
                                 (apply gxc#compile-e
                                        _stx223350_
                                        _arg1223357_
                                        _arg2223362_
                                        _rest223364_))))))))
              (__tmp227751 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp227752
           gxc#current-compile-methods
           __tmp227751))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl223347_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227753 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-copy! _tbl223347_ __tmp227753))
           (let ()
             (declare (not safe))
             (table-set! _tbl223347_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223347_ '%#set! gxc#expression-subst*-setq%))
           _tbl223347_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx223330_ . _args223332_)
        (let ((__tmp227755
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223332_)
                     (gxc#compile-e__0 _stx223330_)
                     (let ((_arg1223337_ (car _args223332_))
                           (_rest223339_ (cdr _args223332_)))
                       (if (null? _rest223339_)
                           (gxc#compile-e__1 _stx223330_ _arg1223337_)
                           (let ((_arg2223342_ (car _rest223339_))
                                 (_rest223344_ (cdr _rest223339_)))
                             (if (null? _rest223344_)
                                 (gxc#compile-e__2
                                  _stx223330_
                                  _arg1223337_
                                  _arg2223342_)
                                 (apply gxc#compile-e
                                        _stx223330_
                                        _arg1223337_
                                        _arg2223342_
                                        _rest223344_))))))))
              (__tmp227754 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp227755
           gxc#current-compile-methods
           __tmp227754))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl223327_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227756 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-copy! _tbl223327_ __tmp227756))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223327_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl223327_
              '%#struct-direct-instance?
              gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223327_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl223327_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl223323_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227757 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-copy! _tbl223323_ __tmp227757))
           (let ()
             (declare (not safe))
             (table-set! _tbl223323_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223323_ '%#set! gxc#find-var-refs-setq%))
           _tbl223323_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx223306_ . _args223308_)
        (let ((__tmp227759
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223308_)
                     (gxc#compile-e__0 _stx223306_)
                     (let ((_arg1223313_ (car _args223308_))
                           (_rest223315_ (cdr _args223308_)))
                       (if (null? _rest223315_)
                           (gxc#compile-e__1 _stx223306_ _arg1223313_)
                           (let ((_arg2223318_ (car _rest223315_))
                                 (_rest223320_ (cdr _rest223315_)))
                             (if (null? _rest223320_)
                                 (gxc#compile-e__2
                                  _stx223306_
                                  _arg1223313_
                                  _arg2223318_)
                                 (apply gxc#compile-e
                                        _stx223306_
                                        _arg1223313_
                                        _arg2223318_
                                        _rest223320_))))))))
              (__tmp227758 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp227759
           gxc#current-compile-methods
           __tmp227758))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl223303_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp227760 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-copy! _tbl223303_ __tmp227760))
           (let ()
             (declare (not safe))
             (table-set! _tbl223303_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (table-set! _tbl223303_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl223303_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx223286_ . _args223288_)
        (let ((__tmp227762
               (lambda ()
                 (declare (not safe))
                 (if (null? _args223288_)
                     (gxc#compile-e__0 _stx223286_)
                     (let ((_arg1223293_ (car _args223288_))
                           (_rest223295_ (cdr _args223288_)))
                       (if (null? _rest223295_)
                           (gxc#compile-e__1 _stx223286_ _arg1223293_)
                           (let ((_arg2223298_ (car _rest223295_))
                                 (_rest223300_ (cdr _rest223295_)))
                             (if (null? _rest223300_)
                                 (gxc#compile-e__2
                                  _stx223286_
                                  _arg1223293_
                                  _arg2223298_)
                                 (apply gxc#compile-e
                                        _stx223286_
                                        _arg1223293_
                                        _arg2223298_
                                        _rest223300_))))))))
              (__tmp227761 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp227762
           gxc#current-compile-methods
           __tmp227761))))
    (define gxc#xform-identity
      (lambda (_stx223283_ . _args223284_) _stx223283_))
    (define gxc#xform-wrap-source
      (lambda (_stx223280_ _src-stx223281_)
        (let ((__tmp227763
               (let () (declare (not safe)) (gx#stx-source _src-stx223281_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx223280_ __tmp227763))))
    (define gxc#xform-apply-compile-e
      (lambda (_args223267_)
        (lambda (_stx223269_)
          (if (let () (declare (not safe)) (null? _args223267_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx223269_))
              (let ((_arg1223271_ (car _args223267_))
                    (_rest223273_ (cdr _args223267_)))
                (if (let () (declare (not safe)) (null? _rest223273_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx223269_ _arg1223271_))
                    (let ((_arg2223276_ (car _rest223273_))
                          (_rest223278_ (cdr _rest223273_)))
                      (if (let () (declare (not safe)) (null? _rest223278_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx223269_
                             _arg1223271_
                             _arg2223276_))
                          (apply gxc#compile-e
                                 _stx223269_
                                 _arg1223271_
                                 _arg2223276_
                                 _rest223278_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx223226_ . _args223227_)
        (let* ((_g223229223239_
                (lambda (_g223230223236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223230223236_))))
               (_g223228223264_
                (lambda (_g223230223242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223230223242_))
                      (let ((_e223234223244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223230223242_))))
                        (let ((_hd223233223247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223234223244_)))
                              (_tl223232223249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223234223244_))))
                          ((lambda (_L223252_)
                             (let* ((_forms223262_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args223227_))
                                          _L223252_))
                                    (__tmp227764
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms223262_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp227764
                                _stx223226_)))
                           _tl223232223249_)))
                      (let ()
                        (declare (not safe))
                        (_g223229223239_ _g223230223242_))))))
          (declare (not safe))
          (_g223228223264_ _stx223226_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx223184_ . _args223185_)
        (let* ((_g223187223197_
                (lambda (_g223188223194_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223188223194_))))
               (_g223186223223_
                (lambda (_g223188223200_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223188223200_))
                      (let ((_e223192223202_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223188223200_))))
                        (let ((_hd223191223205_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223192223202_)))
                              (_tl223190223207_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223192223202_))))
                          ((lambda (_L223210_)
                             (let ((__tmp227767
                                    (lambda ()
                                      (let* ((_forms223221_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args223185_))
                                                   _L223210_))
                                             (__tmp227768
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms223221_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp227768
                                         _stx223184_))))
                                   (__tmp227765
                                    (let ((__tmp227766
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp227766 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp227767
                                gx#current-expander-phi
                                __tmp227765)))
                           _tl223190223207_)))
                      (let ()
                        (declare (not safe))
                        (_g223187223197_ _g223188223200_))))))
          (declare (not safe))
          (_g223186223223_ _stx223184_))))
    (define gxc#xform-module%
      (lambda (_stx223112_ . _args223113_)
        (let* ((_g223115223129_
                (lambda (_g223116223126_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223116223126_))))
               (_g223114223181_
                (lambda (_g223116223132_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223116223132_))
                      (let ((_e223121223134_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223116223132_))))
                        (let ((_hd223120223137_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223121223134_)))
                              (_tl223119223139_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223121223134_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223119223139_))
                              (let ((_e223124223142_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223119223139_))))
                                (let ((_hd223123223145_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223124223142_)))
                                      (_tl223122223147_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223124223142_))))
                                  ((lambda (_L223150_ _L223151_)
                                     (let* ((_ctx223164_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L223151_)))
                                            (_code223166_
                                             (##structure-ref
                                              _ctx223164_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code223178_
                                             (let ((__tmp227769
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args223113_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code223166_))
                                                          (let ((_arg1223169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args223113_))
                        (_rest223171_ (cdr _args223113_)))
                    (if (let () (declare (not safe)) (null? _rest223171_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code223166_ _arg1223169_))
                        (let ((_arg2223174_ (car _rest223171_))
                              (_rest223176_ (cdr _rest223171_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest223176_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code223166_
                                 _arg1223169_
                                 _arg2223174_))
                              (apply gxc#compile-e
                                     _code223166_
                                     _arg1223169_
                                     _arg2223174_
                                     _rest223176_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp227769
                                                gx#current-expander-context
                                                _ctx223164_))))
                                       (##structure-set!
                                        _ctx223164_
                                        _code223178_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp227770
                                              (let ((__tmp227771
                                                     (let ((__tmp227772
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code223178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L223151_ __tmp227772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp227771))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp227770
                                          _stx223112_))))
                                   _tl223122223147_
                                   _hd223123223145_)))
                              (let ()
                                (declare (not safe))
                                (_g223115223129_ _g223116223132_)))))
                      (let ()
                        (declare (not safe))
                        (_g223115223129_ _g223116223132_))))))
          (declare (not safe))
          (_g223114223181_ _stx223112_))))
    (define gxc#xform-define-values%
      (lambda (_stx223033_ . _args223034_)
        (let* ((_g223036223053_
                (lambda (_g223037223050_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g223037223050_))))
               (_g223035223109_
                (lambda (_g223037223056_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g223037223056_))
                      (let ((_e223042223058_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g223037223056_))))
                        (let ((_hd223041223061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e223042223058_)))
                              (_tl223040223063_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e223042223058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl223040223063_))
                              (let ((_e223045223066_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl223040223063_))))
                                (let ((_hd223044223069_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e223045223066_)))
                                      (_tl223043223071_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e223045223066_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl223043223071_))
                                      (let ((_e223048223074_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl223043223071_))))
                                        (let ((_hd223047223077_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e223048223074_)))
                                              (_tl223046223079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e223048223074_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl223046223079_))
                                              ((lambda (_L223082_ _L223083_)
                                                 (let* ((_expr223107_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args223034_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L223082_))
                     (let ((_arg1223098_ (car _args223034_))
                           (_rest223100_ (cdr _args223034_)))
                       (if (let () (declare (not safe)) (null? _rest223100_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L223082_ _arg1223098_))
                           (let ((_arg2223103_ (car _rest223100_))
                                 (_rest223105_ (cdr _rest223100_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest223105_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L223082_
                                    _arg1223098_
                                    _arg2223103_))
                                 (apply gxc#compile-e
                                        _L223082_
                                        _arg1223098_
                                        _arg2223103_
                                        _rest223105_)))))))
                (__tmp227773
                 (let ((__tmp227774
                        (let ((__tmp227775
                               (let ()
                                 (declare (not safe))
                                 (cons _expr223107_ '()))))
                          (declare (not safe))
                          (cons _L223083_ __tmp227775))))
                   (declare (not safe))
                   (cons '%#define-values __tmp227774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp227773
                                                    _stx223033_)))
                                               _hd223047223077_
                                               _hd223044223069_)
                                              (let ()
                                                (declare (not safe))
                                                (_g223036223053_
                                                 _g223037223056_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g223036223053_ _g223037223056_)))))
                              (let ()
                                (declare (not safe))
                                (_g223036223053_ _g223037223056_)))))
                      (let ()
                        (declare (not safe))
                        (_g223036223053_ _g223037223056_))))))
          (declare (not safe))
          (_g223035223109_ _stx223033_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx222953_ . _args222954_)
        (let* ((_g222956222973_
                (lambda (_g222957222970_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222957222970_))))
               (_g222955223030_
                (lambda (_g222957222976_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222957222976_))
                      (let ((_e222962222978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222957222976_))))
                        (let ((_hd222961222981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222962222978_)))
                              (_tl222960222983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222962222978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222960222983_))
                              (let ((_e222965222986_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222960222983_))))
                                (let ((_hd222964222989_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222965222986_)))
                                      (_tl222963222991_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222965222986_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222963222991_))
                                      (let ((_e222968222994_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222963222991_))))
                                        (let ((_hd222967222997_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222968222994_)))
                                              (_tl222966222999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222968222994_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222966222999_))
                                              ((lambda (_L223002_ _L223003_)
                                                 (let ((__tmp227778
                                                        (lambda ()
                                                          (let* ((_expr223028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args222954_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L223002_))
                              (let ((_arg1223019_ (car _args222954_))
                                    (_rest223021_ (cdr _args222954_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest223021_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L223002_
                                       _arg1223019_))
                                    (let ((_arg2223024_ (car _rest223021_))
                                          (_rest223026_ (cdr _rest223021_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest223026_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L223002_
                                             _arg1223019_
                                             _arg2223024_))
                                          (apply gxc#compile-e
                                                 _L223002_
                                                 _arg1223019_
                                                 _arg2223024_
                                                 _rest223026_)))))))
                         (__tmp227779
                          (let ((__tmp227780
                                 (let ((__tmp227781
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr223028_ '()))))
                                   (declare (not safe))
                                   (cons _L223003_ __tmp227781))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp227780))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp227779 _stx222953_))))
               (__tmp227776
                (let ((__tmp227777 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp227777 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp227778
                                                    gx#current-expander-phi
                                                    __tmp227776)))
                                               _hd222967222997_
                                               _hd222964222989_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222956222973_
                                                 _g222957222976_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222956222973_ _g222957222976_)))))
                              (let ()
                                (declare (not safe))
                                (_g222956222973_ _g222957222976_)))))
                      (let ()
                        (declare (not safe))
                        (_g222956222973_ _g222957222976_))))))
          (declare (not safe))
          (_g222955223030_ _stx222953_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx222874_ . _args222875_)
        (let* ((_g222877222894_
                (lambda (_g222878222891_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222878222891_))))
               (_g222876222950_
                (lambda (_g222878222897_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222878222897_))
                      (let ((_e222883222899_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222878222897_))))
                        (let ((_hd222882222902_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222883222899_)))
                              (_tl222881222904_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222883222899_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222881222904_))
                              (let ((_e222886222907_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222881222904_))))
                                (let ((_hd222885222910_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222886222907_)))
                                      (_tl222884222912_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222886222907_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222884222912_))
                                      (let ((_e222889222915_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222884222912_))))
                                        (let ((_hd222888222918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222889222915_)))
                                              (_tl222887222920_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222889222915_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222887222920_))
                                              ((lambda (_L222923_ _L222924_)
                                                 (let* ((_expr222948_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args222875_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L222923_))
                     (let ((_arg1222939_ (car _args222875_))
                           (_rest222941_ (cdr _args222875_)))
                       (if (let () (declare (not safe)) (null? _rest222941_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L222923_ _arg1222939_))
                           (let ((_arg2222944_ (car _rest222941_))
                                 (_rest222946_ (cdr _rest222941_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest222946_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L222923_
                                    _arg1222939_
                                    _arg2222944_))
                                 (apply gxc#compile-e
                                        _L222923_
                                        _arg1222939_
                                        _arg2222944_
                                        _rest222946_)))))))
                (__tmp227782
                 (let ((__tmp227783
                        (let ((__tmp227784
                               (let ()
                                 (declare (not safe))
                                 (cons _expr222948_ '()))))
                          (declare (not safe))
                          (cons _L222924_ __tmp227784))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp227783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp227782
                                                    _stx222874_)))
                                               _hd222888222918_
                                               _hd222885222910_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222877222894_
                                                 _g222878222897_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222877222894_ _g222878222897_)))))
                              (let ()
                                (declare (not safe))
                                (_g222877222894_ _g222878222897_)))))
                      (let ()
                        (declare (not safe))
                        (_g222877222894_ _g222878222897_))))))
          (declare (not safe))
          (_g222876222950_ _stx222874_))))
    (define gxc#xform-lambda%
      (lambda (_stx222817_ . _args222818_)
        (let* ((_g222820222834_
                (lambda (_g222821222831_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222821222831_))))
               (_g222819222871_
                (lambda (_g222821222837_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222821222837_))
                      (let ((_e222826222839_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222821222837_))))
                        (let ((_hd222825222842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222826222839_)))
                              (_tl222824222844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222826222839_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222824222844_))
                              (let ((_e222829222847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222824222844_))))
                                (let ((_hd222828222850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222829222847_)))
                                      (_tl222827222852_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222829222847_))))
                                  ((lambda (_L222855_ _L222856_)
                                     (let* ((_body222869_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args222818_))
                                                  _L222855_))
                                            (__tmp227785
                                             (let ((__tmp227786
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L222856_
                                                            _body222869_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp227786))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp227785
                                        _stx222817_)))
                                   _tl222827222852_
                                   _hd222828222850_)))
                              (let ()
                                (declare (not safe))
                                (_g222820222834_ _g222821222837_)))))
                      (let ()
                        (declare (not safe))
                        (_g222820222834_ _g222821222837_))))))
          (declare (not safe))
          (_g222819222871_ _stx222817_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx222730_ . _args222731_)
        (letrec ((_clause-e222733_
                  (lambda (_clause222774_)
                    (let* ((_g222776222787_
                            (lambda (_g222777222784_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g222777222784_))))
                           (_g222775222814_
                            (lambda (_g222777222790_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g222777222790_))
                                  (let ((_e222782222792_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g222777222790_))))
                                    (let ((_hd222781222795_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e222782222792_)))
                                          (_tl222780222797_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e222782222792_))))
                                      ((lambda (_L222800_ _L222801_)
                                         (let ((_body222812_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args222731_))
                                                     _L222800_)))
                                           (declare (not safe))
                                           (cons _L222801_ _body222812_)))
                                       _tl222780222797_
                                       _hd222781222795_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g222776222787_ _g222777222790_))))))
                      (declare (not safe))
                      (_g222775222814_ _clause222774_)))))
          (let* ((_g222735222745_
                  (lambda (_g222736222742_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g222736222742_))))
                 (_g222734222771_
                  (lambda (_g222736222748_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g222736222748_))
                        (let ((_e222740222750_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g222736222748_))))
                          (let ((_hd222739222753_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222740222750_)))
                                (_tl222738222755_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222740222750_))))
                            ((lambda (_L222758_)
                               (let* ((_clauses222769_
                                       (map _clause-e222733_ _L222758_))
                                      (__tmp227787
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses222769_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp227787
                                  _stx222730_)))
                             _tl222738222755_)))
                        (let ()
                          (declare (not safe))
                          (_g222735222745_ _g222736222748_))))))
            (declare (not safe))
            (_g222734222771_ _stx222730_)))))
    (define gxc#xform-let-values%
      (lambda (_stx222524_ . _args222525_)
        (let* ((_g222527222560_
                (lambda (_g222528222557_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222528222557_))))
               (_g222526222727_
                (lambda (_g222528222563_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222528222563_))
                      (let ((_e222535222565_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222528222563_))))
                        (let ((_hd222534222568_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222535222565_)))
                              (_tl222533222570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222535222565_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222533222570_))
                              (let ((_e222538222573_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222533222570_))))
                                (let ((_hd222537222576_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222538222573_)))
                                      (_tl222536222578_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222538222573_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd222537222576_))
                                      (let ((_g227788_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd222537222576_
                                                '0))))
                                        (begin
                                          (let ((_g227789_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g227788_)
                                                       (##vector-length
                                                        _g227788_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g227789_ 2)))
                                                (error "Context expects 2 values"
                                                       _g227789_)))
                                          (let ((_target222539222581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g227788_ 0)))
                                                (_tl222541222583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g227788_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222541222583_))
                                                (letrec ((_loop222542222586_
                                                          (lambda (_hd222540222589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr222546222591_
                           _hd222547222593_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd222540222589_))
                        (let ((_e222543222596_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd222540222589_))))
                          (let ((_lp-hd222544222599_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e222543222596_)))
                                (_lp-tl222545222601_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e222543222596_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd222544222599_))
                                (let ((_e222552222604_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd222544222599_))))
                                  (let ((_hd222551222607_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e222552222604_)))
                                        (_tl222550222609_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e222552222604_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl222550222609_))
                                        (let ((_e222555222612_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl222550222609_))))
                                          (let ((_hd222554222615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e222555222612_)))
                                                (_tl222553222617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e222555222612_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl222553222617_))
                                                (let ((__tmp227802
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222554222615_
                                                               _expr222546222591_)))
                                                      (__tmp227801
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd222551222607_
                                                               _hd222547222593_))))
                                                  (declare (not safe))
                                                  (_loop222542222586_
                                                   _lp-tl222545222601_
                                                   __tmp227802
                                                   __tmp227801))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222527222560_
                                                   _g222528222563_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g222527222560_ _g222528222563_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g222527222560_ _g222528222563_)))))
                        (let ((_expr222548222620_ (reverse _expr222546222591_))
                              (_hd222549222622_ (reverse _hd222547222593_)))
                          ((lambda (_L222625_ _L222626_ _L222627_ _L222628_)
                             (let* ((_g222647222663_
                                     (lambda (_g222648222660_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g222648222660_))))
                                    (_g222646222717_
                                     (lambda (_g222648222666_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g222648222666_))
                                           (let ((_g227790_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g222648222666_
                                                     '0))))
                                             (begin
                                               (let ((_g227791_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g227790_)
                                                            (##vector-length
                                                             _g227790_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g227791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g227791_)))
                                               (let ((_target222650222668_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g227790_
                                                         0)))
                                                     (_tl222652222670_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g227790_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl222652222670_))
                                                     (letrec ((_loop222653222673_
                                                               (lambda (_hd222651222676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr222657222678_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd222651222676_))
                             (let ((_e222654222681_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd222651222676_))))
                               (let ((_lp-hd222655222684_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e222654222681_)))
                                     (_lp-tl222656222686_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e222654222681_))))
                                 (let ((__tmp227798
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd222655222684_
                                                _expr222657222678_))))
                                   (declare (not safe))
                                   (_loop222653222673_
                                    _lp-tl222656222686_
                                    __tmp227798))))
                             (let ((_expr222658222689_
                                    (reverse _expr222657222678_)))
                               ((lambda (_L222692_)
                                  (let ()
                                    (let* ((_body222705_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args222525_))
                                                 _L222625_))
                                           (__tmp227792
                                            (let ((__tmp227793
                                                   (let ((__tmp227794
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L222692_
                                                               _L222627_))
                                                            (let ((__tmp227795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g222706222710_
                                    _g222707222712_
                                    _g222708222714_)
                             (let ((__tmp227796
                                    (let ((__tmp227797
                                           (let ()
                                             (declare (not safe))
                                             (cons _g222706222710_ '()))))
                                      (declare (not safe))
                                      (cons _g222707222712_ __tmp227797))))
                               (declare (not safe))
                               (cons __tmp227796 _g222708222714_)))))
                      (declare (not safe))
                      (foldr2 __tmp227795 '() _L222692_ _L222627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp227794
                                                           _body222705_))))
                                              (declare (not safe))
                                              (cons _L222628_ __tmp227793))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp227792
                                       _stx222524_))))
                                _expr222658222689_))))))
               (let ()
                 (declare (not safe))
                 (_loop222653222673_ _target222650222668_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g222647222663_
                                                        _g222648222666_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g222647222663_
                                              _g222648222666_)))))
                                    (__tmp227799
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222525_))
                                          (let ((__tmp227800
                                                 (lambda (_g222719222722_
                                                          _g222720222724_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g222719222722_
                                                           _g222720222724_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp227800
                                                    '()
                                                    _L222626_)))))
                               (declare (not safe))
                               (_g222646222717_ __tmp227799)))
                           _tl222536222578_
                           _expr222548222620_
                           _hd222549222622_
                           _hd222534222568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop222542222586_
                                                     _target222539222581_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g222527222560_
                                                   _g222528222563_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222527222560_ _g222528222563_)))))
                              (let ()
                                (declare (not safe))
                                (_g222527222560_ _g222528222563_)))))
                      (let ()
                        (declare (not safe))
                        (_g222527222560_ _g222528222563_))))))
          (declare (not safe))
          (_g222526222727_ _stx222524_))))
    (define gxc#xform-operands
      (lambda (_stx222480_ . _args222481_)
        (let* ((_g222483222494_
                (lambda (_g222484222491_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222484222491_))))
               (_g222482222521_
                (lambda (_g222484222497_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222484222497_))
                      (let ((_e222489222499_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222484222497_))))
                        (let ((_hd222488222502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222489222499_)))
                              (_tl222487222504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222489222499_))))
                          ((lambda (_L222507_ _L222508_)
                             (let* ((_rands222519_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args222481_))
                                          _L222507_))
                                    (__tmp227803
                                     (let ()
                                       (declare (not safe))
                                       (cons _L222508_ _rands222519_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp227803
                                _stx222480_)))
                           _tl222487222504_
                           _hd222488222502_)))
                      (let ()
                        (declare (not safe))
                        (_g222483222494_ _g222484222497_))))))
          (declare (not safe))
          (_g222482222521_ _stx222480_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx222401_ . _args222402_)
        (let* ((_g222404222421_
                (lambda (_g222405222418_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222405222418_))))
               (_g222403222477_
                (lambda (_g222405222424_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222405222424_))
                      (let ((_e222410222426_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222405222424_))))
                        (let ((_hd222409222429_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222410222426_)))
                              (_tl222408222431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222410222426_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222408222431_))
                              (let ((_e222413222434_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222408222431_))))
                                (let ((_hd222412222437_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222413222434_)))
                                      (_tl222411222439_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222413222434_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222411222439_))
                                      (let ((_e222416222442_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222411222439_))))
                                        (let ((_hd222415222445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222416222442_)))
                                              (_tl222414222447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222416222442_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222414222447_))
                                              ((lambda (_L222450_ _L222451_)
                                                 (let* ((_expr222475_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args222402_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L222450_))
                     (let ((_arg1222466_ (car _args222402_))
                           (_rest222468_ (cdr _args222402_)))
                       (if (let () (declare (not safe)) (null? _rest222468_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L222450_ _arg1222466_))
                           (let ((_arg2222471_ (car _rest222468_))
                                 (_rest222473_ (cdr _rest222468_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest222473_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L222450_
                                    _arg1222466_
                                    _arg2222471_))
                                 (apply gxc#compile-e
                                        _L222450_
                                        _arg1222466_
                                        _arg2222471_
                                        _rest222473_)))))))
                (__tmp227804
                 (let ((__tmp227805
                        (let ((__tmp227806
                               (let ()
                                 (declare (not safe))
                                 (cons _expr222475_ '()))))
                          (declare (not safe))
                          (cons _L222451_ __tmp227806))))
                   (declare (not safe))
                   (cons '%#set! __tmp227805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp227804
                                                    _stx222401_)))
                                               _hd222415222445_
                                               _hd222412222437_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222404222421_
                                                 _g222405222424_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222404222421_ _g222405222424_)))))
                              (let ()
                                (declare (not safe))
                                (_g222404222421_ _g222405222424_)))))
                      (let ()
                        (declare (not safe))
                        (_g222404222421_ _g222405222424_))))))
          (declare (not safe))
          (_g222403222477_ _stx222401_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx222332_)
        (let* ((_g222334222351_
                (lambda (_g222335222348_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g222335222348_))))
               (_g222333222398_
                (lambda (_g222335222354_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g222335222354_))
                      (let ((_e222340222356_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g222335222354_))))
                        (let ((_hd222339222359_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222340222356_)))
                              (_tl222338222361_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222340222356_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222338222361_))
                              (let ((_e222343222364_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl222338222361_))))
                                (let ((_hd222342222367_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222343222364_)))
                                      (_tl222341222369_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222343222364_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl222341222369_))
                                      (let ((_e222346222372_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl222341222369_))))
                                        (let ((_hd222345222375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e222346222372_)))
                                              (_tl222344222377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e222346222372_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl222344222377_))
                                              ((lambda (_L222380_ _L222381_)
                                                 (let ((_sym222396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L222381_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym222396_))
                                                   (let ((__tmp227807
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp227807
                                                      _sym222396_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L222380_))))
                                               _hd222345222375_
                                               _hd222342222367_)
                                              (let ()
                                                (declare (not safe))
                                                (_g222334222351_
                                                 _g222335222354_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g222334222351_ _g222335222354_)))))
                              (let ()
                                (declare (not safe))
                                (_g222334222351_ _g222335222354_)))))
                      (let ()
                        (declare (not safe))
                        (_g222334222351_ _g222335222354_))))))
          (declare (not safe))
          (_g222333222398_ _stx222332_))))
    (define gxc#collect-methods-call%
      (lambda (_stx221886_)
        (let* ((___stx227497227498_ _stx221886_)
               (_g221890221992_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx227497227498_)))))
          (let ((___kont227499227500_
                 (lambda (_L222282_ _L222283_ _L222284_ _L222285_ _L222286_)
                   (let ((__tmp227808
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222283_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp227808))))
                (___kont227501227502_
                 (lambda (_L222108_ _L222109_ _L222110_ _L222111_)
                   (let ((__tmp227809
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L222108_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp227809))))
                (___kont227503227504_ (lambda () '#!void)))
            (let ((___match227632227633_
                   (lambda (_e221899222154_
                            _hd221898222157_
                            _tl221897222159_
                            _e221902222162_
                            _hd221901222165_
                            _tl221900222167_
                            _e221905222170_
                            _hd221904222173_
                            _tl221903222175_
                            _e221908222178_
                            _hd221907222181_
                            _tl221906222183_
                            _e221911222186_
                            _hd221910222189_
                            _tl221909222191_
                            _e221914222194_
                            _hd221913222197_
                            _tl221912222199_
                            _e221917222202_
                            _hd221916222205_
                            _tl221915222207_
                            _e221920222210_
                            _hd221919222213_
                            _tl221918222215_
                            _e221923222218_
                            _hd221922222221_
                            _tl221921222223_
                            _e221926222226_
                            _hd221925222229_
                            _tl221924222231_
                            _e221929222234_
                            _hd221928222237_
                            _tl221927222239_
                            _e221932222242_
                            _hd221931222245_
                            _tl221930222247_
                            _e221935222250_
                            _hd221934222253_
                            _tl221933222255_
                            _e221938222258_
                            _hd221937222261_
                            _tl221936222263_
                            _e221941222266_
                            _hd221940222269_
                            _tl221939222271_
                            _e221944222274_
                            _hd221943222277_
                            _tl221942222279_)
                     (let ((_L222282_ _hd221943222277_)
                           (_L222283_ _hd221934222253_)
                           (_L222284_ _hd221925222229_)
                           (_L222285_ _hd221916222205_)
                           (_L222286_ _hd221907222181_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L222286_
                              'bind-method!))
                           (___kont227499227500_
                            _L222282_
                            _L222283_
                            _L222284_
                            _L222285_
                            _L222286_)
                           (___kont227503227504_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx227497227498_))
                  (let ((_e221899222154_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx227497227498_))))
                    (let ((_tl221897222159_
                           (let ()
                             (declare (not safe))
                             (##cdr _e221899222154_)))
                          (_hd221898222157_
                           (let ()
                             (declare (not safe))
                             (##car _e221899222154_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl221897222159_))
                          (let ((_e221902222162_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl221897222159_))))
                            (let ((_tl221900222167_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e221902222162_)))
                                  (_hd221901222165_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e221902222162_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd221901222165_))
                                  (let ((_e221905222170_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd221901222165_))))
                                    (let ((_tl221903222175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e221905222170_)))
                                          (_hd221904222173_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e221905222170_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd221904222173_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd221904222173_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl221903222175_))
                                                  (let ((_e221908222178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl221903222175_))))
                                                    (let ((_tl221906222183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e221908222178_)))
                                                          (_hd221907222181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e221908222178_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl221906222183_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl221900222167_))
                      (let ((_e221911222186_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl221900222167_))))
                        (let ((_tl221909222191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221911222186_)))
                              (_hd221910222189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221911222186_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd221910222189_))
                              (let ((_e221914222194_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd221910222189_))))
                                (let ((_tl221912222199_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221914222194_)))
                                      (_hd221913222197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221914222194_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd221913222197_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd221913222197_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl221912222199_))
                                              (let ((_e221917222202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl221912222199_))))
                                                (let ((_tl221915222207_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e221917222202_)))
                                                      (_hd221916222205_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e221917222202_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl221915222207_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl221909222191_))
                                                          (let ((_e221920222210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl221909222191_))))
                    (let ((_tl221918222215_
                           (let ()
                             (declare (not safe))
                             (##cdr _e221920222210_)))
                          (_hd221919222213_
                           (let ()
                             (declare (not safe))
                             (##car _e221920222210_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd221919222213_))
                          (let ((_e221923222218_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd221919222213_))))
                            (let ((_tl221921222223_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e221923222218_)))
                                  (_hd221922222221_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e221923222218_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd221922222221_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd221922222221_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl221921222223_))
                                          (let ((_e221926222226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl221921222223_))))
                                            (let ((_tl221924222231_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e221926222226_)))
                                                  (_hd221925222229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e221926222226_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl221924222231_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl221918222215_))
                                                      (let ((_e221929222234_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl221918222215_))))
                (let ((_tl221927222239_
                       (let () (declare (not safe)) (##cdr _e221929222234_)))
                      (_hd221928222237_
                       (let () (declare (not safe)) (##car _e221929222234_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd221928222237_))
                      (let ((_e221932222242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd221928222237_))))
                        (let ((_tl221930222247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221932222242_)))
                              (_hd221931222245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221932222242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd221931222245_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd221931222245_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221930222247_))
                                      (let ((_e221935222250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221930222247_))))
                                        (let ((_tl221933222255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221935222250_)))
                                              (_hd221934222253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221935222250_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221933222255_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl221927222239_))
                                                  (let ((_e221938222258_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl221927222239_))))
                                                    (let ((_tl221936222263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e221938222258_)))
                                                          (_hd221937222261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e221938222258_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd221937222261_))
                                                          (let ((_e221941222266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd221937222261_))))
                    (let ((_tl221939222271_
                           (let ()
                             (declare (not safe))
                             (##cdr _e221941222266_)))
                          (_hd221940222269_
                           (let ()
                             (declare (not safe))
                             (##car _e221941222266_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd221940222269_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd221940222269_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl221939222271_))
                                  (let ((_e221944222274_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl221939222271_))))
                                    (let ((_tl221942222279_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e221944222274_)))
                                          (_hd221943222277_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e221944222274_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl221942222279_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221936222263_))
                                              (___match227632227633_
                                               _e221899222154_
                                               _hd221898222157_
                                               _tl221897222159_
                                               _e221902222162_
                                               _hd221901222165_
                                               _tl221900222167_
                                               _e221905222170_
                                               _hd221904222173_
                                               _tl221903222175_
                                               _e221908222178_
                                               _hd221907222181_
                                               _tl221906222183_
                                               _e221911222186_
                                               _hd221910222189_
                                               _tl221909222191_
                                               _e221914222194_
                                               _hd221913222197_
                                               _tl221912222199_
                                               _e221917222202_
                                               _hd221916222205_
                                               _tl221915222207_
                                               _e221920222210_
                                               _hd221919222213_
                                               _tl221918222215_
                                               _e221923222218_
                                               _hd221922222221_
                                               _tl221921222223_
                                               _e221926222226_
                                               _hd221925222229_
                                               _tl221924222231_
                                               _e221929222234_
                                               _hd221928222237_
                                               _tl221927222239_
                                               _e221932222242_
                                               _hd221931222245_
                                               _tl221930222247_
                                               _e221935222250_
                                               _hd221934222253_
                                               _tl221933222255_
                                               _e221938222258_
                                               _hd221937222261_
                                               _tl221936222263_
                                               _e221941222266_
                                               _hd221940222269_
                                               _tl221939222271_
                                               _e221944222274_
                                               _hd221943222277_
                                               _tl221942222279_)
                                              (___kont227503227504_))
                                          (___kont227503227504_))))
                                  (___kont227503227504_))
                              (___kont227503227504_))
                          (___kont227503227504_))))
                  (___kont227503227504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl221927222239_))
                                                      (if (let ((__tmp227810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp227810 'bind-method!))
                  (let ((_L222108_ _hd221934222253_)
                        (_L222109_ _hd221925222229_)
                        (_L222110_ _hd221916222205_)
                        (_L222111_ _hd221907222181_))
                    (___kont227501227502_
                     _L222108_
                     _L222109_
                     _L222110_
                     _L222111_))
                  (___kont227503227504_))
              (___kont227503227504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont227503227504_))))
                                      (___kont227503227504_))
                                  (___kont227503227504_))
                              (___kont227503227504_))))
                      (___kont227503227504_))))
              (___kont227503227504_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont227503227504_))))
                                          (___kont227503227504_))
                                      (___kont227503227504_))
                                  (___kont227503227504_))))
                          (___kont227503227504_))))
                  (___kont227503227504_))
              (___kont227503227504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont227503227504_))
                                          (___kont227503227504_))
                                      (___kont227503227504_))))
                              (___kont227503227504_))))
                      (___kont227503227504_))
                  (___kont227503227504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont227503227504_))
                                              (___kont227503227504_))
                                          (___kont227503227504_))))
                                  (___kont227503227504_))))
                          (___kont227503227504_))))
                  (___kont227503227504_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx221833_ _id221834_ _new-id221835_)
        (let* ((_g221837221850_
                (lambda (_g221838221847_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221838221847_))))
               (_g221836221883_
                (lambda (_g221838221853_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221838221853_))
                      (let ((_e221842221855_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221838221853_))))
                        (let ((_hd221841221858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221842221855_)))
                              (_tl221840221860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221842221855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221840221860_))
                              (let ((_e221845221863_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221840221860_))))
                                (let ((_hd221844221866_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221845221863_)))
                                      (_tl221843221868_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221845221863_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221843221868_))
                                      ((lambda (_L221871_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L221871_
                                                _id221834_))
                                             (let ((__tmp227811
                                                    (let ((__tmp227812
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id221835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp227812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp227811
                                                _stx221833_))
                                             _stx221833_))
                                       _hd221844221866_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221837221850_ _g221838221853_)))))
                              (let ()
                                (declare (not safe))
                                (_g221837221850_ _g221838221853_)))))
                      (let ()
                        (declare (not safe))
                        (_g221837221850_ _g221838221853_))))))
          (declare (not safe))
          (_g221836221883_ _stx221833_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx221774_ _subst221775_)
        (let* ((_g221777221790_
                (lambda (_g221778221787_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221778221787_))))
               (_g221776221830_
                (lambda (_g221778221793_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221778221793_))
                      (let ((_e221782221795_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221778221793_))))
                        (let ((_hd221781221798_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221782221795_)))
                              (_tl221780221800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221782221795_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221780221800_))
                              (let ((_e221785221803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221780221800_))))
                                (let ((_hd221784221806_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221785221803_)))
                                      (_tl221783221808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221785221803_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221783221808_))
                                      ((lambda (_L221811_)
                                         (let ((_$e221825_
                                                (let ((__tmp227813
                                                       (lambda (_sub221823_)
                                                         (let ((__tmp227814
                                                                (car _sub221823_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L221811_
                                                            __tmp227814)))))
                                                  (declare (not safe))
                                                  (find __tmp227813
                                                        _subst221775_))))
                                           (if _$e221825_
                                               ((lambda (_sub221828_)
                                                  (let ((__tmp227815
                                                         (let ((__tmp227816
                                                                (let ((__tmp227817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub221828_)))
                          (declare (not safe))
                          (cons __tmp227817 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp227816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp227815
                                                     _stx221774_)))
                                                _$e221825_)
                                               _stx221774_)))
                                       _hd221784221806_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221777221790_ _g221778221793_)))))
                              (let ()
                                (declare (not safe))
                                (_g221777221790_ _g221778221793_)))))
                      (let ()
                        (declare (not safe))
                        (_g221777221790_ _g221778221793_))))))
          (declare (not safe))
          (_g221776221830_ _stx221774_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx221702_ _id221703_ _new-id221704_)
        (let* ((_g221706221723_
                (lambda (_g221707221720_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221707221720_))))
               (_g221705221771_
                (lambda (_g221707221726_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221707221726_))
                      (let ((_e221712221728_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221707221726_))))
                        (let ((_hd221711221731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221712221728_)))
                              (_tl221710221733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221712221728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221710221733_))
                              (let ((_e221715221736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221710221733_))))
                                (let ((_hd221714221739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221715221736_)))
                                      (_tl221713221741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221715221736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221713221741_))
                                      (let ((_e221718221744_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221713221741_))))
                                        (let ((_hd221717221747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221718221744_)))
                                              (_tl221716221749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221718221744_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221716221749_))
                                              ((lambda (_L221752_ _L221753_)
                                                 (let ((_new-expr221768_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L221752_
                                                           _id221703_
                                                           _new-id221704_)))
                                                       (_new-xid221769_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L221753_
                                                               _id221703_))
                                                            _new-id221704_
                                                            _L221753_)))
                                                   (let ((__tmp227818
                                                          (let ((__tmp227819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp227820
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221768_ '()))))
                           (declare (not safe))
                           (cons _new-xid221769_ __tmp227820))))
                    (declare (not safe))
                    (cons '%#set! __tmp227819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp227818
                                                      _stx221702_))))
                                               _hd221717221747_
                                               _hd221714221739_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221706221723_
                                                 _g221707221726_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221706221723_ _g221707221726_)))))
                              (let ()
                                (declare (not safe))
                                (_g221706221723_ _g221707221726_)))))
                      (let ()
                        (declare (not safe))
                        (_g221706221723_ _g221707221726_))))))
          (declare (not safe))
          (_g221705221771_ _stx221702_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx221626_ _subst221627_)
        (let* ((_g221629221646_
                (lambda (_g221630221643_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221630221643_))))
               (_g221628221699_
                (lambda (_g221630221649_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221630221649_))
                      (let ((_e221635221651_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221630221649_))))
                        (let ((_hd221634221654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221635221651_)))
                              (_tl221633221656_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221635221651_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221633221656_))
                              (let ((_e221638221659_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221633221656_))))
                                (let ((_hd221637221662_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221638221659_)))
                                      (_tl221636221664_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221638221659_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221636221664_))
                                      (let ((_e221641221667_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221636221664_))))
                                        (let ((_hd221640221670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221641221667_)))
                                              (_tl221639221672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221641221667_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221639221672_))
                                              ((lambda (_L221675_ _L221676_)
                                                 (let ((_new-expr221696_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L221675_
                                                           _subst221627_)))
                                                       (_new-xid221697_
                                                        (let ((_$e221693_
                                                               (let ((__tmp227821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub221691_)
                                (let ((__tmp227822 (car _sub221691_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L221676_
                                   __tmp227822)))))
                         (declare (not safe))
                         (find __tmp227821 _subst221627_))))
                  (if _$e221693_ (cdr _$e221693_) _L221676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp227823
                                                          (let ((__tmp227824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp227825
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr221696_ '()))))
                           (declare (not safe))
                           (cons _new-xid221697_ __tmp227825))))
                    (declare (not safe))
                    (cons '%#set! __tmp227824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp227823
                                                      _stx221626_))))
                                               _hd221640221670_
                                               _hd221637221662_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221629221646_
                                                 _g221630221649_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221629221646_ _g221630221649_)))))
                              (let ()
                                (declare (not safe))
                                (_g221629221646_ _g221630221649_)))))
                      (let ()
                        (declare (not safe))
                        (_g221629221646_ _g221630221649_))))))
          (declare (not safe))
          (_g221628221699_ _stx221626_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx221572_ _ht221573_)
        (let* ((_g221575221588_
                (lambda (_g221576221585_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221576221585_))))
               (_g221574221623_
                (lambda (_g221576221591_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221576221591_))
                      (let ((_e221580221593_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221576221591_))))
                        (let ((_hd221579221596_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221580221593_)))
                              (_tl221578221598_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221580221593_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221578221598_))
                              (let ((_e221583221601_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221578221598_))))
                                (let ((_hd221582221604_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221583221601_)))
                                      (_tl221581221606_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221583221601_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221581221606_))
                                      ((lambda (_L221609_)
                                         (let ((_eid221621_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L221609_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht221573_
                                            _eid221621_
                                            1+
                                            '0)))
                                       _hd221582221604_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221575221588_ _g221576221591_)))))
                              (let ()
                                (declare (not safe))
                                (_g221575221588_ _g221576221591_)))))
                      (let ()
                        (declare (not safe))
                        (_g221575221588_ _g221576221591_))))))
          (declare (not safe))
          (_g221574221623_ _stx221572_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx221502_ _ht221503_)
        (let* ((_g221505221522_
                (lambda (_g221506221519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221506221519_))))
               (_g221504221569_
                (lambda (_g221506221525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221506221525_))
                      (let ((_e221511221527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221506221525_))))
                        (let ((_hd221510221530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221511221527_)))
                              (_tl221509221532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221511221527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221509221532_))
                              (let ((_e221514221535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221509221532_))))
                                (let ((_hd221513221538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221514221535_)))
                                      (_tl221512221540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221514221535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221512221540_))
                                      (let ((_e221517221543_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221512221540_))))
                                        (let ((_hd221516221546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221517221543_)))
                                              (_tl221515221548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221517221543_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221515221548_))
                                              ((lambda (_L221551_ _L221552_)
                                                 (let ((_eid221567_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L221552_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht221503_
                                                      _eid221567_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L221551_
                                                      _ht221503_))))
                                               _hd221516221546_
                                               _hd221513221538_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221505221522_
                                                 _g221506221525_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221505221522_ _g221506221525_)))))
                              (let ()
                                (declare (not safe))
                                (_g221505221522_ _g221506221525_)))))
                      (let ()
                        (declare (not safe))
                        (_g221505221522_ _g221506221525_))))))
          (declare (not safe))
          (_g221504221569_ _stx221502_))))
    (define gxc#find-body%
      (lambda (_stx221415_ _arg221416_)
        (let* ((_g221418221437_
                (lambda (_g221419221434_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221419221434_))))
               (_g221417221499_
                (lambda (_g221419221440_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221419221440_))
                      (let ((_e221423221442_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221419221440_))))
                        (let ((_hd221422221445_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221423221442_)))
                              (_tl221421221447_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221423221442_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221421221447_))
                              (let ((_g227826_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221421221447_
                                        '0))))
                                (begin
                                  (let ((_g227827_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g227826_)
                                               (##vector-length _g227826_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g227827_ 2)))
                                        (error "Context expects 2 values"
                                               _g227827_)))
                                  (let ((_target221424221450_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227826_ 0)))
                                        (_tl221426221452_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227826_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221426221452_))
                                        (letrec ((_loop221427221455_
                                                  (lambda (_hd221425221458_
                                                           _expr221431221460_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221425221458_))
                                                        (let ((_e221428221463_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221425221458_))))
                  (let ((_lp-hd221429221466_
                         (let () (declare (not safe)) (##car _e221428221463_)))
                        (_lp-tl221430221468_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221428221463_))))
                    (let ((__tmp227831
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd221429221466_ _expr221431221460_))))
                      (declare (not safe))
                      (_loop221427221455_ _lp-tl221430221468_ __tmp227831))))
                (let ((_expr221432221471_ (reverse _expr221431221460_)))
                  ((lambda (_L221474_)
                     (let ((__tmp227830
                            (lambda (_g221487221489_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221487221489_
                                 _arg221416_))))
                           (__tmp227828
                            (let ((__tmp227829
                                   (lambda (_g221491221494_ _g221492221496_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221491221494_
                                             _g221492221496_)))))
                              (declare (not safe))
                              (foldr1 __tmp227829 '() _L221474_))))
                       (declare (not safe))
                       (ormap1 __tmp227830 __tmp227828)))
                   _expr221432221471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221427221455_
                                             _target221424221450_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221418221437_
                                           _g221419221440_))))))
                              (let ()
                                (declare (not safe))
                                (_g221418221437_ _g221419221440_)))))
                      (let ()
                        (declare (not safe))
                        (_g221418221437_ _g221419221440_))))))
          (declare (not safe))
          (_g221417221499_ _stx221415_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx221347_ _arg221348_)
        (let* ((_g221350221367_
                (lambda (_g221351221364_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221351221364_))))
               (_g221349221412_
                (lambda (_g221351221370_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221351221370_))
                      (let ((_e221356221372_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221351221370_))))
                        (let ((_hd221355221375_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221356221372_)))
                              (_tl221354221377_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221356221372_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221354221377_))
                              (let ((_e221359221380_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221354221377_))))
                                (let ((_hd221358221383_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221359221380_)))
                                      (_tl221357221385_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221359221380_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221357221385_))
                                      (let ((_e221362221388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221357221385_))))
                                        (let ((_hd221361221391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221362221388_)))
                                              (_tl221360221393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221362221388_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221360221393_))
                                              ((lambda (_L221396_ _L221397_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221396_
                                                    _arg221348_)))
                                               _hd221361221391_
                                               _hd221358221383_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221350221367_
                                                 _g221351221370_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221350221367_ _g221351221370_)))))
                              (let ()
                                (declare (not safe))
                                (_g221350221367_ _g221351221370_)))))
                      (let ()
                        (declare (not safe))
                        (_g221350221367_ _g221351221370_))))))
          (declare (not safe))
          (_g221349221412_ _stx221347_))))
    (define gxc#find-lambda%
      (lambda (_stx221279_ _arg221280_)
        (let* ((_g221282221299_
                (lambda (_g221283221296_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221283221296_))))
               (_g221281221344_
                (lambda (_g221283221302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221283221302_))
                      (let ((_e221288221304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221283221302_))))
                        (let ((_hd221287221307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221288221304_)))
                              (_tl221286221309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221288221304_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221286221309_))
                              (let ((_e221291221312_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221286221309_))))
                                (let ((_hd221290221315_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221291221312_)))
                                      (_tl221289221317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221291221312_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl221289221317_))
                                      (let ((_e221294221320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl221289221317_))))
                                        (let ((_hd221293221323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e221294221320_)))
                                              (_tl221292221325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e221294221320_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl221292221325_))
                                              ((lambda (_L221328_ _L221329_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L221328_
                                                    _arg221280_)))
                                               _hd221293221323_
                                               _hd221290221315_)
                                              (let ()
                                                (declare (not safe))
                                                (_g221282221299_
                                                 _g221283221302_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221282221299_ _g221283221302_)))))
                              (let ()
                                (declare (not safe))
                                (_g221282221299_ _g221283221302_)))))
                      (let ()
                        (declare (not safe))
                        (_g221282221299_ _g221283221302_))))))
          (declare (not safe))
          (_g221281221344_ _stx221279_))))
    (define gxc#find-case-lambda%
      (lambda (_stx221161_ _arg221162_)
        (let* ((_g221164221192_
                (lambda (_g221165221189_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221165221189_))))
               (_g221163221276_
                (lambda (_g221165221195_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221165221195_))
                      (let ((_e221170221197_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221165221195_))))
                        (let ((_hd221169221200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221170221197_)))
                              (_tl221168221202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221170221197_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl221168221202_))
                              (let ((_g227832_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl221168221202_
                                        '0))))
                                (begin
                                  (let ((_g227833_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g227832_)
                                               (##vector-length _g227832_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g227833_ 2)))
                                        (error "Context expects 2 values"
                                               _g227833_)))
                                  (let ((_target221171221205_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227832_ 0)))
                                        (_tl221173221207_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227832_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221173221207_))
                                        (letrec ((_loop221174221210_
                                                  (lambda (_hd221172221213_
                                                           _body221178221215_
                                                           _hd221179221217_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd221172221213_))
                                                        (let ((_e221175221220_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd221172221213_))))
                  (let ((_lp-hd221176221223_
                         (let () (declare (not safe)) (##car _e221175221220_)))
                        (_lp-tl221177221225_
                         (let ()
                           (declare (not safe))
                           (##cdr _e221175221220_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd221176221223_))
                        (let ((_e221184221228_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd221176221223_))))
                          (let ((_hd221183221231_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221184221228_)))
                                (_tl221182221233_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221184221228_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl221182221233_))
                                (let ((_e221187221236_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl221182221233_))))
                                  (let ((_hd221186221239_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221187221236_)))
                                        (_tl221185221241_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221187221236_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl221185221241_))
                                        (let ((__tmp227838
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221186221239_
                                                       _body221178221215_)))
                                              (__tmp227837
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd221183221231_
                                                       _hd221179221217_))))
                                          (declare (not safe))
                                          (_loop221174221210_
                                           _lp-tl221177221225_
                                           __tmp227838
                                           __tmp227837))
                                        (let ()
                                          (declare (not safe))
                                          (_g221164221192_ _g221165221195_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221164221192_ _g221165221195_)))))
                        (let ()
                          (declare (not safe))
                          (_g221164221192_ _g221165221195_)))))
                (let ((_body221180221244_ (reverse _body221178221215_))
                      (_hd221181221246_ (reverse _hd221179221217_)))
                  ((lambda (_L221249_ _L221250_)
                     (let ((__tmp227836
                            (lambda (_g221264221266_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g221264221266_
                                 _arg221162_))))
                           (__tmp227834
                            (let ((__tmp227835
                                   (lambda (_g221268221271_ _g221269221273_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g221268221271_
                                             _g221269221273_)))))
                              (declare (not safe))
                              (foldr1 __tmp227835 '() _L221249_))))
                       (declare (not safe))
                       (ormap1 __tmp227836 __tmp227834)))
                   _body221180221244_
                   _hd221181221246_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop221174221210_
                                             _target221171221205_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g221164221192_
                                           _g221165221195_))))))
                              (let ()
                                (declare (not safe))
                                (_g221164221192_ _g221165221195_)))))
                      (let ()
                        (declare (not safe))
                        (_g221164221192_ _g221165221195_))))))
          (declare (not safe))
          (_g221163221276_ _stx221161_))))
    (define gxc#find-let-values%
      (lambda (_stx221011_ _arg221012_)
        (let* ((_g221014221049_
                (lambda (_g221015221046_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g221015221046_))))
               (_g221013221158_
                (lambda (_g221015221052_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g221015221052_))
                      (let ((_e221021221054_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g221015221052_))))
                        (let ((_hd221020221057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e221021221054_)))
                              (_tl221019221059_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e221021221054_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221019221059_))
                              (let ((_e221024221062_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221019221059_))))
                                (let ((_hd221023221065_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221024221062_)))
                                      (_tl221022221067_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221024221062_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd221023221065_))
                                      (let ((_g227839_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd221023221065_
                                                '0))))
                                        (begin
                                          (let ((_g227840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g227839_)
                                                       (##vector-length
                                                        _g227839_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g227840_ 2)))
                                                (error "Context expects 2 values"
                                                       _g227840_)))
                                          (let ((_target221025221070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g227839_ 0)))
                                                (_tl221027221072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g227839_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221027221072_))
                                                (letrec ((_loop221028221075_
                                                          (lambda (_hd221026221078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr221032221080_
                           _bind221033221082_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd221026221078_))
                        (let ((_e221029221085_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd221026221078_))))
                          (let ((_lp-hd221030221088_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e221029221085_)))
                                (_lp-tl221031221090_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e221029221085_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd221030221088_))
                                (let ((_e221038221093_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd221030221088_))))
                                  (let ((_hd221037221096_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e221038221093_)))
                                        (_tl221036221098_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e221038221093_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl221036221098_))
                                        (let ((_e221041221101_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl221036221098_))))
                                          (let ((_hd221040221104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e221041221101_)))
                                                (_tl221039221106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e221041221101_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl221039221106_))
                                                (let ((__tmp227845
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221040221104_
                                                               _expr221032221080_)))
                                                      (__tmp227844
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd221037221096_
                                                               _bind221033221082_))))
                                                  (declare (not safe))
                                                  (_loop221028221075_
                                                   _lp-tl221031221090_
                                                   __tmp227845
                                                   __tmp227844))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221014221049_
                                                   _g221015221052_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g221014221049_ _g221015221052_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g221014221049_ _g221015221052_)))))
                        (let ((_expr221034221109_ (reverse _expr221032221080_))
                              (_bind221035221111_
                               (reverse _bind221033221082_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl221022221067_))
                              (let ((_e221044221114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl221022221067_))))
                                (let ((_hd221043221117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e221044221114_)))
                                      (_tl221042221119_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e221044221114_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl221042221119_))
                                      ((lambda (_L221122_ _L221123_ _L221124_)
                                         (let ((_$e221155_
                                                (let ((__tmp227843
                                                       (lambda (_g221143221145_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g221143221145_
                                                            _arg221012_))))
                                                      (__tmp227841
                                                       (let ((__tmp227842
                                                              (lambda (_g221147221150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g221148221152_)
                        (let ()
                          (declare (not safe))
                          (cons _g221147221150_ _g221148221152_)))))
                 (declare (not safe))
                 (foldr1 __tmp227842 '() _L221123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp227843
                                                          __tmp227841))))
                                           (if _$e221155_
                                               _$e221155_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L221122_
                                                  _arg221012_)))))
                                       _hd221043221117_
                                       _expr221034221109_
                                       _bind221035221111_)
                                      (let ()
                                        (declare (not safe))
                                        (_g221014221049_ _g221015221052_)))))
                              (let ()
                                (declare (not safe))
                                (_g221014221049_ _g221015221052_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop221028221075_
                                                     _target221025221070_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g221014221049_
                                                   _g221015221052_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g221014221049_ _g221015221052_)))))
                              (let ()
                                (declare (not safe))
                                (_g221014221049_ _g221015221052_)))))
                      (let ()
                        (declare (not safe))
                        (_g221014221049_ _g221015221052_))))))
          (declare (not safe))
          (_g221013221158_ _stx221011_))))
    (define gxc#find-setq%
      (lambda (_stx220943_ _arg220944_)
        (let* ((_g220946220963_
                (lambda (_g220947220960_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220947220960_))))
               (_g220945221008_
                (lambda (_g220947220966_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220947220966_))
                      (let ((_e220952220968_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220947220966_))))
                        (let ((_hd220951220971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220952220968_)))
                              (_tl220950220973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220952220968_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220950220973_))
                              (let ((_e220955220976_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220950220973_))))
                                (let ((_hd220954220979_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220955220976_)))
                                      (_tl220953220981_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220955220976_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220953220981_))
                                      (let ((_e220958220984_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220953220981_))))
                                        (let ((_hd220957220987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220958220984_)))
                                              (_tl220956220989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220958220984_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220956220989_))
                                              ((lambda (_L220992_ _L220993_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L220992_
                                                    _arg220944_)))
                                               _hd220957220987_
                                               _hd220954220979_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220946220963_
                                                 _g220947220966_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220946220963_ _g220947220966_)))))
                              (let ()
                                (declare (not safe))
                                (_g220946220963_ _g220947220966_)))))
                      (let ()
                        (declare (not safe))
                        (_g220946220963_ _g220947220966_))))))
          (declare (not safe))
          (_g220945221008_ _stx220943_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx220887_ _ids220888_)
        (let* ((_g220890220903_
                (lambda (_g220891220900_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220891220900_))))
               (_g220889220940_
                (lambda (_g220891220906_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220891220906_))
                      (let ((_e220895220908_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220891220906_))))
                        (let ((_hd220894220911_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220895220908_)))
                              (_tl220893220913_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220895220908_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220893220913_))
                              (let ((_e220898220916_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220893220913_))))
                                (let ((_hd220897220919_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220898220916_)))
                                      (_tl220896220921_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220898220916_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl220896220921_))
                                      ((lambda (_L220924_)
                                         (let ((__tmp227846
                                                (lambda (_g220935220937_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L220924_
                                                     _g220935220937_)))))
                                           (declare (not safe))
                                           (find __tmp227846 _ids220888_)))
                                       _hd220897220919_)
                                      (let ()
                                        (declare (not safe))
                                        (_g220890220903_ _g220891220906_)))))
                              (let ()
                                (declare (not safe))
                                (_g220890220903_ _g220891220906_)))))
                      (let ()
                        (declare (not safe))
                        (_g220890220903_ _g220891220906_))))))
          (declare (not safe))
          (_g220889220940_ _stx220887_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx220811_ _ids220812_)
        (let* ((_g220814220831_
                (lambda (_g220815220828_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g220815220828_))))
               (_g220813220884_
                (lambda (_g220815220834_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g220815220834_))
                      (let ((_e220820220836_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g220815220834_))))
                        (let ((_hd220819220839_
                               (let ()
                                 (declare (not safe))
                                 (##car _e220820220836_)))
                              (_tl220818220841_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e220820220836_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl220818220841_))
                              (let ((_e220823220844_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl220818220841_))))
                                (let ((_hd220822220847_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e220823220844_)))
                                      (_tl220821220849_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e220823220844_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl220821220849_))
                                      (let ((_e220826220852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl220821220849_))))
                                        (let ((_hd220825220855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e220826220852_)))
                                              (_tl220824220857_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e220826220852_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl220824220857_))
                                              ((lambda (_L220860_ _L220861_)
                                                 (let ((_$e220881_
                                                        (let ((__tmp227847
                                                               (lambda (_g220876220878_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L220861_ _g220876220878_)))))
                  (declare (not safe))
                  (find __tmp227847 _ids220812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e220881_
                                                       _$e220881_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L220860_
                                                          _ids220812_)))))
                                               _hd220825220855_
                                               _hd220822220847_)
                                              (let ()
                                                (declare (not safe))
                                                (_g220814220831_
                                                 _g220815220834_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g220814220831_ _g220815220834_)))))
                              (let ()
                                (declare (not safe))
                                (_g220814220831_ _g220815220834_)))))
                      (let ()
                        (declare (not safe))
                        (_g220814220831_ _g220815220834_))))))
          (declare (not safe))
          (_g220813220884_ _stx220811_))))))
