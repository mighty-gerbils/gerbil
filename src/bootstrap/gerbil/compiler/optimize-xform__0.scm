(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708451995)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl114477_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114477_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114477_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114477_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114477_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl114477_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl114473_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114473_ '%#declare gxc#xform-identity))
           _tbl114473_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl114469_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114723 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl114469_ __tmp114723))
           (let ((__tmp114724 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl114469_ __tmp114724))
           _tbl114469_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl114465_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114465_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114465_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114465_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114465_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114465_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl114465_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl114461_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114725 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl114461_ __tmp114725))
           (let ((__tmp114726 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl114461_ __tmp114726))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114461_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114461_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114461_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114461_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114461_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl114461_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl114457_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114727 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl114457_ __tmp114727))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114457_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114457_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl114457_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx114440_ . _args114442_)
        (let ((__tmp114729
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114442_)
                     (gxc#compile-e__0 _stx114440_)
                     (let ((_arg1114447_ (car _args114442_))
                           (_rest114449_ (cdr _args114442_)))
                       (if (null? _rest114449_)
                           (gxc#compile-e__1 _stx114440_ _arg1114447_)
                           (let ((_arg2114452_ (car _rest114449_))
                                 (_rest114454_ (cdr _rest114449_)))
                             (if (null? _rest114454_)
                                 (gxc#compile-e__2
                                  _stx114440_
                                  _arg1114447_
                                  _arg2114452_)
                                 (apply gxc#compile-e
                                        _stx114440_
                                        _arg1114447_
                                        _arg2114452_
                                        _rest114454_))))))))
              (__tmp114728 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp114729
           gxc#current-compile-methods
           __tmp114728))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl114437_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114730 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl114437_ __tmp114730))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114437_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114437_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114437_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114437_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114437_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl114437_))))
    (define gxc#apply-collect-methods
      (lambda (_stx114420_ . _args114422_)
        (let ((__tmp114732
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114422_)
                     (gxc#compile-e__0 _stx114420_)
                     (let ((_arg1114427_ (car _args114422_))
                           (_rest114429_ (cdr _args114422_)))
                       (if (null? _rest114429_)
                           (gxc#compile-e__1 _stx114420_ _arg1114427_)
                           (let ((_arg2114432_ (car _rest114429_))
                                 (_rest114434_ (cdr _rest114429_)))
                             (if (null? _rest114434_)
                                 (gxc#compile-e__2
                                  _stx114420_
                                  _arg1114427_
                                  _arg2114432_)
                                 (apply gxc#compile-e
                                        _stx114420_
                                        _arg1114427_
                                        _arg2114432_
                                        _rest114434_))))))))
              (__tmp114731 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp114732
           gxc#current-compile-methods
           __tmp114731))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl114417_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114733 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl114417_ __tmp114733))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114417_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114417_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114417_ '%#set! gxc#expression-subst-setq%))
           _tbl114417_))))
    (define gxc#apply-expression-subst
      (lambda (_stx114400_ . _args114402_)
        (let ((__tmp114735
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114402_)
                     (gxc#compile-e__0 _stx114400_)
                     (let ((_arg1114407_ (car _args114402_))
                           (_rest114409_ (cdr _args114402_)))
                       (if (null? _rest114409_)
                           (gxc#compile-e__1 _stx114400_ _arg1114407_)
                           (let ((_arg2114412_ (car _rest114409_))
                                 (_rest114414_ (cdr _rest114409_)))
                             (if (null? _rest114414_)
                                 (gxc#compile-e__2
                                  _stx114400_
                                  _arg1114407_
                                  _arg2114412_)
                                 (apply gxc#compile-e
                                        _stx114400_
                                        _arg1114407_
                                        _arg2114412_
                                        _rest114414_))))))))
              (__tmp114734 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp114735
           gxc#current-compile-methods
           __tmp114734))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl114397_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114736 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl114397_ __tmp114736))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114397_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114397_ '%#set! gxc#expression-subst*-setq%))
           _tbl114397_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx114380_ . _args114382_)
        (let ((__tmp114738
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114382_)
                     (gxc#compile-e__0 _stx114380_)
                     (let ((_arg1114387_ (car _args114382_))
                           (_rest114389_ (cdr _args114382_)))
                       (if (null? _rest114389_)
                           (gxc#compile-e__1 _stx114380_ _arg1114387_)
                           (let ((_arg2114392_ (car _rest114389_))
                                 (_rest114394_ (cdr _rest114389_)))
                             (if (null? _rest114394_)
                                 (gxc#compile-e__2
                                  _stx114380_
                                  _arg1114387_
                                  _arg2114392_)
                                 (apply gxc#compile-e
                                        _stx114380_
                                        _arg1114387_
                                        _arg2114392_
                                        _rest114394_))))))))
              (__tmp114737 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp114738
           gxc#current-compile-methods
           __tmp114737))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl114377_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114739 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl114377_ __tmp114739))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl114377_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114377_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl114377_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl114373_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114740 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl114373_ __tmp114740))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114373_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114373_ '%#set! gxc#find-var-refs-setq%))
           _tbl114373_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx114356_ . _args114358_)
        (let ((__tmp114742
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114358_)
                     (gxc#compile-e__0 _stx114356_)
                     (let ((_arg1114363_ (car _args114358_))
                           (_rest114365_ (cdr _args114358_)))
                       (if (null? _rest114365_)
                           (gxc#compile-e__1 _stx114356_ _arg1114363_)
                           (let ((_arg2114368_ (car _rest114365_))
                                 (_rest114370_ (cdr _rest114365_)))
                             (if (null? _rest114370_)
                                 (gxc#compile-e__2
                                  _stx114356_
                                  _arg1114363_
                                  _arg2114368_)
                                 (apply gxc#compile-e
                                        _stx114356_
                                        _arg1114363_
                                        _arg2114368_
                                        _rest114370_))))))))
              (__tmp114741 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp114742
           gxc#current-compile-methods
           __tmp114741))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl114353_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp114743 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl114353_ __tmp114743))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114353_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl114353_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl114353_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx114336_ . _args114338_)
        (let ((__tmp114745
               (lambda ()
                 (declare (not safe))
                 (if (null? _args114338_)
                     (gxc#compile-e__0 _stx114336_)
                     (let ((_arg1114343_ (car _args114338_))
                           (_rest114345_ (cdr _args114338_)))
                       (if (null? _rest114345_)
                           (gxc#compile-e__1 _stx114336_ _arg1114343_)
                           (let ((_arg2114348_ (car _rest114345_))
                                 (_rest114350_ (cdr _rest114345_)))
                             (if (null? _rest114350_)
                                 (gxc#compile-e__2
                                  _stx114336_
                                  _arg1114343_
                                  _arg2114348_)
                                 (apply gxc#compile-e
                                        _stx114336_
                                        _arg1114343_
                                        _arg2114348_
                                        _rest114350_))))))))
              (__tmp114744 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp114745
           gxc#current-compile-methods
           __tmp114744))))
    (define gxc#xform-identity
      (lambda (_stx114333_ . _args114334_) _stx114333_))
    (define gxc#xform-wrap-source
      (lambda (_stx114330_ _src-stx114331_)
        (let ((__tmp114746
               (let () (declare (not safe)) (gx#stx-source _src-stx114331_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx114330_ __tmp114746))))
    (define gxc#xform-apply-compile-e
      (lambda (_args114317_)
        (lambda (_stx114319_)
          (if (let () (declare (not safe)) (null? _args114317_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx114319_))
              (let ((_arg1114321_ (car _args114317_))
                    (_rest114323_ (cdr _args114317_)))
                (if (let () (declare (not safe)) (null? _rest114323_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx114319_ _arg1114321_))
                    (let ((_arg2114326_ (car _rest114323_))
                          (_rest114328_ (cdr _rest114323_)))
                      (if (let () (declare (not safe)) (null? _rest114328_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx114319_
                             _arg1114321_
                             _arg2114326_))
                          (apply gxc#compile-e
                                 _stx114319_
                                 _arg1114321_
                                 _arg2114326_
                                 _rest114328_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx114276_ . _args114277_)
        (let* ((_g114279114289_
                (lambda (_g114280114286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114280114286_))))
               (_g114278114314_
                (lambda (_g114280114292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114280114292_))
                      (let ((_e114282114294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114280114292_))))
                        (let ((_hd114283114297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114282114294_)))
                              (_tl114284114299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114282114294_))))
                          ((lambda (_L114302_)
                             (let* ((_forms114312_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args114277_))
                                          _L114302_))
                                    (__tmp114747
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms114312_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp114747
                                _stx114276_)))
                           _tl114284114299_)))
                      (let ()
                        (declare (not safe))
                        (_g114279114289_ _g114280114292_))))))
          (declare (not safe))
          (_g114278114314_ _stx114276_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx114234_ . _args114235_)
        (let* ((_g114237114247_
                (lambda (_g114238114244_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114238114244_))))
               (_g114236114273_
                (lambda (_g114238114250_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114238114250_))
                      (let ((_e114240114252_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114238114250_))))
                        (let ((_hd114241114255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114240114252_)))
                              (_tl114242114257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114240114252_))))
                          ((lambda (_L114260_)
                             (let ((__tmp114750
                                    (lambda ()
                                      (let* ((_forms114271_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args114235_))
                                                   _L114260_))
                                             (__tmp114751
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms114271_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp114751
                                         _stx114234_))))
                                   (__tmp114748
                                    (let ((__tmp114749
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp114749 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp114750
                                gx#current-expander-phi
                                __tmp114748)))
                           _tl114242114257_)))
                      (let ()
                        (declare (not safe))
                        (_g114237114247_ _g114238114250_))))))
          (declare (not safe))
          (_g114236114273_ _stx114234_))))
    (define gxc#xform-module%
      (lambda (_stx114162_ . _args114163_)
        (let* ((_g114165114179_
                (lambda (_g114166114176_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114166114176_))))
               (_g114164114231_
                (lambda (_g114166114182_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114166114182_))
                      (let ((_e114169114184_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114166114182_))))
                        (let ((_hd114170114187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114169114184_)))
                              (_tl114171114189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114169114184_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114171114189_))
                              (let ((_e114172114192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114171114189_))))
                                (let ((_hd114173114195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114172114192_)))
                                      (_tl114174114197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114172114192_))))
                                  ((lambda (_L114200_ _L114201_)
                                     (let* ((_ctx114214_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L114201_)))
                                            (_code114216_
                                             (##structure-ref
                                              _ctx114214_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code114228_
                                             (let ((__tmp114752
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args114163_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code114216_))
                                                          (let ((_arg1114219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args114163_))
                        (_rest114221_ (cdr _args114163_)))
                    (if (let () (declare (not safe)) (null? _rest114221_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code114216_ _arg1114219_))
                        (let ((_arg2114224_ (car _rest114221_))
                              (_rest114226_ (cdr _rest114221_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest114226_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code114216_
                                 _arg1114219_
                                 _arg2114224_))
                              (apply gxc#compile-e
                                     _code114216_
                                     _arg1114219_
                                     _arg2114224_
                                     _rest114226_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp114752
                                                gx#current-expander-context
                                                _ctx114214_))))
                                       (##structure-set!
                                        _ctx114214_
                                        _code114228_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp114753
                                              (let ((__tmp114754
                                                     (let ((__tmp114755
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code114228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L114201_ __tmp114755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp114754))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp114753
                                          _stx114162_))))
                                   _tl114174114197_
                                   _hd114173114195_)))
                              (let ()
                                (declare (not safe))
                                (_g114165114179_ _g114166114182_)))))
                      (let ()
                        (declare (not safe))
                        (_g114165114179_ _g114166114182_))))))
          (declare (not safe))
          (_g114164114231_ _stx114162_))))
    (define gxc#xform-define-values%
      (lambda (_stx114083_ . _args114084_)
        (let* ((_g114086114103_
                (lambda (_g114087114100_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114087114100_))))
               (_g114085114159_
                (lambda (_g114087114106_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114087114106_))
                      (let ((_e114090114108_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114087114106_))))
                        (let ((_hd114091114111_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114090114108_)))
                              (_tl114092114113_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114090114108_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114092114113_))
                              (let ((_e114093114116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114092114113_))))
                                (let ((_hd114094114119_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114093114116_)))
                                      (_tl114095114121_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114093114116_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114095114121_))
                                      (let ((_e114096114124_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114095114121_))))
                                        (let ((_hd114097114127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114096114124_)))
                                              (_tl114098114129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114096114124_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114098114129_))
                                              ((lambda (_L114132_ _L114133_)
                                                 (let* ((_expr114157_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args114084_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L114132_))
                     (let ((_arg1114148_ (car _args114084_))
                           (_rest114150_ (cdr _args114084_)))
                       (if (let () (declare (not safe)) (null? _rest114150_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L114132_ _arg1114148_))
                           (let ((_arg2114153_ (car _rest114150_))
                                 (_rest114155_ (cdr _rest114150_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest114155_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L114132_
                                    _arg1114148_
                                    _arg2114153_))
                                 (apply gxc#compile-e
                                        _L114132_
                                        _arg1114148_
                                        _arg2114153_
                                        _rest114155_)))))))
                (__tmp114756
                 (let ((__tmp114757
                        (let ((__tmp114758
                               (let ()
                                 (declare (not safe))
                                 (cons _expr114157_ '()))))
                          (declare (not safe))
                          (cons _L114133_ __tmp114758))))
                   (declare (not safe))
                   (cons '%#define-values __tmp114757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp114756
                                                    _stx114083_)))
                                               _hd114097114127_
                                               _hd114094114119_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114086114103_
                                                 _g114087114106_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114086114103_ _g114087114106_)))))
                              (let ()
                                (declare (not safe))
                                (_g114086114103_ _g114087114106_)))))
                      (let ()
                        (declare (not safe))
                        (_g114086114103_ _g114087114106_))))))
          (declare (not safe))
          (_g114085114159_ _stx114083_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx114003_ . _args114004_)
        (let* ((_g114006114023_
                (lambda (_g114007114020_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g114007114020_))))
               (_g114005114080_
                (lambda (_g114007114026_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g114007114026_))
                      (let ((_e114010114028_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g114007114026_))))
                        (let ((_hd114011114031_
                               (let ()
                                 (declare (not safe))
                                 (##car _e114010114028_)))
                              (_tl114012114033_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e114010114028_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl114012114033_))
                              (let ((_e114013114036_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl114012114033_))))
                                (let ((_hd114014114039_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e114013114036_)))
                                      (_tl114015114041_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e114013114036_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl114015114041_))
                                      (let ((_e114016114044_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl114015114041_))))
                                        (let ((_hd114017114047_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e114016114044_)))
                                              (_tl114018114049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e114016114044_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl114018114049_))
                                              ((lambda (_L114052_ _L114053_)
                                                 (let ((__tmp114761
                                                        (lambda ()
                                                          (let* ((_expr114078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args114004_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L114052_))
                              (let ((_arg1114069_ (car _args114004_))
                                    (_rest114071_ (cdr _args114004_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest114071_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L114052_
                                       _arg1114069_))
                                    (let ((_arg2114074_ (car _rest114071_))
                                          (_rest114076_ (cdr _rest114071_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest114076_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L114052_
                                             _arg1114069_
                                             _arg2114074_))
                                          (apply gxc#compile-e
                                                 _L114052_
                                                 _arg1114069_
                                                 _arg2114074_
                                                 _rest114076_)))))))
                         (__tmp114762
                          (let ((__tmp114763
                                 (let ((__tmp114764
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr114078_ '()))))
                                   (declare (not safe))
                                   (cons _L114053_ __tmp114764))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp114763))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp114762 _stx114003_))))
               (__tmp114759
                (let ((__tmp114760 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp114760 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp114761
                                                    gx#current-expander-phi
                                                    __tmp114759)))
                                               _hd114017114047_
                                               _hd114014114039_)
                                              (let ()
                                                (declare (not safe))
                                                (_g114006114023_
                                                 _g114007114026_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g114006114023_ _g114007114026_)))))
                              (let ()
                                (declare (not safe))
                                (_g114006114023_ _g114007114026_)))))
                      (let ()
                        (declare (not safe))
                        (_g114006114023_ _g114007114026_))))))
          (declare (not safe))
          (_g114005114080_ _stx114003_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx113924_ . _args113925_)
        (let* ((_g113927113944_
                (lambda (_g113928113941_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113928113941_))))
               (_g113926114000_
                (lambda (_g113928113947_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113928113947_))
                      (let ((_e113931113949_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113928113947_))))
                        (let ((_hd113932113952_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113931113949_)))
                              (_tl113933113954_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113931113949_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113933113954_))
                              (let ((_e113934113957_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113933113954_))))
                                (let ((_hd113935113960_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113934113957_)))
                                      (_tl113936113962_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113934113957_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl113936113962_))
                                      (let ((_e113937113965_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl113936113962_))))
                                        (let ((_hd113938113968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e113937113965_)))
                                              (_tl113939113970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e113937113965_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113939113970_))
                                              ((lambda (_L113973_ _L113974_)
                                                 (let* ((_expr113998_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args113925_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L113973_))
                     (let ((_arg1113989_ (car _args113925_))
                           (_rest113991_ (cdr _args113925_)))
                       (if (let () (declare (not safe)) (null? _rest113991_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L113973_ _arg1113989_))
                           (let ((_arg2113994_ (car _rest113991_))
                                 (_rest113996_ (cdr _rest113991_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest113996_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L113973_
                                    _arg1113989_
                                    _arg2113994_))
                                 (apply gxc#compile-e
                                        _L113973_
                                        _arg1113989_
                                        _arg2113994_
                                        _rest113996_)))))))
                (__tmp114765
                 (let ((__tmp114766
                        (let ((__tmp114767
                               (let ()
                                 (declare (not safe))
                                 (cons _expr113998_ '()))))
                          (declare (not safe))
                          (cons _L113974_ __tmp114767))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp114766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp114765
                                                    _stx113924_)))
                                               _hd113938113968_
                                               _hd113935113960_)
                                              (let ()
                                                (declare (not safe))
                                                (_g113927113944_
                                                 _g113928113947_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113927113944_ _g113928113947_)))))
                              (let ()
                                (declare (not safe))
                                (_g113927113944_ _g113928113947_)))))
                      (let ()
                        (declare (not safe))
                        (_g113927113944_ _g113928113947_))))))
          (declare (not safe))
          (_g113926114000_ _stx113924_))))
    (define gxc#xform-lambda%
      (lambda (_stx113867_ . _args113868_)
        (let* ((_g113870113884_
                (lambda (_g113871113881_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113871113881_))))
               (_g113869113921_
                (lambda (_g113871113887_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113871113887_))
                      (let ((_e113874113889_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113871113887_))))
                        (let ((_hd113875113892_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113874113889_)))
                              (_tl113876113894_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113874113889_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113876113894_))
                              (let ((_e113877113897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113876113894_))))
                                (let ((_hd113878113900_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113877113897_)))
                                      (_tl113879113902_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113877113897_))))
                                  ((lambda (_L113905_ _L113906_)
                                     (let* ((_body113919_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args113868_))
                                                  _L113905_))
                                            (__tmp114768
                                             (let ((__tmp114769
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L113906_
                                                            _body113919_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp114769))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp114768
                                        _stx113867_)))
                                   _tl113879113902_
                                   _hd113878113900_)))
                              (let ()
                                (declare (not safe))
                                (_g113870113884_ _g113871113887_)))))
                      (let ()
                        (declare (not safe))
                        (_g113870113884_ _g113871113887_))))))
          (declare (not safe))
          (_g113869113921_ _stx113867_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx113780_ . _args113781_)
        (letrec ((_clause-e113783_
                  (lambda (_clause113824_)
                    (let* ((_g113826113837_
                            (lambda (_g113827113834_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g113827113834_))))
                           (_g113825113864_
                            (lambda (_g113827113840_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g113827113840_))
                                  (let ((_e113830113842_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g113827113840_))))
                                    (let ((_hd113831113845_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e113830113842_)))
                                          (_tl113832113847_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e113830113842_))))
                                      ((lambda (_L113850_ _L113851_)
                                         (let ((_body113862_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args113781_))
                                                     _L113850_)))
                                           (declare (not safe))
                                           (cons _L113851_ _body113862_)))
                                       _tl113832113847_
                                       _hd113831113845_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g113826113837_ _g113827113840_))))))
                      (declare (not safe))
                      (_g113825113864_ _clause113824_)))))
          (let* ((_g113785113795_
                  (lambda (_g113786113792_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g113786113792_))))
                 (_g113784113821_
                  (lambda (_g113786113798_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g113786113798_))
                        (let ((_e113788113800_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g113786113798_))))
                          (let ((_hd113789113803_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e113788113800_)))
                                (_tl113790113805_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e113788113800_))))
                            ((lambda (_L113808_)
                               (let* ((_clauses113819_
                                       (map _clause-e113783_ _L113808_))
                                      (__tmp114770
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses113819_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp114770
                                  _stx113780_)))
                             _tl113790113805_)))
                        (let ()
                          (declare (not safe))
                          (_g113785113795_ _g113786113798_))))))
            (declare (not safe))
            (_g113784113821_ _stx113780_)))))
    (define gxc#xform-let-values%
      (lambda (_stx113574_ . _args113575_)
        (let* ((_g113577113610_
                (lambda (_g113578113607_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113578113607_))))
               (_g113576113777_
                (lambda (_g113578113613_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113578113613_))
                      (let ((_e113583113615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113578113613_))))
                        (let ((_hd113584113618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113583113615_)))
                              (_tl113585113620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113583113615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113585113620_))
                              (let ((_e113586113623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113585113620_))))
                                (let ((_hd113587113626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113586113623_)))
                                      (_tl113588113628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113586113623_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd113587113626_))
                                      (let ((_g114771_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd113587113626_
                                                '0))))
                                        (begin
                                          (let ((_g114772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g114771_)
                                                       (##vector-length
                                                        _g114771_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g114772_ 2)))
                                                (error "Context expects 2 values"
                                                       _g114772_)))
                                          (let ((_target113589113631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g114771_ 0)))
                                                (_tl113591113633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g114771_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl113591113633_))
                                                (letrec ((_loop113592113636_
                                                          (lambda (_hd113590113639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr113596113641_
                           _hd113597113643_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd113590113639_))
                        (let ((_e113593113646_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd113590113639_))))
                          (let ((_lp-hd113594113649_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e113593113646_)))
                                (_lp-tl113595113651_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e113593113646_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd113594113649_))
                                (let ((_e113600113654_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd113594113649_))))
                                  (let ((_hd113601113657_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e113600113654_)))
                                        (_tl113602113659_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e113600113654_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl113602113659_))
                                        (let ((_e113603113662_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl113602113659_))))
                                          (let ((_hd113604113665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e113603113662_)))
                                                (_tl113605113667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e113603113662_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl113605113667_))
                                                (let ((__tmp114774
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd113604113665_
                                                               _expr113596113641_)))
                                                      (__tmp114773
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd113601113657_
                                                               _hd113597113643_))))
                                                  (declare (not safe))
                                                  (_loop113592113636_
                                                   _lp-tl113595113651_
                                                   __tmp114774
                                                   __tmp114773))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g113577113610_
                                                   _g113578113613_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g113577113610_ _g113578113613_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g113577113610_ _g113578113613_)))))
                        (let ((_expr113598113670_ (reverse _expr113596113641_))
                              (_hd113599113672_ (reverse _hd113597113643_)))
                          ((lambda (_L113675_ _L113676_ _L113677_ _L113678_)
                             (let* ((_g113697113713_
                                     (lambda (_g113698113710_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g113698113710_))))
                                    (_g113696113767_
                                     (lambda (_g113698113716_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g113698113716_))
                                           (let ((_g114775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g113698113716_
                                                     '0))))
                                             (begin
                                               (let ((_g114776_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g114775_)
                                                            (##vector-length
                                                             _g114775_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g114776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g114776_)))
                                               (let ((_target113700113718_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g114775_
                                                         0)))
                                                     (_tl113702113720_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g114775_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl113702113720_))
                                                     (letrec ((_loop113703113723_
                                                               (lambda (_hd113701113726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr113707113728_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd113701113726_))
                             (let ((_e113704113731_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd113701113726_))))
                               (let ((_lp-hd113705113734_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e113704113731_)))
                                     (_lp-tl113706113736_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e113704113731_))))
                                 (let ((__tmp114777
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd113705113734_
                                                _expr113707113728_))))
                                   (declare (not safe))
                                   (_loop113703113723_
                                    _lp-tl113706113736_
                                    __tmp114777))))
                             (let ((_expr113708113739_
                                    (reverse _expr113707113728_)))
                               ((lambda (_L113742_)
                                  (let ()
                                    (let* ((_body113755_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args113575_))
                                                 _L113675_))
                                           (__tmp114778
                                            (let ((__tmp114779
                                                   (let ((__tmp114780
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L113742_
                                                               _L113677_))
                                                            (let ((__tmp114781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g113756113760_
                                    _g113757113762_
                                    _g113758113764_)
                             (let ((__tmp114782
                                    (let ((__tmp114783
                                           (let ()
                                             (declare (not safe))
                                             (cons _g113756113760_ '()))))
                                      (declare (not safe))
                                      (cons _g113757113762_ __tmp114783))))
                               (declare (not safe))
                               (cons __tmp114782 _g113758113764_)))))
                      (declare (not safe))
                      (foldr2 __tmp114781 '() _L113742_ _L113677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114780
                                                           _body113755_))))
                                              (declare (not safe))
                                              (cons _L113678_ __tmp114779))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp114778
                                       _stx113574_))))
                                _expr113708113739_))))))
               (let ()
                 (declare (not safe))
                 (_loop113703113723_ _target113700113718_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g113697113713_
                                                        _g113698113716_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g113697113713_
                                              _g113698113716_)))))
                                    (__tmp114784
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args113575_))
                                          (let ((__tmp114785
                                                 (lambda (_g113769113772_
                                                          _g113770113774_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g113769113772_
                                                           _g113770113774_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp114785
                                                    '()
                                                    _L113676_)))))
                               (declare (not safe))
                               (_g113696113767_ __tmp114784)))
                           _tl113588113628_
                           _expr113598113670_
                           _hd113599113672_
                           _hd113584113618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop113592113636_
                                                     _target113589113631_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g113577113610_
                                                   _g113578113613_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113577113610_ _g113578113613_)))))
                              (let ()
                                (declare (not safe))
                                (_g113577113610_ _g113578113613_)))))
                      (let ()
                        (declare (not safe))
                        (_g113577113610_ _g113578113613_))))))
          (declare (not safe))
          (_g113576113777_ _stx113574_))))
    (define gxc#xform-operands
      (lambda (_stx113530_ . _args113531_)
        (let* ((_g113533113544_
                (lambda (_g113534113541_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113534113541_))))
               (_g113532113571_
                (lambda (_g113534113547_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113534113547_))
                      (let ((_e113537113549_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113534113547_))))
                        (let ((_hd113538113552_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113537113549_)))
                              (_tl113539113554_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113537113549_))))
                          ((lambda (_L113557_ _L113558_)
                             (let* ((_rands113569_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args113531_))
                                          _L113557_))
                                    (__tmp114786
                                     (let ()
                                       (declare (not safe))
                                       (cons _L113558_ _rands113569_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp114786
                                _stx113530_)))
                           _tl113539113554_
                           _hd113538113552_)))
                      (let ()
                        (declare (not safe))
                        (_g113533113544_ _g113534113547_))))))
          (declare (not safe))
          (_g113532113571_ _stx113530_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx113451_ . _args113452_)
        (let* ((_g113454113471_
                (lambda (_g113455113468_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113455113468_))))
               (_g113453113527_
                (lambda (_g113455113474_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113455113474_))
                      (let ((_e113458113476_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113455113474_))))
                        (let ((_hd113459113479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113458113476_)))
                              (_tl113460113481_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113458113476_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113460113481_))
                              (let ((_e113461113484_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113460113481_))))
                                (let ((_hd113462113487_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113461113484_)))
                                      (_tl113463113489_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113461113484_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl113463113489_))
                                      (let ((_e113464113492_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl113463113489_))))
                                        (let ((_hd113465113495_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e113464113492_)))
                                              (_tl113466113497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e113464113492_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113466113497_))
                                              ((lambda (_L113500_ _L113501_)
                                                 (let* ((_expr113525_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args113452_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L113500_))
                     (let ((_arg1113516_ (car _args113452_))
                           (_rest113518_ (cdr _args113452_)))
                       (if (let () (declare (not safe)) (null? _rest113518_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L113500_ _arg1113516_))
                           (let ((_arg2113521_ (car _rest113518_))
                                 (_rest113523_ (cdr _rest113518_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest113523_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L113500_
                                    _arg1113516_
                                    _arg2113521_))
                                 (apply gxc#compile-e
                                        _L113500_
                                        _arg1113516_
                                        _arg2113521_
                                        _rest113523_)))))))
                (__tmp114787
                 (let ((__tmp114788
                        (let ((__tmp114789
                               (let ()
                                 (declare (not safe))
                                 (cons _expr113525_ '()))))
                          (declare (not safe))
                          (cons _L113501_ __tmp114789))))
                   (declare (not safe))
                   (cons '%#set! __tmp114788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp114787
                                                    _stx113451_)))
                                               _hd113465113495_
                                               _hd113462113487_)
                                              (let ()
                                                (declare (not safe))
                                                (_g113454113471_
                                                 _g113455113474_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113454113471_ _g113455113474_)))))
                              (let ()
                                (declare (not safe))
                                (_g113454113471_ _g113455113474_)))))
                      (let ()
                        (declare (not safe))
                        (_g113454113471_ _g113455113474_))))))
          (declare (not safe))
          (_g113453113527_ _stx113451_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx113382_)
        (let* ((_g113384113401_
                (lambda (_g113385113398_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g113385113398_))))
               (_g113383113448_
                (lambda (_g113385113404_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g113385113404_))
                      (let ((_e113388113406_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g113385113404_))))
                        (let ((_hd113389113409_
                               (let ()
                                 (declare (not safe))
                                 (##car _e113388113406_)))
                              (_tl113390113411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e113388113406_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl113390113411_))
                              (let ((_e113391113414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl113390113411_))))
                                (let ((_hd113392113417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e113391113414_)))
                                      (_tl113393113419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e113391113414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl113393113419_))
                                      (let ((_e113394113422_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl113393113419_))))
                                        (let ((_hd113395113425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e113394113422_)))
                                              (_tl113396113427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e113394113422_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl113396113427_))
                                              ((lambda (_L113430_ _L113431_)
                                                 (let ((_sym113446_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L113431_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym113446_))
                                                   (let ((__tmp114790
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp114790
                                                      _sym113446_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L113430_))))
                                               _hd113395113425_
                                               _hd113392113417_)
                                              (let ()
                                                (declare (not safe))
                                                (_g113384113401_
                                                 _g113385113404_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g113384113401_ _g113385113404_)))))
                              (let ()
                                (declare (not safe))
                                (_g113384113401_ _g113385113404_)))))
                      (let ()
                        (declare (not safe))
                        (_g113384113401_ _g113385113404_))))))
          (declare (not safe))
          (_g113383113448_ _stx113382_))))
    (define gxc#collect-methods-call%
      (lambda (_stx112936_)
        (let* ((___stx114480114481_ _stx112936_)
               (_g112940113042_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114480114481_)))))
          (let ((___kont114482114483_
                 (lambda (_L113332_ _L113333_ _L113334_ _L113335_ _L113336_)
                   (let ((__tmp114791
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L113333_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp114791))))
                (___kont114484114485_
                 (lambda (_L113158_ _L113159_ _L113160_ _L113161_)
                   (let ((__tmp114792
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L113158_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp114792))))
                (___kont114486114487_ (lambda () '#!void)))
            (let ((___match114615114616_
                   (lambda (_e112947113204_
                            _hd112948113207_
                            _tl112949113209_
                            _e112950113212_
                            _hd112951113215_
                            _tl112952113217_
                            _e112953113220_
                            _hd112954113223_
                            _tl112955113225_
                            _e112956113228_
                            _hd112957113231_
                            _tl112958113233_
                            _e112959113236_
                            _hd112960113239_
                            _tl112961113241_
                            _e112962113244_
                            _hd112963113247_
                            _tl112964113249_
                            _e112965113252_
                            _hd112966113255_
                            _tl112967113257_
                            _e112968113260_
                            _hd112969113263_
                            _tl112970113265_
                            _e112971113268_
                            _hd112972113271_
                            _tl112973113273_
                            _e112974113276_
                            _hd112975113279_
                            _tl112976113281_
                            _e112977113284_
                            _hd112978113287_
                            _tl112979113289_
                            _e112980113292_
                            _hd112981113295_
                            _tl112982113297_
                            _e112983113300_
                            _hd112984113303_
                            _tl112985113305_
                            _e112986113308_
                            _hd112987113311_
                            _tl112988113313_
                            _e112989113316_
                            _hd112990113319_
                            _tl112991113321_
                            _e112992113324_
                            _hd112993113327_
                            _tl112994113329_)
                     (let ((_L113332_ _hd112993113327_)
                           (_L113333_ _hd112984113303_)
                           (_L113334_ _hd112975113279_)
                           (_L113335_ _hd112966113255_)
                           (_L113336_ _hd112957113231_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L113336_
                              'bind-method!))
                           (___kont114482114483_
                            _L113332_
                            _L113333_
                            _L113334_
                            _L113335_
                            _L113336_)
                           (___kont114486114487_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114480114481_))
                  (let ((_e112947113204_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114480114481_))))
                    (let ((_tl112949113209_
                           (let ()
                             (declare (not safe))
                             (##cdr _e112947113204_)))
                          (_hd112948113207_
                           (let ()
                             (declare (not safe))
                             (##car _e112947113204_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl112949113209_))
                          (let ((_e112950113212_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl112949113209_))))
                            (let ((_tl112952113217_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e112950113212_)))
                                  (_hd112951113215_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e112950113212_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd112951113215_))
                                  (let ((_e112953113220_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd112951113215_))))
                                    (let ((_tl112955113225_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e112953113220_)))
                                          (_hd112954113223_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e112953113220_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd112954113223_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd112954113223_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl112955113225_))
                                                  (let ((_e112956113228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl112955113225_))))
                                                    (let ((_tl112958113233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e112956113228_)))
                                                          (_hd112957113231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e112956113228_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl112958113233_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl112952113217_))
                      (let ((_e112959113236_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl112952113217_))))
                        (let ((_tl112961113241_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112959113236_)))
                              (_hd112960113239_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112959113236_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd112960113239_))
                              (let ((_e112962113244_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd112960113239_))))
                                (let ((_tl112964113249_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112962113244_)))
                                      (_hd112963113247_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112962113244_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd112963113247_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd112963113247_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl112964113249_))
                                              (let ((_e112965113252_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl112964113249_))))
                                                (let ((_tl112967113257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e112965113252_)))
                                                      (_hd112966113255_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e112965113252_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl112967113257_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl112961113241_))
                                                          (let ((_e112968113260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl112961113241_))))
                    (let ((_tl112970113265_
                           (let ()
                             (declare (not safe))
                             (##cdr _e112968113260_)))
                          (_hd112969113263_
                           (let ()
                             (declare (not safe))
                             (##car _e112968113260_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd112969113263_))
                          (let ((_e112971113268_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd112969113263_))))
                            (let ((_tl112973113273_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e112971113268_)))
                                  (_hd112972113271_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e112971113268_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd112972113271_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd112972113271_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl112973113273_))
                                          (let ((_e112974113276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl112973113273_))))
                                            (let ((_tl112976113281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e112974113276_)))
                                                  (_hd112975113279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e112974113276_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl112976113281_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl112970113265_))
                                                      (let ((_e112977113284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl112970113265_))))
                (let ((_tl112979113289_
                       (let () (declare (not safe)) (##cdr _e112977113284_)))
                      (_hd112978113287_
                       (let () (declare (not safe)) (##car _e112977113284_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd112978113287_))
                      (let ((_e112980113292_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd112978113287_))))
                        (let ((_tl112982113297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112980113292_)))
                              (_hd112981113295_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112980113292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd112981113295_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd112981113295_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112982113297_))
                                      (let ((_e112983113300_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112982113297_))))
                                        (let ((_tl112985113305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112983113300_)))
                                              (_hd112984113303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112983113300_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112985113305_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl112979113289_))
                                                  (let ((_e112986113308_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl112979113289_))))
                                                    (let ((_tl112988113313_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e112986113308_)))
                                                          (_hd112987113311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e112986113308_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd112987113311_))
                                                          (let ((_e112989113316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd112987113311_))))
                    (let ((_tl112991113321_
                           (let ()
                             (declare (not safe))
                             (##cdr _e112989113316_)))
                          (_hd112990113319_
                           (let ()
                             (declare (not safe))
                             (##car _e112989113316_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd112990113319_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd112990113319_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl112991113321_))
                                  (let ((_e112992113324_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl112991113321_))))
                                    (let ((_tl112994113329_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e112992113324_)))
                                          (_hd112993113327_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e112992113324_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl112994113329_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112988113313_))
                                              (___match114615114616_
                                               _e112947113204_
                                               _hd112948113207_
                                               _tl112949113209_
                                               _e112950113212_
                                               _hd112951113215_
                                               _tl112952113217_
                                               _e112953113220_
                                               _hd112954113223_
                                               _tl112955113225_
                                               _e112956113228_
                                               _hd112957113231_
                                               _tl112958113233_
                                               _e112959113236_
                                               _hd112960113239_
                                               _tl112961113241_
                                               _e112962113244_
                                               _hd112963113247_
                                               _tl112964113249_
                                               _e112965113252_
                                               _hd112966113255_
                                               _tl112967113257_
                                               _e112968113260_
                                               _hd112969113263_
                                               _tl112970113265_
                                               _e112971113268_
                                               _hd112972113271_
                                               _tl112973113273_
                                               _e112974113276_
                                               _hd112975113279_
                                               _tl112976113281_
                                               _e112977113284_
                                               _hd112978113287_
                                               _tl112979113289_
                                               _e112980113292_
                                               _hd112981113295_
                                               _tl112982113297_
                                               _e112983113300_
                                               _hd112984113303_
                                               _tl112985113305_
                                               _e112986113308_
                                               _hd112987113311_
                                               _tl112988113313_
                                               _e112989113316_
                                               _hd112990113319_
                                               _tl112991113321_
                                               _e112992113324_
                                               _hd112993113327_
                                               _tl112994113329_)
                                              (___kont114486114487_))
                                          (___kont114486114487_))))
                                  (___kont114486114487_))
                              (___kont114486114487_))
                          (___kont114486114487_))))
                  (___kont114486114487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl112979113289_))
                                                      (if (let ((__tmp114793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp114793 'bind-method!))
                  (let ((_L113158_ _hd112984113303_)
                        (_L113159_ _hd112975113279_)
                        (_L113160_ _hd112966113255_)
                        (_L113161_ _hd112957113231_))
                    (___kont114484114485_
                     _L113158_
                     _L113159_
                     _L113160_
                     _L113161_))
                  (___kont114486114487_))
              (___kont114486114487_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont114486114487_))))
                                      (___kont114486114487_))
                                  (___kont114486114487_))
                              (___kont114486114487_))))
                      (___kont114486114487_))))
              (___kont114486114487_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114486114487_))))
                                          (___kont114486114487_))
                                      (___kont114486114487_))
                                  (___kont114486114487_))))
                          (___kont114486114487_))))
                  (___kont114486114487_))
              (___kont114486114487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont114486114487_))
                                          (___kont114486114487_))
                                      (___kont114486114487_))))
                              (___kont114486114487_))))
                      (___kont114486114487_))
                  (___kont114486114487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114486114487_))
                                              (___kont114486114487_))
                                          (___kont114486114487_))))
                                  (___kont114486114487_))))
                          (___kont114486114487_))))
                  (___kont114486114487_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx112883_ _id112884_ _new-id112885_)
        (let* ((_g112887112900_
                (lambda (_g112888112897_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112888112897_))))
               (_g112886112933_
                (lambda (_g112888112903_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112888112903_))
                      (let ((_e112890112905_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112888112903_))))
                        (let ((_hd112891112908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112890112905_)))
                              (_tl112892112910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112890112905_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112892112910_))
                              (let ((_e112893112913_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112892112910_))))
                                (let ((_hd112894112916_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112893112913_)))
                                      (_tl112895112918_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112893112913_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl112895112918_))
                                      ((lambda (_L112921_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L112921_
                                                _id112884_))
                                             (let ((__tmp114794
                                                    (let ((__tmp114795
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id112885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp114795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp114794
                                                _stx112883_))
                                             _stx112883_))
                                       _hd112894112916_)
                                      (let ()
                                        (declare (not safe))
                                        (_g112887112900_ _g112888112903_)))))
                              (let ()
                                (declare (not safe))
                                (_g112887112900_ _g112888112903_)))))
                      (let ()
                        (declare (not safe))
                        (_g112887112900_ _g112888112903_))))))
          (declare (not safe))
          (_g112886112933_ _stx112883_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx112824_ _subst112825_)
        (let* ((_g112827112840_
                (lambda (_g112828112837_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112828112837_))))
               (_g112826112880_
                (lambda (_g112828112843_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112828112843_))
                      (let ((_e112830112845_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112828112843_))))
                        (let ((_hd112831112848_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112830112845_)))
                              (_tl112832112850_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112830112845_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112832112850_))
                              (let ((_e112833112853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112832112850_))))
                                (let ((_hd112834112856_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112833112853_)))
                                      (_tl112835112858_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112833112853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl112835112858_))
                                      ((lambda (_L112861_)
                                         (let ((_$e112875_
                                                (let ((__tmp114796
                                                       (lambda (_sub112873_)
                                                         (let ((__tmp114797
                                                                (car _sub112873_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L112861_
                                                            __tmp114797)))))
                                                  (declare (not safe))
                                                  (find __tmp114796
                                                        _subst112825_))))
                                           (if _$e112875_
                                               ((lambda (_sub112878_)
                                                  (let ((__tmp114798
                                                         (let ((__tmp114799
                                                                (let ((__tmp114800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub112878_)))
                          (declare (not safe))
                          (cons __tmp114800 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp114799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp114798
                                                     _stx112824_)))
                                                _$e112875_)
                                               _stx112824_)))
                                       _hd112834112856_)
                                      (let ()
                                        (declare (not safe))
                                        (_g112827112840_ _g112828112843_)))))
                              (let ()
                                (declare (not safe))
                                (_g112827112840_ _g112828112843_)))))
                      (let ()
                        (declare (not safe))
                        (_g112827112840_ _g112828112843_))))))
          (declare (not safe))
          (_g112826112880_ _stx112824_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx112752_ _id112753_ _new-id112754_)
        (let* ((_g112756112773_
                (lambda (_g112757112770_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112757112770_))))
               (_g112755112821_
                (lambda (_g112757112776_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112757112776_))
                      (let ((_e112760112778_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112757112776_))))
                        (let ((_hd112761112781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112760112778_)))
                              (_tl112762112783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112760112778_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112762112783_))
                              (let ((_e112763112786_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112762112783_))))
                                (let ((_hd112764112789_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112763112786_)))
                                      (_tl112765112791_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112763112786_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112765112791_))
                                      (let ((_e112766112794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112765112791_))))
                                        (let ((_hd112767112797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112766112794_)))
                                              (_tl112768112799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112766112794_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112768112799_))
                                              ((lambda (_L112802_ _L112803_)
                                                 (let ((_new-expr112818_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L112802_
                                                           _id112753_
                                                           _new-id112754_)))
                                                       (_new-xid112819_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L112803_
                                                               _id112753_))
                                                            _new-id112754_
                                                            _L112803_)))
                                                   (let ((__tmp114801
                                                          (let ((__tmp114802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114803
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr112818_ '()))))
                           (declare (not safe))
                           (cons _new-xid112819_ __tmp114803))))
                    (declare (not safe))
                    (cons '%#set! __tmp114802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp114801
                                                      _stx112752_))))
                                               _hd112767112797_
                                               _hd112764112789_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112756112773_
                                                 _g112757112776_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112756112773_ _g112757112776_)))))
                              (let ()
                                (declare (not safe))
                                (_g112756112773_ _g112757112776_)))))
                      (let ()
                        (declare (not safe))
                        (_g112756112773_ _g112757112776_))))))
          (declare (not safe))
          (_g112755112821_ _stx112752_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx112676_ _subst112677_)
        (let* ((_g112679112696_
                (lambda (_g112680112693_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112680112693_))))
               (_g112678112749_
                (lambda (_g112680112699_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112680112699_))
                      (let ((_e112683112701_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112680112699_))))
                        (let ((_hd112684112704_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112683112701_)))
                              (_tl112685112706_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112683112701_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112685112706_))
                              (let ((_e112686112709_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112685112706_))))
                                (let ((_hd112687112712_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112686112709_)))
                                      (_tl112688112714_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112686112709_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112688112714_))
                                      (let ((_e112689112717_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112688112714_))))
                                        (let ((_hd112690112720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112689112717_)))
                                              (_tl112691112722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112689112717_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112691112722_))
                                              ((lambda (_L112725_ _L112726_)
                                                 (let ((_new-expr112746_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L112725_
                                                           _subst112677_)))
                                                       (_new-xid112747_
                                                        (let ((_$e112743_
                                                               (let ((__tmp114804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub112741_)
                                (let ((__tmp114805 (car _sub112741_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L112726_
                                   __tmp114805)))))
                         (declare (not safe))
                         (find __tmp114804 _subst112677_))))
                  (if _$e112743_ (cdr _$e112743_) _L112726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp114806
                                                          (let ((__tmp114807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114808
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr112746_ '()))))
                           (declare (not safe))
                           (cons _new-xid112747_ __tmp114808))))
                    (declare (not safe))
                    (cons '%#set! __tmp114807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp114806
                                                      _stx112676_))))
                                               _hd112690112720_
                                               _hd112687112712_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112679112696_
                                                 _g112680112699_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112679112696_ _g112680112699_)))))
                              (let ()
                                (declare (not safe))
                                (_g112679112696_ _g112680112699_)))))
                      (let ()
                        (declare (not safe))
                        (_g112679112696_ _g112680112699_))))))
          (declare (not safe))
          (_g112678112749_ _stx112676_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx112622_ _ht112623_)
        (let* ((_g112625112638_
                (lambda (_g112626112635_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112626112635_))))
               (_g112624112673_
                (lambda (_g112626112641_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112626112641_))
                      (let ((_e112628112643_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112626112641_))))
                        (let ((_hd112629112646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112628112643_)))
                              (_tl112630112648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112628112643_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112630112648_))
                              (let ((_e112631112651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112630112648_))))
                                (let ((_hd112632112654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112631112651_)))
                                      (_tl112633112656_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112631112651_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl112633112656_))
                                      ((lambda (_L112659_)
                                         (let ((_eid112671_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L112659_))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            _ht112623_
                                            _eid112671_
                                            1+
                                            '0)))
                                       _hd112632112654_)
                                      (let ()
                                        (declare (not safe))
                                        (_g112625112638_ _g112626112641_)))))
                              (let ()
                                (declare (not safe))
                                (_g112625112638_ _g112626112641_)))))
                      (let ()
                        (declare (not safe))
                        (_g112625112638_ _g112626112641_))))))
          (declare (not safe))
          (_g112624112673_ _stx112622_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx112552_ _ht112553_)
        (let* ((_g112555112572_
                (lambda (_g112556112569_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112556112569_))))
               (_g112554112619_
                (lambda (_g112556112575_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112556112575_))
                      (let ((_e112559112577_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112556112575_))))
                        (let ((_hd112560112580_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112559112577_)))
                              (_tl112561112582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112559112577_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112561112582_))
                              (let ((_e112562112585_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112561112582_))))
                                (let ((_hd112563112588_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112562112585_)))
                                      (_tl112564112590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112562112585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112564112590_))
                                      (let ((_e112565112593_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112564112590_))))
                                        (let ((_hd112566112596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112565112593_)))
                                              (_tl112567112598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112565112593_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112567112598_))
                                              ((lambda (_L112601_ _L112602_)
                                                 (let ((_eid112617_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L112602_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      _ht112553_
                                                      _eid112617_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L112601_
                                                      _ht112553_))))
                                               _hd112566112596_
                                               _hd112563112588_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112555112572_
                                                 _g112556112575_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112555112572_ _g112556112575_)))))
                              (let ()
                                (declare (not safe))
                                (_g112555112572_ _g112556112575_)))))
                      (let ()
                        (declare (not safe))
                        (_g112555112572_ _g112556112575_))))))
          (declare (not safe))
          (_g112554112619_ _stx112552_))))
    (define gxc#find-body%
      (lambda (_stx112465_ _arg112466_)
        (let* ((_g112468112487_
                (lambda (_g112469112484_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112469112484_))))
               (_g112467112549_
                (lambda (_g112469112490_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112469112490_))
                      (let ((_e112471112492_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112469112490_))))
                        (let ((_hd112472112495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112471112492_)))
                              (_tl112473112497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112471112492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl112473112497_))
                              (let ((_g114809_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl112473112497_
                                        '0))))
                                (begin
                                  (let ((_g114810_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114809_)
                                               (##vector-length _g114809_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114810_ 2)))
                                        (error "Context expects 2 values"
                                               _g114810_)))
                                  (let ((_target112474112500_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114809_ 0)))
                                        (_tl112476112502_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114809_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl112476112502_))
                                        (letrec ((_loop112477112505_
                                                  (lambda (_hd112475112508_
                                                           _expr112481112510_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd112475112508_))
                                                        (let ((_e112478112513_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd112475112508_))))
                  (let ((_lp-hd112479112516_
                         (let () (declare (not safe)) (##car _e112478112513_)))
                        (_lp-tl112480112518_
                         (let ()
                           (declare (not safe))
                           (##cdr _e112478112513_))))
                    (let ((__tmp114811
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd112479112516_ _expr112481112510_))))
                      (declare (not safe))
                      (_loop112477112505_ _lp-tl112480112518_ __tmp114811))))
                (let ((_expr112482112521_ (reverse _expr112481112510_)))
                  ((lambda (_L112524_)
                     (let ((__tmp114814
                            (lambda (_g112537112539_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g112537112539_
                                 _arg112466_))))
                           (__tmp114812
                            (let ((__tmp114813
                                   (lambda (_g112541112544_ _g112542112546_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g112541112544_
                                             _g112542112546_)))))
                              (declare (not safe))
                              (foldr1 __tmp114813 '() _L112524_))))
                       (declare (not safe))
                       (ormap1 __tmp114814 __tmp114812)))
                   _expr112482112521_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop112477112505_
                                             _target112474112500_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g112468112487_
                                           _g112469112490_))))))
                              (let ()
                                (declare (not safe))
                                (_g112468112487_ _g112469112490_)))))
                      (let ()
                        (declare (not safe))
                        (_g112468112487_ _g112469112490_))))))
          (declare (not safe))
          (_g112467112549_ _stx112465_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx112397_ _arg112398_)
        (let* ((_g112400112417_
                (lambda (_g112401112414_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112401112414_))))
               (_g112399112462_
                (lambda (_g112401112420_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112401112420_))
                      (let ((_e112404112422_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112401112420_))))
                        (let ((_hd112405112425_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112404112422_)))
                              (_tl112406112427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112404112422_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112406112427_))
                              (let ((_e112407112430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112406112427_))))
                                (let ((_hd112408112433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112407112430_)))
                                      (_tl112409112435_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112407112430_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112409112435_))
                                      (let ((_e112410112438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112409112435_))))
                                        (let ((_hd112411112441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112410112438_)))
                                              (_tl112412112443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112410112438_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112412112443_))
                                              ((lambda (_L112446_ _L112447_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L112446_
                                                    _arg112398_)))
                                               _hd112411112441_
                                               _hd112408112433_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112400112417_
                                                 _g112401112420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112400112417_ _g112401112420_)))))
                              (let ()
                                (declare (not safe))
                                (_g112400112417_ _g112401112420_)))))
                      (let ()
                        (declare (not safe))
                        (_g112400112417_ _g112401112420_))))))
          (declare (not safe))
          (_g112399112462_ _stx112397_))))
    (define gxc#find-lambda%
      (lambda (_stx112329_ _arg112330_)
        (let* ((_g112332112349_
                (lambda (_g112333112346_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112333112346_))))
               (_g112331112394_
                (lambda (_g112333112352_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112333112352_))
                      (let ((_e112336112354_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112333112352_))))
                        (let ((_hd112337112357_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112336112354_)))
                              (_tl112338112359_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112336112354_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112338112359_))
                              (let ((_e112339112362_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112338112359_))))
                                (let ((_hd112340112365_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112339112362_)))
                                      (_tl112341112367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112339112362_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112341112367_))
                                      (let ((_e112342112370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112341112367_))))
                                        (let ((_hd112343112373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112342112370_)))
                                              (_tl112344112375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112342112370_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112344112375_))
                                              ((lambda (_L112378_ _L112379_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L112378_
                                                    _arg112330_)))
                                               _hd112343112373_
                                               _hd112340112365_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112332112349_
                                                 _g112333112352_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112332112349_ _g112333112352_)))))
                              (let ()
                                (declare (not safe))
                                (_g112332112349_ _g112333112352_)))))
                      (let ()
                        (declare (not safe))
                        (_g112332112349_ _g112333112352_))))))
          (declare (not safe))
          (_g112331112394_ _stx112329_))))
    (define gxc#find-case-lambda%
      (lambda (_stx112211_ _arg112212_)
        (let* ((_g112214112242_
                (lambda (_g112215112239_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112215112239_))))
               (_g112213112326_
                (lambda (_g112215112245_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112215112245_))
                      (let ((_e112218112247_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112215112245_))))
                        (let ((_hd112219112250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112218112247_)))
                              (_tl112220112252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112218112247_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl112220112252_))
                              (let ((_g114815_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl112220112252_
                                        '0))))
                                (begin
                                  (let ((_g114816_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114815_)
                                               (##vector-length _g114815_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114816_ 2)))
                                        (error "Context expects 2 values"
                                               _g114816_)))
                                  (let ((_target112221112255_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114815_ 0)))
                                        (_tl112223112257_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114815_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl112223112257_))
                                        (letrec ((_loop112224112260_
                                                  (lambda (_hd112222112263_
                                                           _body112228112265_
                                                           _hd112229112267_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd112222112263_))
                                                        (let ((_e112225112270_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd112222112263_))))
                  (let ((_lp-hd112226112273_
                         (let () (declare (not safe)) (##car _e112225112270_)))
                        (_lp-tl112227112275_
                         (let ()
                           (declare (not safe))
                           (##cdr _e112225112270_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd112226112273_))
                        (let ((_e112232112278_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd112226112273_))))
                          (let ((_hd112233112281_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112232112278_)))
                                (_tl112234112283_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112232112278_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl112234112283_))
                                (let ((_e112235112286_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl112234112283_))))
                                  (let ((_hd112236112289_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e112235112286_)))
                                        (_tl112237112291_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e112235112286_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl112237112291_))
                                        (let ((__tmp114818
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd112236112289_
                                                       _body112228112265_)))
                                              (__tmp114817
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd112233112281_
                                                       _hd112229112267_))))
                                          (declare (not safe))
                                          (_loop112224112260_
                                           _lp-tl112227112275_
                                           __tmp114818
                                           __tmp114817))
                                        (let ()
                                          (declare (not safe))
                                          (_g112214112242_ _g112215112245_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g112214112242_ _g112215112245_)))))
                        (let ()
                          (declare (not safe))
                          (_g112214112242_ _g112215112245_)))))
                (let ((_body112230112294_ (reverse _body112228112265_))
                      (_hd112231112296_ (reverse _hd112229112267_)))
                  ((lambda (_L112299_ _L112300_)
                     (let ((__tmp114821
                            (lambda (_g112314112316_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g112314112316_
                                 _arg112212_))))
                           (__tmp114819
                            (let ((__tmp114820
                                   (lambda (_g112318112321_ _g112319112323_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g112318112321_
                                             _g112319112323_)))))
                              (declare (not safe))
                              (foldr1 __tmp114820 '() _L112299_))))
                       (declare (not safe))
                       (ormap1 __tmp114821 __tmp114819)))
                   _body112230112294_
                   _hd112231112296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop112224112260_
                                             _target112221112255_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g112214112242_
                                           _g112215112245_))))))
                              (let ()
                                (declare (not safe))
                                (_g112214112242_ _g112215112245_)))))
                      (let ()
                        (declare (not safe))
                        (_g112214112242_ _g112215112245_))))))
          (declare (not safe))
          (_g112213112326_ _stx112211_))))
    (define gxc#find-let-values%
      (lambda (_stx112061_ _arg112062_)
        (let* ((_g112064112099_
                (lambda (_g112065112096_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112065112096_))))
               (_g112063112208_
                (lambda (_g112065112102_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112065112102_))
                      (let ((_e112069112104_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112065112102_))))
                        (let ((_hd112070112107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112069112104_)))
                              (_tl112071112109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112069112104_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112071112109_))
                              (let ((_e112072112112_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112071112109_))))
                                (let ((_hd112073112115_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112072112112_)))
                                      (_tl112074112117_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112072112112_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd112073112115_))
                                      (let ((_g114822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd112073112115_
                                                '0))))
                                        (begin
                                          (let ((_g114823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g114822_)
                                                       (##vector-length
                                                        _g114822_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g114823_ 2)))
                                                (error "Context expects 2 values"
                                                       _g114823_)))
                                          (let ((_target112075112120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g114822_ 0)))
                                                (_tl112077112122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g114822_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl112077112122_))
                                                (letrec ((_loop112078112125_
                                                          (lambda (_hd112076112128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr112082112130_
                           _bind112083112132_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd112076112128_))
                        (let ((_e112079112135_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd112076112128_))))
                          (let ((_lp-hd112080112138_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112079112135_)))
                                (_lp-tl112081112140_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112079112135_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd112080112138_))
                                (let ((_e112086112143_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd112080112138_))))
                                  (let ((_hd112087112146_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e112086112143_)))
                                        (_tl112088112148_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e112086112143_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl112088112148_))
                                        (let ((_e112089112151_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl112088112148_))))
                                          (let ((_hd112090112154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e112089112151_)))
                                                (_tl112091112156_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e112089112151_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl112091112156_))
                                                (let ((__tmp114825
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd112090112154_
                                                               _expr112082112130_)))
                                                      (__tmp114824
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd112087112146_
                                                               _bind112083112132_))))
                                                  (declare (not safe))
                                                  (_loop112078112125_
                                                   _lp-tl112081112140_
                                                   __tmp114825
                                                   __tmp114824))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g112064112099_
                                                   _g112065112102_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g112064112099_ _g112065112102_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g112064112099_ _g112065112102_)))))
                        (let ((_expr112084112159_ (reverse _expr112082112130_))
                              (_bind112085112161_
                               (reverse _bind112083112132_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112074112117_))
                              (let ((_e112092112164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112074112117_))))
                                (let ((_hd112093112167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112092112164_)))
                                      (_tl112094112169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112092112164_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl112094112169_))
                                      ((lambda (_L112172_ _L112173_ _L112174_)
                                         (let ((_$e112205_
                                                (let ((__tmp114828
                                                       (lambda (_g112193112195_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g112193112195_
                                                            _arg112062_))))
                                                      (__tmp114826
                                                       (let ((__tmp114827
                                                              (lambda (_g112197112200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g112198112202_)
                        (let ()
                          (declare (not safe))
                          (cons _g112197112200_ _g112198112202_)))))
                 (declare (not safe))
                 (foldr1 __tmp114827 '() _L112173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp114828
                                                          __tmp114826))))
                                           (if _$e112205_
                                               _$e112205_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L112172_
                                                  _arg112062_)))))
                                       _hd112093112167_
                                       _expr112084112159_
                                       _bind112085112161_)
                                      (let ()
                                        (declare (not safe))
                                        (_g112064112099_ _g112065112102_)))))
                              (let ()
                                (declare (not safe))
                                (_g112064112099_ _g112065112102_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop112078112125_
                                                     _target112075112120_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g112064112099_
                                                   _g112065112102_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112064112099_ _g112065112102_)))))
                              (let ()
                                (declare (not safe))
                                (_g112064112099_ _g112065112102_)))))
                      (let ()
                        (declare (not safe))
                        (_g112064112099_ _g112065112102_))))))
          (declare (not safe))
          (_g112063112208_ _stx112061_))))
    (define gxc#find-setq%
      (lambda (_stx111993_ _arg111994_)
        (let* ((_g111996112013_
                (lambda (_g111997112010_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111997112010_))))
               (_g111995112058_
                (lambda (_g111997112016_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111997112016_))
                      (let ((_e112000112018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111997112016_))))
                        (let ((_hd112001112021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112000112018_)))
                              (_tl112002112023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112000112018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112002112023_))
                              (let ((_e112003112026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112002112023_))))
                                (let ((_hd112004112029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112003112026_)))
                                      (_tl112005112031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112003112026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112005112031_))
                                      (let ((_e112006112034_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112005112031_))))
                                        (let ((_hd112007112037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112006112034_)))
                                              (_tl112008112039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112006112034_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112008112039_))
                                              ((lambda (_L112042_ _L112043_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L112042_
                                                    _arg111994_)))
                                               _hd112007112037_
                                               _hd112004112029_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111996112013_
                                                 _g111997112016_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111996112013_ _g111997112016_)))))
                              (let ()
                                (declare (not safe))
                                (_g111996112013_ _g111997112016_)))))
                      (let ()
                        (declare (not safe))
                        (_g111996112013_ _g111997112016_))))))
          (declare (not safe))
          (_g111995112058_ _stx111993_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx111937_ _ids111938_)
        (let* ((_g111940111953_
                (lambda (_g111941111950_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111941111950_))))
               (_g111939111990_
                (lambda (_g111941111956_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111941111956_))
                      (let ((_e111943111958_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111941111956_))))
                        (let ((_hd111944111961_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111943111958_)))
                              (_tl111945111963_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111943111958_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111945111963_))
                              (let ((_e111946111966_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111945111963_))))
                                (let ((_hd111947111969_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111946111966_)))
                                      (_tl111948111971_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111946111966_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl111948111971_))
                                      ((lambda (_L111974_)
                                         (let ((__tmp114829
                                                (lambda (_g111985111987_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L111974_
                                                     _g111985111987_)))))
                                           (declare (not safe))
                                           (find __tmp114829 _ids111938_)))
                                       _hd111947111969_)
                                      (let ()
                                        (declare (not safe))
                                        (_g111940111953_ _g111941111956_)))))
                              (let ()
                                (declare (not safe))
                                (_g111940111953_ _g111941111956_)))))
                      (let ()
                        (declare (not safe))
                        (_g111940111953_ _g111941111956_))))))
          (declare (not safe))
          (_g111939111990_ _stx111937_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx111861_ _ids111862_)
        (let* ((_g111864111881_
                (lambda (_g111865111878_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111865111878_))))
               (_g111863111934_
                (lambda (_g111865111884_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111865111884_))
                      (let ((_e111868111886_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111865111884_))))
                        (let ((_hd111869111889_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111868111886_)))
                              (_tl111870111891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111868111886_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111870111891_))
                              (let ((_e111871111894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111870111891_))))
                                (let ((_hd111872111897_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111871111894_)))
                                      (_tl111873111899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111871111894_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111873111899_))
                                      (let ((_e111874111902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111873111899_))))
                                        (let ((_hd111875111905_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111874111902_)))
                                              (_tl111876111907_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111874111902_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111876111907_))
                                              ((lambda (_L111910_ _L111911_)
                                                 (let ((_$e111931_
                                                        (let ((__tmp114830
                                                               (lambda (_g111926111928_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L111911_ _g111926111928_)))))
                  (declare (not safe))
                  (find __tmp114830 _ids111862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e111931_
                                                       _$e111931_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L111910_
                                                          _ids111862_)))))
                                               _hd111875111905_
                                               _hd111872111897_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111864111881_
                                                 _g111865111884_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111864111881_ _g111865111884_)))))
                              (let ()
                                (declare (not safe))
                                (_g111864111881_ _g111865111884_)))))
                      (let ()
                        (declare (not safe))
                        (_g111864111881_ _g111865111884_))))))
          (declare (not safe))
          (_g111863111934_ _stx111861_))))))
