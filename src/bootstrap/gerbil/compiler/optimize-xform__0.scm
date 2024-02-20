(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708387689)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl116835_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116835_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116835_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116835_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116835_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl116835_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl116831_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116831_ '%#declare gxc#xform-identity))
           _tbl116831_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl116827_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117081 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl116827_ __tmp117081))
           (let ((__tmp117082 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl116827_ __tmp117082))
           _tbl116827_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl116823_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116823_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116823_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116823_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116823_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116823_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl116823_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl116819_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117083 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116819_ __tmp117083))
           (let ((__tmp117084 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl116819_ __tmp117084))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116819_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl116819_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl116815_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117085 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116815_ __tmp117085))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116815_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116815_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl116815_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx116798_ . _args116800_)
        (let ((__tmp117087
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116800_)
                     (gxc#compile-e__0 _stx116798_)
                     (let ((_arg1116805_ (car _args116800_))
                           (_rest116807_ (cdr _args116800_)))
                       (if (null? _rest116807_)
                           (gxc#compile-e__1 _stx116798_ _arg1116805_)
                           (let ((_arg2116810_ (car _rest116807_))
                                 (_rest116812_ (cdr _rest116807_)))
                             (if (null? _rest116812_)
                                 (gxc#compile-e__2
                                  _stx116798_
                                  _arg1116805_
                                  _arg2116810_)
                                 (apply gxc#compile-e
                                        _stx116798_
                                        _arg1116805_
                                        _arg2116810_
                                        _rest116812_))))))))
              (__tmp117086 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp117087
           gxc#current-compile-methods
           __tmp117086))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl116795_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117088 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl116795_ __tmp117088))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116795_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116795_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116795_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116795_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116795_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl116795_))))
    (define gxc#apply-collect-methods
      (lambda (_stx116778_ . _args116780_)
        (let ((__tmp117090
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116780_)
                     (gxc#compile-e__0 _stx116778_)
                     (let ((_arg1116785_ (car _args116780_))
                           (_rest116787_ (cdr _args116780_)))
                       (if (null? _rest116787_)
                           (gxc#compile-e__1 _stx116778_ _arg1116785_)
                           (let ((_arg2116790_ (car _rest116787_))
                                 (_rest116792_ (cdr _rest116787_)))
                             (if (null? _rest116792_)
                                 (gxc#compile-e__2
                                  _stx116778_
                                  _arg1116785_
                                  _arg2116790_)
                                 (apply gxc#compile-e
                                        _stx116778_
                                        _arg1116785_
                                        _arg2116790_
                                        _rest116792_))))))))
              (__tmp117089 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp117090
           gxc#current-compile-methods
           __tmp117089))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl116775_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117091 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl116775_ __tmp117091))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116775_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116775_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116775_ '%#set! gxc#expression-subst-setq%))
           _tbl116775_))))
    (define gxc#apply-expression-subst
      (lambda (_stx116758_ . _args116760_)
        (let ((__tmp117093
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116760_)
                     (gxc#compile-e__0 _stx116758_)
                     (let ((_arg1116765_ (car _args116760_))
                           (_rest116767_ (cdr _args116760_)))
                       (if (null? _rest116767_)
                           (gxc#compile-e__1 _stx116758_ _arg1116765_)
                           (let ((_arg2116770_ (car _rest116767_))
                                 (_rest116772_ (cdr _rest116767_)))
                             (if (null? _rest116772_)
                                 (gxc#compile-e__2
                                  _stx116758_
                                  _arg1116765_
                                  _arg2116770_)
                                 (apply gxc#compile-e
                                        _stx116758_
                                        _arg1116765_
                                        _arg2116770_
                                        _rest116772_))))))))
              (__tmp117092 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp117093
           gxc#current-compile-methods
           __tmp117092))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl116755_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117094 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl116755_ __tmp117094))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116755_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116755_ '%#set! gxc#expression-subst*-setq%))
           _tbl116755_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx116738_ . _args116740_)
        (let ((__tmp117096
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116740_)
                     (gxc#compile-e__0 _stx116738_)
                     (let ((_arg1116745_ (car _args116740_))
                           (_rest116747_ (cdr _args116740_)))
                       (if (null? _rest116747_)
                           (gxc#compile-e__1 _stx116738_ _arg1116745_)
                           (let ((_arg2116750_ (car _rest116747_))
                                 (_rest116752_ (cdr _rest116747_)))
                             (if (null? _rest116752_)
                                 (gxc#compile-e__2
                                  _stx116738_
                                  _arg1116745_
                                  _arg2116750_)
                                 (apply gxc#compile-e
                                        _stx116738_
                                        _arg1116745_
                                        _arg2116750_
                                        _rest116752_))))))))
              (__tmp117095 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp117096
           gxc#current-compile-methods
           __tmp117095))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl116735_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117097 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl116735_ __tmp117097))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl116735_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116735_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl116735_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl116731_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117098 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl116731_ __tmp117098))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116731_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116731_ '%#set! gxc#find-var-refs-setq%))
           _tbl116731_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx116714_ . _args116716_)
        (let ((__tmp117100
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116716_)
                     (gxc#compile-e__0 _stx116714_)
                     (let ((_arg1116721_ (car _args116716_))
                           (_rest116723_ (cdr _args116716_)))
                       (if (null? _rest116723_)
                           (gxc#compile-e__1 _stx116714_ _arg1116721_)
                           (let ((_arg2116726_ (car _rest116723_))
                                 (_rest116728_ (cdr _rest116723_)))
                             (if (null? _rest116728_)
                                 (gxc#compile-e__2
                                  _stx116714_
                                  _arg1116721_
                                  _arg2116726_)
                                 (apply gxc#compile-e
                                        _stx116714_
                                        _arg1116721_
                                        _arg2116726_
                                        _rest116728_))))))))
              (__tmp117099 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117100
           gxc#current-compile-methods
           __tmp117099))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl116711_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp117101 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl116711_ __tmp117101))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116711_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl116711_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl116711_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx116694_ . _args116696_)
        (let ((__tmp117103
               (lambda ()
                 (declare (not safe))
                 (if (null? _args116696_)
                     (gxc#compile-e__0 _stx116694_)
                     (let ((_arg1116701_ (car _args116696_))
                           (_rest116703_ (cdr _args116696_)))
                       (if (null? _rest116703_)
                           (gxc#compile-e__1 _stx116694_ _arg1116701_)
                           (let ((_arg2116706_ (car _rest116703_))
                                 (_rest116708_ (cdr _rest116703_)))
                             (if (null? _rest116708_)
                                 (gxc#compile-e__2
                                  _stx116694_
                                  _arg1116701_
                                  _arg2116706_)
                                 (apply gxc#compile-e
                                        _stx116694_
                                        _arg1116701_
                                        _arg2116706_
                                        _rest116708_))))))))
              (__tmp117102 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp117103
           gxc#current-compile-methods
           __tmp117102))))
    (define gxc#xform-identity
      (lambda (_stx116691_ . _args116692_) _stx116691_))
    (define gxc#xform-wrap-source
      (lambda (_stx116688_ _src-stx116689_)
        (let ((__tmp117104
               (let () (declare (not safe)) (gx#stx-source _src-stx116689_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx116688_ __tmp117104))))
    (define gxc#xform-apply-compile-e
      (lambda (_args116675_)
        (lambda (_stx116677_)
          (if (let () (declare (not safe)) (null? _args116675_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx116677_))
              (let ((_arg1116679_ (car _args116675_))
                    (_rest116681_ (cdr _args116675_)))
                (if (let () (declare (not safe)) (null? _rest116681_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx116677_ _arg1116679_))
                    (let ((_arg2116684_ (car _rest116681_))
                          (_rest116686_ (cdr _rest116681_)))
                      (if (let () (declare (not safe)) (null? _rest116686_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx116677_
                             _arg1116679_
                             _arg2116684_))
                          (apply gxc#compile-e
                                 _stx116677_
                                 _arg1116679_
                                 _arg2116684_
                                 _rest116686_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx116634_ . _args116635_)
        (let* ((_g116637116647_
                (lambda (_g116638116644_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116638116644_))))
               (_g116636116672_
                (lambda (_g116638116650_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116638116650_))
                      (let ((_e116642116652_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116638116650_))))
                        (let ((_hd116641116655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116642116652_)))
                              (_tl116640116657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116642116652_))))
                          ((lambda (_L116660_)
                             (let* ((_forms116670_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args116635_))
                                          _L116660_))
                                    (__tmp117105
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms116670_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117105
                                _stx116634_)))
                           _tl116640116657_)))
                      (let ()
                        (declare (not safe))
                        (_g116637116647_ _g116638116650_))))))
          (declare (not safe))
          (_g116636116672_ _stx116634_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx116592_ . _args116593_)
        (let* ((_g116595116605_
                (lambda (_g116596116602_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116596116602_))))
               (_g116594116631_
                (lambda (_g116596116608_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116596116608_))
                      (let ((_e116600116610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116596116608_))))
                        (let ((_hd116599116613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116600116610_)))
                              (_tl116598116615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116600116610_))))
                          ((lambda (_L116618_)
                             (let ((__tmp117108
                                    (lambda ()
                                      (let* ((_forms116629_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args116593_))
                                                   _L116618_))
                                             (__tmp117109
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms116629_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp117109
                                         _stx116592_))))
                                   (__tmp117106
                                    (let ((__tmp117107
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp117107 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp117108
                                gx#current-expander-phi
                                __tmp117106)))
                           _tl116598116615_)))
                      (let ()
                        (declare (not safe))
                        (_g116595116605_ _g116596116608_))))))
          (declare (not safe))
          (_g116594116631_ _stx116592_))))
    (define gxc#xform-module%
      (lambda (_stx116520_ . _args116521_)
        (let* ((_g116523116537_
                (lambda (_g116524116534_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116524116534_))))
               (_g116522116589_
                (lambda (_g116524116540_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116524116540_))
                      (let ((_e116529116542_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116524116540_))))
                        (let ((_hd116528116545_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116529116542_)))
                              (_tl116527116547_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116529116542_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116527116547_))
                              (let ((_e116532116550_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116527116547_))))
                                (let ((_hd116531116553_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116532116550_)))
                                      (_tl116530116555_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116532116550_))))
                                  ((lambda (_L116558_ _L116559_)
                                     (let* ((_ctx116572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L116559_)))
                                            (_code116574_
                                             (##structure-ref
                                              _ctx116572_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code116586_
                                             (let ((__tmp117110
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args116521_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code116574_))
                                                          (let ((_arg1116577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args116521_))
                        (_rest116579_ (cdr _args116521_)))
                    (if (let () (declare (not safe)) (null? _rest116579_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code116574_ _arg1116577_))
                        (let ((_arg2116582_ (car _rest116579_))
                              (_rest116584_ (cdr _rest116579_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest116584_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code116574_
                                 _arg1116577_
                                 _arg2116582_))
                              (apply gxc#compile-e
                                     _code116574_
                                     _arg1116577_
                                     _arg2116582_
                                     _rest116584_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp117110
                                                gx#current-expander-context
                                                _ctx116572_))))
                                       (##structure-set!
                                        _ctx116572_
                                        _code116586_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp117111
                                              (let ((__tmp117112
                                                     (let ((__tmp117113
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code116586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L116559_ __tmp117113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp117112))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp117111
                                          _stx116520_))))
                                   _tl116530116555_
                                   _hd116531116553_)))
                              (let ()
                                (declare (not safe))
                                (_g116523116537_ _g116524116540_)))))
                      (let ()
                        (declare (not safe))
                        (_g116523116537_ _g116524116540_))))))
          (declare (not safe))
          (_g116522116589_ _stx116520_))))
    (define gxc#xform-define-values%
      (lambda (_stx116441_ . _args116442_)
        (let* ((_g116444116461_
                (lambda (_g116445116458_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116445116458_))))
               (_g116443116517_
                (lambda (_g116445116464_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116445116464_))
                      (let ((_e116450116466_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116445116464_))))
                        (let ((_hd116449116469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116450116466_)))
                              (_tl116448116471_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116450116466_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116448116471_))
                              (let ((_e116453116474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116448116471_))))
                                (let ((_hd116452116477_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116453116474_)))
                                      (_tl116451116479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116453116474_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116451116479_))
                                      (let ((_e116456116482_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116451116479_))))
                                        (let ((_hd116455116485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116456116482_)))
                                              (_tl116454116487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116456116482_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116454116487_))
                                              ((lambda (_L116490_ _L116491_)
                                                 (let* ((_expr116515_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116442_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116490_))
                     (let ((_arg1116506_ (car _args116442_))
                           (_rest116508_ (cdr _args116442_)))
                       (if (let () (declare (not safe)) (null? _rest116508_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116490_ _arg1116506_))
                           (let ((_arg2116511_ (car _rest116508_))
                                 (_rest116513_ (cdr _rest116508_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116513_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116490_
                                    _arg1116506_
                                    _arg2116511_))
                                 (apply gxc#compile-e
                                        _L116490_
                                        _arg1116506_
                                        _arg2116511_
                                        _rest116513_)))))))
                (__tmp117114
                 (let ((__tmp117115
                        (let ((__tmp117116
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116515_ '()))))
                          (declare (not safe))
                          (cons _L116491_ __tmp117116))))
                   (declare (not safe))
                   (cons '%#define-values __tmp117115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117114
                                                    _stx116441_)))
                                               _hd116455116485_
                                               _hd116452116477_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116444116461_
                                                 _g116445116464_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116444116461_ _g116445116464_)))))
                              (let ()
                                (declare (not safe))
                                (_g116444116461_ _g116445116464_)))))
                      (let ()
                        (declare (not safe))
                        (_g116444116461_ _g116445116464_))))))
          (declare (not safe))
          (_g116443116517_ _stx116441_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx116361_ . _args116362_)
        (let* ((_g116364116381_
                (lambda (_g116365116378_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116365116378_))))
               (_g116363116438_
                (lambda (_g116365116384_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116365116384_))
                      (let ((_e116370116386_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116365116384_))))
                        (let ((_hd116369116389_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116370116386_)))
                              (_tl116368116391_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116370116386_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116368116391_))
                              (let ((_e116373116394_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116368116391_))))
                                (let ((_hd116372116397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116373116394_)))
                                      (_tl116371116399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116373116394_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116371116399_))
                                      (let ((_e116376116402_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116371116399_))))
                                        (let ((_hd116375116405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116376116402_)))
                                              (_tl116374116407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116376116402_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116374116407_))
                                              ((lambda (_L116410_ _L116411_)
                                                 (let ((__tmp117119
                                                        (lambda ()
                                                          (let* ((_expr116436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args116362_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L116410_))
                              (let ((_arg1116427_ (car _args116362_))
                                    (_rest116429_ (cdr _args116362_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest116429_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L116410_
                                       _arg1116427_))
                                    (let ((_arg2116432_ (car _rest116429_))
                                          (_rest116434_ (cdr _rest116429_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest116434_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L116410_
                                             _arg1116427_
                                             _arg2116432_))
                                          (apply gxc#compile-e
                                                 _L116410_
                                                 _arg1116427_
                                                 _arg2116432_
                                                 _rest116434_)))))))
                         (__tmp117120
                          (let ((__tmp117121
                                 (let ((__tmp117122
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr116436_ '()))))
                                   (declare (not safe))
                                   (cons _L116411_ __tmp117122))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp117121))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp117120 _stx116361_))))
               (__tmp117117
                (let ((__tmp117118 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp117118 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp117119
                                                    gx#current-expander-phi
                                                    __tmp117117)))
                                               _hd116375116405_
                                               _hd116372116397_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116364116381_
                                                 _g116365116384_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116364116381_ _g116365116384_)))))
                              (let ()
                                (declare (not safe))
                                (_g116364116381_ _g116365116384_)))))
                      (let ()
                        (declare (not safe))
                        (_g116364116381_ _g116365116384_))))))
          (declare (not safe))
          (_g116363116438_ _stx116361_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx116282_ . _args116283_)
        (let* ((_g116285116302_
                (lambda (_g116286116299_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116286116299_))))
               (_g116284116358_
                (lambda (_g116286116305_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116286116305_))
                      (let ((_e116291116307_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116286116305_))))
                        (let ((_hd116290116310_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116291116307_)))
                              (_tl116289116312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116291116307_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116289116312_))
                              (let ((_e116294116315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116289116312_))))
                                (let ((_hd116293116318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116294116315_)))
                                      (_tl116292116320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116294116315_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl116292116320_))
                                      (let ((_e116297116323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl116292116320_))))
                                        (let ((_hd116296116326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e116297116323_)))
                                              (_tl116295116328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e116297116323_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl116295116328_))
                                              ((lambda (_L116331_ _L116332_)
                                                 (let* ((_expr116356_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args116283_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L116331_))
                     (let ((_arg1116347_ (car _args116283_))
                           (_rest116349_ (cdr _args116283_)))
                       (if (let () (declare (not safe)) (null? _rest116349_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L116331_ _arg1116347_))
                           (let ((_arg2116352_ (car _rest116349_))
                                 (_rest116354_ (cdr _rest116349_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest116354_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L116331_
                                    _arg1116347_
                                    _arg2116352_))
                                 (apply gxc#compile-e
                                        _L116331_
                                        _arg1116347_
                                        _arg2116352_
                                        _rest116354_)))))))
                (__tmp117123
                 (let ((__tmp117124
                        (let ((__tmp117125
                               (let ()
                                 (declare (not safe))
                                 (cons _expr116356_ '()))))
                          (declare (not safe))
                          (cons _L116332_ __tmp117125))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp117124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117123
                                                    _stx116282_)))
                                               _hd116296116326_
                                               _hd116293116318_)
                                              (let ()
                                                (declare (not safe))
                                                (_g116285116302_
                                                 _g116286116305_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g116285116302_ _g116286116305_)))))
                              (let ()
                                (declare (not safe))
                                (_g116285116302_ _g116286116305_)))))
                      (let ()
                        (declare (not safe))
                        (_g116285116302_ _g116286116305_))))))
          (declare (not safe))
          (_g116284116358_ _stx116282_))))
    (define gxc#xform-lambda%
      (lambda (_stx116225_ . _args116226_)
        (let* ((_g116228116242_
                (lambda (_g116229116239_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g116229116239_))))
               (_g116227116279_
                (lambda (_g116229116245_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g116229116245_))
                      (let ((_e116234116247_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g116229116245_))))
                        (let ((_hd116233116250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e116234116247_)))
                              (_tl116232116252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e116234116247_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl116232116252_))
                              (let ((_e116237116255_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl116232116252_))))
                                (let ((_hd116236116258_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e116237116255_)))
                                      (_tl116235116260_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e116237116255_))))
                                  ((lambda (_L116263_ _L116264_)
                                     (let* ((_body116277_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args116226_))
                                                  _L116263_))
                                            (__tmp117126
                                             (let ((__tmp117127
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L116264_
                                                            _body116277_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp117127))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp117126
                                        _stx116225_)))
                                   _tl116235116260_
                                   _hd116236116258_)))
                              (let ()
                                (declare (not safe))
                                (_g116228116242_ _g116229116245_)))))
                      (let ()
                        (declare (not safe))
                        (_g116228116242_ _g116229116245_))))))
          (declare (not safe))
          (_g116227116279_ _stx116225_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx116138_ . _args116139_)
        (letrec ((_clause-e116141_
                  (lambda (_clause116182_)
                    (let* ((_g116184116195_
                            (lambda (_g116185116192_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g116185116192_))))
                           (_g116183116222_
                            (lambda (_g116185116198_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g116185116198_))
                                  (let ((_e116190116200_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g116185116198_))))
                                    (let ((_hd116189116203_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e116190116200_)))
                                          (_tl116188116205_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e116190116200_))))
                                      ((lambda (_L116208_ _L116209_)
                                         (let ((_body116220_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args116139_))
                                                     _L116208_)))
                                           (declare (not safe))
                                           (cons _L116209_ _body116220_)))
                                       _tl116188116205_
                                       _hd116189116203_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g116184116195_ _g116185116198_))))))
                      (declare (not safe))
                      (_g116183116222_ _clause116182_)))))
          (let* ((_g116143116153_
                  (lambda (_g116144116150_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g116144116150_))))
                 (_g116142116179_
                  (lambda (_g116144116156_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g116144116156_))
                        (let ((_e116148116158_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g116144116156_))))
                          (let ((_hd116147116161_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e116148116158_)))
                                (_tl116146116163_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e116148116158_))))
                            ((lambda (_L116166_)
                               (let* ((_clauses116177_
                                       (map _clause-e116141_ _L116166_))
                                      (__tmp117128
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses116177_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp117128
                                  _stx116138_)))
                             _tl116146116163_)))
                        (let ()
                          (declare (not safe))
                          (_g116143116153_ _g116144116156_))))))
            (declare (not safe))
            (_g116142116179_ _stx116138_)))))
    (define gxc#xform-let-values%
      (lambda (_stx115932_ . _args115933_)
        (let* ((_g115935115968_
                (lambda (_g115936115965_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115936115965_))))
               (_g115934116135_
                (lambda (_g115936115971_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115936115971_))
                      (let ((_e115943115973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115936115971_))))
                        (let ((_hd115942115976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115943115973_)))
                              (_tl115941115978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115943115973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115941115978_))
                              (let ((_e115946115981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115941115978_))))
                                (let ((_hd115945115984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115946115981_)))
                                      (_tl115944115986_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115946115981_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd115945115984_))
                                      (let ((_g117129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd115945115984_
                                                '0))))
                                        (begin
                                          (let ((_g117130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117129_)
                                                       (##vector-length
                                                        _g117129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117130_)))
                                          (let ((_target115947115989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117129_ 0)))
                                                (_tl115949115991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117129_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115949115991_))
                                                (letrec ((_loop115950115994_
                                                          (lambda (_hd115948115997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr115954115999_
                           _hd115955116001_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd115948115997_))
                        (let ((_e115951116004_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd115948115997_))))
                          (let ((_lp-hd115952116007_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e115951116004_)))
                                (_lp-tl115953116009_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e115951116004_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd115952116007_))
                                (let ((_e115960116012_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd115952116007_))))
                                  (let ((_hd115959116015_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e115960116012_)))
                                        (_tl115958116017_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e115960116012_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl115958116017_))
                                        (let ((_e115963116020_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl115958116017_))))
                                          (let ((_hd115962116023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e115963116020_)))
                                                (_tl115961116025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e115963116020_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl115961116025_))
                                                (let ((__tmp117143
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115962116023_
                                                               _expr115954115999_)))
                                                      (__tmp117142
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd115959116015_
                                                               _hd115955116001_))))
                                                  (declare (not safe))
                                                  (_loop115950115994_
                                                   _lp-tl115953116009_
                                                   __tmp117143
                                                   __tmp117142))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115935115968_
                                                   _g115936115971_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g115935115968_ _g115936115971_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g115935115968_ _g115936115971_)))))
                        (let ((_expr115956116028_ (reverse _expr115954115999_))
                              (_hd115957116030_ (reverse _hd115955116001_)))
                          ((lambda (_L116033_ _L116034_ _L116035_ _L116036_)
                             (let* ((_g116055116071_
                                     (lambda (_g116056116068_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g116056116068_))))
                                    (_g116054116125_
                                     (lambda (_g116056116074_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g116056116074_))
                                           (let ((_g117131_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g116056116074_
                                                     '0))))
                                             (begin
                                               (let ((_g117132_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g117131_)
                                                            (##vector-length
                                                             _g117131_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g117132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g117132_)))
                                               (let ((_target116058116076_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117131_
                                                         0)))
                                                     (_tl116060116078_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g117131_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl116060116078_))
                                                     (letrec ((_loop116061116081_
                                                               (lambda (_hd116059116084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr116065116086_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd116059116084_))
                             (let ((_e116062116089_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd116059116084_))))
                               (let ((_lp-hd116063116092_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e116062116089_)))
                                     (_lp-tl116064116094_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e116062116089_))))
                                 (let ((__tmp117139
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd116063116092_
                                                _expr116065116086_))))
                                   (declare (not safe))
                                   (_loop116061116081_
                                    _lp-tl116064116094_
                                    __tmp117139))))
                             (let ((_expr116066116097_
                                    (reverse _expr116065116086_)))
                               ((lambda (_L116100_)
                                  (let ()
                                    (let* ((_body116113_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args115933_))
                                                 _L116033_))
                                           (__tmp117133
                                            (let ((__tmp117134
                                                   (let ((__tmp117135
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L116100_
                                                               _L116035_))
                                                            (let ((__tmp117136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g116114116118_
                                    _g116115116120_
                                    _g116116116122_)
                             (let ((__tmp117137
                                    (let ((__tmp117138
                                           (let ()
                                             (declare (not safe))
                                             (cons _g116114116118_ '()))))
                                      (declare (not safe))
                                      (cons _g116115116120_ __tmp117138))))
                               (declare (not safe))
                               (cons __tmp117137 _g116116116122_)))))
                      (declare (not safe))
                      (foldr2 __tmp117136 '() _L116100_ _L116035_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp117135
                                                           _body116113_))))
                                              (declare (not safe))
                                              (cons _L116036_ __tmp117134))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp117133
                                       _stx115932_))))
                                _expr116066116097_))))))
               (let ()
                 (declare (not safe))
                 (_loop116061116081_ _target116058116076_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g116055116071_
                                                        _g116056116074_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g116055116071_
                                              _g116056116074_)))))
                                    (__tmp117140
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args115933_))
                                          (let ((__tmp117141
                                                 (lambda (_g116127116130_
                                                          _g116128116132_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g116127116130_
                                                           _g116128116132_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp117141
                                                    '()
                                                    _L116034_)))))
                               (declare (not safe))
                               (_g116054116125_ __tmp117140)))
                           _tl115944115986_
                           _expr115956116028_
                           _hd115957116030_
                           _hd115942115976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop115950115994_
                                                     _target115947115989_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g115935115968_
                                                   _g115936115971_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115935115968_ _g115936115971_)))))
                              (let ()
                                (declare (not safe))
                                (_g115935115968_ _g115936115971_)))))
                      (let ()
                        (declare (not safe))
                        (_g115935115968_ _g115936115971_))))))
          (declare (not safe))
          (_g115934116135_ _stx115932_))))
    (define gxc#xform-operands
      (lambda (_stx115888_ . _args115889_)
        (let* ((_g115891115902_
                (lambda (_g115892115899_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115892115899_))))
               (_g115890115929_
                (lambda (_g115892115905_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115892115905_))
                      (let ((_e115897115907_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115892115905_))))
                        (let ((_hd115896115910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115897115907_)))
                              (_tl115895115912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115897115907_))))
                          ((lambda (_L115915_ _L115916_)
                             (let* ((_rands115927_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args115889_))
                                          _L115915_))
                                    (__tmp117144
                                     (let ()
                                       (declare (not safe))
                                       (cons _L115916_ _rands115927_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp117144
                                _stx115888_)))
                           _tl115895115912_
                           _hd115896115910_)))
                      (let ()
                        (declare (not safe))
                        (_g115891115902_ _g115892115905_))))))
          (declare (not safe))
          (_g115890115929_ _stx115888_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx115809_ . _args115810_)
        (let* ((_g115812115829_
                (lambda (_g115813115826_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115813115826_))))
               (_g115811115885_
                (lambda (_g115813115832_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115813115832_))
                      (let ((_e115818115834_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115813115832_))))
                        (let ((_hd115817115837_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115818115834_)))
                              (_tl115816115839_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115818115834_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115816115839_))
                              (let ((_e115821115842_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115816115839_))))
                                (let ((_hd115820115845_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115821115842_)))
                                      (_tl115819115847_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115821115842_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115819115847_))
                                      (let ((_e115824115850_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115819115847_))))
                                        (let ((_hd115823115853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115824115850_)))
                                              (_tl115822115855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115824115850_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115822115855_))
                                              ((lambda (_L115858_ _L115859_)
                                                 (let* ((_expr115883_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args115810_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L115858_))
                     (let ((_arg1115874_ (car _args115810_))
                           (_rest115876_ (cdr _args115810_)))
                       (if (let () (declare (not safe)) (null? _rest115876_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L115858_ _arg1115874_))
                           (let ((_arg2115879_ (car _rest115876_))
                                 (_rest115881_ (cdr _rest115876_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest115881_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L115858_
                                    _arg1115874_
                                    _arg2115879_))
                                 (apply gxc#compile-e
                                        _L115858_
                                        _arg1115874_
                                        _arg2115879_
                                        _rest115881_)))))))
                (__tmp117145
                 (let ((__tmp117146
                        (let ((__tmp117147
                               (let ()
                                 (declare (not safe))
                                 (cons _expr115883_ '()))))
                          (declare (not safe))
                          (cons _L115859_ __tmp117147))))
                   (declare (not safe))
                   (cons '%#set! __tmp117146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp117145
                                                    _stx115809_)))
                                               _hd115823115853_
                                               _hd115820115845_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115812115829_
                                                 _g115813115832_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115812115829_ _g115813115832_)))))
                              (let ()
                                (declare (not safe))
                                (_g115812115829_ _g115813115832_)))))
                      (let ()
                        (declare (not safe))
                        (_g115812115829_ _g115813115832_))))))
          (declare (not safe))
          (_g115811115885_ _stx115809_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx115740_)
        (let* ((_g115742115759_
                (lambda (_g115743115756_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115743115756_))))
               (_g115741115806_
                (lambda (_g115743115762_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115743115762_))
                      (let ((_e115748115764_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115743115762_))))
                        (let ((_hd115747115767_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115748115764_)))
                              (_tl115746115769_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115748115764_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115746115769_))
                              (let ((_e115751115772_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115746115769_))))
                                (let ((_hd115750115775_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115751115772_)))
                                      (_tl115749115777_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115751115772_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115749115777_))
                                      (let ((_e115754115780_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115749115777_))))
                                        (let ((_hd115753115783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115754115780_)))
                                              (_tl115752115785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115754115780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115752115785_))
                                              ((lambda (_L115788_ _L115789_)
                                                 (let ((_sym115804_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L115789_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym115804_))
                                                   (let ((__tmp117148
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp117148
                                                      _sym115804_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L115788_))))
                                               _hd115753115783_
                                               _hd115750115775_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115742115759_
                                                 _g115743115762_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115742115759_ _g115743115762_)))))
                              (let ()
                                (declare (not safe))
                                (_g115742115759_ _g115743115762_)))))
                      (let ()
                        (declare (not safe))
                        (_g115742115759_ _g115743115762_))))))
          (declare (not safe))
          (_g115741115806_ _stx115740_))))
    (define gxc#collect-methods-call%
      (lambda (_stx115294_)
        (let* ((___stx116838116839_ _stx115294_)
               (_g115298115400_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx116838116839_)))))
          (let ((___kont116840116841_
                 (lambda (_L115690_ _L115691_ _L115692_ _L115693_ _L115694_)
                   (let ((__tmp117149
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115691_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117149))))
                (___kont116842116843_
                 (lambda (_L115516_ _L115517_ _L115518_ _L115519_)
                   (let ((__tmp117150
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L115516_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp117150))))
                (___kont116844116845_ (lambda () '#!void)))
            (let ((___match116973116974_
                   (lambda (_e115307115562_
                            _hd115306115565_
                            _tl115305115567_
                            _e115310115570_
                            _hd115309115573_
                            _tl115308115575_
                            _e115313115578_
                            _hd115312115581_
                            _tl115311115583_
                            _e115316115586_
                            _hd115315115589_
                            _tl115314115591_
                            _e115319115594_
                            _hd115318115597_
                            _tl115317115599_
                            _e115322115602_
                            _hd115321115605_
                            _tl115320115607_
                            _e115325115610_
                            _hd115324115613_
                            _tl115323115615_
                            _e115328115618_
                            _hd115327115621_
                            _tl115326115623_
                            _e115331115626_
                            _hd115330115629_
                            _tl115329115631_
                            _e115334115634_
                            _hd115333115637_
                            _tl115332115639_
                            _e115337115642_
                            _hd115336115645_
                            _tl115335115647_
                            _e115340115650_
                            _hd115339115653_
                            _tl115338115655_
                            _e115343115658_
                            _hd115342115661_
                            _tl115341115663_
                            _e115346115666_
                            _hd115345115669_
                            _tl115344115671_
                            _e115349115674_
                            _hd115348115677_
                            _tl115347115679_
                            _e115352115682_
                            _hd115351115685_
                            _tl115350115687_)
                     (let ((_L115690_ _hd115351115685_)
                           (_L115691_ _hd115342115661_)
                           (_L115692_ _hd115333115637_)
                           (_L115693_ _hd115324115613_)
                           (_L115694_ _hd115315115589_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L115694_
                              'bind-method!))
                           (___kont116840116841_
                            _L115690_
                            _L115691_
                            _L115692_
                            _L115693_
                            _L115694_)
                           (___kont116844116845_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx116838116839_))
                  (let ((_e115307115562_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx116838116839_))))
                    (let ((_tl115305115567_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115307115562_)))
                          (_hd115306115565_
                           (let ()
                             (declare (not safe))
                             (##car _e115307115562_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl115305115567_))
                          (let ((_e115310115570_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl115305115567_))))
                            (let ((_tl115308115575_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115310115570_)))
                                  (_hd115309115573_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115310115570_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd115309115573_))
                                  (let ((_e115313115578_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd115309115573_))))
                                    (let ((_tl115311115583_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115313115578_)))
                                          (_hd115312115581_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115313115578_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd115312115581_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd115312115581_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115311115583_))
                                                  (let ((_e115316115586_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115311115583_))))
                                                    (let ((_tl115314115591_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115316115586_)))
                                                          (_hd115315115589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115316115586_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl115314115591_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl115308115575_))
                      (let ((_e115319115594_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl115308115575_))))
                        (let ((_tl115317115599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115319115594_)))
                              (_hd115318115597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115319115594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd115318115597_))
                              (let ((_e115322115602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd115318115597_))))
                                (let ((_tl115320115607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115322115602_)))
                                      (_hd115321115605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115322115602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd115321115605_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd115321115605_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl115320115607_))
                                              (let ((_e115325115610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl115320115607_))))
                                                (let ((_tl115323115615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e115325115610_)))
                                                      (_hd115324115613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e115325115610_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115323115615_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl115317115599_))
                                                          (let ((_e115328115618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl115317115599_))))
                    (let ((_tl115326115623_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115328115618_)))
                          (_hd115327115621_
                           (let ()
                             (declare (not safe))
                             (##car _e115328115618_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd115327115621_))
                          (let ((_e115331115626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd115327115621_))))
                            (let ((_tl115329115631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e115331115626_)))
                                  (_hd115330115629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e115331115626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd115330115629_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd115330115629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl115329115631_))
                                          (let ((_e115334115634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl115329115631_))))
                                            (let ((_tl115332115639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e115334115634_)))
                                                  (_hd115333115637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e115334115634_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl115332115639_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl115326115623_))
                                                      (let ((_e115337115642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl115326115623_))))
                (let ((_tl115335115647_
                       (let () (declare (not safe)) (##cdr _e115337115642_)))
                      (_hd115336115645_
                       (let () (declare (not safe)) (##car _e115337115642_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd115336115645_))
                      (let ((_e115340115650_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd115336115645_))))
                        (let ((_tl115338115655_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115340115650_)))
                              (_hd115339115653_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115340115650_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd115339115653_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd115339115653_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115338115655_))
                                      (let ((_e115343115658_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115338115655_))))
                                        (let ((_tl115341115663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115343115658_)))
                                              (_hd115342115661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115343115658_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115341115663_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl115335115647_))
                                                  (let ((_e115346115666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl115335115647_))))
                                                    (let ((_tl115344115671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e115346115666_)))
                                                          (_hd115345115669_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e115346115666_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd115345115669_))
                                                          (let ((_e115349115674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd115345115669_))))
                    (let ((_tl115347115679_
                           (let ()
                             (declare (not safe))
                             (##cdr _e115349115674_)))
                          (_hd115348115677_
                           (let ()
                             (declare (not safe))
                             (##car _e115349115674_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd115348115677_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd115348115677_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl115347115679_))
                                  (let ((_e115352115682_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl115347115679_))))
                                    (let ((_tl115350115687_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e115352115682_)))
                                          (_hd115351115685_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e115352115682_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl115350115687_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115344115671_))
                                              (___match116973116974_
                                               _e115307115562_
                                               _hd115306115565_
                                               _tl115305115567_
                                               _e115310115570_
                                               _hd115309115573_
                                               _tl115308115575_
                                               _e115313115578_
                                               _hd115312115581_
                                               _tl115311115583_
                                               _e115316115586_
                                               _hd115315115589_
                                               _tl115314115591_
                                               _e115319115594_
                                               _hd115318115597_
                                               _tl115317115599_
                                               _e115322115602_
                                               _hd115321115605_
                                               _tl115320115607_
                                               _e115325115610_
                                               _hd115324115613_
                                               _tl115323115615_
                                               _e115328115618_
                                               _hd115327115621_
                                               _tl115326115623_
                                               _e115331115626_
                                               _hd115330115629_
                                               _tl115329115631_
                                               _e115334115634_
                                               _hd115333115637_
                                               _tl115332115639_
                                               _e115337115642_
                                               _hd115336115645_
                                               _tl115335115647_
                                               _e115340115650_
                                               _hd115339115653_
                                               _tl115338115655_
                                               _e115343115658_
                                               _hd115342115661_
                                               _tl115341115663_
                                               _e115346115666_
                                               _hd115345115669_
                                               _tl115344115671_
                                               _e115349115674_
                                               _hd115348115677_
                                               _tl115347115679_
                                               _e115352115682_
                                               _hd115351115685_
                                               _tl115350115687_)
                                              (___kont116844116845_))
                                          (___kont116844116845_))))
                                  (___kont116844116845_))
                              (___kont116844116845_))
                          (___kont116844116845_))))
                  (___kont116844116845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl115335115647_))
                                                      (if (let ((__tmp117151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp117151 'bind-method!))
                  (let ((_L115516_ _hd115342115661_)
                        (_L115517_ _hd115333115637_)
                        (_L115518_ _hd115324115613_)
                        (_L115519_ _hd115315115589_))
                    (___kont116842116843_
                     _L115516_
                     _L115517_
                     _L115518_
                     _L115519_))
                  (___kont116844116845_))
              (___kont116844116845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116844116845_))))
                                      (___kont116844116845_))
                                  (___kont116844116845_))
                              (___kont116844116845_))))
                      (___kont116844116845_))))
              (___kont116844116845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116844116845_))))
                                          (___kont116844116845_))
                                      (___kont116844116845_))
                                  (___kont116844116845_))))
                          (___kont116844116845_))))
                  (___kont116844116845_))
              (___kont116844116845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont116844116845_))
                                          (___kont116844116845_))
                                      (___kont116844116845_))))
                              (___kont116844116845_))))
                      (___kont116844116845_))
                  (___kont116844116845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont116844116845_))
                                              (___kont116844116845_))
                                          (___kont116844116845_))))
                                  (___kont116844116845_))))
                          (___kont116844116845_))))
                  (___kont116844116845_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx115241_ _id115242_ _new-id115243_)
        (let* ((_g115245115258_
                (lambda (_g115246115255_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115246115255_))))
               (_g115244115291_
                (lambda (_g115246115261_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115246115261_))
                      (let ((_e115250115263_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115246115261_))))
                        (let ((_hd115249115266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115250115263_)))
                              (_tl115248115268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115250115263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115248115268_))
                              (let ((_e115253115271_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115248115268_))))
                                (let ((_hd115252115274_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115253115271_)))
                                      (_tl115251115276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115253115271_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115251115276_))
                                      ((lambda (_L115279_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L115279_
                                                _id115242_))
                                             (let ((__tmp117152
                                                    (let ((__tmp117153
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id115243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp117153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp117152
                                                _stx115241_))
                                             _stx115241_))
                                       _hd115252115274_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115245115258_ _g115246115261_)))))
                              (let ()
                                (declare (not safe))
                                (_g115245115258_ _g115246115261_)))))
                      (let ()
                        (declare (not safe))
                        (_g115245115258_ _g115246115261_))))))
          (declare (not safe))
          (_g115244115291_ _stx115241_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx115182_ _subst115183_)
        (let* ((_g115185115198_
                (lambda (_g115186115195_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115186115195_))))
               (_g115184115238_
                (lambda (_g115186115201_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115186115201_))
                      (let ((_e115190115203_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115186115201_))))
                        (let ((_hd115189115206_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115190115203_)))
                              (_tl115188115208_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115190115203_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115188115208_))
                              (let ((_e115193115211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115188115208_))))
                                (let ((_hd115192115214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115193115211_)))
                                      (_tl115191115216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115193115211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl115191115216_))
                                      ((lambda (_L115219_)
                                         (let ((_$e115233_
                                                (let ((__tmp117154
                                                       (lambda (_sub115231_)
                                                         (let ((__tmp117155
                                                                (car _sub115231_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L115219_
                                                            __tmp117155)))))
                                                  (declare (not safe))
                                                  (find __tmp117154
                                                        _subst115183_))))
                                           (if _$e115233_
                                               ((lambda (_sub115236_)
                                                  (let ((__tmp117156
                                                         (let ((__tmp117157
                                                                (let ((__tmp117158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub115236_)))
                          (declare (not safe))
                          (cons __tmp117158 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp117157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp117156
                                                     _stx115182_)))
                                                _$e115233_)
                                               _stx115182_)))
                                       _hd115192115214_)
                                      (let ()
                                        (declare (not safe))
                                        (_g115185115198_ _g115186115201_)))))
                              (let ()
                                (declare (not safe))
                                (_g115185115198_ _g115186115201_)))))
                      (let ()
                        (declare (not safe))
                        (_g115185115198_ _g115186115201_))))))
          (declare (not safe))
          (_g115184115238_ _stx115182_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx115110_ _id115111_ _new-id115112_)
        (let* ((_g115114115131_
                (lambda (_g115115115128_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115115115128_))))
               (_g115113115179_
                (lambda (_g115115115134_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115115115134_))
                      (let ((_e115120115136_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115115115134_))))
                        (let ((_hd115119115139_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115120115136_)))
                              (_tl115118115141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115120115136_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115118115141_))
                              (let ((_e115123115144_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115118115141_))))
                                (let ((_hd115122115147_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115123115144_)))
                                      (_tl115121115149_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115123115144_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115121115149_))
                                      (let ((_e115126115152_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115121115149_))))
                                        (let ((_hd115125115155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115126115152_)))
                                              (_tl115124115157_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115126115152_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115124115157_))
                                              ((lambda (_L115160_ _L115161_)
                                                 (let ((_new-expr115176_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L115160_
                                                           _id115111_
                                                           _new-id115112_)))
                                                       (_new-xid115177_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L115161_
                                                               _id115111_))
                                                            _new-id115112_
                                                            _L115161_)))
                                                   (let ((__tmp117159
                                                          (let ((__tmp117160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117161
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115176_ '()))))
                           (declare (not safe))
                           (cons _new-xid115177_ __tmp117161))))
                    (declare (not safe))
                    (cons '%#set! __tmp117160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117159
                                                      _stx115110_))))
                                               _hd115125115155_
                                               _hd115122115147_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115114115131_
                                                 _g115115115134_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115114115131_ _g115115115134_)))))
                              (let ()
                                (declare (not safe))
                                (_g115114115131_ _g115115115134_)))))
                      (let ()
                        (declare (not safe))
                        (_g115114115131_ _g115115115134_))))))
          (declare (not safe))
          (_g115113115179_ _stx115110_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx115034_ _subst115035_)
        (let* ((_g115037115054_
                (lambda (_g115038115051_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g115038115051_))))
               (_g115036115107_
                (lambda (_g115038115057_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g115038115057_))
                      (let ((_e115043115059_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g115038115057_))))
                        (let ((_hd115042115062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e115043115059_)))
                              (_tl115041115064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e115043115059_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl115041115064_))
                              (let ((_e115046115067_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl115041115064_))))
                                (let ((_hd115045115070_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e115046115067_)))
                                      (_tl115044115072_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e115046115067_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl115044115072_))
                                      (let ((_e115049115075_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl115044115072_))))
                                        (let ((_hd115048115078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e115049115075_)))
                                              (_tl115047115080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e115049115075_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl115047115080_))
                                              ((lambda (_L115083_ _L115084_)
                                                 (let ((_new-expr115104_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L115083_
                                                           _subst115035_)))
                                                       (_new-xid115105_
                                                        (let ((_$e115101_
                                                               (let ((__tmp117162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub115099_)
                                (let ((__tmp117163 (car _sub115099_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L115084_
                                   __tmp117163)))))
                         (declare (not safe))
                         (find __tmp117162 _subst115035_))))
                  (if _$e115101_ (cdr _$e115101_) _L115084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp117164
                                                          (let ((__tmp117165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp117166
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr115104_ '()))))
                           (declare (not safe))
                           (cons _new-xid115105_ __tmp117166))))
                    (declare (not safe))
                    (cons '%#set! __tmp117165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp117164
                                                      _stx115034_))))
                                               _hd115048115078_
                                               _hd115045115070_)
                                              (let ()
                                                (declare (not safe))
                                                (_g115037115054_
                                                 _g115038115057_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g115037115054_ _g115038115057_)))))
                              (let ()
                                (declare (not safe))
                                (_g115037115054_ _g115038115057_)))))
                      (let ()
                        (declare (not safe))
                        (_g115037115054_ _g115038115057_))))))
          (declare (not safe))
          (_g115036115107_ _stx115034_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx114980_ _ht114981_)
        (let* ((_g114983114996_
                (lambda (_g114984114993_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114984114993_))))
               (_g114982115031_
                (lambda (_g114984114999_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114984114999_))
                      (let ((_e114988115001_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114984114999_))))
                        (let ((_hd114987115004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114988115001_)))
                              (_tl114986115006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114988115001_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114986115006_))
                              (let ((_e114991115009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114986115006_))))
                                (let ((_hd114990115012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114991115009_)))
                                      (_tl114989115014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114991115009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114989115014_))
                                      ((lambda (_L115017_)
                                         (let ((_eid115029_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L115017_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht114981_
                                            _eid115029_
                                            1+
                                            '0)))
                                       _hd114990115012_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114983114996_ _g114984114999_)))))
                              (let ()
                                (declare (not safe))
                                (_g114983114996_ _g114984114999_)))))
                      (let ()
                        (declare (not safe))
                        (_g114983114996_ _g114984114999_))))))
          (declare (not safe))
          (_g114982115031_ _stx114980_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx114910_ _ht114911_)
        (let* ((_g114913114930_
                (lambda (_g114914114927_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114914114927_))))
               (_g114912114977_
                (lambda (_g114914114933_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114914114933_))
                      (let ((_e114919114935_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114914114933_))))
                        (let ((_hd114918114938_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114919114935_)))
                              (_tl114917114940_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114919114935_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114917114940_))
                              (let ((_e114922114943_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114917114940_))))
                                (let ((_hd114921114946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114922114943_)))
                                      (_tl114920114948_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114922114943_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114920114948_))
                                      (let ((_e114925114951_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114920114948_))))
                                        (let ((_hd114924114954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114925114951_)))
                                              (_tl114923114956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114925114951_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114923114956_))
                                              ((lambda (_L114959_ _L114960_)
                                                 (let ((_eid114975_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L114960_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht114911_
                                                      _eid114975_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L114959_
                                                      _ht114911_))))
                                               _hd114924114954_
                                               _hd114921114946_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114913114930_
                                                 _g114914114933_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114913114930_ _g114914114933_)))))
                              (let ()
                                (declare (not safe))
                                (_g114913114930_ _g114914114933_)))))
                      (let ()
                        (declare (not safe))
                        (_g114913114930_ _g114914114933_))))))
          (declare (not safe))
          (_g114912114977_ _stx114910_))))
    (define gxc#find-body%
      (lambda (_stx114823_ _arg114824_)
        (let* ((_g114826114845_
                (lambda (_g114827114842_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114827114842_))))
               (_g114825114907_
                (lambda (_g114827114848_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114827114848_))
                      (let ((_e114831114850_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114827114848_))))
                        (let ((_hd114830114853_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114831114850_)))
                              (_tl114829114855_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114831114850_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114829114855_))
                              (let ((_g117167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114829114855_
                                        '0))))
                                (begin
                                  (let ((_g117168_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117167_)
                                               (##vector-length _g117167_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117168_ 2)))
                                        (error "Context expects 2 values"
                                               _g117168_)))
                                  (let ((_target114832114858_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117167_ 0)))
                                        (_tl114834114860_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117167_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114834114860_))
                                        (letrec ((_loop114835114863_
                                                  (lambda (_hd114833114866_
                                                           _expr114839114868_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114833114866_))
                                                        (let ((_e114836114871_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114833114866_))))
                  (let ((_lp-hd114837114874_
                         (let () (declare (not safe)) (##car _e114836114871_)))
                        (_lp-tl114838114876_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114836114871_))))
                    (let ((__tmp117172
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd114837114874_ _expr114839114868_))))
                      (declare (not safe))
                      (_loop114835114863_ _lp-tl114838114876_ __tmp117172))))
                (let ((_expr114840114879_ (reverse _expr114839114868_)))
                  ((lambda (_L114882_)
                     (let ((__tmp117171
                            (lambda (_g114895114897_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114895114897_
                                 _arg114824_))))
                           (__tmp117169
                            (let ((__tmp117170
                                   (lambda (_g114899114902_ _g114900114904_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114899114902_
                                             _g114900114904_)))))
                              (declare (not safe))
                              (foldr1 __tmp117170 '() _L114882_))))
                       (declare (not safe))
                       (ormap1 __tmp117171 __tmp117169)))
                   _expr114840114879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114835114863_
                                             _target114832114858_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114826114845_
                                           _g114827114848_))))))
                              (let ()
                                (declare (not safe))
                                (_g114826114845_ _g114827114848_)))))
                      (let ()
                        (declare (not safe))
                        (_g114826114845_ _g114827114848_))))))
          (declare (not safe))
          (_g114825114907_ _stx114823_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx114755_ _arg114756_)
        (let* ((_g114758114775_
                (lambda (_g114759114772_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114759114772_))))
               (_g114757114820_
                (lambda (_g114759114778_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114759114778_))
                      (let ((_e114764114780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114759114778_))))
                        (let ((_hd114763114783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114764114780_)))
                              (_tl114762114785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114764114780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114762114785_))
                              (let ((_e114767114788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114762114785_))))
                                (let ((_hd114766114791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114767114788_)))
                                      (_tl114765114793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114767114788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114765114793_))
                                      (let ((_e114770114796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114765114793_))))
                                        (let ((_hd114769114799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114770114796_)))
                                              (_tl114768114801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114770114796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114768114801_))
                                              ((lambda (_L114804_ _L114805_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114804_
                                                    _arg114756_)))
                                               _hd114769114799_
                                               _hd114766114791_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114758114775_
                                                 _g114759114778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114758114775_ _g114759114778_)))))
                              (let ()
                                (declare (not safe))
                                (_g114758114775_ _g114759114778_)))))
                      (let ()
                        (declare (not safe))
                        (_g114758114775_ _g114759114778_))))))
          (declare (not safe))
          (_g114757114820_ _stx114755_))))
    (define gxc#find-lambda%
      (lambda (_stx114687_ _arg114688_)
        (let* ((_g114690114707_
                (lambda (_g114691114704_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114691114704_))))
               (_g114689114752_
                (lambda (_g114691114710_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114691114710_))
                      (let ((_e114696114712_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114691114710_))))
                        (let ((_hd114695114715_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114696114712_)))
                              (_tl114694114717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114696114712_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114694114717_))
                              (let ((_e114699114720_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114694114717_))))
                                (let ((_hd114698114723_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114699114720_)))
                                      (_tl114697114725_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114699114720_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114697114725_))
                                      (let ((_e114702114728_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114697114725_))))
                                        (let ((_hd114701114731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114702114728_)))
                                              (_tl114700114733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114702114728_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114700114733_))
                                              ((lambda (_L114736_ _L114737_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114736_
                                                    _arg114688_)))
                                               _hd114701114731_
                                               _hd114698114723_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114690114707_
                                                 _g114691114710_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114690114707_ _g114691114710_)))))
                              (let ()
                                (declare (not safe))
                                (_g114690114707_ _g114691114710_)))))
                      (let ()
                        (declare (not safe))
                        (_g114690114707_ _g114691114710_))))))
          (declare (not safe))
          (_g114689114752_ _stx114687_))))
    (define gxc#find-case-lambda%
      (lambda (_stx114569_ _arg114570_)
        (let* ((_g114572114600_
                (lambda (_g114573114597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114573114597_))))
               (_g114571114684_
                (lambda (_g114573114603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114573114603_))
                      (let ((_e114578114605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114573114603_))))
                        (let ((_hd114577114608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114578114605_)))
                              (_tl114576114610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114578114605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl114576114610_))
                              (let ((_g117173_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl114576114610_
                                        '0))))
                                (begin
                                  (let ((_g117174_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117173_)
                                               (##vector-length _g117173_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117174_ 2)))
                                        (error "Context expects 2 values"
                                               _g117174_)))
                                  (let ((_target114579114613_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117173_ 0)))
                                        (_tl114581114615_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117173_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114581114615_))
                                        (letrec ((_loop114582114618_
                                                  (lambda (_hd114580114621_
                                                           _body114586114623_
                                                           _hd114587114625_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd114580114621_))
                                                        (let ((_e114583114628_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd114580114621_))))
                  (let ((_lp-hd114584114631_
                         (let () (declare (not safe)) (##car _e114583114628_)))
                        (_lp-tl114585114633_
                         (let ()
                           (declare (not safe))
                           (##cdr _e114583114628_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd114584114631_))
                        (let ((_e114592114636_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd114584114631_))))
                          (let ((_hd114591114639_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114592114636_)))
                                (_tl114590114641_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114592114636_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl114590114641_))
                                (let ((_e114595114644_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl114590114641_))))
                                  (let ((_hd114594114647_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114595114644_)))
                                        (_tl114593114649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114595114644_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl114593114649_))
                                        (let ((__tmp117179
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114594114647_
                                                       _body114586114623_)))
                                              (__tmp117178
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd114591114639_
                                                       _hd114587114625_))))
                                          (declare (not safe))
                                          (_loop114582114618_
                                           _lp-tl114585114633_
                                           __tmp117179
                                           __tmp117178))
                                        (let ()
                                          (declare (not safe))
                                          (_g114572114600_ _g114573114603_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114572114600_ _g114573114603_)))))
                        (let ()
                          (declare (not safe))
                          (_g114572114600_ _g114573114603_)))))
                (let ((_body114588114652_ (reverse _body114586114623_))
                      (_hd114589114654_ (reverse _hd114587114625_)))
                  ((lambda (_L114657_ _L114658_)
                     (let ((__tmp117177
                            (lambda (_g114672114674_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g114672114674_
                                 _arg114570_))))
                           (__tmp117175
                            (let ((__tmp117176
                                   (lambda (_g114676114679_ _g114677114681_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g114676114679_
                                             _g114677114681_)))))
                              (declare (not safe))
                              (foldr1 __tmp117176 '() _L114657_))))
                       (declare (not safe))
                       (ormap1 __tmp117177 __tmp117175)))
                   _body114588114652_
                   _hd114589114654_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop114582114618_
                                             _target114579114613_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g114572114600_
                                           _g114573114603_))))))
                              (let ()
                                (declare (not safe))
                                (_g114572114600_ _g114573114603_)))))
                      (let ()
                        (declare (not safe))
                        (_g114572114600_ _g114573114603_))))))
          (declare (not safe))
          (_g114571114684_ _stx114569_))))
    (define gxc#find-let-values%
      (lambda (_stx114419_ _arg114420_)
        (let* ((_g114422114457_
                (lambda (_g114423114454_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114423114454_))))
               (_g114421114566_
                (lambda (_g114423114460_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114423114460_))
                      (let ((_e114429114462_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114423114460_))))
                        (let ((_hd114428114465_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114429114462_)))
                              (_tl114427114467_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114429114462_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114427114467_))
                              (let ((_e114432114470_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114427114467_))))
                                (let ((_hd114431114473_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114432114470_)))
                                      (_tl114430114475_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114432114470_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd114431114473_))
                                      (let ((_g117180_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd114431114473_
                                                '0))))
                                        (begin
                                          (let ((_g117181_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g117180_)
                                                       (##vector-length
                                                        _g117180_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g117181_ 2)))
                                                (error "Context expects 2 values"
                                                       _g117181_)))
                                          (let ((_target114433114478_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g117180_ 0)))
                                                (_tl114435114480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g117180_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114435114480_))
                                                (letrec ((_loop114436114483_
                                                          (lambda (_hd114434114486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr114440114488_
                           _bind114441114490_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd114434114486_))
                        (let ((_e114437114493_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd114434114486_))))
                          (let ((_lp-hd114438114496_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e114437114493_)))
                                (_lp-tl114439114498_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e114437114493_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd114438114496_))
                                (let ((_e114446114501_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd114438114496_))))
                                  (let ((_hd114445114504_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e114446114501_)))
                                        (_tl114444114506_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e114446114501_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl114444114506_))
                                        (let ((_e114449114509_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl114444114506_))))
                                          (let ((_hd114448114512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e114449114509_)))
                                                (_tl114447114514_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e114449114509_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl114447114514_))
                                                (let ((__tmp117186
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114448114512_
                                                               _expr114440114488_)))
                                                      (__tmp117185
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd114445114504_
                                                               _bind114441114490_))))
                                                  (declare (not safe))
                                                  (_loop114436114483_
                                                   _lp-tl114439114498_
                                                   __tmp117186
                                                   __tmp117185))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114422114457_
                                                   _g114423114460_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g114422114457_ _g114423114460_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g114422114457_ _g114423114460_)))))
                        (let ((_expr114442114517_ (reverse _expr114440114488_))
                              (_bind114443114519_
                               (reverse _bind114441114490_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114430114475_))
                              (let ((_e114452114522_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114430114475_))))
                                (let ((_hd114451114525_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114452114522_)))
                                      (_tl114450114527_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114452114522_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114450114527_))
                                      ((lambda (_L114530_ _L114531_ _L114532_)
                                         (let ((_$e114563_
                                                (let ((__tmp117184
                                                       (lambda (_g114551114553_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g114551114553_
                                                            _arg114420_))))
                                                      (__tmp117182
                                                       (let ((__tmp117183
                                                              (lambda (_g114555114558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g114556114560_)
                        (let ()
                          (declare (not safe))
                          (cons _g114555114558_ _g114556114560_)))))
                 (declare (not safe))
                 (foldr1 __tmp117183 '() _L114531_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp117184
                                                          __tmp117182))))
                                           (if _$e114563_
                                               _$e114563_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L114530_
                                                  _arg114420_)))))
                                       _hd114451114525_
                                       _expr114442114517_
                                       _bind114443114519_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114422114457_ _g114423114460_)))))
                              (let ()
                                (declare (not safe))
                                (_g114422114457_ _g114423114460_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop114436114483_
                                                     _target114433114478_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g114422114457_
                                                   _g114423114460_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114422114457_ _g114423114460_)))))
                              (let ()
                                (declare (not safe))
                                (_g114422114457_ _g114423114460_)))))
                      (let ()
                        (declare (not safe))
                        (_g114422114457_ _g114423114460_))))))
          (declare (not safe))
          (_g114421114566_ _stx114419_))))
    (define gxc#find-setq%
      (lambda (_stx114351_ _arg114352_)
        (let* ((_g114354114371_
                (lambda (_g114355114368_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114355114368_))))
               (_g114353114416_
                (lambda (_g114355114374_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114355114374_))
                      (let ((_e114360114376_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114355114374_))))
                        (let ((_hd114359114379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114360114376_)))
                              (_tl114358114381_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114360114376_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114358114381_))
                              (let ((_e114363114384_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114358114381_))))
                                (let ((_hd114362114387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114363114384_)))
                                      (_tl114361114389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114363114384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114361114389_))
                                      (let ((_e114366114392_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114361114389_))))
                                        (let ((_hd114365114395_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114366114392_)))
                                              (_tl114364114397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114366114392_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114364114397_))
                                              ((lambda (_L114400_ _L114401_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L114400_
                                                    _arg114352_)))
                                               _hd114365114395_
                                               _hd114362114387_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114354114371_
                                                 _g114355114374_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114354114371_ _g114355114374_)))))
                              (let ()
                                (declare (not safe))
                                (_g114354114371_ _g114355114374_)))))
                      (let ()
                        (declare (not safe))
                        (_g114354114371_ _g114355114374_))))))
          (declare (not safe))
          (_g114353114416_ _stx114351_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx114295_ _ids114296_)
        (let* ((_g114298114311_
                (lambda (_g114299114308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114299114308_))))
               (_g114297114348_
                (lambda (_g114299114314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114299114314_))
                      (let ((_e114303114316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114299114314_))))
                        (let ((_hd114302114319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114303114316_)))
                              (_tl114301114321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114303114316_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114301114321_))
                              (let ((_e114306114324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114301114321_))))
                                (let ((_hd114305114327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114306114324_)))
                                      (_tl114304114329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114306114324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl114304114329_))
                                      ((lambda (_L114332_)
                                         (let ((__tmp117187
                                                (lambda (_g114343114345_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L114332_
                                                     _g114343114345_)))))
                                           (declare (not safe))
                                           (find __tmp117187 _ids114296_)))
                                       _hd114305114327_)
                                      (let ()
                                        (declare (not safe))
                                        (_g114298114311_ _g114299114314_)))))
                              (let ()
                                (declare (not safe))
                                (_g114298114311_ _g114299114314_)))))
                      (let ()
                        (declare (not safe))
                        (_g114298114311_ _g114299114314_))))))
          (declare (not safe))
          (_g114297114348_ _stx114295_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx114219_ _ids114220_)
        (let* ((_g114222114239_
                (lambda (_g114223114236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114223114236_))))
               (_g114221114292_
                (lambda (_g114223114242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114223114242_))
                      (let ((_e114228114244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114223114242_))))
                        (let ((_hd114227114247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114228114244_)))
                              (_tl114226114249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114228114244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114226114249_))
                              (let ((_e114231114252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114226114249_))))
                                (let ((_hd114230114255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114231114252_)))
                                      (_tl114229114257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114231114252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114229114257_))
                                      (let ((_e114234114260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114229114257_))))
                                        (let ((_hd114233114263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114234114260_)))
                                              (_tl114232114265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114234114260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114232114265_))
                                              ((lambda (_L114268_ _L114269_)
                                                 (let ((_$e114289_
                                                        (let ((__tmp117188
                                                               (lambda (_g114284114286_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L114269_ _g114284114286_)))))
                  (declare (not safe))
                  (find __tmp117188 _ids114220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e114289_
                                                       _$e114289_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L114268_
                                                          _ids114220_)))))
                                               _hd114233114263_
                                               _hd114230114255_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114222114239_
                                                 _g114223114242_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114222114239_ _g114223114242_)))))
                              (let ()
                                (declare (not safe))
                                (_g114222114239_ _g114223114242_)))))
                      (let ()
                        (declare (not safe))
                        (_g114222114239_ _g114223114242_))))))
          (declare (not safe))
          (_g114221114292_ _stx114219_))))))
