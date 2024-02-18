(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708271952)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl231083_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231083_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231083_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231083_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231083_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl231083_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl231079_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231079_ '%#declare gxc#xform-identity))
           _tbl231079_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl231075_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235396 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl231075_ __tmp235396))
           (let ((__tmp235397 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl231075_ __tmp235397))
           _tbl231075_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl231071_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231071_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231071_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231071_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231071_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231071_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl231071_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl231067_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235398 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl231067_ __tmp235398))
           (let ((__tmp235399 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl231067_ __tmp235399))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231067_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231067_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231067_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231067_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231067_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl231067_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl231063_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235400 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl231063_ __tmp235400))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231063_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231063_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl231063_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx231046_ . _args231048_)
        (let ((__tmp235402
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231048_)
                     (gxc#compile-e__0 _stx231046_)
                     (let ((_arg1231053_ (car _args231048_))
                           (_rest231055_ (cdr _args231048_)))
                       (if (null? _rest231055_)
                           (gxc#compile-e__1 _stx231046_ _arg1231053_)
                           (let ((_arg2231058_ (car _rest231055_))
                                 (_rest231060_ (cdr _rest231055_)))
                             (if (null? _rest231060_)
                                 (gxc#compile-e__2
                                  _stx231046_
                                  _arg1231053_
                                  _arg2231058_)
                                 (apply gxc#compile-e
                                        _stx231046_
                                        _arg1231053_
                                        _arg2231058_
                                        _rest231060_))))))))
              (__tmp235401 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp235402
           gxc#current-compile-methods
           __tmp235401))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl231043_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235403 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl231043_ __tmp235403))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231043_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231043_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231043_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231043_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231043_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl231043_))))
    (define gxc#apply-collect-methods
      (lambda (_stx231026_ . _args231028_)
        (let ((__tmp235405
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231028_)
                     (gxc#compile-e__0 _stx231026_)
                     (let ((_arg1231033_ (car _args231028_))
                           (_rest231035_ (cdr _args231028_)))
                       (if (null? _rest231035_)
                           (gxc#compile-e__1 _stx231026_ _arg1231033_)
                           (let ((_arg2231038_ (car _rest231035_))
                                 (_rest231040_ (cdr _rest231035_)))
                             (if (null? _rest231040_)
                                 (gxc#compile-e__2
                                  _stx231026_
                                  _arg1231033_
                                  _arg2231038_)
                                 (apply gxc#compile-e
                                        _stx231026_
                                        _arg1231033_
                                        _arg2231038_
                                        _rest231040_))))))))
              (__tmp235404 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp235405
           gxc#current-compile-methods
           __tmp235404))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl231023_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235406 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl231023_ __tmp235406))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231023_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231023_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231023_ '%#set! gxc#expression-subst-setq%))
           _tbl231023_))))
    (define gxc#apply-expression-subst
      (lambda (_stx231006_ . _args231008_)
        (let ((__tmp235408
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231008_)
                     (gxc#compile-e__0 _stx231006_)
                     (let ((_arg1231013_ (car _args231008_))
                           (_rest231015_ (cdr _args231008_)))
                       (if (null? _rest231015_)
                           (gxc#compile-e__1 _stx231006_ _arg1231013_)
                           (let ((_arg2231018_ (car _rest231015_))
                                 (_rest231020_ (cdr _rest231015_)))
                             (if (null? _rest231020_)
                                 (gxc#compile-e__2
                                  _stx231006_
                                  _arg1231013_
                                  _arg2231018_)
                                 (apply gxc#compile-e
                                        _stx231006_
                                        _arg1231013_
                                        _arg2231018_
                                        _rest231020_))))))))
              (__tmp235407 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp235408
           gxc#current-compile-methods
           __tmp235407))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl231003_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235409 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl231003_ __tmp235409))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231003_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231003_ '%#set! gxc#expression-subst*-setq%))
           _tbl231003_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx230986_ . _args230988_)
        (let ((__tmp235411
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230988_)
                     (gxc#compile-e__0 _stx230986_)
                     (let ((_arg1230993_ (car _args230988_))
                           (_rest230995_ (cdr _args230988_)))
                       (if (null? _rest230995_)
                           (gxc#compile-e__1 _stx230986_ _arg1230993_)
                           (let ((_arg2230998_ (car _rest230995_))
                                 (_rest231000_ (cdr _rest230995_)))
                             (if (null? _rest231000_)
                                 (gxc#compile-e__2
                                  _stx230986_
                                  _arg1230993_
                                  _arg2230998_)
                                 (apply gxc#compile-e
                                        _stx230986_
                                        _arg1230993_
                                        _arg2230998_
                                        _rest231000_))))))))
              (__tmp235410 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp235411
           gxc#current-compile-methods
           __tmp235410))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl230983_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235412 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl230983_ __tmp235412))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl230983_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230983_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl230983_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl230979_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235413 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl230979_ __tmp235413))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230979_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230979_ '%#set! gxc#find-var-refs-setq%))
           _tbl230979_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx230962_ . _args230964_)
        (let ((__tmp235415
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230964_)
                     (gxc#compile-e__0 _stx230962_)
                     (let ((_arg1230969_ (car _args230964_))
                           (_rest230971_ (cdr _args230964_)))
                       (if (null? _rest230971_)
                           (gxc#compile-e__1 _stx230962_ _arg1230969_)
                           (let ((_arg2230974_ (car _rest230971_))
                                 (_rest230976_ (cdr _rest230971_)))
                             (if (null? _rest230976_)
                                 (gxc#compile-e__2
                                  _stx230962_
                                  _arg1230969_
                                  _arg2230974_)
                                 (apply gxc#compile-e
                                        _stx230962_
                                        _arg1230969_
                                        _arg2230974_
                                        _rest230976_))))))))
              (__tmp235414 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp235415
           gxc#current-compile-methods
           __tmp235414))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl230959_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp235416 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl230959_ __tmp235416))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230959_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl230959_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl230959_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx230942_ . _args230944_)
        (let ((__tmp235418
               (lambda ()
                 (declare (not safe))
                 (if (null? _args230944_)
                     (gxc#compile-e__0 _stx230942_)
                     (let ((_arg1230949_ (car _args230944_))
                           (_rest230951_ (cdr _args230944_)))
                       (if (null? _rest230951_)
                           (gxc#compile-e__1 _stx230942_ _arg1230949_)
                           (let ((_arg2230954_ (car _rest230951_))
                                 (_rest230956_ (cdr _rest230951_)))
                             (if (null? _rest230956_)
                                 (gxc#compile-e__2
                                  _stx230942_
                                  _arg1230949_
                                  _arg2230954_)
                                 (apply gxc#compile-e
                                        _stx230942_
                                        _arg1230949_
                                        _arg2230954_
                                        _rest230956_))))))))
              (__tmp235417 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp235418
           gxc#current-compile-methods
           __tmp235417))))
    (define gxc#xform-identity
      (lambda (_stx230939_ . _args230940_) _stx230939_))
    (define gxc#xform-wrap-source
      (lambda (_stx230936_ _src-stx230937_)
        (let ((__tmp235419
               (let () (declare (not safe)) (gx#stx-source _src-stx230937_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx230936_ __tmp235419))))
    (define gxc#xform-apply-compile-e
      (lambda (_args230923_)
        (lambda (_stx230925_)
          (if (let () (declare (not safe)) (null? _args230923_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx230925_))
              (let ((_arg1230927_ (car _args230923_))
                    (_rest230929_ (cdr _args230923_)))
                (if (let () (declare (not safe)) (null? _rest230929_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx230925_ _arg1230927_))
                    (let ((_arg2230932_ (car _rest230929_))
                          (_rest230934_ (cdr _rest230929_)))
                      (if (let () (declare (not safe)) (null? _rest230934_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx230925_
                             _arg1230927_
                             _arg2230932_))
                          (apply gxc#compile-e
                                 _stx230925_
                                 _arg1230927_
                                 _arg2230932_
                                 _rest230934_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx230882_ . _args230883_)
        (let* ((_g230885230895_
                (lambda (_g230886230892_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230886230892_))))
               (_g230884230920_
                (lambda (_g230886230898_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230886230898_))
                      (let ((_e230890230900_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230886230898_))))
                        (let ((_hd230889230903_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230890230900_)))
                              (_tl230888230905_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230890230900_))))
                          ((lambda (_L230908_)
                             (let* ((_forms230918_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230883_))
                                          _L230908_))
                                    (__tmp235420
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms230918_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp235420
                                _stx230882_)))
                           _tl230888230905_)))
                      (let ()
                        (declare (not safe))
                        (_g230885230895_ _g230886230898_))))))
          (declare (not safe))
          (_g230884230920_ _stx230882_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx230840_ . _args230841_)
        (let* ((_g230843230853_
                (lambda (_g230844230850_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230844230850_))))
               (_g230842230879_
                (lambda (_g230844230856_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230844230856_))
                      (let ((_e230848230858_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230844230856_))))
                        (let ((_hd230847230861_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230848230858_)))
                              (_tl230846230863_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230848230858_))))
                          ((lambda (_L230866_)
                             (let ((__tmp235423
                                    (lambda ()
                                      (let* ((_forms230877_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args230841_))
                                                   _L230866_))
                                             (__tmp235424
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms230877_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp235424
                                         _stx230840_))))
                                   (__tmp235421
                                    (let ((__tmp235422
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp235422 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp235423
                                gx#current-expander-phi
                                __tmp235421)))
                           _tl230846230863_)))
                      (let ()
                        (declare (not safe))
                        (_g230843230853_ _g230844230856_))))))
          (declare (not safe))
          (_g230842230879_ _stx230840_))))
    (define gxc#xform-module%
      (lambda (_stx230768_ . _args230769_)
        (let* ((_g230771230785_
                (lambda (_g230772230782_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230772230782_))))
               (_g230770230837_
                (lambda (_g230772230788_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230772230788_))
                      (let ((_e230777230790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230772230788_))))
                        (let ((_hd230776230793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230777230790_)))
                              (_tl230775230795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230777230790_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230775230795_))
                              (let ((_e230780230798_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230775230795_))))
                                (let ((_hd230779230801_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230780230798_)))
                                      (_tl230778230803_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230780230798_))))
                                  ((lambda (_L230806_ _L230807_)
                                     (let* ((_ctx230820_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L230807_)))
                                            (_code230822_
                                             (##structure-ref
                                              _ctx230820_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code230834_
                                             (let ((__tmp235425
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args230769_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code230822_))
                                                          (let ((_arg1230825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args230769_))
                        (_rest230827_ (cdr _args230769_)))
                    (if (let () (declare (not safe)) (null? _rest230827_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code230822_ _arg1230825_))
                        (let ((_arg2230830_ (car _rest230827_))
                              (_rest230832_ (cdr _rest230827_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest230832_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code230822_
                                 _arg1230825_
                                 _arg2230830_))
                              (apply gxc#compile-e
                                     _code230822_
                                     _arg1230825_
                                     _arg2230830_
                                     _rest230832_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp235425
                                                gx#current-expander-context
                                                _ctx230820_))))
                                       (##structure-set!
                                        _ctx230820_
                                        _code230834_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp235426
                                              (let ((__tmp235427
                                                     (let ((__tmp235428
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code230834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L230807_ __tmp235428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp235427))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp235426
                                          _stx230768_))))
                                   _tl230778230803_
                                   _hd230779230801_)))
                              (let ()
                                (declare (not safe))
                                (_g230771230785_ _g230772230788_)))))
                      (let ()
                        (declare (not safe))
                        (_g230771230785_ _g230772230788_))))))
          (declare (not safe))
          (_g230770230837_ _stx230768_))))
    (define gxc#xform-define-values%
      (lambda (_stx230689_ . _args230690_)
        (let* ((_g230692230709_
                (lambda (_g230693230706_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230693230706_))))
               (_g230691230765_
                (lambda (_g230693230712_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230693230712_))
                      (let ((_e230698230714_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230693230712_))))
                        (let ((_hd230697230717_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230698230714_)))
                              (_tl230696230719_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230698230714_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230696230719_))
                              (let ((_e230701230722_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230696230719_))))
                                (let ((_hd230700230725_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230701230722_)))
                                      (_tl230699230727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230701230722_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230699230727_))
                                      (let ((_e230704230730_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230699230727_))))
                                        (let ((_hd230703230733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230704230730_)))
                                              (_tl230702230735_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230704230730_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230702230735_))
                                              ((lambda (_L230738_ _L230739_)
                                                 (let* ((_expr230763_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230690_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230738_))
                     (let ((_arg1230754_ (car _args230690_))
                           (_rest230756_ (cdr _args230690_)))
                       (if (let () (declare (not safe)) (null? _rest230756_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230738_ _arg1230754_))
                           (let ((_arg2230759_ (car _rest230756_))
                                 (_rest230761_ (cdr _rest230756_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230761_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230738_
                                    _arg1230754_
                                    _arg2230759_))
                                 (apply gxc#compile-e
                                        _L230738_
                                        _arg1230754_
                                        _arg2230759_
                                        _rest230761_)))))))
                (__tmp235429
                 (let ((__tmp235430
                        (let ((__tmp235431
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230763_ '()))))
                          (declare (not safe))
                          (cons _L230739_ __tmp235431))))
                   (declare (not safe))
                   (cons '%#define-values __tmp235430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp235429
                                                    _stx230689_)))
                                               _hd230703230733_
                                               _hd230700230725_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230692230709_
                                                 _g230693230712_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230692230709_ _g230693230712_)))))
                              (let ()
                                (declare (not safe))
                                (_g230692230709_ _g230693230712_)))))
                      (let ()
                        (declare (not safe))
                        (_g230692230709_ _g230693230712_))))))
          (declare (not safe))
          (_g230691230765_ _stx230689_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx230609_ . _args230610_)
        (let* ((_g230612230629_
                (lambda (_g230613230626_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230613230626_))))
               (_g230611230686_
                (lambda (_g230613230632_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230613230632_))
                      (let ((_e230618230634_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230613230632_))))
                        (let ((_hd230617230637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230618230634_)))
                              (_tl230616230639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230618230634_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230616230639_))
                              (let ((_e230621230642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230616230639_))))
                                (let ((_hd230620230645_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230621230642_)))
                                      (_tl230619230647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230621230642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230619230647_))
                                      (let ((_e230624230650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230619230647_))))
                                        (let ((_hd230623230653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230624230650_)))
                                              (_tl230622230655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230624230650_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230622230655_))
                                              ((lambda (_L230658_ _L230659_)
                                                 (let ((__tmp235434
                                                        (lambda ()
                                                          (let* ((_expr230684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args230610_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L230658_))
                              (let ((_arg1230675_ (car _args230610_))
                                    (_rest230677_ (cdr _args230610_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest230677_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L230658_
                                       _arg1230675_))
                                    (let ((_arg2230680_ (car _rest230677_))
                                          (_rest230682_ (cdr _rest230677_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest230682_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L230658_
                                             _arg1230675_
                                             _arg2230680_))
                                          (apply gxc#compile-e
                                                 _L230658_
                                                 _arg1230675_
                                                 _arg2230680_
                                                 _rest230682_)))))))
                         (__tmp235435
                          (let ((__tmp235436
                                 (let ((__tmp235437
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr230684_ '()))))
                                   (declare (not safe))
                                   (cons _L230659_ __tmp235437))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp235436))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235435 _stx230609_))))
               (__tmp235432
                (let ((__tmp235433 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp235433 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp235434
                                                    gx#current-expander-phi
                                                    __tmp235432)))
                                               _hd230623230653_
                                               _hd230620230645_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230612230629_
                                                 _g230613230632_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230612230629_ _g230613230632_)))))
                              (let ()
                                (declare (not safe))
                                (_g230612230629_ _g230613230632_)))))
                      (let ()
                        (declare (not safe))
                        (_g230612230629_ _g230613230632_))))))
          (declare (not safe))
          (_g230611230686_ _stx230609_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx230530_ . _args230531_)
        (let* ((_g230533230550_
                (lambda (_g230534230547_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230534230547_))))
               (_g230532230606_
                (lambda (_g230534230553_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230534230553_))
                      (let ((_e230539230555_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230534230553_))))
                        (let ((_hd230538230558_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230539230555_)))
                              (_tl230537230560_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230539230555_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230537230560_))
                              (let ((_e230542230563_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230537230560_))))
                                (let ((_hd230541230566_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230542230563_)))
                                      (_tl230540230568_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230542230563_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230540230568_))
                                      (let ((_e230545230571_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230540230568_))))
                                        (let ((_hd230544230574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230545230571_)))
                                              (_tl230543230576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230545230571_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230543230576_))
                                              ((lambda (_L230579_ _L230580_)
                                                 (let* ((_expr230604_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230531_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230579_))
                     (let ((_arg1230595_ (car _args230531_))
                           (_rest230597_ (cdr _args230531_)))
                       (if (let () (declare (not safe)) (null? _rest230597_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230579_ _arg1230595_))
                           (let ((_arg2230600_ (car _rest230597_))
                                 (_rest230602_ (cdr _rest230597_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230602_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230579_
                                    _arg1230595_
                                    _arg2230600_))
                                 (apply gxc#compile-e
                                        _L230579_
                                        _arg1230595_
                                        _arg2230600_
                                        _rest230602_)))))))
                (__tmp235438
                 (let ((__tmp235439
                        (let ((__tmp235440
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230604_ '()))))
                          (declare (not safe))
                          (cons _L230580_ __tmp235440))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp235439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp235438
                                                    _stx230530_)))
                                               _hd230544230574_
                                               _hd230541230566_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230533230550_
                                                 _g230534230553_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230533230550_ _g230534230553_)))))
                              (let ()
                                (declare (not safe))
                                (_g230533230550_ _g230534230553_)))))
                      (let ()
                        (declare (not safe))
                        (_g230533230550_ _g230534230553_))))))
          (declare (not safe))
          (_g230532230606_ _stx230530_))))
    (define gxc#xform-lambda%
      (lambda (_stx230473_ . _args230474_)
        (let* ((_g230476230490_
                (lambda (_g230477230487_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230477230487_))))
               (_g230475230527_
                (lambda (_g230477230493_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230477230493_))
                      (let ((_e230482230495_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230477230493_))))
                        (let ((_hd230481230498_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230482230495_)))
                              (_tl230480230500_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230482230495_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230480230500_))
                              (let ((_e230485230503_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230480230500_))))
                                (let ((_hd230484230506_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230485230503_)))
                                      (_tl230483230508_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230485230503_))))
                                  ((lambda (_L230511_ _L230512_)
                                     (let* ((_body230525_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args230474_))
                                                  _L230511_))
                                            (__tmp235441
                                             (let ((__tmp235442
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L230512_
                                                            _body230525_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp235442))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp235441
                                        _stx230473_)))
                                   _tl230483230508_
                                   _hd230484230506_)))
                              (let ()
                                (declare (not safe))
                                (_g230476230490_ _g230477230493_)))))
                      (let ()
                        (declare (not safe))
                        (_g230476230490_ _g230477230493_))))))
          (declare (not safe))
          (_g230475230527_ _stx230473_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx230386_ . _args230387_)
        (letrec ((_clause-e230389_
                  (lambda (_clause230430_)
                    (let* ((_g230432230443_
                            (lambda (_g230433230440_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g230433230440_))))
                           (_g230431230470_
                            (lambda (_g230433230446_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g230433230446_))
                                  (let ((_e230438230448_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g230433230446_))))
                                    (let ((_hd230437230451_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230438230448_)))
                                          (_tl230436230453_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230438230448_))))
                                      ((lambda (_L230456_ _L230457_)
                                         (let ((_body230468_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args230387_))
                                                     _L230456_)))
                                           (declare (not safe))
                                           (cons _L230457_ _body230468_)))
                                       _tl230436230453_
                                       _hd230437230451_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230432230443_ _g230433230446_))))))
                      (declare (not safe))
                      (_g230431230470_ _clause230430_)))))
          (let* ((_g230391230401_
                  (lambda (_g230392230398_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g230392230398_))))
                 (_g230390230427_
                  (lambda (_g230392230404_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g230392230404_))
                        (let ((_e230396230406_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g230392230404_))))
                          (let ((_hd230395230409_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230396230406_)))
                                (_tl230394230411_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230396230406_))))
                            ((lambda (_L230414_)
                               (let* ((_clauses230425_
                                       (map _clause-e230389_ _L230414_))
                                      (__tmp235443
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses230425_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp235443
                                  _stx230386_)))
                             _tl230394230411_)))
                        (let ()
                          (declare (not safe))
                          (_g230391230401_ _g230392230404_))))))
            (declare (not safe))
            (_g230390230427_ _stx230386_)))))
    (define gxc#xform-let-values%
      (lambda (_stx230180_ . _args230181_)
        (let* ((_g230183230216_
                (lambda (_g230184230213_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230184230213_))))
               (_g230182230383_
                (lambda (_g230184230219_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230184230219_))
                      (let ((_e230191230221_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230184230219_))))
                        (let ((_hd230190230224_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230191230221_)))
                              (_tl230189230226_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230191230221_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230189230226_))
                              (let ((_e230194230229_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230189230226_))))
                                (let ((_hd230193230232_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230194230229_)))
                                      (_tl230192230234_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230194230229_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd230193230232_))
                                      (let ((_g235444_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd230193230232_
                                                '0))))
                                        (begin
                                          (let ((_g235445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g235444_)
                                                       (##vector-length
                                                        _g235444_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g235445_ 2)))
                                                (error "Context expects 2 values"
                                                       _g235445_)))
                                          (let ((_target230195230237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g235444_ 0)))
                                                (_tl230197230239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g235444_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230197230239_))
                                                (letrec ((_loop230198230242_
                                                          (lambda (_hd230196230245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr230202230247_
                           _hd230203230249_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd230196230245_))
                        (let ((_e230199230252_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd230196230245_))))
                          (let ((_lp-hd230200230255_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230199230252_)))
                                (_lp-tl230201230257_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230199230252_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd230200230255_))
                                (let ((_e230208230260_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd230200230255_))))
                                  (let ((_hd230207230263_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230208230260_)))
                                        (_tl230206230265_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230208230260_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl230206230265_))
                                        (let ((_e230211230268_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl230206230265_))))
                                          (let ((_hd230210230271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230211230268_)))
                                                (_tl230209230273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230211230268_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl230209230273_))
                                                (let ((__tmp235458
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd230210230271_
                                                               _expr230202230247_)))
                                                      (__tmp235457
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd230207230263_
                                                               _hd230203230249_))))
                                                  (declare (not safe))
                                                  (_loop230198230242_
                                                   _lp-tl230201230257_
                                                   __tmp235458
                                                   __tmp235457))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230183230216_
                                                   _g230184230219_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g230183230216_ _g230184230219_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230183230216_ _g230184230219_)))))
                        (let ((_expr230204230276_ (reverse _expr230202230247_))
                              (_hd230205230278_ (reverse _hd230203230249_)))
                          ((lambda (_L230281_ _L230282_ _L230283_ _L230284_)
                             (let* ((_g230303230319_
                                     (lambda (_g230304230316_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g230304230316_))))
                                    (_g230302230373_
                                     (lambda (_g230304230322_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g230304230322_))
                                           (let ((_g235446_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g230304230322_
                                                     '0))))
                                             (begin
                                               (let ((_g235447_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g235446_)
                                                            (##vector-length
                                                             _g235446_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g235447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g235447_)))
                                               (let ((_target230306230324_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g235446_
                                                         0)))
                                                     (_tl230308230326_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g235446_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl230308230326_))
                                                     (letrec ((_loop230309230329_
                                                               (lambda (_hd230307230332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr230313230334_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd230307230332_))
                             (let ((_e230310230337_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd230307230332_))))
                               (let ((_lp-hd230311230340_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e230310230337_)))
                                     (_lp-tl230312230342_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e230310230337_))))
                                 (let ((__tmp235454
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd230311230340_
                                                _expr230313230334_))))
                                   (declare (not safe))
                                   (_loop230309230329_
                                    _lp-tl230312230342_
                                    __tmp235454))))
                             (let ((_expr230314230345_
                                    (reverse _expr230313230334_)))
                               ((lambda (_L230348_)
                                  (let ()
                                    (let* ((_body230361_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args230181_))
                                                 _L230281_))
                                           (__tmp235448
                                            (let ((__tmp235449
                                                   (let ((__tmp235450
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L230348_
                                                               _L230283_))
                                                            (let ((__tmp235451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230362230366_
                                    _g230363230368_
                                    _g230364230370_)
                             (let ((__tmp235452
                                    (let ((__tmp235453
                                           (let ()
                                             (declare (not safe))
                                             (cons _g230362230366_ '()))))
                                      (declare (not safe))
                                      (cons _g230363230368_ __tmp235453))))
                               (declare (not safe))
                               (cons __tmp235452 _g230364230370_)))))
                      (declare (not safe))
                      (foldr2 __tmp235451 '() _L230348_ _L230283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp235450
                                                           _body230361_))))
                                              (declare (not safe))
                                              (cons _L230284_ __tmp235449))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp235448
                                       _stx230180_))))
                                _expr230314230345_))))))
               (let ()
                 (declare (not safe))
                 (_loop230309230329_ _target230306230324_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g230303230319_
                                                        _g230304230322_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g230303230319_
                                              _g230304230322_)))))
                                    (__tmp235455
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230181_))
                                          (let ((__tmp235456
                                                 (lambda (_g230375230378_
                                                          _g230376230380_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g230375230378_
                                                           _g230376230380_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp235456
                                                    '()
                                                    _L230282_)))))
                               (declare (not safe))
                               (_g230302230373_ __tmp235455)))
                           _tl230192230234_
                           _expr230204230276_
                           _hd230205230278_
                           _hd230190230224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop230198230242_
                                                     _target230195230237_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230183230216_
                                                   _g230184230219_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230183230216_ _g230184230219_)))))
                              (let ()
                                (declare (not safe))
                                (_g230183230216_ _g230184230219_)))))
                      (let ()
                        (declare (not safe))
                        (_g230183230216_ _g230184230219_))))))
          (declare (not safe))
          (_g230182230383_ _stx230180_))))
    (define gxc#xform-operands
      (lambda (_stx230136_ . _args230137_)
        (let* ((_g230139230150_
                (lambda (_g230140230147_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230140230147_))))
               (_g230138230177_
                (lambda (_g230140230153_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230140230153_))
                      (let ((_e230145230155_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230140230153_))))
                        (let ((_hd230144230158_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230145230155_)))
                              (_tl230143230160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230145230155_))))
                          ((lambda (_L230163_ _L230164_)
                             (let* ((_rands230175_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args230137_))
                                          _L230163_))
                                    (__tmp235459
                                     (let ()
                                       (declare (not safe))
                                       (cons _L230164_ _rands230175_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp235459
                                _stx230136_)))
                           _tl230143230160_
                           _hd230144230158_)))
                      (let ()
                        (declare (not safe))
                        (_g230139230150_ _g230140230153_))))))
          (declare (not safe))
          (_g230138230177_ _stx230136_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx230057_ . _args230058_)
        (let* ((_g230060230077_
                (lambda (_g230061230074_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230061230074_))))
               (_g230059230133_
                (lambda (_g230061230080_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230061230080_))
                      (let ((_e230066230082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230061230080_))))
                        (let ((_hd230065230085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230066230082_)))
                              (_tl230064230087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230066230082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230064230087_))
                              (let ((_e230069230090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230064230087_))))
                                (let ((_hd230068230093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230069230090_)))
                                      (_tl230067230095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230069230090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230067230095_))
                                      (let ((_e230072230098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230067230095_))))
                                        (let ((_hd230071230101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230072230098_)))
                                              (_tl230070230103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230072230098_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230070230103_))
                                              ((lambda (_L230106_ _L230107_)
                                                 (let* ((_expr230131_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args230058_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L230106_))
                     (let ((_arg1230122_ (car _args230058_))
                           (_rest230124_ (cdr _args230058_)))
                       (if (let () (declare (not safe)) (null? _rest230124_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L230106_ _arg1230122_))
                           (let ((_arg2230127_ (car _rest230124_))
                                 (_rest230129_ (cdr _rest230124_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest230129_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L230106_
                                    _arg1230122_
                                    _arg2230127_))
                                 (apply gxc#compile-e
                                        _L230106_
                                        _arg1230122_
                                        _arg2230127_
                                        _rest230129_)))))))
                (__tmp235460
                 (let ((__tmp235461
                        (let ((__tmp235462
                               (let ()
                                 (declare (not safe))
                                 (cons _expr230131_ '()))))
                          (declare (not safe))
                          (cons _L230107_ __tmp235462))))
                   (declare (not safe))
                   (cons '%#set! __tmp235461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp235460
                                                    _stx230057_)))
                                               _hd230071230101_
                                               _hd230068230093_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230060230077_
                                                 _g230061230080_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230060230077_ _g230061230080_)))))
                              (let ()
                                (declare (not safe))
                                (_g230060230077_ _g230061230080_)))))
                      (let ()
                        (declare (not safe))
                        (_g230060230077_ _g230061230080_))))))
          (declare (not safe))
          (_g230059230133_ _stx230057_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx229988_)
        (let* ((_g229990230007_
                (lambda (_g229991230004_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229991230004_))))
               (_g229989230054_
                (lambda (_g229991230010_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229991230010_))
                      (let ((_e229996230012_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229991230010_))))
                        (let ((_hd229995230015_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229996230012_)))
                              (_tl229994230017_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229996230012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229994230017_))
                              (let ((_e229999230020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229994230017_))))
                                (let ((_hd229998230023_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229999230020_)))
                                      (_tl229997230025_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229999230020_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229997230025_))
                                      (let ((_e230002230028_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229997230025_))))
                                        (let ((_hd230001230031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230002230028_)))
                                              (_tl230000230033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230002230028_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230000230033_))
                                              ((lambda (_L230036_ _L230037_)
                                                 (let ((_sym230052_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L230037_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym230052_))
                                                   (let ((__tmp235463
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp235463
                                                      _sym230052_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L230036_))))
                                               _hd230001230031_
                                               _hd229998230023_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229990230007_
                                                 _g229991230010_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229990230007_ _g229991230010_)))))
                              (let ()
                                (declare (not safe))
                                (_g229990230007_ _g229991230010_)))))
                      (let ()
                        (declare (not safe))
                        (_g229990230007_ _g229991230010_))))))
          (declare (not safe))
          (_g229989230054_ _stx229988_))))
    (define gxc#collect-methods-call%
      (lambda (_stx229542_)
        (let* ((___stx235153235154_ _stx229542_)
               (_g229546229648_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx235153235154_)))))
          (let ((___kont235155235156_
                 (lambda (_L229938_ _L229939_ _L229940_ _L229941_ _L229942_)
                   (let ((__tmp235464
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229939_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp235464))))
                (___kont235157235158_
                 (lambda (_L229764_ _L229765_ _L229766_ _L229767_)
                   (let ((__tmp235465
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L229764_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp235465))))
                (___kont235159235160_ (lambda () '#!void)))
            (let ((___match235288235289_
                   (lambda (_e229555229810_
                            _hd229554229813_
                            _tl229553229815_
                            _e229558229818_
                            _hd229557229821_
                            _tl229556229823_
                            _e229561229826_
                            _hd229560229829_
                            _tl229559229831_
                            _e229564229834_
                            _hd229563229837_
                            _tl229562229839_
                            _e229567229842_
                            _hd229566229845_
                            _tl229565229847_
                            _e229570229850_
                            _hd229569229853_
                            _tl229568229855_
                            _e229573229858_
                            _hd229572229861_
                            _tl229571229863_
                            _e229576229866_
                            _hd229575229869_
                            _tl229574229871_
                            _e229579229874_
                            _hd229578229877_
                            _tl229577229879_
                            _e229582229882_
                            _hd229581229885_
                            _tl229580229887_
                            _e229585229890_
                            _hd229584229893_
                            _tl229583229895_
                            _e229588229898_
                            _hd229587229901_
                            _tl229586229903_
                            _e229591229906_
                            _hd229590229909_
                            _tl229589229911_
                            _e229594229914_
                            _hd229593229917_
                            _tl229592229919_
                            _e229597229922_
                            _hd229596229925_
                            _tl229595229927_
                            _e229600229930_
                            _hd229599229933_
                            _tl229598229935_)
                     (let ((_L229938_ _hd229599229933_)
                           (_L229939_ _hd229590229909_)
                           (_L229940_ _hd229581229885_)
                           (_L229941_ _hd229572229861_)
                           (_L229942_ _hd229563229837_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L229942_
                              'bind-method!))
                           (___kont235155235156_
                            _L229938_
                            _L229939_
                            _L229940_
                            _L229941_
                            _L229942_)
                           (___kont235159235160_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx235153235154_))
                  (let ((_e229555229810_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx235153235154_))))
                    (let ((_tl229553229815_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229555229810_)))
                          (_hd229554229813_
                           (let ()
                             (declare (not safe))
                             (##car _e229555229810_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl229553229815_))
                          (let ((_e229558229818_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl229553229815_))))
                            (let ((_tl229556229823_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229558229818_)))
                                  (_hd229557229821_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229558229818_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd229557229821_))
                                  (let ((_e229561229826_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd229557229821_))))
                                    (let ((_tl229559229831_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229561229826_)))
                                          (_hd229560229829_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229561229826_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd229560229829_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd229560229829_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229559229831_))
                                                  (let ((_e229564229834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229559229831_))))
                                                    (let ((_tl229562229839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229564229834_)))
                                                          (_hd229563229837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229564229834_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl229562229839_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl229556229823_))
                      (let ((_e229567229842_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl229556229823_))))
                        (let ((_tl229565229847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229567229842_)))
                              (_hd229566229845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229567229842_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd229566229845_))
                              (let ((_e229570229850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd229566229845_))))
                                (let ((_tl229568229855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229570229850_)))
                                      (_hd229569229853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229570229850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd229569229853_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd229569229853_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl229568229855_))
                                              (let ((_e229573229858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl229568229855_))))
                                                (let ((_tl229571229863_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e229573229858_)))
                                                      (_hd229572229861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e229573229858_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229571229863_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl229565229847_))
                                                          (let ((_e229576229866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl229565229847_))))
                    (let ((_tl229574229871_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229576229866_)))
                          (_hd229575229869_
                           (let ()
                             (declare (not safe))
                             (##car _e229576229866_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd229575229869_))
                          (let ((_e229579229874_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd229575229869_))))
                            (let ((_tl229577229879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e229579229874_)))
                                  (_hd229578229877_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e229579229874_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd229578229877_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd229578229877_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl229577229879_))
                                          (let ((_e229582229882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl229577229879_))))
                                            (let ((_tl229580229887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e229582229882_)))
                                                  (_hd229581229885_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e229582229882_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl229580229887_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl229574229871_))
                                                      (let ((_e229585229890_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl229574229871_))))
                (let ((_tl229583229895_
                       (let () (declare (not safe)) (##cdr _e229585229890_)))
                      (_hd229584229893_
                       (let () (declare (not safe)) (##car _e229585229890_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd229584229893_))
                      (let ((_e229588229898_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd229584229893_))))
                        (let ((_tl229586229903_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229588229898_)))
                              (_hd229587229901_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229588229898_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd229587229901_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd229587229901_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229586229903_))
                                      (let ((_e229591229906_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229586229903_))))
                                        (let ((_tl229589229911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229591229906_)))
                                              (_hd229590229909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229591229906_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229589229911_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl229583229895_))
                                                  (let ((_e229594229914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl229583229895_))))
                                                    (let ((_tl229592229919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e229594229914_)))
                                                          (_hd229593229917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e229594229914_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd229593229917_))
                                                          (let ((_e229597229922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd229593229917_))))
                    (let ((_tl229595229927_
                           (let ()
                             (declare (not safe))
                             (##cdr _e229597229922_)))
                          (_hd229596229925_
                           (let ()
                             (declare (not safe))
                             (##car _e229597229922_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd229596229925_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd229596229925_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl229595229927_))
                                  (let ((_e229600229930_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl229595229927_))))
                                    (let ((_tl229598229935_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e229600229930_)))
                                          (_hd229599229933_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e229600229930_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl229598229935_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229592229919_))
                                              (___match235288235289_
                                               _e229555229810_
                                               _hd229554229813_
                                               _tl229553229815_
                                               _e229558229818_
                                               _hd229557229821_
                                               _tl229556229823_
                                               _e229561229826_
                                               _hd229560229829_
                                               _tl229559229831_
                                               _e229564229834_
                                               _hd229563229837_
                                               _tl229562229839_
                                               _e229567229842_
                                               _hd229566229845_
                                               _tl229565229847_
                                               _e229570229850_
                                               _hd229569229853_
                                               _tl229568229855_
                                               _e229573229858_
                                               _hd229572229861_
                                               _tl229571229863_
                                               _e229576229866_
                                               _hd229575229869_
                                               _tl229574229871_
                                               _e229579229874_
                                               _hd229578229877_
                                               _tl229577229879_
                                               _e229582229882_
                                               _hd229581229885_
                                               _tl229580229887_
                                               _e229585229890_
                                               _hd229584229893_
                                               _tl229583229895_
                                               _e229588229898_
                                               _hd229587229901_
                                               _tl229586229903_
                                               _e229591229906_
                                               _hd229590229909_
                                               _tl229589229911_
                                               _e229594229914_
                                               _hd229593229917_
                                               _tl229592229919_
                                               _e229597229922_
                                               _hd229596229925_
                                               _tl229595229927_
                                               _e229600229930_
                                               _hd229599229933_
                                               _tl229598229935_)
                                              (___kont235159235160_))
                                          (___kont235159235160_))))
                                  (___kont235159235160_))
                              (___kont235159235160_))
                          (___kont235159235160_))))
                  (___kont235159235160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl229583229895_))
                                                      (if (let ((__tmp235466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp235466 'bind-method!))
                  (let ((_L229764_ _hd229590229909_)
                        (_L229765_ _hd229581229885_)
                        (_L229766_ _hd229572229861_)
                        (_L229767_ _hd229563229837_))
                    (___kont235157235158_
                     _L229764_
                     _L229765_
                     _L229766_
                     _L229767_))
                  (___kont235159235160_))
              (___kont235159235160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont235159235160_))))
                                      (___kont235159235160_))
                                  (___kont235159235160_))
                              (___kont235159235160_))))
                      (___kont235159235160_))))
              (___kont235159235160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235159235160_))))
                                          (___kont235159235160_))
                                      (___kont235159235160_))
                                  (___kont235159235160_))))
                          (___kont235159235160_))))
                  (___kont235159235160_))
              (___kont235159235160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont235159235160_))
                                          (___kont235159235160_))
                                      (___kont235159235160_))))
                              (___kont235159235160_))))
                      (___kont235159235160_))
                  (___kont235159235160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont235159235160_))
                                              (___kont235159235160_))
                                          (___kont235159235160_))))
                                  (___kont235159235160_))))
                          (___kont235159235160_))))
                  (___kont235159235160_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx229489_ _id229490_ _new-id229491_)
        (let* ((_g229493229506_
                (lambda (_g229494229503_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229494229503_))))
               (_g229492229539_
                (lambda (_g229494229509_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229494229509_))
                      (let ((_e229498229511_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229494229509_))))
                        (let ((_hd229497229514_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229498229511_)))
                              (_tl229496229516_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229498229511_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229496229516_))
                              (let ((_e229501229519_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229496229516_))))
                                (let ((_hd229500229522_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229501229519_)))
                                      (_tl229499229524_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229501229519_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229499229524_))
                                      ((lambda (_L229527_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L229527_
                                                _id229490_))
                                             (let ((__tmp235467
                                                    (let ((__tmp235468
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id229491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp235468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235467
                                                _stx229489_))
                                             _stx229489_))
                                       _hd229500229522_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229493229506_ _g229494229509_)))))
                              (let ()
                                (declare (not safe))
                                (_g229493229506_ _g229494229509_)))))
                      (let ()
                        (declare (not safe))
                        (_g229493229506_ _g229494229509_))))))
          (declare (not safe))
          (_g229492229539_ _stx229489_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx229430_ _subst229431_)
        (let* ((_g229433229446_
                (lambda (_g229434229443_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229434229443_))))
               (_g229432229486_
                (lambda (_g229434229449_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229434229449_))
                      (let ((_e229438229451_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229434229449_))))
                        (let ((_hd229437229454_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229438229451_)))
                              (_tl229436229456_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229438229451_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229436229456_))
                              (let ((_e229441229459_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229436229456_))))
                                (let ((_hd229440229462_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229441229459_)))
                                      (_tl229439229464_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229441229459_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229439229464_))
                                      ((lambda (_L229467_)
                                         (let ((_$e229481_
                                                (let ((__tmp235469
                                                       (lambda (_sub229479_)
                                                         (let ((__tmp235470
                                                                (car _sub229479_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L229467_
                                                            __tmp235470)))))
                                                  (declare (not safe))
                                                  (find __tmp235469
                                                        _subst229431_))))
                                           (if _$e229481_
                                               ((lambda (_sub229484_)
                                                  (let ((__tmp235471
                                                         (let ((__tmp235472
                                                                (let ((__tmp235473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub229484_)))
                          (declare (not safe))
                          (cons __tmp235473 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp235472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp235471
                                                     _stx229430_)))
                                                _$e229481_)
                                               _stx229430_)))
                                       _hd229440229462_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229433229446_ _g229434229449_)))))
                              (let ()
                                (declare (not safe))
                                (_g229433229446_ _g229434229449_)))))
                      (let ()
                        (declare (not safe))
                        (_g229433229446_ _g229434229449_))))))
          (declare (not safe))
          (_g229432229486_ _stx229430_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx229358_ _id229359_ _new-id229360_)
        (let* ((_g229362229379_
                (lambda (_g229363229376_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229363229376_))))
               (_g229361229427_
                (lambda (_g229363229382_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229363229382_))
                      (let ((_e229368229384_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229363229382_))))
                        (let ((_hd229367229387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229368229384_)))
                              (_tl229366229389_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229368229384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229366229389_))
                              (let ((_e229371229392_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229366229389_))))
                                (let ((_hd229370229395_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229371229392_)))
                                      (_tl229369229397_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229371229392_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229369229397_))
                                      (let ((_e229374229400_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229369229397_))))
                                        (let ((_hd229373229403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229374229400_)))
                                              (_tl229372229405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229374229400_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229372229405_))
                                              ((lambda (_L229408_ _L229409_)
                                                 (let ((_new-expr229424_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L229408_
                                                           _id229359_
                                                           _new-id229360_)))
                                                       (_new-xid229425_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L229409_
                                                               _id229359_))
                                                            _new-id229360_
                                                            _L229409_)))
                                                   (let ((__tmp235474
                                                          (let ((__tmp235475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp235476
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr229424_ '()))))
                           (declare (not safe))
                           (cons _new-xid229425_ __tmp235476))))
                    (declare (not safe))
                    (cons '%#set! __tmp235475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235474
                                                      _stx229358_))))
                                               _hd229373229403_
                                               _hd229370229395_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229362229379_
                                                 _g229363229382_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229362229379_ _g229363229382_)))))
                              (let ()
                                (declare (not safe))
                                (_g229362229379_ _g229363229382_)))))
                      (let ()
                        (declare (not safe))
                        (_g229362229379_ _g229363229382_))))))
          (declare (not safe))
          (_g229361229427_ _stx229358_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx229282_ _subst229283_)
        (let* ((_g229285229302_
                (lambda (_g229286229299_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229286229299_))))
               (_g229284229355_
                (lambda (_g229286229305_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229286229305_))
                      (let ((_e229291229307_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229286229305_))))
                        (let ((_hd229290229310_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229291229307_)))
                              (_tl229289229312_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229291229307_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229289229312_))
                              (let ((_e229294229315_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229289229312_))))
                                (let ((_hd229293229318_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229294229315_)))
                                      (_tl229292229320_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229294229315_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229292229320_))
                                      (let ((_e229297229323_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229292229320_))))
                                        (let ((_hd229296229326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229297229323_)))
                                              (_tl229295229328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229297229323_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229295229328_))
                                              ((lambda (_L229331_ _L229332_)
                                                 (let ((_new-expr229352_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L229331_
                                                           _subst229283_)))
                                                       (_new-xid229353_
                                                        (let ((_$e229349_
                                                               (let ((__tmp235477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub229347_)
                                (let ((__tmp235478 (car _sub229347_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L229332_
                                   __tmp235478)))))
                         (declare (not safe))
                         (find __tmp235477 _subst229283_))))
                  (if _$e229349_ (cdr _$e229349_) _L229332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp235479
                                                          (let ((__tmp235480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp235481
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr229352_ '()))))
                           (declare (not safe))
                           (cons _new-xid229353_ __tmp235481))))
                    (declare (not safe))
                    (cons '%#set! __tmp235480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235479
                                                      _stx229282_))))
                                               _hd229296229326_
                                               _hd229293229318_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229285229302_
                                                 _g229286229305_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229285229302_ _g229286229305_)))))
                              (let ()
                                (declare (not safe))
                                (_g229285229302_ _g229286229305_)))))
                      (let ()
                        (declare (not safe))
                        (_g229285229302_ _g229286229305_))))))
          (declare (not safe))
          (_g229284229355_ _stx229282_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx229228_ _ht229229_)
        (let* ((_g229231229244_
                (lambda (_g229232229241_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229232229241_))))
               (_g229230229279_
                (lambda (_g229232229247_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229232229247_))
                      (let ((_e229236229249_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229232229247_))))
                        (let ((_hd229235229252_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229236229249_)))
                              (_tl229234229254_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229236229249_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229234229254_))
                              (let ((_e229239229257_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229234229254_))))
                                (let ((_hd229238229260_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229239229257_)))
                                      (_tl229237229262_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229239229257_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229237229262_))
                                      ((lambda (_L229265_)
                                         (let ((_eid229277_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L229265_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht229229_
                                            _eid229277_
                                            1+
                                            '0)))
                                       _hd229238229260_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229231229244_ _g229232229247_)))))
                              (let ()
                                (declare (not safe))
                                (_g229231229244_ _g229232229247_)))))
                      (let ()
                        (declare (not safe))
                        (_g229231229244_ _g229232229247_))))))
          (declare (not safe))
          (_g229230229279_ _stx229228_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx229158_ _ht229159_)
        (let* ((_g229161229178_
                (lambda (_g229162229175_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229162229175_))))
               (_g229160229225_
                (lambda (_g229162229181_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229162229181_))
                      (let ((_e229167229183_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229162229181_))))
                        (let ((_hd229166229186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229167229183_)))
                              (_tl229165229188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229167229183_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229165229188_))
                              (let ((_e229170229191_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229165229188_))))
                                (let ((_hd229169229194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229170229191_)))
                                      (_tl229168229196_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229170229191_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229168229196_))
                                      (let ((_e229173229199_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229168229196_))))
                                        (let ((_hd229172229202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229173229199_)))
                                              (_tl229171229204_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229173229199_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229171229204_))
                                              ((lambda (_L229207_ _L229208_)
                                                 (let ((_eid229223_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L229208_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht229159_
                                                      _eid229223_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L229207_
                                                      _ht229159_))))
                                               _hd229172229202_
                                               _hd229169229194_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229161229178_
                                                 _g229162229181_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229161229178_ _g229162229181_)))))
                              (let ()
                                (declare (not safe))
                                (_g229161229178_ _g229162229181_)))))
                      (let ()
                        (declare (not safe))
                        (_g229161229178_ _g229162229181_))))))
          (declare (not safe))
          (_g229160229225_ _stx229158_))))
    (define gxc#find-body%
      (lambda (_stx229071_ _arg229072_)
        (let* ((_g229074229093_
                (lambda (_g229075229090_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229075229090_))))
               (_g229073229155_
                (lambda (_g229075229096_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229075229096_))
                      (let ((_e229079229098_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229075229096_))))
                        (let ((_hd229078229101_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229079229098_)))
                              (_tl229077229103_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229079229098_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229077229103_))
                              (let ((_g235482_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229077229103_
                                        '0))))
                                (begin
                                  (let ((_g235483_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g235482_)
                                               (##vector-length _g235482_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g235483_ 2)))
                                        (error "Context expects 2 values"
                                               _g235483_)))
                                  (let ((_target229080229106_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g235482_ 0)))
                                        (_tl229082229108_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g235482_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229082229108_))
                                        (letrec ((_loop229083229111_
                                                  (lambda (_hd229081229114_
                                                           _expr229087229116_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229081229114_))
                                                        (let ((_e229084229119_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229081229114_))))
                  (let ((_lp-hd229085229122_
                         (let () (declare (not safe)) (##car _e229084229119_)))
                        (_lp-tl229086229124_
                         (let ()
                           (declare (not safe))
                           (##cdr _e229084229119_))))
                    (let ((__tmp235487
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd229085229122_ _expr229087229116_))))
                      (declare (not safe))
                      (_loop229083229111_ _lp-tl229086229124_ __tmp235487))))
                (let ((_expr229088229127_ (reverse _expr229087229116_)))
                  ((lambda (_L229130_)
                     (let ((__tmp235486
                            (lambda (_g229143229145_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g229143229145_
                                 _arg229072_))))
                           (__tmp235484
                            (let ((__tmp235485
                                   (lambda (_g229147229150_ _g229148229152_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g229147229150_
                                             _g229148229152_)))))
                              (declare (not safe))
                              (foldr1 __tmp235485 '() _L229130_))))
                       (declare (not safe))
                       (ormap1 __tmp235486 __tmp235484)))
                   _expr229088229127_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop229083229111_
                                             _target229080229106_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g229074229093_
                                           _g229075229096_))))))
                              (let ()
                                (declare (not safe))
                                (_g229074229093_ _g229075229096_)))))
                      (let ()
                        (declare (not safe))
                        (_g229074229093_ _g229075229096_))))))
          (declare (not safe))
          (_g229073229155_ _stx229071_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx229003_ _arg229004_)
        (let* ((_g229006229023_
                (lambda (_g229007229020_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229007229020_))))
               (_g229005229068_
                (lambda (_g229007229026_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229007229026_))
                      (let ((_e229012229028_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229007229026_))))
                        (let ((_hd229011229031_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229012229028_)))
                              (_tl229010229033_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229012229028_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229010229033_))
                              (let ((_e229015229036_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229010229033_))))
                                (let ((_hd229014229039_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229015229036_)))
                                      (_tl229013229041_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229015229036_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229013229041_))
                                      (let ((_e229018229044_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229013229041_))))
                                        (let ((_hd229017229047_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229018229044_)))
                                              (_tl229016229049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229018229044_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229016229049_))
                                              ((lambda (_L229052_ _L229053_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229052_
                                                    _arg229004_)))
                                               _hd229017229047_
                                               _hd229014229039_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229006229023_
                                                 _g229007229026_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229006229023_ _g229007229026_)))))
                              (let ()
                                (declare (not safe))
                                (_g229006229023_ _g229007229026_)))))
                      (let ()
                        (declare (not safe))
                        (_g229006229023_ _g229007229026_))))))
          (declare (not safe))
          (_g229005229068_ _stx229003_))))
    (define gxc#find-lambda%
      (lambda (_stx228935_ _arg228936_)
        (let* ((_g228938228955_
                (lambda (_g228939228952_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228939228952_))))
               (_g228937229000_
                (lambda (_g228939228958_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228939228958_))
                      (let ((_e228944228960_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228939228958_))))
                        (let ((_hd228943228963_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228944228960_)))
                              (_tl228942228965_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228944228960_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228942228965_))
                              (let ((_e228947228968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228942228965_))))
                                (let ((_hd228946228971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228947228968_)))
                                      (_tl228945228973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228947228968_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228945228973_))
                                      (let ((_e228950228976_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228945228973_))))
                                        (let ((_hd228949228979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228950228976_)))
                                              (_tl228948228981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228950228976_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228948228981_))
                                              ((lambda (_L228984_ _L228985_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L228984_
                                                    _arg228936_)))
                                               _hd228949228979_
                                               _hd228946228971_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228938228955_
                                                 _g228939228958_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228938228955_ _g228939228958_)))))
                              (let ()
                                (declare (not safe))
                                (_g228938228955_ _g228939228958_)))))
                      (let ()
                        (declare (not safe))
                        (_g228938228955_ _g228939228958_))))))
          (declare (not safe))
          (_g228937229000_ _stx228935_))))
    (define gxc#find-case-lambda%
      (lambda (_stx228817_ _arg228818_)
        (let* ((_g228820228848_
                (lambda (_g228821228845_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228821228845_))))
               (_g228819228932_
                (lambda (_g228821228851_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228821228851_))
                      (let ((_e228826228853_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228821228851_))))
                        (let ((_hd228825228856_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228826228853_)))
                              (_tl228824228858_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228826228853_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl228824228858_))
                              (let ((_g235488_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl228824228858_
                                        '0))))
                                (begin
                                  (let ((_g235489_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g235488_)
                                               (##vector-length _g235488_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g235489_ 2)))
                                        (error "Context expects 2 values"
                                               _g235489_)))
                                  (let ((_target228827228861_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g235488_ 0)))
                                        (_tl228829228863_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g235488_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl228829228863_))
                                        (letrec ((_loop228830228866_
                                                  (lambda (_hd228828228869_
                                                           _body228834228871_
                                                           _hd228835228873_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd228828228869_))
                                                        (let ((_e228831228876_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd228828228869_))))
                  (let ((_lp-hd228832228879_
                         (let () (declare (not safe)) (##car _e228831228876_)))
                        (_lp-tl228833228881_
                         (let ()
                           (declare (not safe))
                           (##cdr _e228831228876_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd228832228879_))
                        (let ((_e228840228884_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd228832228879_))))
                          (let ((_hd228839228887_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228840228884_)))
                                (_tl228838228889_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228840228884_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl228838228889_))
                                (let ((_e228843228892_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl228838228889_))))
                                  (let ((_hd228842228895_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e228843228892_)))
                                        (_tl228841228897_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e228843228892_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl228841228897_))
                                        (let ((__tmp235494
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd228842228895_
                                                       _body228834228871_)))
                                              (__tmp235493
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd228839228887_
                                                       _hd228835228873_))))
                                          (declare (not safe))
                                          (_loop228830228866_
                                           _lp-tl228833228881_
                                           __tmp235494
                                           __tmp235493))
                                        (let ()
                                          (declare (not safe))
                                          (_g228820228848_ _g228821228851_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g228820228848_ _g228821228851_)))))
                        (let ()
                          (declare (not safe))
                          (_g228820228848_ _g228821228851_)))))
                (let ((_body228836228900_ (reverse _body228834228871_))
                      (_hd228837228902_ (reverse _hd228835228873_)))
                  ((lambda (_L228905_ _L228906_)
                     (let ((__tmp235492
                            (lambda (_g228920228922_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g228920228922_
                                 _arg228818_))))
                           (__tmp235490
                            (let ((__tmp235491
                                   (lambda (_g228924228927_ _g228925228929_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g228924228927_
                                             _g228925228929_)))))
                              (declare (not safe))
                              (foldr1 __tmp235491 '() _L228905_))))
                       (declare (not safe))
                       (ormap1 __tmp235492 __tmp235490)))
                   _body228836228900_
                   _hd228837228902_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop228830228866_
                                             _target228827228861_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g228820228848_
                                           _g228821228851_))))))
                              (let ()
                                (declare (not safe))
                                (_g228820228848_ _g228821228851_)))))
                      (let ()
                        (declare (not safe))
                        (_g228820228848_ _g228821228851_))))))
          (declare (not safe))
          (_g228819228932_ _stx228817_))))
    (define gxc#find-let-values%
      (lambda (_stx228667_ _arg228668_)
        (let* ((_g228670228705_
                (lambda (_g228671228702_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228671228702_))))
               (_g228669228814_
                (lambda (_g228671228708_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228671228708_))
                      (let ((_e228677228710_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228671228708_))))
                        (let ((_hd228676228713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228677228710_)))
                              (_tl228675228715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228677228710_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228675228715_))
                              (let ((_e228680228718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228675228715_))))
                                (let ((_hd228679228721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228680228718_)))
                                      (_tl228678228723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228680228718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd228679228721_))
                                      (let ((_g235495_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd228679228721_
                                                '0))))
                                        (begin
                                          (let ((_g235496_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g235495_)
                                                       (##vector-length
                                                        _g235495_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g235496_ 2)))
                                                (error "Context expects 2 values"
                                                       _g235496_)))
                                          (let ((_target228681228726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g235495_ 0)))
                                                (_tl228683228728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g235495_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228683228728_))
                                                (letrec ((_loop228684228731_
                                                          (lambda (_hd228682228734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr228688228736_
                           _bind228689228738_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd228682228734_))
                        (let ((_e228685228741_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd228682228734_))))
                          (let ((_lp-hd228686228744_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e228685228741_)))
                                (_lp-tl228687228746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e228685228741_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd228686228744_))
                                (let ((_e228694228749_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd228686228744_))))
                                  (let ((_hd228693228752_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e228694228749_)))
                                        (_tl228692228754_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e228694228749_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228692228754_))
                                        (let ((_e228697228757_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228692228754_))))
                                          (let ((_hd228696228760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228697228757_)))
                                                (_tl228695228762_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228697228757_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228695228762_))
                                                (let ((__tmp235501
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228696228760_
                                                               _expr228688228736_)))
                                                      (__tmp235500
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd228693228752_
                                                               _bind228689228738_))))
                                                  (declare (not safe))
                                                  (_loop228684228731_
                                                   _lp-tl228687228746_
                                                   __tmp235501
                                                   __tmp235500))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228670228705_
                                                   _g228671228708_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228670228705_ _g228671228708_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g228670228705_ _g228671228708_)))))
                        (let ((_expr228690228765_ (reverse _expr228688228736_))
                              (_bind228691228767_
                               (reverse _bind228689228738_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228678228723_))
                              (let ((_e228700228770_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228678228723_))))
                                (let ((_hd228699228773_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228700228770_)))
                                      (_tl228698228775_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228700228770_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228698228775_))
                                      ((lambda (_L228778_ _L228779_ _L228780_)
                                         (let ((_$e228811_
                                                (let ((__tmp235499
                                                       (lambda (_g228799228801_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g228799228801_
                                                            _arg228668_))))
                                                      (__tmp235497
                                                       (let ((__tmp235498
                                                              (lambda (_g228803228806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g228804228808_)
                        (let ()
                          (declare (not safe))
                          (cons _g228803228806_ _g228804228808_)))))
                 (declare (not safe))
                 (foldr1 __tmp235498 '() _L228779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp235499
                                                          __tmp235497))))
                                           (if _$e228811_
                                               _$e228811_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L228778_
                                                  _arg228668_)))))
                                       _hd228699228773_
                                       _expr228690228765_
                                       _bind228691228767_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228670228705_ _g228671228708_)))))
                              (let ()
                                (declare (not safe))
                                (_g228670228705_ _g228671228708_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop228684228731_
                                                     _target228681228726_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228670228705_
                                                   _g228671228708_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228670228705_ _g228671228708_)))))
                              (let ()
                                (declare (not safe))
                                (_g228670228705_ _g228671228708_)))))
                      (let ()
                        (declare (not safe))
                        (_g228670228705_ _g228671228708_))))))
          (declare (not safe))
          (_g228669228814_ _stx228667_))))
    (define gxc#find-setq%
      (lambda (_stx228599_ _arg228600_)
        (let* ((_g228602228619_
                (lambda (_g228603228616_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228603228616_))))
               (_g228601228664_
                (lambda (_g228603228622_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228603228622_))
                      (let ((_e228608228624_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228603228622_))))
                        (let ((_hd228607228627_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228608228624_)))
                              (_tl228606228629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228608228624_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228606228629_))
                              (let ((_e228611228632_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228606228629_))))
                                (let ((_hd228610228635_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228611228632_)))
                                      (_tl228609228637_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228611228632_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228609228637_))
                                      (let ((_e228614228640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228609228637_))))
                                        (let ((_hd228613228643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228614228640_)))
                                              (_tl228612228645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228614228640_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228612228645_))
                                              ((lambda (_L228648_ _L228649_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L228648_
                                                    _arg228600_)))
                                               _hd228613228643_
                                               _hd228610228635_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228602228619_
                                                 _g228603228622_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228602228619_ _g228603228622_)))))
                              (let ()
                                (declare (not safe))
                                (_g228602228619_ _g228603228622_)))))
                      (let ()
                        (declare (not safe))
                        (_g228602228619_ _g228603228622_))))))
          (declare (not safe))
          (_g228601228664_ _stx228599_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx228543_ _ids228544_)
        (let* ((_g228546228559_
                (lambda (_g228547228556_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228547228556_))))
               (_g228545228596_
                (lambda (_g228547228562_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228547228562_))
                      (let ((_e228551228564_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228547228562_))))
                        (let ((_hd228550228567_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228551228564_)))
                              (_tl228549228569_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228551228564_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228549228569_))
                              (let ((_e228554228572_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228549228569_))))
                                (let ((_hd228553228575_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228554228572_)))
                                      (_tl228552228577_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228554228572_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl228552228577_))
                                      ((lambda (_L228580_)
                                         (let ((__tmp235502
                                                (lambda (_g228591228593_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L228580_
                                                     _g228591228593_)))))
                                           (declare (not safe))
                                           (find __tmp235502 _ids228544_)))
                                       _hd228553228575_)
                                      (let ()
                                        (declare (not safe))
                                        (_g228546228559_ _g228547228562_)))))
                              (let ()
                                (declare (not safe))
                                (_g228546228559_ _g228547228562_)))))
                      (let ()
                        (declare (not safe))
                        (_g228546228559_ _g228547228562_))))))
          (declare (not safe))
          (_g228545228596_ _stx228543_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx228467_ _ids228468_)
        (let* ((_g228470228487_
                (lambda (_g228471228484_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g228471228484_))))
               (_g228469228540_
                (lambda (_g228471228490_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g228471228490_))
                      (let ((_e228476228492_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g228471228490_))))
                        (let ((_hd228475228495_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228476228492_)))
                              (_tl228474228497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228476228492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl228474228497_))
                              (let ((_e228479228500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl228474228497_))))
                                (let ((_hd228478228503_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e228479228500_)))
                                      (_tl228477228505_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e228479228500_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228477228505_))
                                      (let ((_e228482228508_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228477228505_))))
                                        (let ((_hd228481228511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228482228508_)))
                                              (_tl228480228513_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228482228508_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228480228513_))
                                              ((lambda (_L228516_ _L228517_)
                                                 (let ((_$e228537_
                                                        (let ((__tmp235503
                                                               (lambda (_g228532228534_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L228517_ _g228532228534_)))))
                  (declare (not safe))
                  (find __tmp235503 _ids228468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e228537_
                                                       _$e228537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L228516_
                                                          _ids228468_)))))
                                               _hd228481228511_
                                               _hd228478228503_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228470228487_
                                                 _g228471228490_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228470228487_ _g228471228490_)))))
                              (let ()
                                (declare (not safe))
                                (_g228470228487_ _g228471228490_)))))
                      (let ()
                        (declare (not safe))
                        (_g228470228487_ _g228471228490_))))))
          (declare (not safe))
          (_g228469228540_ _stx228467_))))))
