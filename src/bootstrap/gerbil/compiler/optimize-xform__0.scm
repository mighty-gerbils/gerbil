(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1695292405)
  (begin
    (define gxc#&identity-expression
      (let ((__tmp22387
             (lambda ()
               (let ((_tbl22141_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#begin-annotation
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#lambda gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#case-lambda gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#let-values gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#letrec-values gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#letrec*-values
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#quote gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#quote-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#call gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#call-unchecked
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#if gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#ref gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#set! gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#struct-instance?
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#struct-direct-instance?
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#struct-ref gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22141_ '%#struct-set! gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#struct-direct-ref
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#struct-direct-set!
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#struct-unchecked-ref
                    gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22141_
                    '%#struct-unchecked-set!
                    gxc#xform-identity))
                 _tbl22141_))))
        (declare (not safe))
        (make-promise __tmp22387)))
    (define gxc#&identity-special-form
      (let ((__tmp22388
             (lambda ()
               (let ((_tbl22137_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#begin gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#begin-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#begin-foreign gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#module gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#import gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#export gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#provide gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#extern gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#define-values gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#define-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#define-alias gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22137_ '%#declare gxc#xform-identity))
                 _tbl22137_))))
        (declare (not safe))
        (make-promise __tmp22388)))
    (define gxc#&identity
      (let ((__tmp22389
             (lambda ()
               (let ((_tbl22133_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22390
                        (let ()
                          (declare (not safe))
                          (force gxc#&identity-special-form))))
                   (declare (not safe))
                   (hash-copy! _tbl22133_ __tmp22390))
                 (let ((__tmp22391
                        (let ()
                          (declare (not safe))
                          (force gxc#&identity-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl22133_ __tmp22391))
                 _tbl22133_))))
        (declare (not safe))
        (make-promise __tmp22389)))
    (define gxc#&basic-xform-expression
      (let ((__tmp22392
             (lambda ()
               (let ((_tbl22129_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#begin-annotation
                    gxc#xform-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#lambda gxc#xform-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#case-lambda
                    gxc#xform-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#let-values gxc#xform-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#letrec-values
                    gxc#xform-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#letrec*-values
                    gxc#xform-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#quote gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#quote-syntax gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#call gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#call-unchecked
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#if gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#ref gxc#xform-identity))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#set! gxc#xform-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#struct-instance?
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#struct-direct-instance?
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#struct-ref gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22129_ '%#struct-set! gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#struct-direct-ref
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#struct-direct-set!
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#struct-unchecked-ref
                    gxc#xform-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22129_
                    '%#struct-unchecked-set!
                    gxc#xform-operands))
                 _tbl22129_))))
        (declare (not safe))
        (make-promise __tmp22392)))
    (define gxc#&basic-xform
      (let ((__tmp22393
             (lambda ()
               (let ((_tbl22125_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22394
                        (let ()
                          (declare (not safe))
                          (force gxc#&basic-xform-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl22125_ __tmp22394))
                 (let ((__tmp22395
                        (let () (declare (not safe)) (force gxc#&identity))))
                   (declare (not safe))
                   (hash-copy! _tbl22125_ __tmp22395))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22125_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22125_
                    '%#begin-syntax
                    gxc#xform-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22125_ '%#module gxc#xform-module%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22125_
                    '%#define-values
                    gxc#xform-define-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22125_
                    '%#define-syntax
                    gxc#xform-define-syntax%))
                 _tbl22125_))))
        (declare (not safe))
        (make-promise __tmp22393)))
    (define gxc#&collect-mutators
      (let ((__tmp22396
             (lambda ()
               (let ((_tbl22121_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22397
                        (let () (declare (not safe)) (force gxc#&void))))
                   (declare (not safe))
                   (hash-copy! _tbl22121_ __tmp22397))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#begin-syntax
                    gxc#collect-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#begin-annotation
                    gxc#collect-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#module gxc#collect-module%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#define-values
                    gxc#collect-define-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#define-syntax
                    gxc#collect-define-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#lambda gxc#collect-body-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#case-lambda
                    gxc#collect-body-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#let-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#letrec-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#letrec*-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#call gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#call-unchecked
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#if gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#set! gxc#collect-mutators-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#struct-instance?
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#struct-direct-instance?
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#struct-ref gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22121_ '%#struct-set! gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#struct-direct-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#struct-direct-set!
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#struct-unchecked-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22121_
                    '%#struct-unchecked-set!
                    gxc#collect-operands))
                 _tbl22121_))))
        (declare (not safe))
        (make-promise __tmp22396)))
    (define gxc#apply-collect-mutators
      (lambda (_stx22114_ . _args22116_)
        (let ((__tmp22399
               (lambda () (apply gxc#compile-e _stx22114_ _args22116_)))
              (__tmp22398
               (let () (declare (not safe)) (force gxc#&collect-mutators))))
          (declare (not safe))
          (call-with-parameters
           __tmp22399
           gxc#current-compile-methods
           __tmp22398))))
    (define gxc#&collect-methods
      (let ((__tmp22400
             (lambda ()
               (let ((_tbl22111_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22401
                        (let () (declare (not safe)) (force gxc#&void))))
                   (declare (not safe))
                   (hash-copy! _tbl22111_ __tmp22401))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22111_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22111_
                    '%#begin-syntax
                    gxc#collect-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22111_ '%#module gxc#collect-module%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22111_ '%#call gxc#collect-methods-call%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22111_
                    '%#call-unchecked
                    gxc#collect-methods-call%))
                 _tbl22111_))))
        (declare (not safe))
        (make-promise __tmp22400)))
    (define gxc#apply-collect-methods
      (lambda (_stx22104_ . _args22106_)
        (let ((__tmp22403
               (lambda () (apply gxc#compile-e _stx22104_ _args22106_)))
              (__tmp22402
               (let () (declare (not safe)) (force gxc#&collect-methods))))
          (declare (not safe))
          (call-with-parameters
           __tmp22403
           gxc#current-compile-methods
           __tmp22402))))
    (define gxc#&expression-subst
      (let ((__tmp22404
             (lambda ()
               (let ((_tbl22101_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22405
                        (let ()
                          (declare (not safe))
                          (force gxc#&basic-xform-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl22101_ __tmp22405))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22101_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22101_ '%#ref gxc#expression-subst-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22101_ '%#set! gxc#expression-subst-setq%))
                 _tbl22101_))))
        (declare (not safe))
        (make-promise __tmp22404)))
    (define gxc#apply-expression-subst
      (lambda (_stx22094_ . _args22096_)
        (let ((__tmp22407
               (lambda () (apply gxc#compile-e _stx22094_ _args22096_)))
              (__tmp22406
               (let () (declare (not safe)) (force gxc#&expression-subst))))
          (declare (not safe))
          (call-with-parameters
           __tmp22407
           gxc#current-compile-methods
           __tmp22406))))
    (define gxc#&expression-subst*
      (let ((__tmp22408
             (lambda ()
               (let ((_tbl22091_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22409
                        (let ()
                          (declare (not safe))
                          (force gxc#&expression-subst))))
                   (declare (not safe))
                   (hash-copy! _tbl22091_ __tmp22409))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22091_ '%#ref gxc#expression-subst*-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22091_ '%#set! gxc#expression-subst*-setq%))
                 _tbl22091_))))
        (declare (not safe))
        (make-promise __tmp22408)))
    (define gxc#apply-expression-subst*
      (lambda (_stx22084_ . _args22086_)
        (let ((__tmp22411
               (lambda () (apply gxc#compile-e _stx22084_ _args22086_)))
              (__tmp22410
               (let () (declare (not safe)) (force gxc#&expression-subst*))))
          (declare (not safe))
          (call-with-parameters
           __tmp22411
           gxc#current-compile-methods
           __tmp22410))))
    (define gxc#&find-expression
      (let ((__tmp22412
             (lambda ()
               (let ((_tbl22081_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22413
                        (let ()
                          (declare (not safe))
                          (force gxc#&false-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl22081_ __tmp22413))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#begin gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#begin-annotation
                    gxc#find-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#lambda gxc#find-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#case-lambda
                    gxc#find-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#let-values gxc#find-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#letrec-values
                    gxc#find-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#letrec*-values
                    gxc#find-let-values%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#call gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#call-unchecked gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#if gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#set! gxc#find-setq%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#struct-instance? gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#struct-direct-instance?
                    gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#struct-ref gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#struct-set! gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22081_ '%#struct-direct-ref gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#struct-direct-set!
                    gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#struct-unchecked-ref
                    gxc#find-body%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22081_
                    '%#struct-unchecked-set!
                    gxc#find-body%))
                 _tbl22081_))))
        (declare (not safe))
        (make-promise __tmp22412)))
    (define gxc#&find-var-refs
      (let ((__tmp22414
             (lambda ()
               (let ((_tbl22077_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22415
                        (let ()
                          (declare (not safe))
                          (force gxc#&find-expression))))
                   (declare (not safe))
                   (hash-copy! _tbl22077_ __tmp22415))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22077_ '%#ref gxc#find-var-refs-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set! _tbl22077_ '%#set! gxc#find-var-refs-setq%))
                 _tbl22077_))))
        (declare (not safe))
        (make-promise __tmp22414)))
    (define gxc#apply-find-var-refs
      (lambda (_stx22070_ . _args22072_)
        (let ((__tmp22417
               (lambda () (apply gxc#compile-e _stx22070_ _args22072_)))
              (__tmp22416
               (let () (declare (not safe)) (force gxc#&find-var-refs))))
          (declare (not safe))
          (call-with-parameters
           __tmp22417
           gxc#current-compile-methods
           __tmp22416))))
    (define gxc#&collect-runtime-refs
      (let ((__tmp22418
             (lambda ()
               (let ((_tbl22067_
                      (let () (declare (not safe)) (make-table 'test: eq?))))
                 (let ((__tmp22419
                        (let ()
                          (declare (not safe))
                          (force gxc#&collect-expression-refs))))
                   (declare (not safe))
                   (hash-copy! _tbl22067_ __tmp22419))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22067_
                    '%#ref
                    gxc#collect-runtime-refs-ref%))
                 (let ()
                   (declare (not safe))
                   (table-set!
                    _tbl22067_
                    '%#set!
                    gxc#collect-runtime-refs-setq%))
                 _tbl22067_))))
        (declare (not safe))
        (make-promise __tmp22418)))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx22060_ . _args22062_)
        (let ((__tmp22421
               (lambda () (apply gxc#compile-e _stx22060_ _args22062_)))
              (__tmp22420
               (let ()
                 (declare (not safe))
                 (force gxc#&collect-runtime-refs))))
          (declare (not safe))
          (call-with-parameters
           __tmp22421
           gxc#current-compile-methods
           __tmp22420))))
    (define gxc#xform-identity (lambda (_stx22057_ . _args22058_) _stx22057_))
    (define gxc#xform-wrap-source
      (lambda (_stx22054_ _src-stx22055_)
        (let ((__tmp22422
               (let () (declare (not safe)) (gx#stx-source _src-stx22055_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx22054_ __tmp22422))))
    (define gxc#xform-apply-compile-e
      (lambda (_args22048_)
        (lambda (_g2204922051_)
          (apply gxc#compile-e _g2204922051_ _args22048_))))
    (define gxc#xform-begin%
      (lambda (_stx22007_ . _args22008_)
        (let* ((_g2201022020_
                (lambda (_g2201122017_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2201122017_))))
               (_g2200922045_
                (lambda (_g2201122023_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2201122023_))
                      (let ((_e2201522025_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2201122023_))))
                        (let ((_hd2201422028_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2201522025_)))
                              (_tl2201322030_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2201522025_))))
                          ((lambda (_L22033_)
                             (let* ((_forms22043_
                                     (let ((__tmp22423
                                            (let ()
                                              (declare (not safe))
                                              (gxc#xform-apply-compile-e
                                               _args22008_))))
                                       (declare (not safe))
                                       (map __tmp22423 _L22033_)))
                                    (__tmp22424
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms22043_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp22424 _stx22007_)))
                           _tl2201322030_)))
                      (let ()
                        (declare (not safe))
                        (_g2201022020_ _g2201122023_))))))
          (declare (not safe))
          (_g2200922045_ _stx22007_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx21965_ . _args21966_)
        (let* ((_g2196821978_
                (lambda (_g2196921975_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2196921975_))))
               (_g2196722004_
                (lambda (_g2196921981_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2196921981_))
                      (let ((_e2197321983_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2196921981_))))
                        (let ((_hd2197221986_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2197321983_)))
                              (_tl2197121988_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2197321983_))))
                          ((lambda (_L21991_)
                             (let ((__tmp22427
                                    (lambda ()
                                      (let* ((_forms22002_
                                              (let ((__tmp22428
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args21966_))))
                                                (declare (not safe))
                                                (map __tmp22428 _L21991_)))
                                             (__tmp22429
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms22002_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp22429
                                         _stx21965_))))
                                   (__tmp22425
                                    (let ((__tmp22426
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp22426 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp22427
                                gx#current-expander-phi
                                __tmp22425)))
                           _tl2197121988_)))
                      (let ()
                        (declare (not safe))
                        (_g2196821978_ _g2196921981_))))))
          (declare (not safe))
          (_g2196722004_ _stx21965_))))
    (define gxc#xform-module%
      (lambda (_stx21902_ . _args21903_)
        (let* ((_g2190521919_
                (lambda (_g2190621916_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2190621916_))))
               (_g2190421962_
                (lambda (_g2190621922_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2190621922_))
                      (let ((_e2191121924_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2190621922_))))
                        (let ((_hd2191021927_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2191121924_)))
                              (_tl2190921929_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2191121924_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2190921929_))
                              (let ((_e2191421932_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2190921929_))))
                                (let ((_hd2191321935_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2191421932_)))
                                      (_tl2191221937_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2191421932_))))
                                  ((lambda (_L21940_ _L21941_)
                                     (let* ((_ctx21954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L21941_)))
                                            (_code21956_
                                             (##structure-ref
                                              _ctx21954_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code21959_
                                             (let ((__tmp22430
                                                    (lambda ()
                                                      (apply gxc#compile-e
                                                             _code21956_
                                                             _args21903_))))
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp22430
                                                gx#current-expander-context
                                                _ctx21954_))))
                                       (##structure-set!
                                        _ctx21954_
                                        _code21959_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp22431
                                              (let ((__tmp22432
                                                     (let ((__tmp22433
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code21959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L21941_ __tmp22433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp22432))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp22431
                                          _stx21902_))))
                                   _tl2191221937_
                                   _hd2191321935_)))
                              (let ()
                                (declare (not safe))
                                (_g2190521919_ _g2190621922_)))))
                      (let ()
                        (declare (not safe))
                        (_g2190521919_ _g2190621922_))))))
          (declare (not safe))
          (_g2190421962_ _stx21902_))))
    (define gxc#xform-define-values%
      (lambda (_stx21832_ . _args21833_)
        (let* ((_g2183521852_
                (lambda (_g2183621849_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2183621849_))))
               (_g2183421899_
                (lambda (_g2183621855_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2183621855_))
                      (let ((_e2184121857_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2183621855_))))
                        (let ((_hd2184021860_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2184121857_)))
                              (_tl2183921862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2184121857_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2183921862_))
                              (let ((_e2184421865_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2183921862_))))
                                (let ((_hd2184321868_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2184421865_)))
                                      (_tl2184221870_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2184421865_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2184221870_))
                                      (let ((_e2184721873_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2184221870_))))
                                        (let ((_hd2184621876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2184721873_)))
                                              (_tl2184521878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2184721873_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2184521878_))
                                              ((lambda (_L21881_ _L21882_)
                                                 (let* ((_expr21897_
                                                         (apply gxc#compile-e
                                                                _L21881_
                                                                _args21833_))
                                                        (__tmp22434
                                                         (let ((__tmp22435
                                                                (let ((__tmp22436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr21897_ '()))))
                          (declare (not safe))
                          (cons _L21882_ __tmp22436))))
                   (declare (not safe))
                   (cons '%#define-values __tmp22435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp22434
                                                    _stx21832_)))
                                               _hd2184621876_
                                               _hd2184321868_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2183521852_
                                                 _g2183621855_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2183521852_ _g2183621855_)))))
                              (let ()
                                (declare (not safe))
                                (_g2183521852_ _g2183621855_)))))
                      (let ()
                        (declare (not safe))
                        (_g2183521852_ _g2183621855_))))))
          (declare (not safe))
          (_g2183421899_ _stx21832_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx21761_ . _args21762_)
        (let* ((_g2176421781_
                (lambda (_g2176521778_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2176521778_))))
               (_g2176321829_
                (lambda (_g2176521784_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2176521784_))
                      (let ((_e2177021786_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2176521784_))))
                        (let ((_hd2176921789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2177021786_)))
                              (_tl2176821791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2177021786_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2176821791_))
                              (let ((_e2177321794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2176821791_))))
                                (let ((_hd2177221797_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2177321794_)))
                                      (_tl2177121799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2177321794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2177121799_))
                                      (let ((_e2177621802_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2177121799_))))
                                        (let ((_hd2177521805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2177621802_)))
                                              (_tl2177421807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2177621802_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2177421807_))
                                              ((lambda (_L21810_ _L21811_)
                                                 (let ((__tmp22439
                                                        (lambda ()
                                                          (let* ((_expr21827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (apply gxc#compile-e _L21810_ _args21762_))
                         (__tmp22440
                          (let ((__tmp22441
                                 (let ((__tmp22442
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr21827_ '()))))
                                   (declare (not safe))
                                   (cons _L21811_ __tmp22442))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp22441))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp22440 _stx21761_))))
               (__tmp22437
                (let ((__tmp22438 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp22438 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp22439
                                                    gx#current-expander-phi
                                                    __tmp22437)))
                                               _hd2177521805_
                                               _hd2177221797_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2176421781_
                                                 _g2176521784_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2176421781_ _g2176521784_)))))
                              (let ()
                                (declare (not safe))
                                (_g2176421781_ _g2176521784_)))))
                      (let ()
                        (declare (not safe))
                        (_g2176421781_ _g2176521784_))))))
          (declare (not safe))
          (_g2176321829_ _stx21761_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx21691_ . _args21692_)
        (let* ((_g2169421711_
                (lambda (_g2169521708_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2169521708_))))
               (_g2169321758_
                (lambda (_g2169521714_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2169521714_))
                      (let ((_e2170021716_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2169521714_))))
                        (let ((_hd2169921719_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2170021716_)))
                              (_tl2169821721_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2170021716_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2169821721_))
                              (let ((_e2170321724_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2169821721_))))
                                (let ((_hd2170221727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2170321724_)))
                                      (_tl2170121729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2170321724_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2170121729_))
                                      (let ((_e2170621732_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2170121729_))))
                                        (let ((_hd2170521735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2170621732_)))
                                              (_tl2170421737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2170621732_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2170421737_))
                                              ((lambda (_L21740_ _L21741_)
                                                 (let* ((_expr21756_
                                                         (apply gxc#compile-e
                                                                _L21740_
                                                                _args21692_))
                                                        (__tmp22443
                                                         (let ((__tmp22444
                                                                (let ((__tmp22445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr21756_ '()))))
                          (declare (not safe))
                          (cons _L21741_ __tmp22445))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp22444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp22443
                                                    _stx21691_)))
                                               _hd2170521735_
                                               _hd2170221727_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2169421711_
                                                 _g2169521714_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2169421711_ _g2169521714_)))))
                              (let ()
                                (declare (not safe))
                                (_g2169421711_ _g2169521714_)))))
                      (let ()
                        (declare (not safe))
                        (_g2169421711_ _g2169521714_))))))
          (declare (not safe))
          (_g2169321758_ _stx21691_))))
    (define gxc#xform-lambda%
      (lambda (_stx21634_ . _args21635_)
        (let* ((_g2163721651_
                (lambda (_g2163821648_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2163821648_))))
               (_g2163621688_
                (lambda (_g2163821654_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2163821654_))
                      (let ((_e2164321656_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2163821654_))))
                        (let ((_hd2164221659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2164321656_)))
                              (_tl2164121661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2164321656_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2164121661_))
                              (let ((_e2164621664_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2164121661_))))
                                (let ((_hd2164521667_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2164621664_)))
                                      (_tl2164421669_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2164621664_))))
                                  ((lambda (_L21672_ _L21673_)
                                     (let* ((_body21686_
                                             (let ((__tmp22446
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#xform-apply-compile-e
                                                       _args21635_))))
                                               (declare (not safe))
                                               (map __tmp22446 _L21672_)))
                                            (__tmp22447
                                             (let ((__tmp22448
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L21673_
                                                            _body21686_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp22448))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp22447
                                        _stx21634_)))
                                   _tl2164421669_
                                   _hd2164521667_)))
                              (let ()
                                (declare (not safe))
                                (_g2163721651_ _g2163821654_)))))
                      (let ()
                        (declare (not safe))
                        (_g2163721651_ _g2163821654_))))))
          (declare (not safe))
          (_g2163621688_ _stx21634_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx21547_ . _args21548_)
        (letrec ((_clause-e21550_
                  (lambda (_clause21591_)
                    (let* ((_g2159321604_
                            (lambda (_g2159421601_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2159421601_))))
                           (_g2159221631_
                            (lambda (_g2159421607_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g2159421607_))
                                  (let ((_e2159921609_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g2159421607_))))
                                    (let ((_hd2159821612_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2159921609_)))
                                          (_tl2159721614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2159921609_))))
                                      ((lambda (_L21617_ _L21618_)
                                         (let ((_body21629_
                                                (let ((__tmp22449
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#xform-apply-compile-e
                                                          _args21548_))))
                                                  (declare (not safe))
                                                  (map __tmp22449 _L21617_))))
                                           (declare (not safe))
                                           (cons _L21618_ _body21629_)))
                                       _tl2159721614_
                                       _hd2159821612_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g2159321604_ _g2159421607_))))))
                      (declare (not safe))
                      (_g2159221631_ _clause21591_)))))
          (let* ((_g2155221562_
                  (lambda (_g2155321559_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _g2155321559_))))
                 (_g2155121588_
                  (lambda (_g2155321565_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g2155321565_))
                        (let ((_e2155721567_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g2155321565_))))
                          (let ((_hd2155621570_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2155721567_)))
                                (_tl2155521572_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2155721567_))))
                            ((lambda (_L21575_)
                               (let* ((_clauses21586_
                                       (let ()
                                         (declare (not safe))
                                         (map _clause-e21550_ _L21575_)))
                                      (__tmp22450
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses21586_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp22450
                                  _stx21547_)))
                             _tl2155521572_)))
                        (let ()
                          (declare (not safe))
                          (_g2155221562_ _g2155321565_))))))
            (declare (not safe))
            (_g2155121588_ _stx21547_)))))
    (define gxc#xform-let-values%
      (lambda (_stx21341_ . _args21342_)
        (let* ((_g2134421377_
                (lambda (_g2134521374_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2134521374_))))
               (_g2134321544_
                (lambda (_g2134521380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2134521380_))
                      (let ((_e2135221382_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2134521380_))))
                        (let ((_hd2135121385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2135221382_)))
                              (_tl2135021387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2135221382_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2135021387_))
                              (let ((_e2135521390_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2135021387_))))
                                (let ((_hd2135421393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2135521390_)))
                                      (_tl2135321395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2135521390_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd2135421393_))
                                      (let ((_g22451_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd2135421393_
                                                '0))))
                                        (begin
                                          (let ((_g22452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g22451_)
                                                       (##vector-length
                                                        _g22451_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g22452_ 2)))
                                                (error "Context expects 2 values"
                                                       _g22452_)))
                                          (let ((_target2135621398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22451_ 0)))
                                                (_tl2135821400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22451_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2135821400_))
                                                (letrec ((_loop2135921403_
                                                          (lambda (_hd2135721406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2136321408_
                           _hd2136421410_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd2135721406_))
                        (let ((_e2136021413_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd2135721406_))))
                          (let ((_lp-hd2136121416_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2136021413_)))
                                (_lp-tl2136221418_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2136021413_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd2136121416_))
                                (let ((_e2136921421_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd2136121416_))))
                                  (let ((_hd2136821424_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2136921421_)))
                                        (_tl2136721426_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2136921421_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl2136721426_))
                                        (let ((_e2137221429_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl2136721426_))))
                                          (let ((_hd2137121432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2137221429_)))
                                                (_tl2137021434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2137221429_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl2137021434_))
                                                (let ((__tmp22468
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2137121432_
                                                               _expr2136321408_)))
                                                      (__tmp22467
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd2136821424_
                                                               _hd2136421410_))))
                                                  (declare (not safe))
                                                  (_loop2135921403_
                                                   _lp-tl2136221418_
                                                   __tmp22468
                                                   __tmp22467))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2134421377_
                                                   _g2134521380_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2134421377_ _g2134521380_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2134421377_ _g2134521380_)))))
                        (let ((_expr2136521437_
                               (let ()
                                 (declare (not safe))
                                 (reverse _expr2136321408_)))
                              (_hd2136621439_
                               (let ()
                                 (declare (not safe))
                                 (reverse _hd2136421410_))))
                          ((lambda (_L21442_ _L21443_ _L21444_ _L21445_)
                             (let* ((_g2146421480_
                                     (lambda (_g2146521477_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2146521477_))))
                                    (_g2146321534_
                                     (lambda (_g2146521483_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null? _g2146521483_))
                                           (let ((_g22453_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g2146521483_
                                                     '0))))
                                             (begin
                                               (let ((_g22454_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g22453_)
                                                            (##vector-length
                                                             _g22453_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g22454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g22454_)))
                                               (let ((_target2146721485_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g22453_
                                                         0)))
                                                     (_tl2146921487_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g22453_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl2146921487_))
                                                     (letrec ((_loop2147021490_
                                                               (lambda (_hd2146821493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2147421495_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd2146821493_))
                             (let ((_e2147121498_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd2146821493_))))
                               (let ((_lp-hd2147221501_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2147121498_)))
                                     (_lp-tl2147321503_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2147121498_))))
                                 (let ((__tmp22462
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2147221501_
                                                _expr2147421495_))))
                                   (declare (not safe))
                                   (_loop2147021490_
                                    _lp-tl2147321503_
                                    __tmp22462))))
                             (let ((_expr2147521506_
                                    (let ()
                                      (declare (not safe))
                                      (reverse _expr2147421495_))))
                               ((lambda (_L21509_)
                                  (let ()
                                    (let* ((_body21522_
                                            (let ((__tmp22455
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args21342_))))
                                              (declare (not safe))
                                              (map __tmp22455 _L21442_)))
                                           (__tmp22456
                                            (let ((__tmp22457
                                                   (let ((__tmp22458
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L21509_
                                                               _L21444_))
                                                            (let ((__tmp22459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2152321527_ _g2152421529_ _g2152521531_)
                             (let ((__tmp22460
                                    (let ((__tmp22461
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2152321527_ '()))))
                                      (declare (not safe))
                                      (cons _g2152421529_ __tmp22461))))
                               (declare (not safe))
                               (cons __tmp22460 _g2152521531_)))))
                      (declare (not safe))
                      (foldr2 __tmp22459 '() _L21509_ _L21444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp22458
                                                           _body21522_))))
                                              (declare (not safe))
                                              (cons _L21445_ __tmp22457))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp22456
                                       _stx21341_))))
                                _expr2147521506_))))))
               (let ()
                 (declare (not safe))
                 (_loop2147021490_ _target2146721485_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2146421480_
                                                        _g2146521483_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2146421480_ _g2146521483_)))))
                                    (__tmp22463
                                     (let ((__tmp22466
                                            (let ()
                                              (declare (not safe))
                                              (gxc#xform-apply-compile-e
                                               _args21342_)))
                                           (__tmp22464
                                            (let ((__tmp22465
                                                   (lambda (_g2153621539_
                                                            _g2153721541_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2153621539_
                                                             _g2153721541_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp22465
                                                      '()
                                                      _L21443_))))
                                       (declare (not safe))
                                       (map __tmp22466 __tmp22464))))
                               (declare (not safe))
                               (_g2146321534_ __tmp22463)))
                           _tl2135321395_
                           _expr2136521437_
                           _hd2136621439_
                           _hd2135121385_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop2135921403_
                                                     _target2135621398_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2134421377_
                                                   _g2134521380_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2134421377_ _g2134521380_)))))
                              (let ()
                                (declare (not safe))
                                (_g2134421377_ _g2134521380_)))))
                      (let ()
                        (declare (not safe))
                        (_g2134421377_ _g2134521380_))))))
          (declare (not safe))
          (_g2134321544_ _stx21341_))))
    (define gxc#xform-operands
      (lambda (_stx21297_ . _args21298_)
        (let* ((_g2130021311_
                (lambda (_g2130121308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2130121308_))))
               (_g2129921338_
                (lambda (_g2130121314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2130121314_))
                      (let ((_e2130621316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2130121314_))))
                        (let ((_hd2130521319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2130621316_)))
                              (_tl2130421321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2130621316_))))
                          ((lambda (_L21324_ _L21325_)
                             (let* ((_rands21336_
                                     (let ((__tmp22469
                                            (let ()
                                              (declare (not safe))
                                              (gxc#xform-apply-compile-e
                                               _args21298_))))
                                       (declare (not safe))
                                       (map __tmp22469 _L21324_)))
                                    (__tmp22470
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21325_ _rands21336_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp22470 _stx21297_)))
                           _tl2130421321_
                           _hd2130521319_)))
                      (let ()
                        (declare (not safe))
                        (_g2130021311_ _g2130121314_))))))
          (declare (not safe))
          (_g2129921338_ _stx21297_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx21227_ . _args21228_)
        (let* ((_g2123021247_
                (lambda (_g2123121244_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2123121244_))))
               (_g2122921294_
                (lambda (_g2123121250_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2123121250_))
                      (let ((_e2123621252_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2123121250_))))
                        (let ((_hd2123521255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2123621252_)))
                              (_tl2123421257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2123621252_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2123421257_))
                              (let ((_e2123921260_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2123421257_))))
                                (let ((_hd2123821263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2123921260_)))
                                      (_tl2123721265_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2123921260_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2123721265_))
                                      (let ((_e2124221268_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2123721265_))))
                                        (let ((_hd2124121271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2124221268_)))
                                              (_tl2124021273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2124221268_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2124021273_))
                                              ((lambda (_L21276_ _L21277_)
                                                 (let* ((_expr21292_
                                                         (apply gxc#compile-e
                                                                _L21276_
                                                                _args21228_))
                                                        (__tmp22471
                                                         (let ((__tmp22472
                                                                (let ((__tmp22473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _expr21292_ '()))))
                          (declare (not safe))
                          (cons _L21277_ __tmp22473))))
                   (declare (not safe))
                   (cons '%#set! __tmp22472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp22471
                                                    _stx21227_)))
                                               _hd2124121271_
                                               _hd2123821263_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2123021247_
                                                 _g2123121250_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2123021247_ _g2123121250_)))))
                              (let ()
                                (declare (not safe))
                                (_g2123021247_ _g2123121250_)))))
                      (let ()
                        (declare (not safe))
                        (_g2123021247_ _g2123121250_))))))
          (declare (not safe))
          (_g2122921294_ _stx21227_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx21158_)
        (let* ((_g2116021177_
                (lambda (_g2116121174_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2116121174_))))
               (_g2115921224_
                (lambda (_g2116121180_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2116121180_))
                      (let ((_e2116621182_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2116121180_))))
                        (let ((_hd2116521185_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2116621182_)))
                              (_tl2116421187_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2116621182_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2116421187_))
                              (let ((_e2116921190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2116421187_))))
                                (let ((_hd2116821193_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2116921190_)))
                                      (_tl2116721195_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2116921190_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2116721195_))
                                      (let ((_e2117221198_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2116721195_))))
                                        (let ((_hd2117121201_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2117221198_)))
                                              (_tl2117021203_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2117221198_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2117021203_))
                                              ((lambda (_L21206_ _L21207_)
                                                 (let ((_sym21222_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L21207_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym21222_))
                                                   (let ((__tmp22474
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (table-set!
                                                      __tmp22474
                                                      _sym21222_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L21206_))))
                                               _hd2117121201_
                                               _hd2116821193_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2116021177_
                                                 _g2116121180_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2116021177_ _g2116121180_)))))
                              (let ()
                                (declare (not safe))
                                (_g2116021177_ _g2116121180_)))))
                      (let ()
                        (declare (not safe))
                        (_g2116021177_ _g2116121180_))))))
          (declare (not safe))
          (_g2115921224_ _stx21158_))))
    (define gxc#collect-methods-call%
      (lambda (_stx20712_)
        (let* ((___stx2214422145_ _stx20712_)
               (_g2071620818_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx2214422145_)))))
          (let ((___kont2214622147_
                 (lambda (_L21108_ _L21109_ _L21110_ _L21111_ _L21112_)
                   (let ((__tmp22475
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L21109_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp22475))))
                (___kont2214822149_
                 (lambda (_L20934_ _L20935_ _L20936_ _L20937_)
                   (let ((__tmp22476
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L20934_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp22476))))
                (___kont2215022151_ (lambda () '#!void)))
            (let ((___match2227922280_
                   (lambda (_e2072520980_
                            _hd2072420983_
                            _tl2072320985_
                            _e2072820988_
                            _hd2072720991_
                            _tl2072620993_
                            _e2073120996_
                            _hd2073020999_
                            _tl2072921001_
                            _e2073421004_
                            _hd2073321007_
                            _tl2073221009_
                            _e2073721012_
                            _hd2073621015_
                            _tl2073521017_
                            _e2074021020_
                            _hd2073921023_
                            _tl2073821025_
                            _e2074321028_
                            _hd2074221031_
                            _tl2074121033_
                            _e2074621036_
                            _hd2074521039_
                            _tl2074421041_
                            _e2074921044_
                            _hd2074821047_
                            _tl2074721049_
                            _e2075221052_
                            _hd2075121055_
                            _tl2075021057_
                            _e2075521060_
                            _hd2075421063_
                            _tl2075321065_
                            _e2075821068_
                            _hd2075721071_
                            _tl2075621073_
                            _e2076121076_
                            _hd2076021079_
                            _tl2075921081_
                            _e2076421084_
                            _hd2076321087_
                            _tl2076221089_
                            _e2076721092_
                            _hd2076621095_
                            _tl2076521097_
                            _e2077021100_
                            _hd2076921103_
                            _tl2076821105_)
                     (let ((_L21108_ _hd2076921103_)
                           (_L21109_ _hd2076021079_)
                           (_L21110_ _hd2075121055_)
                           (_L21111_ _hd2074221031_)
                           (_L21112_ _hd2073321007_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L21112_ 'bind-method!))
                           (___kont2214622147_
                            _L21108_
                            _L21109_
                            _L21110_
                            _L21111_
                            _L21112_)
                           (___kont2215022151_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx2214422145_))
                  (let ((_e2072520980_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx2214422145_))))
                    (let ((_tl2072320985_
                           (let () (declare (not safe)) (##cdr _e2072520980_)))
                          (_hd2072420983_
                           (let ()
                             (declare (not safe))
                             (##car _e2072520980_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl2072320985_))
                          (let ((_e2072820988_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl2072320985_))))
                            (let ((_tl2072620993_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2072820988_)))
                                  (_hd2072720991_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2072820988_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd2072720991_))
                                  (let ((_e2073120996_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd2072720991_))))
                                    (let ((_tl2072921001_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2073120996_)))
                                          (_hd2073020999_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2073120996_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd2073020999_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd2073020999_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2072921001_))
                                                  (let ((_e2073421004_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2072921001_))))
                                                    (let ((_tl2073221009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2073421004_)))
                                                          (_hd2073321007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2073421004_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl2073221009_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl2072620993_))
                      (let ((_e2073721012_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl2072620993_))))
                        (let ((_tl2073521017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2073721012_)))
                              (_hd2073621015_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2073721012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd2073621015_))
                              (let ((_e2074021020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd2073621015_))))
                                (let ((_tl2073821025_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2074021020_)))
                                      (_hd2073921023_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2074021020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd2073921023_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd2073921023_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl2073821025_))
                                              (let ((_e2074321028_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl2073821025_))))
                                                (let ((_tl2074121033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2074321028_)))
                                                      (_hd2074221031_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2074321028_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2074121033_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl2073521017_))
                                                          (let ((_e2074621036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl2073521017_))))
                    (let ((_tl2074421041_
                           (let () (declare (not safe)) (##cdr _e2074621036_)))
                          (_hd2074521039_
                           (let ()
                             (declare (not safe))
                             (##car _e2074621036_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd2074521039_))
                          (let ((_e2074921044_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd2074521039_))))
                            (let ((_tl2074721049_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2074921044_)))
                                  (_hd2074821047_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2074921044_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd2074821047_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd2074821047_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl2074721049_))
                                          (let ((_e2075221052_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl2074721049_))))
                                            (let ((_tl2075021057_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2075221052_)))
                                                  (_hd2075121055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2075221052_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl2075021057_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl2074421041_))
                                                      (let ((_e2075521060_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl2074421041_))))
                (let ((_tl2075321065_
                       (let () (declare (not safe)) (##cdr _e2075521060_)))
                      (_hd2075421063_
                       (let () (declare (not safe)) (##car _e2075521060_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd2075421063_))
                      (let ((_e2075821068_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd2075421063_))))
                        (let ((_tl2075621073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2075821068_)))
                              (_hd2075721071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2075821068_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd2075721071_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd2075721071_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2075621073_))
                                      (let ((_e2076121076_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2075621073_))))
                                        (let ((_tl2075921081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2076121076_)))
                                              (_hd2076021079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2076121076_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2075921081_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl2075321065_))
                                                  (let ((_e2076421084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl2075321065_))))
                                                    (let ((_tl2076221089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2076421084_)))
                                                          (_hd2076321087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2076421084_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd2076321087_))
                                                          (let ((_e2076721092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd2076321087_))))
                    (let ((_tl2076521097_
                           (let () (declare (not safe)) (##cdr _e2076721092_)))
                          (_hd2076621095_
                           (let ()
                             (declare (not safe))
                             (##car _e2076721092_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd2076621095_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd2076621095_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl2076521097_))
                                  (let ((_e2077021100_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl2076521097_))))
                                    (let ((_tl2076821105_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2077021100_)))
                                          (_hd2076921103_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2077021100_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl2076821105_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2076221089_))
                                              (___match2227922280_
                                               _e2072520980_
                                               _hd2072420983_
                                               _tl2072320985_
                                               _e2072820988_
                                               _hd2072720991_
                                               _tl2072620993_
                                               _e2073120996_
                                               _hd2073020999_
                                               _tl2072921001_
                                               _e2073421004_
                                               _hd2073321007_
                                               _tl2073221009_
                                               _e2073721012_
                                               _hd2073621015_
                                               _tl2073521017_
                                               _e2074021020_
                                               _hd2073921023_
                                               _tl2073821025_
                                               _e2074321028_
                                               _hd2074221031_
                                               _tl2074121033_
                                               _e2074621036_
                                               _hd2074521039_
                                               _tl2074421041_
                                               _e2074921044_
                                               _hd2074821047_
                                               _tl2074721049_
                                               _e2075221052_
                                               _hd2075121055_
                                               _tl2075021057_
                                               _e2075521060_
                                               _hd2075421063_
                                               _tl2075321065_
                                               _e2075821068_
                                               _hd2075721071_
                                               _tl2075621073_
                                               _e2076121076_
                                               _hd2076021079_
                                               _tl2075921081_
                                               _e2076421084_
                                               _hd2076321087_
                                               _tl2076221089_
                                               _e2076721092_
                                               _hd2076621095_
                                               _tl2076521097_
                                               _e2077021100_
                                               _hd2076921103_
                                               _tl2076821105_)
                                              (___kont2215022151_))
                                          (___kont2215022151_))))
                                  (___kont2215022151_))
                              (___kont2215022151_))
                          (___kont2215022151_))))
                  (___kont2215022151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl2075321065_))
                                                      (if (let ((__tmp22477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp22477 'bind-method!))
                  (let ((_L20934_ _hd2076021079_)
                        (_L20935_ _hd2075121055_)
                        (_L20936_ _hd2074221031_)
                        (_L20937_ _hd2073321007_))
                    (___kont2214822149_ _L20934_ _L20935_ _L20936_ _L20937_))
                  (___kont2215022151_))
              (___kont2215022151_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2215022151_))))
                                      (___kont2215022151_))
                                  (___kont2215022151_))
                              (___kont2215022151_))))
                      (___kont2215022151_))))
              (___kont2215022151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2215022151_))))
                                          (___kont2215022151_))
                                      (___kont2215022151_))
                                  (___kont2215022151_))))
                          (___kont2215022151_))))
                  (___kont2215022151_))
              (___kont2215022151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2215022151_))
                                          (___kont2215022151_))
                                      (___kont2215022151_))))
                              (___kont2215022151_))))
                      (___kont2215022151_))
                  (___kont2215022151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2215022151_))
                                              (___kont2215022151_))
                                          (___kont2215022151_))))
                                  (___kont2215022151_))))
                          (___kont2215022151_))))
                  (___kont2215022151_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx20659_ _id20660_ _new-id20661_)
        (let* ((_g2066320676_
                (lambda (_g2066420673_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2066420673_))))
               (_g2066220709_
                (lambda (_g2066420679_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2066420679_))
                      (let ((_e2066820681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2066420679_))))
                        (let ((_hd2066720684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2066820681_)))
                              (_tl2066620686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2066820681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2066620686_))
                              (let ((_e2067120689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2066620686_))))
                                (let ((_hd2067020692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2067120689_)))
                                      (_tl2066920694_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2067120689_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2066920694_))
                                      ((lambda (_L20697_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L20697_
                                                _id20660_))
                                             (let ((__tmp22478
                                                    (let ((__tmp22479
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id20661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp22479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp22478
                                                _stx20659_))
                                             _stx20659_))
                                       _hd2067020692_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2066320676_ _g2066420679_)))))
                              (let ()
                                (declare (not safe))
                                (_g2066320676_ _g2066420679_)))))
                      (let ()
                        (declare (not safe))
                        (_g2066320676_ _g2066420679_))))))
          (declare (not safe))
          (_g2066220709_ _stx20659_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx20600_ _subst20601_)
        (let* ((_g2060320616_
                (lambda (_g2060420613_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2060420613_))))
               (_g2060220656_
                (lambda (_g2060420619_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2060420619_))
                      (let ((_e2060820621_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2060420619_))))
                        (let ((_hd2060720624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2060820621_)))
                              (_tl2060620626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2060820621_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2060620626_))
                              (let ((_e2061120629_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2060620626_))))
                                (let ((_hd2061020632_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2061120629_)))
                                      (_tl2060920634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2061120629_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2060920634_))
                                      ((lambda (_L20637_)
                                         (let ((_$e20651_
                                                (let ((__tmp22480
                                                       (lambda (_sub20649_)
                                                         (let ((__tmp22481
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (car _sub20649_))))
                   (declare (not safe))
                   (gx#free-identifier=? _L20637_ __tmp22481)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (find __tmp22480
                                                        _subst20601_))))
                                           (if _$e20651_
                                               ((lambda (_sub20654_)
                                                  (let ((__tmp22482
                                                         (let ((__tmp22483
                                                                (let ((__tmp22484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cdr _sub20654_))))
                          (declare (not safe))
                          (cons __tmp22484 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp22483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp22482
                                                     _stx20600_)))
                                                _$e20651_)
                                               _stx20600_)))
                                       _hd2061020632_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2060320616_ _g2060420619_)))))
                              (let ()
                                (declare (not safe))
                                (_g2060320616_ _g2060420619_)))))
                      (let ()
                        (declare (not safe))
                        (_g2060320616_ _g2060420619_))))))
          (declare (not safe))
          (_g2060220656_ _stx20600_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx20528_ _id20529_ _new-id20530_)
        (let* ((_g2053220549_
                (lambda (_g2053320546_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2053320546_))))
               (_g2053120597_
                (lambda (_g2053320552_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2053320552_))
                      (let ((_e2053820554_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2053320552_))))
                        (let ((_hd2053720557_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2053820554_)))
                              (_tl2053620559_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2053820554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2053620559_))
                              (let ((_e2054120562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2053620559_))))
                                (let ((_hd2054020565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2054120562_)))
                                      (_tl2053920567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2054120562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2053920567_))
                                      (let ((_e2054420570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2053920567_))))
                                        (let ((_hd2054320573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2054420570_)))
                                              (_tl2054220575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2054420570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2054220575_))
                                              ((lambda (_L20578_ _L20579_)
                                                 (let ((_new-expr20594_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L20578_
                                                           _id20529_
                                                           _new-id20530_)))
                                                       (_new-xid20595_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L20579_
                                                               _id20529_))
                                                            _new-id20530_
                                                            _L20579_)))
                                                   (let ((__tmp22485
                                                          (let ((__tmp22486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp22487
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr20594_ '()))))
                           (declare (not safe))
                           (cons _new-xid20595_ __tmp22487))))
                    (declare (not safe))
                    (cons '%#set! __tmp22486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp22485
                                                      _stx20528_))))
                                               _hd2054320573_
                                               _hd2054020565_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2053220549_
                                                 _g2053320552_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2053220549_ _g2053320552_)))))
                              (let ()
                                (declare (not safe))
                                (_g2053220549_ _g2053320552_)))))
                      (let ()
                        (declare (not safe))
                        (_g2053220549_ _g2053320552_))))))
          (declare (not safe))
          (_g2053120597_ _stx20528_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx20452_ _subst20453_)
        (let* ((_g2045520472_
                (lambda (_g2045620469_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2045620469_))))
               (_g2045420525_
                (lambda (_g2045620475_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2045620475_))
                      (let ((_e2046120477_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2045620475_))))
                        (let ((_hd2046020480_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2046120477_)))
                              (_tl2045920482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2046120477_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2045920482_))
                              (let ((_e2046420485_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2045920482_))))
                                (let ((_hd2046320488_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2046420485_)))
                                      (_tl2046220490_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2046420485_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2046220490_))
                                      (let ((_e2046720493_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2046220490_))))
                                        (let ((_hd2046620496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2046720493_)))
                                              (_tl2046520498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2046720493_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2046520498_))
                                              ((lambda (_L20501_ _L20502_)
                                                 (let ((_new-expr20522_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e
                                                           _L20501_
                                                           _subst20453_)))
                                                       (_new-xid20523_
                                                        (let ((_$e20519_
                                                               (let ((__tmp22488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub20517_)
                                (let ((__tmp22489
                                       (let ()
                                         (declare (not safe))
                                         (car _sub20517_))))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L20502_
                                   __tmp22489)))))
                         (declare (not safe))
                         (find __tmp22488 _subst20453_))))
                  (if _$e20519_
                      (let () (declare (not safe)) (cdr _$e20519_))
                      _L20502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp22490
                                                          (let ((__tmp22491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp22492
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr20522_ '()))))
                           (declare (not safe))
                           (cons _new-xid20523_ __tmp22492))))
                    (declare (not safe))
                    (cons '%#set! __tmp22491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp22490
                                                      _stx20452_))))
                                               _hd2046620496_
                                               _hd2046320488_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2045520472_
                                                 _g2045620475_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2045520472_ _g2045620475_)))))
                              (let ()
                                (declare (not safe))
                                (_g2045520472_ _g2045620475_)))))
                      (let ()
                        (declare (not safe))
                        (_g2045520472_ _g2045620475_))))))
          (declare (not safe))
          (_g2045420525_ _stx20452_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx20398_ _ht20399_)
        (let* ((_g2040120414_
                (lambda (_g2040220411_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2040220411_))))
               (_g2040020449_
                (lambda (_g2040220417_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2040220417_))
                      (let ((_e2040620419_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2040220417_))))
                        (let ((_hd2040520422_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2040620419_)))
                              (_tl2040420424_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2040620419_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2040420424_))
                              (let ((_e2040920427_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2040420424_))))
                                (let ((_hd2040820430_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2040920427_)))
                                      (_tl2040720432_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2040920427_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl2040720432_))
                                      ((lambda (_L20435_)
                                         (let ((_eid20447_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L20435_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht20399_
                                            _eid20447_
                                            1+
                                            '0)))
                                       _hd2040820430_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2040120414_ _g2040220417_)))))
                              (let ()
                                (declare (not safe))
                                (_g2040120414_ _g2040220417_)))))
                      (let ()
                        (declare (not safe))
                        (_g2040120414_ _g2040220417_))))))
          (declare (not safe))
          (_g2040020449_ _stx20398_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx20328_ _ht20329_)
        (let* ((_g2033120348_
                (lambda (_g2033220345_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2033220345_))))
               (_g2033020395_
                (lambda (_g2033220351_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2033220351_))
                      (let ((_e2033720353_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2033220351_))))
                        (let ((_hd2033620356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2033720353_)))
                              (_tl2033520358_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2033720353_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2033520358_))
                              (let ((_e2034020361_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2033520358_))))
                                (let ((_hd2033920364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2034020361_)))
                                      (_tl2033820366_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2034020361_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2033820366_))
                                      (let ((_e2034320369_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2033820366_))))
                                        (let ((_hd2034220372_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2034320369_)))
                                              (_tl2034120374_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2034320369_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2034120374_))
                                              ((lambda (_L20377_ _L20378_)
                                                 (let ((_eid20393_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L20378_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht20329_
                                                      _eid20393_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e
                                                      _L20377_
                                                      _ht20329_))))
                                               _hd2034220372_
                                               _hd2033920364_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2033120348_
                                                 _g2033220351_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2033120348_ _g2033220351_)))))
                              (let ()
                                (declare (not safe))
                                (_g2033120348_ _g2033220351_)))))
                      (let ()
                        (declare (not safe))
                        (_g2033120348_ _g2033220351_))))))
          (declare (not safe))
          (_g2033020395_ _stx20328_))))
    (define gxc#find-body%
      (lambda (_stx20241_ _arg20242_)
        (let* ((_g2024420263_
                (lambda (_g2024520260_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2024520260_))))
               (_g2024320325_
                (lambda (_g2024520266_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2024520266_))
                      (let ((_e2024920268_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2024520266_))))
                        (let ((_hd2024820271_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2024920268_)))
                              (_tl2024720273_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2024920268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl2024720273_))
                              (let ((_g22493_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl2024720273_
                                        '0))))
                                (begin
                                  (let ((_g22494_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g22493_)
                                               (##vector-length _g22493_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g22494_ 2)))
                                        (error "Context expects 2 values"
                                               _g22494_)))
                                  (let ((_target2025020276_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g22493_ 0)))
                                        (_tl2025220278_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g22493_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2025220278_))
                                        (letrec ((_loop2025320281_
                                                  (lambda (_hd2025120284_
                                                           _expr2025720286_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd2025120284_))
                                                        (let ((_e2025420289_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd2025120284_))))
                  (let ((_lp-hd2025520292_
                         (let () (declare (not safe)) (##car _e2025420289_)))
                        (_lp-tl2025620294_
                         (let () (declare (not safe)) (##cdr _e2025420289_))))
                    (let ((__tmp22498
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd2025520292_ _expr2025720286_))))
                      (declare (not safe))
                      (_loop2025320281_ _lp-tl2025620294_ __tmp22498))))
                (let ((_expr2025820297_
                       (let ()
                         (declare (not safe))
                         (reverse _expr2025720286_))))
                  ((lambda (_L20300_)
                     (let ((__tmp22497
                            (lambda (_g2031320315_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2031320315_ _arg20242_))))
                           (__tmp22495
                            (let ((__tmp22496
                                   (lambda (_g2031720320_ _g2031820322_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2031720320_ _g2031820322_)))))
                              (declare (not safe))
                              (foldr1 __tmp22496 '() _L20300_))))
                       (declare (not safe))
                       (ormap1 __tmp22497 __tmp22495)))
                   _expr2025820297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2025320281_
                                             _target2025020276_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g2024420263_ _g2024520266_))))))
                              (let ()
                                (declare (not safe))
                                (_g2024420263_ _g2024520266_)))))
                      (let ()
                        (declare (not safe))
                        (_g2024420263_ _g2024520266_))))))
          (declare (not safe))
          (_g2024320325_ _stx20241_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx20173_ _arg20174_)
        (let* ((_g2017620193_
                (lambda (_g2017720190_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2017720190_))))
               (_g2017520238_
                (lambda (_g2017720196_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2017720196_))
                      (let ((_e2018220198_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2017720196_))))
                        (let ((_hd2018120201_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2018220198_)))
                              (_tl2018020203_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2018220198_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2018020203_))
                              (let ((_e2018520206_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2018020203_))))
                                (let ((_hd2018420209_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2018520206_)))
                                      (_tl2018320211_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2018520206_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2018320211_))
                                      (let ((_e2018820214_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2018320211_))))
                                        (let ((_hd2018720217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2018820214_)))
                                              (_tl2018620219_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2018820214_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2018620219_))
                                              ((lambda (_L20222_ _L20223_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20222_
                                                    _arg20174_)))
                                               _hd2018720217_
                                               _hd2018420209_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2017620193_
                                                 _g2017720196_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2017620193_ _g2017720196_)))))
                              (let ()
                                (declare (not safe))
                                (_g2017620193_ _g2017720196_)))))
                      (let ()
                        (declare (not safe))
                        (_g2017620193_ _g2017720196_))))))
          (declare (not safe))
          (_g2017520238_ _stx20173_))))
    (define gxc#find-lambda%
      (lambda (_stx20105_ _arg20106_)
        (let* ((_g2010820125_
                (lambda (_g2010920122_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g2010920122_))))
               (_g2010720170_
                (lambda (_g2010920128_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g2010920128_))
                      (let ((_e2011420130_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g2010920128_))))
                        (let ((_hd2011320133_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2011420130_)))
                              (_tl2011220135_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2011420130_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl2011220135_))
                              (let ((_e2011720138_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl2011220135_))))
                                (let ((_hd2011620141_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2011720138_)))
                                      (_tl2011520143_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2011720138_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl2011520143_))
                                      (let ((_e2012020146_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl2011520143_))))
                                        (let ((_hd2011920149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2012020146_)))
                                              (_tl2011820151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2012020146_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl2011820151_))
                                              ((lambda (_L20154_ _L20155_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L20154_
                                                    _arg20106_)))
                                               _hd2011920149_
                                               _hd2011620141_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2010820125_
                                                 _g2010920128_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2010820125_ _g2010920128_)))))
                              (let ()
                                (declare (not safe))
                                (_g2010820125_ _g2010920128_)))))
                      (let ()
                        (declare (not safe))
                        (_g2010820125_ _g2010920128_))))))
          (declare (not safe))
          (_g2010720170_ _stx20105_))))
    (define gxc#find-case-lambda%
      (lambda (_stx19987_ _arg19988_)
        (let* ((_g1999020018_
                (lambda (_g1999120015_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1999120015_))))
               (_g1998920102_
                (lambda (_g1999120021_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1999120021_))
                      (let ((_e1999620023_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1999120021_))))
                        (let ((_hd1999520026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1999620023_)))
                              (_tl1999420028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1999620023_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl1999420028_))
                              (let ((_g22499_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl1999420028_
                                        '0))))
                                (begin
                                  (let ((_g22500_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g22499_)
                                               (##vector-length _g22499_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g22500_ 2)))
                                        (error "Context expects 2 values"
                                               _g22500_)))
                                  (let ((_target1999720031_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g22499_ 0)))
                                        (_tl1999920033_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g22499_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl1999920033_))
                                        (letrec ((_loop2000020036_
                                                  (lambda (_hd1999820039_
                                                           _body2000420041_
                                                           _hd2000520043_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd1999820039_))
                                                        (let ((_e2000120046_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd1999820039_))))
                  (let ((_lp-hd2000220049_
                         (let () (declare (not safe)) (##car _e2000120046_)))
                        (_lp-tl2000320051_
                         (let () (declare (not safe)) (##cdr _e2000120046_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd2000220049_))
                        (let ((_e2001020054_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd2000220049_))))
                          (let ((_hd2000920057_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2001020054_)))
                                (_tl2000820059_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2001020054_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl2000820059_))
                                (let ((_e2001320062_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl2000820059_))))
                                  (let ((_hd2001220065_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2001320062_)))
                                        (_tl2001120067_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2001320062_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl2001120067_))
                                        (let ((__tmp22505
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2001220065_
                                                       _body2000420041_)))
                                              (__tmp22504
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd2000920057_
                                                       _hd2000520043_))))
                                          (declare (not safe))
                                          (_loop2000020036_
                                           _lp-tl2000320051_
                                           __tmp22505
                                           __tmp22504))
                                        (let ()
                                          (declare (not safe))
                                          (_g1999020018_ _g1999120021_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1999020018_ _g1999120021_)))))
                        (let ()
                          (declare (not safe))
                          (_g1999020018_ _g1999120021_)))))
                (let ((_body2000620070_
                       (let ()
                         (declare (not safe))
                         (reverse _body2000420041_)))
                      (_hd2000720072_
                       (let () (declare (not safe)) (reverse _hd2000520043_))))
                  ((lambda (_L20075_ _L20076_)
                     (let ((__tmp22503
                            (lambda (_g2009020092_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e _g2009020092_ _arg19988_))))
                           (__tmp22501
                            (let ((__tmp22502
                                   (lambda (_g2009420097_ _g2009520099_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2009420097_ _g2009520099_)))))
                              (declare (not safe))
                              (foldr1 __tmp22502 '() _L20075_))))
                       (declare (not safe))
                       (ormap1 __tmp22503 __tmp22501)))
                   _body2000620070_
                   _hd2000720072_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop2000020036_
                                             _target1999720031_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g1999020018_ _g1999120021_))))))
                              (let ()
                                (declare (not safe))
                                (_g1999020018_ _g1999120021_)))))
                      (let ()
                        (declare (not safe))
                        (_g1999020018_ _g1999120021_))))))
          (declare (not safe))
          (_g1998920102_ _stx19987_))))
    (define gxc#find-let-values%
      (lambda (_stx19837_ _arg19838_)
        (let* ((_g1984019875_
                (lambda (_g1984119872_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1984119872_))))
               (_g1983919984_
                (lambda (_g1984119878_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1984119878_))
                      (let ((_e1984719880_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1984119878_))))
                        (let ((_hd1984619883_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1984719880_)))
                              (_tl1984519885_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1984719880_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1984519885_))
                              (let ((_e1985019888_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1984519885_))))
                                (let ((_hd1984919891_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1985019888_)))
                                      (_tl1984819893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1985019888_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd1984919891_))
                                      (let ((_g22506_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd1984919891_
                                                '0))))
                                        (begin
                                          (let ((_g22507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g22506_)
                                                       (##vector-length
                                                        _g22506_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g22507_ 2)))
                                                (error "Context expects 2 values"
                                                       _g22507_)))
                                          (let ((_target1985119896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22506_ 0)))
                                                (_tl1985319898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g22506_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1985319898_))
                                                (letrec ((_loop1985419901_
                                                          (lambda (_hd1985219904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr1985819906_
                           _bind1985919908_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd1985219904_))
                        (let ((_e1985519911_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd1985219904_))))
                          (let ((_lp-hd1985619914_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1985519911_)))
                                (_lp-tl1985719916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1985519911_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd1985619914_))
                                (let ((_e1986419919_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd1985619914_))))
                                  (let ((_hd1986319922_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1986419919_)))
                                        (_tl1986219924_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1986419919_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl1986219924_))
                                        (let ((_e1986719927_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl1986219924_))))
                                          (let ((_hd1986619930_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1986719927_)))
                                                (_tl1986519932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1986719927_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl1986519932_))
                                                (let ((__tmp22512
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1986619930_
                                                               _expr1985819906_)))
                                                      (__tmp22511
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1986319922_
                                                               _bind1985919908_))))
                                                  (declare (not safe))
                                                  (_loop1985419901_
                                                   _lp-tl1985719916_
                                                   __tmp22512
                                                   __tmp22511))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1984019875_
                                                   _g1984119878_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1984019875_ _g1984119878_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1984019875_ _g1984119878_)))))
                        (let ((_expr1986019935_
                               (let ()
                                 (declare (not safe))
                                 (reverse _expr1985819906_)))
                              (_bind1986119937_
                               (let ()
                                 (declare (not safe))
                                 (reverse _bind1985919908_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1984819893_))
                              (let ((_e1987019940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1984819893_))))
                                (let ((_hd1986919943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1987019940_)))
                                      (_tl1986819945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1987019940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1986819945_))
                                      ((lambda (_L19948_ _L19949_ _L19950_)
                                         (let ((_$e19981_
                                                (let ((__tmp22510
                                                       (lambda (_g1996919971_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e
                                                            _g1996919971_
                                                            _arg19838_))))
                                                      (__tmp22508
                                                       (let ((__tmp22509
                                                              (lambda (_g1997319976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1997419978_)
                        (let ()
                          (declare (not safe))
                          (cons _g1997319976_ _g1997419978_)))))
                 (declare (not safe))
                 (foldr1 __tmp22509 '() _L19949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp22510
                                                          __tmp22508))))
                                           (if _$e19981_
                                               _$e19981_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e
                                                  _L19948_
                                                  _arg19838_)))))
                                       _hd1986919943_
                                       _expr1986019935_
                                       _bind1986119937_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1984019875_ _g1984119878_)))))
                              (let ()
                                (declare (not safe))
                                (_g1984019875_ _g1984119878_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop1985419901_
                                                     _target1985119896_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1984019875_
                                                   _g1984119878_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1984019875_ _g1984119878_)))))
                              (let ()
                                (declare (not safe))
                                (_g1984019875_ _g1984119878_)))))
                      (let ()
                        (declare (not safe))
                        (_g1984019875_ _g1984119878_))))))
          (declare (not safe))
          (_g1983919984_ _stx19837_))))
    (define gxc#find-setq%
      (lambda (_stx19769_ _arg19770_)
        (let* ((_g1977219789_
                (lambda (_g1977319786_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1977319786_))))
               (_g1977119834_
                (lambda (_g1977319792_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1977319792_))
                      (let ((_e1977819794_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1977319792_))))
                        (let ((_hd1977719797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1977819794_)))
                              (_tl1977619799_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1977819794_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1977619799_))
                              (let ((_e1978119802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1977619799_))))
                                (let ((_hd1978019805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1978119802_)))
                                      (_tl1977919807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1978119802_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1977919807_))
                                      (let ((_e1978419810_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1977919807_))))
                                        (let ((_hd1978319813_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1978419810_)))
                                              (_tl1978219815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1978419810_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1978219815_))
                                              ((lambda (_L19818_ _L19819_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e
                                                    _L19818_
                                                    _arg19770_)))
                                               _hd1978319813_
                                               _hd1978019805_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1977219789_
                                                 _g1977319792_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1977219789_ _g1977319792_)))))
                              (let ()
                                (declare (not safe))
                                (_g1977219789_ _g1977319792_)))))
                      (let ()
                        (declare (not safe))
                        (_g1977219789_ _g1977319792_))))))
          (declare (not safe))
          (_g1977119834_ _stx19769_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx19713_ _ids19714_)
        (let* ((_g1971619729_
                (lambda (_g1971719726_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1971719726_))))
               (_g1971519766_
                (lambda (_g1971719732_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1971719732_))
                      (let ((_e1972119734_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1971719732_))))
                        (let ((_hd1972019737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1972119734_)))
                              (_tl1971919739_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1972119734_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1971919739_))
                              (let ((_e1972419742_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1971919739_))))
                                (let ((_hd1972319745_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1972419742_)))
                                      (_tl1972219747_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1972419742_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl1972219747_))
                                      ((lambda (_L19750_)
                                         (let ((__tmp22513
                                                (lambda (_g1976119763_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L19750_
                                                     _g1976119763_)))))
                                           (declare (not safe))
                                           (find __tmp22513 _ids19714_)))
                                       _hd1972319745_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1971619729_ _g1971719732_)))))
                              (let ()
                                (declare (not safe))
                                (_g1971619729_ _g1971719732_)))))
                      (let ()
                        (declare (not safe))
                        (_g1971619729_ _g1971719732_))))))
          (declare (not safe))
          (_g1971519766_ _stx19713_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx19637_ _ids19638_)
        (let* ((_g1964019657_
                (lambda (_g1964119654_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1964119654_))))
               (_g1963919710_
                (lambda (_g1964119660_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g1964119660_))
                      (let ((_e1964619662_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g1964119660_))))
                        (let ((_hd1964519665_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1964619662_)))
                              (_tl1964419667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1964619662_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl1964419667_))
                              (let ((_e1964919670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl1964419667_))))
                                (let ((_hd1964819673_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1964919670_)))
                                      (_tl1964719675_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1964919670_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl1964719675_))
                                      (let ((_e1965219678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl1964719675_))))
                                        (let ((_hd1965119681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1965219678_)))
                                              (_tl1965019683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1965219678_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl1965019683_))
                                              ((lambda (_L19686_ _L19687_)
                                                 (let ((_$e19707_
                                                        (let ((__tmp22514
                                                               (lambda (_g1970219704_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L19687_ _g1970219704_)))))
                  (declare (not safe))
                  (find __tmp22514 _ids19638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e19707_
                                                       _$e19707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e
                                                          _L19686_
                                                          _ids19638_)))))
                                               _hd1965119681_
                                               _hd1964819673_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1964019657_
                                                 _g1964119660_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1964019657_ _g1964119660_)))))
                              (let ()
                                (declare (not safe))
                                (_g1964019657_ _g1964119660_)))))
                      (let ()
                        (declare (not safe))
                        (_g1964019657_ _g1964119660_))))))
          (declare (not safe))
          (_g1963919710_ _stx19637_))))))
