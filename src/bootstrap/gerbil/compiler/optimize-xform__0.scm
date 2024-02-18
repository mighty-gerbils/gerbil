(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1708289483)
  (begin
    (define gxc#&identity-expression
      (make-promise
       (lambda ()
         (let ((_tbl232044_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#begin-annotation gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#case-lambda gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#let-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#letrec-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#letrec*-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#call gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#call-unchecked gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#if gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#struct-instance? gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232044_
              '%#struct-direct-instance?
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#struct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#struct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#struct-direct-ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232044_ '%#struct-direct-set! gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232044_
              '%#struct-unchecked-ref
              gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232044_
              '%#struct-unchecked-set!
              gxc#xform-identity))
           _tbl232044_))))
    (define gxc#&identity-special-form
      (make-promise
       (lambda ()
         (let ((_tbl232040_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#begin gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#begin-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#begin-foreign gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#module gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#import gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#export gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#provide gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#extern gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#define-values gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#define-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#define-alias gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232040_ '%#declare gxc#xform-identity))
           _tbl232040_))))
    (define gxc#&identity
      (make-promise
       (lambda ()
         (let ((_tbl232036_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236357 (force gxc#&identity-special-form)))
             (declare (not safe))
             (hash-merge! _tbl232036_ __tmp236357))
           (let ((__tmp236358 (force gxc#&identity-expression)))
             (declare (not safe))
             (hash-merge! _tbl232036_ __tmp236358))
           _tbl232036_))))
    (define gxc#&basic-xform-expression
      (make-promise
       (lambda ()
         (let ((_tbl232032_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232032_
              '%#begin-annotation
              gxc#xform-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#lambda gxc#xform-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#case-lambda gxc#xform-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#let-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#letrec-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#letrec*-values gxc#xform-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#quote gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#quote-syntax gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#call gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#call-unchecked gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#if gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#ref gxc#xform-identity))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#set! gxc#xform-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#struct-instance? gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232032_
              '%#struct-direct-instance?
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#struct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#struct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#struct-direct-ref gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232032_ '%#struct-direct-set! gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232032_
              '%#struct-unchecked-ref
              gxc#xform-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232032_
              '%#struct-unchecked-set!
              gxc#xform-operands))
           _tbl232032_))))
    (define gxc#&basic-xform
      (make-promise
       (lambda ()
         (let ((_tbl232028_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236359 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl232028_ __tmp236359))
           (let ((__tmp236360 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl232028_ __tmp236360))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232028_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232028_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232028_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232028_ '%#define-values gxc#xform-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232028_ '%#define-syntax gxc#xform-define-syntax%))
           _tbl232028_))))
    (define gxc#&collect-mutators
      (make-promise
       (lambda ()
         (let ((_tbl232024_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236361 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl232024_ __tmp236361))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#define-values
              gxc#collect-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#define-syntax
              gxc#collect-define-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#letrec*-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#call gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#call-unchecked gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#set! gxc#collect-mutators-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#struct-instance? gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#struct-direct-instance?
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232024_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232024_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl232024_))))
    (define gxc#apply-collect-mutators
      (lambda (_stx232007_ . _args232009_)
        (let ((__tmp236363
               (lambda ()
                 (declare (not safe))
                 (if (null? _args232009_)
                     (gxc#compile-e__0 _stx232007_)
                     (let ((_arg1232014_ (car _args232009_))
                           (_rest232016_ (cdr _args232009_)))
                       (if (null? _rest232016_)
                           (gxc#compile-e__1 _stx232007_ _arg1232014_)
                           (let ((_arg2232019_ (car _rest232016_))
                                 (_rest232021_ (cdr _rest232016_)))
                             (if (null? _rest232021_)
                                 (gxc#compile-e__2
                                  _stx232007_
                                  _arg1232014_
                                  _arg2232019_)
                                 (apply gxc#compile-e
                                        _stx232007_
                                        _arg1232014_
                                        _arg2232019_
                                        _rest232021_))))))))
              (__tmp236362 (force gxc#&collect-mutators)))
          (declare (not safe))
          (call-with-parameters
           __tmp236363
           gxc#current-compile-methods
           __tmp236362))))
    (define gxc#&collect-methods
      (make-promise
       (lambda ()
         (let ((_tbl232004_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236364 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl232004_ __tmp236364))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232004_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232004_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232004_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl232004_ '%#call gxc#collect-methods-call%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl232004_
              '%#call-unchecked
              gxc#collect-methods-call%))
           _tbl232004_))))
    (define gxc#apply-collect-methods
      (lambda (_stx231987_ . _args231989_)
        (let ((__tmp236366
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231989_)
                     (gxc#compile-e__0 _stx231987_)
                     (let ((_arg1231994_ (car _args231989_))
                           (_rest231996_ (cdr _args231989_)))
                       (if (null? _rest231996_)
                           (gxc#compile-e__1 _stx231987_ _arg1231994_)
                           (let ((_arg2231999_ (car _rest231996_))
                                 (_rest232001_ (cdr _rest231996_)))
                             (if (null? _rest232001_)
                                 (gxc#compile-e__2
                                  _stx231987_
                                  _arg1231994_
                                  _arg2231999_)
                                 (apply gxc#compile-e
                                        _stx231987_
                                        _arg1231994_
                                        _arg2231999_
                                        _rest232001_))))))))
              (__tmp236365 (force gxc#&collect-methods)))
          (declare (not safe))
          (call-with-parameters
           __tmp236366
           gxc#current-compile-methods
           __tmp236365))))
    (define gxc#&expression-subst
      (make-promise
       (lambda ()
         (let ((_tbl231984_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236367 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl231984_ __tmp236367))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231984_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231984_ '%#ref gxc#expression-subst-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231984_ '%#set! gxc#expression-subst-setq%))
           _tbl231984_))))
    (define gxc#apply-expression-subst
      (lambda (_stx231967_ . _args231969_)
        (let ((__tmp236369
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231969_)
                     (gxc#compile-e__0 _stx231967_)
                     (let ((_arg1231974_ (car _args231969_))
                           (_rest231976_ (cdr _args231969_)))
                       (if (null? _rest231976_)
                           (gxc#compile-e__1 _stx231967_ _arg1231974_)
                           (let ((_arg2231979_ (car _rest231976_))
                                 (_rest231981_ (cdr _rest231976_)))
                             (if (null? _rest231981_)
                                 (gxc#compile-e__2
                                  _stx231967_
                                  _arg1231974_
                                  _arg2231979_)
                                 (apply gxc#compile-e
                                        _stx231967_
                                        _arg1231974_
                                        _arg2231979_
                                        _rest231981_))))))))
              (__tmp236368 (force gxc#&expression-subst)))
          (declare (not safe))
          (call-with-parameters
           __tmp236369
           gxc#current-compile-methods
           __tmp236368))))
    (define gxc#&expression-subst*
      (make-promise
       (lambda ()
         (let ((_tbl231964_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236370 (force gxc#&expression-subst)))
             (declare (not safe))
             (hash-merge! _tbl231964_ __tmp236370))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231964_ '%#ref gxc#expression-subst*-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231964_ '%#set! gxc#expression-subst*-setq%))
           _tbl231964_))))
    (define gxc#apply-expression-subst*
      (lambda (_stx231947_ . _args231949_)
        (let ((__tmp236372
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231949_)
                     (gxc#compile-e__0 _stx231947_)
                     (let ((_arg1231954_ (car _args231949_))
                           (_rest231956_ (cdr _args231949_)))
                       (if (null? _rest231956_)
                           (gxc#compile-e__1 _stx231947_ _arg1231954_)
                           (let ((_arg2231959_ (car _rest231956_))
                                 (_rest231961_ (cdr _rest231956_)))
                             (if (null? _rest231961_)
                                 (gxc#compile-e__2
                                  _stx231947_
                                  _arg1231954_
                                  _arg2231959_)
                                 (apply gxc#compile-e
                                        _stx231947_
                                        _arg1231954_
                                        _arg2231959_
                                        _rest231961_))))))))
              (__tmp236371 (force gxc#&expression-subst*)))
          (declare (not safe))
          (call-with-parameters
           __tmp236372
           gxc#current-compile-methods
           __tmp236371))))
    (define gxc#&find-expression
      (make-promise
       (lambda ()
         (let ((_tbl231944_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236373 (force gxc#&false-expression)))
             (declare (not safe))
             (hash-merge! _tbl231944_ __tmp236373))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#begin gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl231944_
              '%#begin-annotation
              gxc#find-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#lambda gxc#find-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#case-lambda gxc#find-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#let-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#letrec-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#letrec*-values gxc#find-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#call gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#call-unchecked gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#if gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#set! gxc#find-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-direct-instance? gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-direct-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-direct-set! gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-unchecked-ref gxc#find-body%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231944_ '%#struct-unchecked-set! gxc#find-body%))
           _tbl231944_))))
    (define gxc#&find-var-refs
      (make-promise
       (lambda ()
         (let ((_tbl231940_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236374 (force gxc#&find-expression)))
             (declare (not safe))
             (hash-merge! _tbl231940_ __tmp236374))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231940_ '%#ref gxc#find-var-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231940_ '%#set! gxc#find-var-refs-setq%))
           _tbl231940_))))
    (define gxc#apply-find-var-refs
      (lambda (_stx231923_ . _args231925_)
        (let ((__tmp236376
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231925_)
                     (gxc#compile-e__0 _stx231923_)
                     (let ((_arg1231930_ (car _args231925_))
                           (_rest231932_ (cdr _args231925_)))
                       (if (null? _rest231932_)
                           (gxc#compile-e__1 _stx231923_ _arg1231930_)
                           (let ((_arg2231935_ (car _rest231932_))
                                 (_rest231937_ (cdr _rest231932_)))
                             (if (null? _rest231937_)
                                 (gxc#compile-e__2
                                  _stx231923_
                                  _arg1231930_
                                  _arg2231935_)
                                 (apply gxc#compile-e
                                        _stx231923_
                                        _arg1231930_
                                        _arg2231935_
                                        _rest231937_))))))))
              (__tmp236375 (force gxc#&find-var-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236376
           gxc#current-compile-methods
           __tmp236375))))
    (define gxc#&collect-runtime-refs
      (make-promise
       (lambda ()
         (let ((_tbl231920_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp236377 (force gxc#&collect-expression-refs)))
             (declare (not safe))
             (hash-merge! _tbl231920_ __tmp236377))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231920_ '%#ref gxc#collect-runtime-refs-ref%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl231920_ '%#set! gxc#collect-runtime-refs-setq%))
           _tbl231920_))))
    (define gxc#apply-collect-runtime-refs
      (lambda (_stx231903_ . _args231905_)
        (let ((__tmp236379
               (lambda ()
                 (declare (not safe))
                 (if (null? _args231905_)
                     (gxc#compile-e__0 _stx231903_)
                     (let ((_arg1231910_ (car _args231905_))
                           (_rest231912_ (cdr _args231905_)))
                       (if (null? _rest231912_)
                           (gxc#compile-e__1 _stx231903_ _arg1231910_)
                           (let ((_arg2231915_ (car _rest231912_))
                                 (_rest231917_ (cdr _rest231912_)))
                             (if (null? _rest231917_)
                                 (gxc#compile-e__2
                                  _stx231903_
                                  _arg1231910_
                                  _arg2231915_)
                                 (apply gxc#compile-e
                                        _stx231903_
                                        _arg1231910_
                                        _arg2231915_
                                        _rest231917_))))))))
              (__tmp236378 (force gxc#&collect-runtime-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp236379
           gxc#current-compile-methods
           __tmp236378))))
    (define gxc#xform-identity
      (lambda (_stx231900_ . _args231901_) _stx231900_))
    (define gxc#xform-wrap-source
      (lambda (_stx231897_ _src-stx231898_)
        (let ((__tmp236380
               (let () (declare (not safe)) (gx#stx-source _src-stx231898_))))
          (declare (not safe))
          (gx#stx-wrap-source _stx231897_ __tmp236380))))
    (define gxc#xform-apply-compile-e
      (lambda (_args231884_)
        (lambda (_stx231886_)
          (if (let () (declare (not safe)) (null? _args231884_))
              (let () (declare (not safe)) (gxc#compile-e__0 _stx231886_))
              (let ((_arg1231888_ (car _args231884_))
                    (_rest231890_ (cdr _args231884_)))
                (if (let () (declare (not safe)) (null? _rest231890_))
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _stx231886_ _arg1231888_))
                    (let ((_arg2231893_ (car _rest231890_))
                          (_rest231895_ (cdr _rest231890_)))
                      (if (let () (declare (not safe)) (null? _rest231895_))
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__2
                             _stx231886_
                             _arg1231888_
                             _arg2231893_))
                          (apply gxc#compile-e
                                 _stx231886_
                                 _arg1231888_
                                 _arg2231893_
                                 _rest231895_)))))))))
    (define gxc#xform-begin%
      (lambda (_stx231843_ . _args231844_)
        (let* ((_g231846231856_
                (lambda (_g231847231853_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231847231853_))))
               (_g231845231881_
                (lambda (_g231847231859_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231847231859_))
                      (let ((_e231851231861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231847231859_))))
                        (let ((_hd231850231864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231851231861_)))
                              (_tl231849231866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231851231861_))))
                          ((lambda (_L231869_)
                             (let* ((_forms231879_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231844_))
                                          _L231869_))
                                    (__tmp236381
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#begin _forms231879_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236381
                                _stx231843_)))
                           _tl231849231866_)))
                      (let ()
                        (declare (not safe))
                        (_g231846231856_ _g231847231859_))))))
          (declare (not safe))
          (_g231845231881_ _stx231843_))))
    (define gxc#xform-begin-syntax%
      (lambda (_stx231801_ . _args231802_)
        (let* ((_g231804231814_
                (lambda (_g231805231811_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231805231811_))))
               (_g231803231840_
                (lambda (_g231805231817_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231805231817_))
                      (let ((_e231809231819_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231805231817_))))
                        (let ((_hd231808231822_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231809231819_)))
                              (_tl231807231824_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231809231819_))))
                          ((lambda (_L231827_)
                             (let ((__tmp236384
                                    (lambda ()
                                      (let* ((_forms231838_
                                              (map (let ()
                                                     (declare (not safe))
                                                     (gxc#xform-apply-compile-e
                                                      _args231802_))
                                                   _L231827_))
                                             (__tmp236385
                                              (let ()
                                                (declare (not safe))
                                                (cons '%#begin-syntax
                                                      _forms231838_))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp236385
                                         _stx231801_))))
                                   (__tmp236382
                                    (let ((__tmp236383
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp236383 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp236384
                                gx#current-expander-phi
                                __tmp236382)))
                           _tl231807231824_)))
                      (let ()
                        (declare (not safe))
                        (_g231804231814_ _g231805231817_))))))
          (declare (not safe))
          (_g231803231840_ _stx231801_))))
    (define gxc#xform-module%
      (lambda (_stx231729_ . _args231730_)
        (let* ((_g231732231746_
                (lambda (_g231733231743_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231733231743_))))
               (_g231731231798_
                (lambda (_g231733231749_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231733231749_))
                      (let ((_e231738231751_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231733231749_))))
                        (let ((_hd231737231754_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231738231751_)))
                              (_tl231736231756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231738231751_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231736231756_))
                              (let ((_e231741231759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231736231756_))))
                                (let ((_hd231740231762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231741231759_)))
                                      (_tl231739231764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231741231759_))))
                                  ((lambda (_L231767_ _L231768_)
                                     (let* ((_ctx231781_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L231768_)))
                                            (_code231783_
                                             (##structure-ref
                                              _ctx231781_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (_code231795_
                                             (let ((__tmp236386
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (null? _args231730_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _code231783_))
                                                          (let ((_arg1231786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _args231730_))
                        (_rest231788_ (cdr _args231730_)))
                    (if (let () (declare (not safe)) (null? _rest231788_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1 _code231783_ _arg1231786_))
                        (let ((_arg2231791_ (car _rest231788_))
                              (_rest231793_ (cdr _rest231788_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _rest231793_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__2
                                 _code231783_
                                 _arg1231786_
                                 _arg2231791_))
                              (apply gxc#compile-e
                                     _code231783_
                                     _arg1231786_
                                     _arg2231791_
                                     _rest231793_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (call-with-parameters
                                                __tmp236386
                                                gx#current-expander-context
                                                _ctx231781_))))
                                       (##structure-set!
                                        _ctx231781_
                                        _code231795_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (let ((__tmp236387
                                              (let ((__tmp236388
                                                     (let ((__tmp236389
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _code231795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L231768_ __tmp236389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#module __tmp236388))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp236387
                                          _stx231729_))))
                                   _tl231739231764_
                                   _hd231740231762_)))
                              (let ()
                                (declare (not safe))
                                (_g231732231746_ _g231733231749_)))))
                      (let ()
                        (declare (not safe))
                        (_g231732231746_ _g231733231749_))))))
          (declare (not safe))
          (_g231731231798_ _stx231729_))))
    (define gxc#xform-define-values%
      (lambda (_stx231650_ . _args231651_)
        (let* ((_g231653231670_
                (lambda (_g231654231667_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231654231667_))))
               (_g231652231726_
                (lambda (_g231654231673_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231654231673_))
                      (let ((_e231659231675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231654231673_))))
                        (let ((_hd231658231678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231659231675_)))
                              (_tl231657231680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231659231675_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231657231680_))
                              (let ((_e231662231683_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231657231680_))))
                                (let ((_hd231661231686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231662231683_)))
                                      (_tl231660231688_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231662231683_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231660231688_))
                                      (let ((_e231665231691_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231660231688_))))
                                        (let ((_hd231664231694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231665231691_)))
                                              (_tl231663231696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231665231691_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231663231696_))
                                              ((lambda (_L231699_ _L231700_)
                                                 (let* ((_expr231724_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231651_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231699_))
                     (let ((_arg1231715_ (car _args231651_))
                           (_rest231717_ (cdr _args231651_)))
                       (if (let () (declare (not safe)) (null? _rest231717_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231699_ _arg1231715_))
                           (let ((_arg2231720_ (car _rest231717_))
                                 (_rest231722_ (cdr _rest231717_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231722_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231699_
                                    _arg1231715_
                                    _arg2231720_))
                                 (apply gxc#compile-e
                                        _L231699_
                                        _arg1231715_
                                        _arg2231720_
                                        _rest231722_)))))))
                (__tmp236390
                 (let ((__tmp236391
                        (let ((__tmp236392
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231724_ '()))))
                          (declare (not safe))
                          (cons _L231700_ __tmp236392))))
                   (declare (not safe))
                   (cons '%#define-values __tmp236391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236390
                                                    _stx231650_)))
                                               _hd231664231694_
                                               _hd231661231686_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231653231670_
                                                 _g231654231673_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231653231670_ _g231654231673_)))))
                              (let ()
                                (declare (not safe))
                                (_g231653231670_ _g231654231673_)))))
                      (let ()
                        (declare (not safe))
                        (_g231653231670_ _g231654231673_))))))
          (declare (not safe))
          (_g231652231726_ _stx231650_))))
    (define gxc#xform-define-syntax%
      (lambda (_stx231570_ . _args231571_)
        (let* ((_g231573231590_
                (lambda (_g231574231587_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231574231587_))))
               (_g231572231647_
                (lambda (_g231574231593_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231574231593_))
                      (let ((_e231579231595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231574231593_))))
                        (let ((_hd231578231598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231579231595_)))
                              (_tl231577231600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231579231595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231577231600_))
                              (let ((_e231582231603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231577231600_))))
                                (let ((_hd231581231606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231582231603_)))
                                      (_tl231580231608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231582231603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231580231608_))
                                      (let ((_e231585231611_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231580231608_))))
                                        (let ((_hd231584231614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231585231611_)))
                                              (_tl231583231616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231585231611_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231583231616_))
                                              ((lambda (_L231619_ _L231620_)
                                                 (let ((__tmp236395
                                                        (lambda ()
                                                          (let* ((_expr231645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (let ()
                                (declare (not safe))
                                (null? _args231571_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__0 _L231619_))
                              (let ((_arg1231636_ (car _args231571_))
                                    (_rest231638_ (cdr _args231571_)))
                                (if (let ()
                                      (declare (not safe))
                                      (null? _rest231638_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _L231619_
                                       _arg1231636_))
                                    (let ((_arg2231641_ (car _rest231638_))
                                          (_rest231643_ (cdr _rest231638_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (null? _rest231643_))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__2
                                             _L231619_
                                             _arg1231636_
                                             _arg2231641_))
                                          (apply gxc#compile-e
                                                 _L231619_
                                                 _arg1231636_
                                                 _arg2231641_
                                                 _rest231643_)))))))
                         (__tmp236396
                          (let ((__tmp236397
                                 (let ((__tmp236398
                                        (let ()
                                          (declare (not safe))
                                          (cons _expr231645_ '()))))
                                   (declare (not safe))
                                   (cons _L231620_ __tmp236398))))
                            (declare (not safe))
                            (cons '%#define-syntax __tmp236397))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236396 _stx231570_))))
               (__tmp236393
                (let ((__tmp236394 (gx#current-expander-phi)))
                  (declare (not safe))
                  (fx+ __tmp236394 '1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp236395
                                                    gx#current-expander-phi
                                                    __tmp236393)))
                                               _hd231584231614_
                                               _hd231581231606_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231573231590_
                                                 _g231574231593_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231573231590_ _g231574231593_)))))
                              (let ()
                                (declare (not safe))
                                (_g231573231590_ _g231574231593_)))))
                      (let ()
                        (declare (not safe))
                        (_g231573231590_ _g231574231593_))))))
          (declare (not safe))
          (_g231572231647_ _stx231570_))))
    (define gxc#xform-begin-annotation%
      (lambda (_stx231491_ . _args231492_)
        (let* ((_g231494231511_
                (lambda (_g231495231508_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231495231508_))))
               (_g231493231567_
                (lambda (_g231495231514_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231495231514_))
                      (let ((_e231500231516_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231495231514_))))
                        (let ((_hd231499231519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231500231516_)))
                              (_tl231498231521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231500231516_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231498231521_))
                              (let ((_e231503231524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231498231521_))))
                                (let ((_hd231502231527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231503231524_)))
                                      (_tl231501231529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231503231524_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231501231529_))
                                      (let ((_e231506231532_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231501231529_))))
                                        (let ((_hd231505231535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231506231532_)))
                                              (_tl231504231537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231506231532_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231504231537_))
                                              ((lambda (_L231540_ _L231541_)
                                                 (let* ((_expr231565_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231492_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231540_))
                     (let ((_arg1231556_ (car _args231492_))
                           (_rest231558_ (cdr _args231492_)))
                       (if (let () (declare (not safe)) (null? _rest231558_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231540_ _arg1231556_))
                           (let ((_arg2231561_ (car _rest231558_))
                                 (_rest231563_ (cdr _rest231558_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231563_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231540_
                                    _arg1231556_
                                    _arg2231561_))
                                 (apply gxc#compile-e
                                        _L231540_
                                        _arg1231556_
                                        _arg2231561_
                                        _rest231563_)))))))
                (__tmp236399
                 (let ((__tmp236400
                        (let ((__tmp236401
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231565_ '()))))
                          (declare (not safe))
                          (cons _L231541_ __tmp236401))))
                   (declare (not safe))
                   (cons '%#begin-annotation __tmp236400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236399
                                                    _stx231491_)))
                                               _hd231505231535_
                                               _hd231502231527_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231494231511_
                                                 _g231495231514_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231494231511_ _g231495231514_)))))
                              (let ()
                                (declare (not safe))
                                (_g231494231511_ _g231495231514_)))))
                      (let ()
                        (declare (not safe))
                        (_g231494231511_ _g231495231514_))))))
          (declare (not safe))
          (_g231493231567_ _stx231491_))))
    (define gxc#xform-lambda%
      (lambda (_stx231434_ . _args231435_)
        (let* ((_g231437231451_
                (lambda (_g231438231448_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231438231448_))))
               (_g231436231488_
                (lambda (_g231438231454_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231438231454_))
                      (let ((_e231443231456_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231438231454_))))
                        (let ((_hd231442231459_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231443231456_)))
                              (_tl231441231461_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231443231456_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231441231461_))
                              (let ((_e231446231464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231441231461_))))
                                (let ((_hd231445231467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231446231464_)))
                                      (_tl231444231469_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231446231464_))))
                                  ((lambda (_L231472_ _L231473_)
                                     (let* ((_body231486_
                                             (map (let ()
                                                    (declare (not safe))
                                                    (gxc#xform-apply-compile-e
                                                     _args231435_))
                                                  _L231472_))
                                            (__tmp236402
                                             (let ((__tmp236403
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L231473_
                                                            _body231486_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp236403))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp236402
                                        _stx231434_)))
                                   _tl231444231469_
                                   _hd231445231467_)))
                              (let ()
                                (declare (not safe))
                                (_g231437231451_ _g231438231454_)))))
                      (let ()
                        (declare (not safe))
                        (_g231437231451_ _g231438231454_))))))
          (declare (not safe))
          (_g231436231488_ _stx231434_))))
    (define gxc#xform-case-lambda%
      (lambda (_stx231347_ . _args231348_)
        (letrec ((_clause-e231350_
                  (lambda (_clause231391_)
                    (let* ((_g231393231404_
                            (lambda (_g231394231401_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g231394231401_))))
                           (_g231392231431_
                            (lambda (_g231394231407_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g231394231407_))
                                  (let ((_e231399231409_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g231394231407_))))
                                    (let ((_hd231398231412_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231399231409_)))
                                          (_tl231397231414_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231399231409_))))
                                      ((lambda (_L231417_ _L231418_)
                                         (let ((_body231429_
                                                (map (let ()
                                                       (declare (not safe))
                                                       (gxc#xform-apply-compile-e
                                                        _args231348_))
                                                     _L231417_)))
                                           (declare (not safe))
                                           (cons _L231418_ _body231429_)))
                                       _tl231397231414_
                                       _hd231398231412_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g231393231404_ _g231394231407_))))))
                      (declare (not safe))
                      (_g231392231431_ _clause231391_)))))
          (let* ((_g231352231362_
                  (lambda (_g231353231359_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g231353231359_))))
                 (_g231351231388_
                  (lambda (_g231353231365_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g231353231365_))
                        (let ((_e231357231367_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g231353231365_))))
                          (let ((_hd231356231370_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231357231367_)))
                                (_tl231355231372_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231357231367_))))
                            ((lambda (_L231375_)
                               (let* ((_clauses231386_
                                       (map _clause-e231350_ _L231375_))
                                      (__tmp236404
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses231386_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp236404
                                  _stx231347_)))
                             _tl231355231372_)))
                        (let ()
                          (declare (not safe))
                          (_g231352231362_ _g231353231365_))))))
            (declare (not safe))
            (_g231351231388_ _stx231347_)))))
    (define gxc#xform-let-values%
      (lambda (_stx231141_ . _args231142_)
        (let* ((_g231144231177_
                (lambda (_g231145231174_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231145231174_))))
               (_g231143231344_
                (lambda (_g231145231180_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231145231180_))
                      (let ((_e231152231182_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231145231180_))))
                        (let ((_hd231151231185_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231152231182_)))
                              (_tl231150231187_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231152231182_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231150231187_))
                              (let ((_e231155231190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231150231187_))))
                                (let ((_hd231154231193_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231155231190_)))
                                      (_tl231153231195_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231155231190_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd231154231193_))
                                      (let ((_g236405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd231154231193_
                                                '0))))
                                        (begin
                                          (let ((_g236406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236405_)
                                                       (##vector-length
                                                        _g236405_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236406_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236406_)))
                                          (let ((_target231156231198_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236405_ 0)))
                                                (_tl231158231200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236405_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231158231200_))
                                                (letrec ((_loop231159231203_
                                                          (lambda (_hd231157231206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr231163231208_
                           _hd231164231210_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd231157231206_))
                        (let ((_e231160231213_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd231157231206_))))
                          (let ((_lp-hd231161231216_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231160231213_)))
                                (_lp-tl231162231218_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231160231213_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd231161231216_))
                                (let ((_e231169231221_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd231161231216_))))
                                  (let ((_hd231168231224_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231169231221_)))
                                        (_tl231167231226_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231169231221_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl231167231226_))
                                        (let ((_e231172231229_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl231167231226_))))
                                          (let ((_hd231171231232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231172231229_)))
                                                (_tl231170231234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231172231229_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl231170231234_))
                                                (let ((__tmp236419
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd231171231232_
                                                               _expr231163231208_)))
                                                      (__tmp236418
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd231168231224_
                                                               _hd231164231210_))))
                                                  (declare (not safe))
                                                  (_loop231159231203_
                                                   _lp-tl231162231218_
                                                   __tmp236419
                                                   __tmp236418))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231144231177_
                                                   _g231145231180_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g231144231177_ _g231145231180_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g231144231177_ _g231145231180_)))))
                        (let ((_expr231165231237_ (reverse _expr231163231208_))
                              (_hd231166231239_ (reverse _hd231164231210_)))
                          ((lambda (_L231242_ _L231243_ _L231244_ _L231245_)
                             (let* ((_g231264231280_
                                     (lambda (_g231265231277_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g231265231277_))))
                                    (_g231263231334_
                                     (lambda (_g231265231283_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair/null?
                                              _g231265231283_))
                                           (let ((_g236407_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#syntax-split-splice
                                                     _g231265231283_
                                                     '0))))
                                             (begin
                                               (let ((_g236408_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g236407_)
                                                            (##vector-length
                                                             _g236407_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g236408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g236408_)))
                                               (let ((_target231267231285_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236407_
                                                         0)))
                                                     (_tl231269231287_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g236407_
                                                         1))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl231269231287_))
                                                     (letrec ((_loop231270231290_
                                                               (lambda (_hd231268231293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr231274231295_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _hd231268231293_))
                             (let ((_e231271231298_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _hd231268231293_))))
                               (let ((_lp-hd231272231301_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e231271231298_)))
                                     (_lp-tl231273231303_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e231271231298_))))
                                 (let ((__tmp236415
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd231272231301_
                                                _expr231274231295_))))
                                   (declare (not safe))
                                   (_loop231270231290_
                                    _lp-tl231273231303_
                                    __tmp236415))))
                             (let ((_expr231275231306_
                                    (reverse _expr231274231295_)))
                               ((lambda (_L231309_)
                                  (let ()
                                    (let* ((_body231322_
                                            (map (let ()
                                                   (declare (not safe))
                                                   (gxc#xform-apply-compile-e
                                                    _args231142_))
                                                 _L231242_))
                                           (__tmp236409
                                            (let ((__tmp236410
                                                   (let ((__tmp236411
                                                          (begin
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-check-splice-targets
                                                               _L231309_
                                                               _L231244_))
                                                            (let ((__tmp236412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g231323231327_
                                    _g231324231329_
                                    _g231325231331_)
                             (let ((__tmp236413
                                    (let ((__tmp236414
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231323231327_ '()))))
                                      (declare (not safe))
                                      (cons _g231324231329_ __tmp236414))))
                               (declare (not safe))
                               (cons __tmp236413 _g231325231331_)))))
                      (declare (not safe))
                      (foldr2 __tmp236412 '() _L231309_ _L231244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp236411
                                                           _body231322_))))
                                              (declare (not safe))
                                              (cons _L231245_ __tmp236410))))
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp236409
                                       _stx231141_))))
                                _expr231275231306_))))))
               (let ()
                 (declare (not safe))
                 (_loop231270231290_ _target231267231285_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g231264231280_
                                                        _g231265231283_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g231264231280_
                                              _g231265231283_)))))
                                    (__tmp236416
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231142_))
                                          (let ((__tmp236417
                                                 (lambda (_g231336231339_
                                                          _g231337231341_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g231336231339_
                                                           _g231337231341_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp236417
                                                    '()
                                                    _L231243_)))))
                               (declare (not safe))
                               (_g231263231334_ __tmp236416)))
                           _tl231153231195_
                           _expr231165231237_
                           _hd231166231239_
                           _hd231151231185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop231159231203_
                                                     _target231156231198_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g231144231177_
                                                   _g231145231180_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231144231177_ _g231145231180_)))))
                              (let ()
                                (declare (not safe))
                                (_g231144231177_ _g231145231180_)))))
                      (let ()
                        (declare (not safe))
                        (_g231144231177_ _g231145231180_))))))
          (declare (not safe))
          (_g231143231344_ _stx231141_))))
    (define gxc#xform-operands
      (lambda (_stx231097_ . _args231098_)
        (let* ((_g231100231111_
                (lambda (_g231101231108_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231101231108_))))
               (_g231099231138_
                (lambda (_g231101231114_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231101231114_))
                      (let ((_e231106231116_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231101231114_))))
                        (let ((_hd231105231119_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231106231116_)))
                              (_tl231104231121_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231106231116_))))
                          ((lambda (_L231124_ _L231125_)
                             (let* ((_rands231136_
                                     (map (let ()
                                            (declare (not safe))
                                            (gxc#xform-apply-compile-e
                                             _args231098_))
                                          _L231124_))
                                    (__tmp236420
                                     (let ()
                                       (declare (not safe))
                                       (cons _L231125_ _rands231136_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp236420
                                _stx231097_)))
                           _tl231104231121_
                           _hd231105231119_)))
                      (let ()
                        (declare (not safe))
                        (_g231100231111_ _g231101231114_))))))
          (declare (not safe))
          (_g231099231138_ _stx231097_))))
    (define gxc#xform-call% gxc#xform-operands)
    (define gxc#xform-setq%
      (lambda (_stx231018_ . _args231019_)
        (let* ((_g231021231038_
                (lambda (_g231022231035_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231022231035_))))
               (_g231020231094_
                (lambda (_g231022231041_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231022231041_))
                      (let ((_e231027231043_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231022231041_))))
                        (let ((_hd231026231046_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231027231043_)))
                              (_tl231025231048_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231027231043_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231025231048_))
                              (let ((_e231030231051_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231025231048_))))
                                (let ((_hd231029231054_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231030231051_)))
                                      (_tl231028231056_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231030231051_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231028231056_))
                                      (let ((_e231033231059_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231028231056_))))
                                        (let ((_hd231032231062_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231033231059_)))
                                              (_tl231031231064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231033231059_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231031231064_))
                                              ((lambda (_L231067_ _L231068_)
                                                 (let* ((_expr231092_
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _args231019_))
                     (let () (declare (not safe)) (gxc#compile-e__0 _L231067_))
                     (let ((_arg1231083_ (car _args231019_))
                           (_rest231085_ (cdr _args231019_)))
                       (if (let () (declare (not safe)) (null? _rest231085_))
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _L231067_ _arg1231083_))
                           (let ((_arg2231088_ (car _rest231085_))
                                 (_rest231090_ (cdr _rest231085_)))
                             (if (let ()
                                   (declare (not safe))
                                   (null? _rest231090_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__2
                                    _L231067_
                                    _arg1231083_
                                    _arg2231088_))
                                 (apply gxc#compile-e
                                        _L231067_
                                        _arg1231083_
                                        _arg2231088_
                                        _rest231090_)))))))
                (__tmp236421
                 (let ((__tmp236422
                        (let ((__tmp236423
                               (let ()
                                 (declare (not safe))
                                 (cons _expr231092_ '()))))
                          (declare (not safe))
                          (cons _L231068_ __tmp236423))))
                   (declare (not safe))
                   (cons '%#set! __tmp236422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp236421
                                                    _stx231018_)))
                                               _hd231032231062_
                                               _hd231029231054_)
                                              (let ()
                                                (declare (not safe))
                                                (_g231021231038_
                                                 _g231022231041_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g231021231038_ _g231022231041_)))))
                              (let ()
                                (declare (not safe))
                                (_g231021231038_ _g231022231041_)))))
                      (let ()
                        (declare (not safe))
                        (_g231021231038_ _g231022231041_))))))
          (declare (not safe))
          (_g231020231094_ _stx231018_))))
    (define gxc#collect-mutators-setq%
      (lambda (_stx230949_)
        (let* ((_g230951230968_
                (lambda (_g230952230965_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230952230965_))))
               (_g230950231015_
                (lambda (_g230952230971_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230952230971_))
                      (let ((_e230957230973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230952230971_))))
                        (let ((_hd230956230976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230957230973_)))
                              (_tl230955230978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230957230973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230955230978_))
                              (let ((_e230960230981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230955230978_))))
                                (let ((_hd230959230984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230960230981_)))
                                      (_tl230958230986_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230960230981_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230958230986_))
                                      (let ((_e230963230989_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230958230986_))))
                                        (let ((_hd230962230992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230963230989_)))
                                              (_tl230961230994_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230963230989_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230961230994_))
                                              ((lambda (_L230997_ _L230998_)
                                                 (let ((_sym231013_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L230998_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _sym231013_))
                                                   (let ((__tmp236424
                                                          (gxc#current-compile-mutators)))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp236424
                                                      _sym231013_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L230997_))))
                                               _hd230962230992_
                                               _hd230959230984_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230951230968_
                                                 _g230952230971_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230951230968_ _g230952230971_)))))
                              (let ()
                                (declare (not safe))
                                (_g230951230968_ _g230952230971_)))))
                      (let ()
                        (declare (not safe))
                        (_g230951230968_ _g230952230971_))))))
          (declare (not safe))
          (_g230950231015_ _stx230949_))))
    (define gxc#collect-methods-call%
      (lambda (_stx230503_)
        (let* ((___stx236114236115_ _stx230503_)
               (_g230507230609_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx236114236115_)))))
          (let ((___kont236116236117_
                 (lambda (_L230899_ _L230900_ _L230901_ _L230902_ _L230903_)
                   (let ((__tmp236425
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230900_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236425))))
                (___kont236118236119_
                 (lambda (_L230725_ _L230726_ _L230727_ _L230728_)
                   (let ((__tmp236426
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L230725_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp236426))))
                (___kont236120236121_ (lambda () '#!void)))
            (let ((___match236249236250_
                   (lambda (_e230516230771_
                            _hd230515230774_
                            _tl230514230776_
                            _e230519230779_
                            _hd230518230782_
                            _tl230517230784_
                            _e230522230787_
                            _hd230521230790_
                            _tl230520230792_
                            _e230525230795_
                            _hd230524230798_
                            _tl230523230800_
                            _e230528230803_
                            _hd230527230806_
                            _tl230526230808_
                            _e230531230811_
                            _hd230530230814_
                            _tl230529230816_
                            _e230534230819_
                            _hd230533230822_
                            _tl230532230824_
                            _e230537230827_
                            _hd230536230830_
                            _tl230535230832_
                            _e230540230835_
                            _hd230539230838_
                            _tl230538230840_
                            _e230543230843_
                            _hd230542230846_
                            _tl230541230848_
                            _e230546230851_
                            _hd230545230854_
                            _tl230544230856_
                            _e230549230859_
                            _hd230548230862_
                            _tl230547230864_
                            _e230552230867_
                            _hd230551230870_
                            _tl230550230872_
                            _e230555230875_
                            _hd230554230878_
                            _tl230553230880_
                            _e230558230883_
                            _hd230557230886_
                            _tl230556230888_
                            _e230561230891_
                            _hd230560230894_
                            _tl230559230896_)
                     (let ((_L230899_ _hd230560230894_)
                           (_L230900_ _hd230551230870_)
                           (_L230901_ _hd230542230846_)
                           (_L230902_ _hd230533230822_)
                           (_L230903_ _hd230524230798_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L230903_
                              'bind-method!))
                           (___kont236116236117_
                            _L230899_
                            _L230900_
                            _L230901_
                            _L230902_
                            _L230903_)
                           (___kont236120236121_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx236114236115_))
                  (let ((_e230516230771_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx236114236115_))))
                    (let ((_tl230514230776_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230516230771_)))
                          (_hd230515230774_
                           (let ()
                             (declare (not safe))
                             (##car _e230516230771_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230514230776_))
                          (let ((_e230519230779_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230514230776_))))
                            (let ((_tl230517230784_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230519230779_)))
                                  (_hd230518230782_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230519230779_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd230518230782_))
                                  (let ((_e230522230787_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd230518230782_))))
                                    (let ((_tl230520230792_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230522230787_)))
                                          (_hd230521230790_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230522230787_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd230521230790_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd230521230790_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230520230792_))
                                                  (let ((_e230525230795_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230520230792_))))
                                                    (let ((_tl230523230800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230525230795_)))
                                                          (_hd230524230798_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230525230795_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230523230800_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl230517230784_))
                      (let ((_e230528230803_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl230517230784_))))
                        (let ((_tl230526230808_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230528230803_)))
                              (_hd230527230806_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230528230803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd230527230806_))
                              (let ((_e230531230811_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd230527230806_))))
                                (let ((_tl230529230816_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230531230811_)))
                                      (_hd230530230814_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230531230811_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd230530230814_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd230530230814_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230529230816_))
                                              (let ((_e230534230819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230529230816_))))
                                                (let ((_tl230532230824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230534230819_)))
                                                      (_hd230533230822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230534230819_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230532230824_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl230526230808_))
                                                          (let ((_e230537230827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl230526230808_))))
                    (let ((_tl230535230832_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230537230827_)))
                          (_hd230536230830_
                           (let ()
                             (declare (not safe))
                             (##car _e230537230827_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd230536230830_))
                          (let ((_e230540230835_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd230536230830_))))
                            (let ((_tl230538230840_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230540230835_)))
                                  (_hd230539230838_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230540230835_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd230539230838_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd230539230838_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl230538230840_))
                                          (let ((_e230543230843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl230538230840_))))
                                            (let ((_tl230541230848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e230543230843_)))
                                                  (_hd230542230846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e230543230843_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl230541230848_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230535230832_))
                                                      (let ((_e230546230851_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230535230832_))))
                (let ((_tl230544230856_
                       (let () (declare (not safe)) (##cdr _e230546230851_)))
                      (_hd230545230854_
                       (let () (declare (not safe)) (##car _e230546230851_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230545230854_))
                      (let ((_e230549230859_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230545230854_))))
                        (let ((_tl230547230864_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230549230859_)))
                              (_hd230548230862_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230549230859_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230548230862_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230548230862_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230547230864_))
                                      (let ((_e230552230867_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230547230864_))))
                                        (let ((_tl230550230872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230552230867_)))
                                              (_hd230551230870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230552230867_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230550230872_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230544230856_))
                                                  (let ((_e230555230875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230544230856_))))
                                                    (let ((_tl230553230880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230555230875_)))
                                                          (_hd230554230878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230555230875_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230554230878_))
                                                          (let ((_e230558230883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230554230878_))))
                    (let ((_tl230556230888_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230558230883_)))
                          (_hd230557230886_
                           (let ()
                             (declare (not safe))
                             (##car _e230558230883_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230557230886_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd230557230886_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230556230888_))
                                  (let ((_e230561230891_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230556230888_))))
                                    (let ((_tl230559230896_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230561230891_)))
                                          (_hd230560230894_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230561230891_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230559230896_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230553230880_))
                                              (___match236249236250_
                                               _e230516230771_
                                               _hd230515230774_
                                               _tl230514230776_
                                               _e230519230779_
                                               _hd230518230782_
                                               _tl230517230784_
                                               _e230522230787_
                                               _hd230521230790_
                                               _tl230520230792_
                                               _e230525230795_
                                               _hd230524230798_
                                               _tl230523230800_
                                               _e230528230803_
                                               _hd230527230806_
                                               _tl230526230808_
                                               _e230531230811_
                                               _hd230530230814_
                                               _tl230529230816_
                                               _e230534230819_
                                               _hd230533230822_
                                               _tl230532230824_
                                               _e230537230827_
                                               _hd230536230830_
                                               _tl230535230832_
                                               _e230540230835_
                                               _hd230539230838_
                                               _tl230538230840_
                                               _e230543230843_
                                               _hd230542230846_
                                               _tl230541230848_
                                               _e230546230851_
                                               _hd230545230854_
                                               _tl230544230856_
                                               _e230549230859_
                                               _hd230548230862_
                                               _tl230547230864_
                                               _e230552230867_
                                               _hd230551230870_
                                               _tl230550230872_
                                               _e230555230875_
                                               _hd230554230878_
                                               _tl230553230880_
                                               _e230558230883_
                                               _hd230557230886_
                                               _tl230556230888_
                                               _e230561230891_
                                               _hd230560230894_
                                               _tl230559230896_)
                                              (___kont236120236121_))
                                          (___kont236120236121_))))
                                  (___kont236120236121_))
                              (___kont236120236121_))
                          (___kont236120236121_))))
                  (___kont236120236121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230544230856_))
                                                      (if (let ((__tmp236427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp236427 'bind-method!))
                  (let ((_L230725_ _hd230551230870_)
                        (_L230726_ _hd230542230846_)
                        (_L230727_ _hd230533230822_)
                        (_L230728_ _hd230524230798_))
                    (___kont236118236119_
                     _L230725_
                     _L230726_
                     _L230727_
                     _L230728_))
                  (___kont236120236121_))
              (___kont236120236121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont236120236121_))))
                                      (___kont236120236121_))
                                  (___kont236120236121_))
                              (___kont236120236121_))))
                      (___kont236120236121_))))
              (___kont236120236121_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont236120236121_))))
                                          (___kont236120236121_))
                                      (___kont236120236121_))
                                  (___kont236120236121_))))
                          (___kont236120236121_))))
                  (___kont236120236121_))
              (___kont236120236121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont236120236121_))
                                          (___kont236120236121_))
                                      (___kont236120236121_))))
                              (___kont236120236121_))))
                      (___kont236120236121_))
                  (___kont236120236121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont236120236121_))
                                              (___kont236120236121_))
                                          (___kont236120236121_))))
                                  (___kont236120236121_))))
                          (___kont236120236121_))))
                  (___kont236120236121_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_stx230450_ _id230451_ _new-id230452_)
        (let* ((_g230454230467_
                (lambda (_g230455230464_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230455230464_))))
               (_g230453230500_
                (lambda (_g230455230470_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230455230470_))
                      (let ((_e230459230472_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230455230470_))))
                        (let ((_hd230458230475_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230459230472_)))
                              (_tl230457230477_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230459230472_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230457230477_))
                              (let ((_e230462230480_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230457230477_))))
                                (let ((_hd230461230483_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230462230480_)))
                                      (_tl230460230485_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230462230480_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230460230485_))
                                      ((lambda (_L230488_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L230488_
                                                _id230451_))
                                             (let ((__tmp236428
                                                    (let ((__tmp236429
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _new-id230452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp236429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236428
                                                _stx230450_))
                                             _stx230450_))
                                       _hd230461230483_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230454230467_ _g230455230470_)))))
                              (let ()
                                (declare (not safe))
                                (_g230454230467_ _g230455230470_)))))
                      (let ()
                        (declare (not safe))
                        (_g230454230467_ _g230455230470_))))))
          (declare (not safe))
          (_g230453230500_ _stx230450_))))
    (define gxc#expression-subst*-ref%
      (lambda (_stx230391_ _subst230392_)
        (let* ((_g230394230407_
                (lambda (_g230395230404_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230395230404_))))
               (_g230393230447_
                (lambda (_g230395230410_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230395230410_))
                      (let ((_e230399230412_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230395230410_))))
                        (let ((_hd230398230415_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230399230412_)))
                              (_tl230397230417_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230399230412_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230397230417_))
                              (let ((_e230402230420_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230397230417_))))
                                (let ((_hd230401230423_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230402230420_)))
                                      (_tl230400230425_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230402230420_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230400230425_))
                                      ((lambda (_L230428_)
                                         (let ((_$e230442_
                                                (let ((__tmp236430
                                                       (lambda (_sub230440_)
                                                         (let ((__tmp236431
                                                                (car _sub230440_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _L230428_
                                                            __tmp236431)))))
                                                  (declare (not safe))
                                                  (find __tmp236430
                                                        _subst230392_))))
                                           (if _$e230442_
                                               ((lambda (_sub230445_)
                                                  (let ((__tmp236432
                                                         (let ((__tmp236433
                                                                (let ((__tmp236434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _sub230445_)))
                          (declare (not safe))
                          (cons __tmp236434 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp236433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp236432
                                                     _stx230391_)))
                                                _$e230442_)
                                               _stx230391_)))
                                       _hd230401230423_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230394230407_ _g230395230410_)))))
                              (let ()
                                (declare (not safe))
                                (_g230394230407_ _g230395230410_)))))
                      (let ()
                        (declare (not safe))
                        (_g230394230407_ _g230395230410_))))))
          (declare (not safe))
          (_g230393230447_ _stx230391_))))
    (define gxc#expression-subst-setq%
      (lambda (_stx230319_ _id230320_ _new-id230321_)
        (let* ((_g230323230340_
                (lambda (_g230324230337_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230324230337_))))
               (_g230322230388_
                (lambda (_g230324230343_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230324230343_))
                      (let ((_e230329230345_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230324230343_))))
                        (let ((_hd230328230348_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230329230345_)))
                              (_tl230327230350_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230329230345_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230327230350_))
                              (let ((_e230332230353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230327230350_))))
                                (let ((_hd230331230356_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230332230353_)))
                                      (_tl230330230358_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230332230353_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230330230358_))
                                      (let ((_e230335230361_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230330230358_))))
                                        (let ((_hd230334230364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230335230361_)))
                                              (_tl230333230366_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230335230361_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230333230366_))
                                              ((lambda (_L230369_ _L230370_)
                                                 (let ((_new-expr230385_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__2
                                                           _L230369_
                                                           _id230320_
                                                           _new-id230321_)))
                                                       (_new-xid230386_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#free-identifier=?
                                                               _L230370_
                                                               _id230320_))
                                                            _new-id230321_
                                                            _L230370_)))
                                                   (let ((__tmp236435
                                                          (let ((__tmp236436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236437
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr230385_ '()))))
                           (declare (not safe))
                           (cons _new-xid230386_ __tmp236437))))
                    (declare (not safe))
                    (cons '%#set! __tmp236436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236435
                                                      _stx230319_))))
                                               _hd230334230364_
                                               _hd230331230356_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230323230340_
                                                 _g230324230343_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230323230340_ _g230324230343_)))))
                              (let ()
                                (declare (not safe))
                                (_g230323230340_ _g230324230343_)))))
                      (let ()
                        (declare (not safe))
                        (_g230323230340_ _g230324230343_))))))
          (declare (not safe))
          (_g230322230388_ _stx230319_))))
    (define gxc#expression-subst*-setq%
      (lambda (_stx230243_ _subst230244_)
        (let* ((_g230246230263_
                (lambda (_g230247230260_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230247230260_))))
               (_g230245230316_
                (lambda (_g230247230266_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230247230266_))
                      (let ((_e230252230268_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230247230266_))))
                        (let ((_hd230251230271_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230252230268_)))
                              (_tl230250230273_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230252230268_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230250230273_))
                              (let ((_e230255230276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230250230273_))))
                                (let ((_hd230254230279_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230255230276_)))
                                      (_tl230253230281_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230255230276_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230253230281_))
                                      (let ((_e230258230284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230253230281_))))
                                        (let ((_hd230257230287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230258230284_)))
                                              (_tl230256230289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230258230284_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230256230289_))
                                              ((lambda (_L230292_ _L230293_)
                                                 (let ((_new-expr230313_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _L230292_
                                                           _subst230244_)))
                                                       (_new-xid230314_
                                                        (let ((_$e230310_
                                                               (let ((__tmp236438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_sub230308_)
                                (let ((__tmp236439 (car _sub230308_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _L230293_
                                   __tmp236439)))))
                         (declare (not safe))
                         (find __tmp236438 _subst230244_))))
                  (if _$e230310_ (cdr _$e230310_) _L230293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp236440
                                                          (let ((__tmp236441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp236442
                                (let ()
                                  (declare (not safe))
                                  (cons _new-expr230313_ '()))))
                           (declare (not safe))
                           (cons _new-xid230314_ __tmp236442))))
                    (declare (not safe))
                    (cons '%#set! __tmp236441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236440
                                                      _stx230243_))))
                                               _hd230257230287_
                                               _hd230254230279_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230246230263_
                                                 _g230247230266_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230246230263_ _g230247230266_)))))
                              (let ()
                                (declare (not safe))
                                (_g230246230263_ _g230247230266_)))))
                      (let ()
                        (declare (not safe))
                        (_g230246230263_ _g230247230266_))))))
          (declare (not safe))
          (_g230245230316_ _stx230243_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_stx230189_ _ht230190_)
        (let* ((_g230192230205_
                (lambda (_g230193230202_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230193230202_))))
               (_g230191230240_
                (lambda (_g230193230208_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230193230208_))
                      (let ((_e230197230210_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230193230208_))))
                        (let ((_hd230196230213_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230197230210_)))
                              (_tl230195230215_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230197230210_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230195230215_))
                              (let ((_e230200230218_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230195230215_))))
                                (let ((_hd230199230221_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230200230218_)))
                                      (_tl230198230223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230200230218_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230198230223_))
                                      ((lambda (_L230226_)
                                         (let ((_eid230238_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L230226_))))
                                           (declare (not safe))
                                           (hash-update!
                                            _ht230190_
                                            _eid230238_
                                            1+
                                            '0)))
                                       _hd230199230221_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230192230205_ _g230193230208_)))))
                              (let ()
                                (declare (not safe))
                                (_g230192230205_ _g230193230208_)))))
                      (let ()
                        (declare (not safe))
                        (_g230192230205_ _g230193230208_))))))
          (declare (not safe))
          (_g230191230240_ _stx230189_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_stx230119_ _ht230120_)
        (let* ((_g230122230139_
                (lambda (_g230123230136_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230123230136_))))
               (_g230121230186_
                (lambda (_g230123230142_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230123230142_))
                      (let ((_e230128230144_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230123230142_))))
                        (let ((_hd230127230147_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230128230144_)))
                              (_tl230126230149_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230128230144_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230126230149_))
                              (let ((_e230131230152_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230126230149_))))
                                (let ((_hd230130230155_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230131230152_)))
                                      (_tl230129230157_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230131230152_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230129230157_))
                                      (let ((_e230134230160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230129230157_))))
                                        (let ((_hd230133230163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230134230160_)))
                                              (_tl230132230165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230134230160_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230132230165_))
                                              ((lambda (_L230168_ _L230169_)
                                                 (let ((_eid230184_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _L230169_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (hash-update!
                                                      _ht230120_
                                                      _eid230184_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _L230168_
                                                      _ht230120_))))
                                               _hd230133230163_
                                               _hd230130230155_)
                                              (let ()
                                                (declare (not safe))
                                                (_g230122230139_
                                                 _g230123230142_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230122230139_ _g230123230142_)))))
                              (let ()
                                (declare (not safe))
                                (_g230122230139_ _g230123230142_)))))
                      (let ()
                        (declare (not safe))
                        (_g230122230139_ _g230123230142_))))))
          (declare (not safe))
          (_g230121230186_ _stx230119_))))
    (define gxc#find-body%
      (lambda (_stx230032_ _arg230033_)
        (let* ((_g230035230054_
                (lambda (_g230036230051_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230036230051_))))
               (_g230034230116_
                (lambda (_g230036230057_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230036230057_))
                      (let ((_e230040230059_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230036230057_))))
                        (let ((_hd230039230062_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230040230059_)))
                              (_tl230038230064_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230040230059_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl230038230064_))
                              (let ((_g236443_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl230038230064_
                                        '0))))
                                (begin
                                  (let ((_g236444_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236443_)
                                               (##vector-length _g236443_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236444_ 2)))
                                        (error "Context expects 2 values"
                                               _g236444_)))
                                  (let ((_target230041230067_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236443_ 0)))
                                        (_tl230043230069_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236443_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230043230069_))
                                        (letrec ((_loop230044230072_
                                                  (lambda (_hd230042230075_
                                                           _expr230048230077_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd230042230075_))
                                                        (let ((_e230045230080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd230042230075_))))
                  (let ((_lp-hd230046230083_
                         (let () (declare (not safe)) (##car _e230045230080_)))
                        (_lp-tl230047230085_
                         (let ()
                           (declare (not safe))
                           (##cdr _e230045230080_))))
                    (let ((__tmp236448
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd230046230083_ _expr230048230077_))))
                      (declare (not safe))
                      (_loop230044230072_ _lp-tl230047230085_ __tmp236448))))
                (let ((_expr230049230088_ (reverse _expr230048230077_)))
                  ((lambda (_L230091_)
                     (let ((__tmp236447
                            (lambda (_g230104230106_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g230104230106_
                                 _arg230033_))))
                           (__tmp236445
                            (let ((__tmp236446
                                   (lambda (_g230108230111_ _g230109230113_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g230108230111_
                                             _g230109230113_)))))
                              (declare (not safe))
                              (foldr1 __tmp236446 '() _L230091_))))
                       (declare (not safe))
                       (ormap1 __tmp236447 __tmp236445)))
                   _expr230049230088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop230044230072_
                                             _target230041230067_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g230035230054_
                                           _g230036230057_))))))
                              (let ()
                                (declare (not safe))
                                (_g230035230054_ _g230036230057_)))))
                      (let ()
                        (declare (not safe))
                        (_g230035230054_ _g230036230057_))))))
          (declare (not safe))
          (_g230034230116_ _stx230032_))))
    (define gxc#find-begin-annotation%
      (lambda (_stx229964_ _arg229965_)
        (let* ((_g229967229984_
                (lambda (_g229968229981_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229968229981_))))
               (_g229966230029_
                (lambda (_g229968229987_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229968229987_))
                      (let ((_e229973229989_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229968229987_))))
                        (let ((_hd229972229992_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229973229989_)))
                              (_tl229971229994_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229973229989_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229971229994_))
                              (let ((_e229976229997_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229971229994_))))
                                (let ((_hd229975230000_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229976229997_)))
                                      (_tl229974230002_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229976229997_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229974230002_))
                                      (let ((_e229979230005_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229974230002_))))
                                        (let ((_hd229978230008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229979230005_)))
                                              (_tl229977230010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229979230005_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229977230010_))
                                              ((lambda (_L230013_ _L230014_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L230013_
                                                    _arg229965_)))
                                               _hd229978230008_
                                               _hd229975230000_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229967229984_
                                                 _g229968229987_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229967229984_ _g229968229987_)))))
                              (let ()
                                (declare (not safe))
                                (_g229967229984_ _g229968229987_)))))
                      (let ()
                        (declare (not safe))
                        (_g229967229984_ _g229968229987_))))))
          (declare (not safe))
          (_g229966230029_ _stx229964_))))
    (define gxc#find-lambda%
      (lambda (_stx229896_ _arg229897_)
        (let* ((_g229899229916_
                (lambda (_g229900229913_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229900229913_))))
               (_g229898229961_
                (lambda (_g229900229919_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229900229919_))
                      (let ((_e229905229921_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229900229919_))))
                        (let ((_hd229904229924_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229905229921_)))
                              (_tl229903229926_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229905229921_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229903229926_))
                              (let ((_e229908229929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229903229926_))))
                                (let ((_hd229907229932_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229908229929_)))
                                      (_tl229906229934_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229908229929_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229906229934_))
                                      (let ((_e229911229937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229906229934_))))
                                        (let ((_hd229910229940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229911229937_)))
                                              (_tl229909229942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229911229937_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229909229942_))
                                              ((lambda (_L229945_ _L229946_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229945_
                                                    _arg229897_)))
                                               _hd229910229940_
                                               _hd229907229932_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229899229916_
                                                 _g229900229919_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229899229916_ _g229900229919_)))))
                              (let ()
                                (declare (not safe))
                                (_g229899229916_ _g229900229919_)))))
                      (let ()
                        (declare (not safe))
                        (_g229899229916_ _g229900229919_))))))
          (declare (not safe))
          (_g229898229961_ _stx229896_))))
    (define gxc#find-case-lambda%
      (lambda (_stx229778_ _arg229779_)
        (let* ((_g229781229809_
                (lambda (_g229782229806_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229782229806_))))
               (_g229780229893_
                (lambda (_g229782229812_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229782229812_))
                      (let ((_e229787229814_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229782229812_))))
                        (let ((_hd229786229817_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229787229814_)))
                              (_tl229785229819_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229787229814_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl229785229819_))
                              (let ((_g236449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl229785229819_
                                        '0))))
                                (begin
                                  (let ((_g236450_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g236449_)
                                               (##vector-length _g236449_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g236450_ 2)))
                                        (error "Context expects 2 values"
                                               _g236450_)))
                                  (let ((_target229788229822_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236449_ 0)))
                                        (_tl229790229824_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g236449_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229790229824_))
                                        (letrec ((_loop229791229827_
                                                  (lambda (_hd229789229830_
                                                           _body229795229832_
                                                           _hd229796229834_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229789229830_))
                                                        (let ((_e229792229837_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229789229830_))))
                  (let ((_lp-hd229793229840_
                         (let () (declare (not safe)) (##car _e229792229837_)))
                        (_lp-tl229794229842_
                         (let ()
                           (declare (not safe))
                           (##cdr _e229792229837_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd229793229840_))
                        (let ((_e229801229845_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd229793229840_))))
                          (let ((_hd229800229848_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229801229845_)))
                                (_tl229799229850_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229801229845_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229799229850_))
                                (let ((_e229804229853_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229799229850_))))
                                  (let ((_hd229803229856_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229804229853_)))
                                        (_tl229802229858_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229804229853_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229802229858_))
                                        (let ((__tmp236455
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229803229856_
                                                       _body229795229832_)))
                                              (__tmp236454
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd229800229848_
                                                       _hd229796229834_))))
                                          (declare (not safe))
                                          (_loop229791229827_
                                           _lp-tl229794229842_
                                           __tmp236455
                                           __tmp236454))
                                        (let ()
                                          (declare (not safe))
                                          (_g229781229809_ _g229782229812_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229781229809_ _g229782229812_)))))
                        (let ()
                          (declare (not safe))
                          (_g229781229809_ _g229782229812_)))))
                (let ((_body229797229861_ (reverse _body229795229832_))
                      (_hd229798229863_ (reverse _hd229796229834_)))
                  ((lambda (_L229866_ _L229867_)
                     (let ((__tmp236453
                            (lambda (_g229881229883_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _g229881229883_
                                 _arg229779_))))
                           (__tmp236451
                            (let ((__tmp236452
                                   (lambda (_g229885229888_ _g229886229890_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g229885229888_
                                             _g229886229890_)))))
                              (declare (not safe))
                              (foldr1 __tmp236452 '() _L229866_))))
                       (declare (not safe))
                       (ormap1 __tmp236453 __tmp236451)))
                   _body229797229861_
                   _hd229798229863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop229791229827_
                                             _target229788229822_
                                             '()
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g229781229809_
                                           _g229782229812_))))))
                              (let ()
                                (declare (not safe))
                                (_g229781229809_ _g229782229812_)))))
                      (let ()
                        (declare (not safe))
                        (_g229781229809_ _g229782229812_))))))
          (declare (not safe))
          (_g229780229893_ _stx229778_))))
    (define gxc#find-let-values%
      (lambda (_stx229628_ _arg229629_)
        (let* ((_g229631229666_
                (lambda (_g229632229663_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229632229663_))))
               (_g229630229775_
                (lambda (_g229632229669_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229632229669_))
                      (let ((_e229638229671_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229632229669_))))
                        (let ((_hd229637229674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229638229671_)))
                              (_tl229636229676_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229638229671_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229636229676_))
                              (let ((_e229641229679_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229636229676_))))
                                (let ((_hd229640229682_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229641229679_)))
                                      (_tl229639229684_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229641229679_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd229640229682_))
                                      (let ((_g236456_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd229640229682_
                                                '0))))
                                        (begin
                                          (let ((_g236457_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g236456_)
                                                       (##vector-length
                                                        _g236456_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g236457_ 2)))
                                                (error "Context expects 2 values"
                                                       _g236457_)))
                                          (let ((_target229642229687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g236456_ 0)))
                                                (_tl229644229689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g236456_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229644229689_))
                                                (letrec ((_loop229645229692_
                                                          (lambda (_hd229643229695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr229649229697_
                           _bind229650229699_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229643229695_))
                        (let ((_e229646229702_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229643229695_))))
                          (let ((_lp-hd229647229705_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229646229702_)))
                                (_lp-tl229648229707_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229646229702_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd229647229705_))
                                (let ((_e229655229710_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _lp-hd229647229705_))))
                                  (let ((_hd229654229713_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229655229710_)))
                                        (_tl229653229715_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229655229710_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229653229715_))
                                        (let ((_e229658229718_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229653229715_))))
                                          (let ((_hd229657229721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229658229718_)))
                                                (_tl229656229723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229658229718_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229656229723_))
                                                (let ((__tmp236462
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229657229721_
                                                               _expr229649229697_)))
                                                      (__tmp236461
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd229654229713_
                                                               _bind229650229699_))))
                                                  (declare (not safe))
                                                  (_loop229645229692_
                                                   _lp-tl229648229707_
                                                   __tmp236462
                                                   __tmp236461))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229631229666_
                                                   _g229632229669_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g229631229666_ _g229632229669_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g229631229666_ _g229632229669_)))))
                        (let ((_expr229651229726_ (reverse _expr229649229697_))
                              (_bind229652229728_
                               (reverse _bind229650229699_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229639229684_))
                              (let ((_e229661229731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229639229684_))))
                                (let ((_hd229660229734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229661229731_)))
                                      (_tl229659229736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229661229731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229659229736_))
                                      ((lambda (_L229739_ _L229740_ _L229741_)
                                         (let ((_$e229772_
                                                (let ((__tmp236460
                                                       (lambda (_g229760229762_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _g229760229762_
                                                            _arg229629_))))
                                                      (__tmp236458
                                                       (let ((__tmp236459
                                                              (lambda (_g229764229767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g229765229769_)
                        (let ()
                          (declare (not safe))
                          (cons _g229764229767_ _g229765229769_)))))
                 (declare (not safe))
                 (foldr1 __tmp236459 '() _L229740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap1 __tmp236460
                                                          __tmp236458))))
                                           (if _$e229772_
                                               _$e229772_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _L229739_
                                                  _arg229629_)))))
                                       _hd229660229734_
                                       _expr229651229726_
                                       _bind229652229728_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229631229666_ _g229632229669_)))))
                              (let ()
                                (declare (not safe))
                                (_g229631229666_ _g229632229669_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop229645229692_
                                                     _target229642229687_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g229631229666_
                                                   _g229632229669_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229631229666_ _g229632229669_)))))
                              (let ()
                                (declare (not safe))
                                (_g229631229666_ _g229632229669_)))))
                      (let ()
                        (declare (not safe))
                        (_g229631229666_ _g229632229669_))))))
          (declare (not safe))
          (_g229630229775_ _stx229628_))))
    (define gxc#find-setq%
      (lambda (_stx229560_ _arg229561_)
        (let* ((_g229563229580_
                (lambda (_g229564229577_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229564229577_))))
               (_g229562229625_
                (lambda (_g229564229583_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229564229583_))
                      (let ((_e229569229585_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229564229583_))))
                        (let ((_hd229568229588_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229569229585_)))
                              (_tl229567229590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229569229585_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229567229590_))
                              (let ((_e229572229593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229567229590_))))
                                (let ((_hd229571229596_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229572229593_)))
                                      (_tl229570229598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229572229593_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229570229598_))
                                      (let ((_e229575229601_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229570229598_))))
                                        (let ((_hd229574229604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229575229601_)))
                                              (_tl229573229606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229575229601_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229573229606_))
                                              ((lambda (_L229609_ _L229610_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _L229609_
                                                    _arg229561_)))
                                               _hd229574229604_
                                               _hd229571229596_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229563229580_
                                                 _g229564229583_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229563229580_ _g229564229583_)))))
                              (let ()
                                (declare (not safe))
                                (_g229563229580_ _g229564229583_)))))
                      (let ()
                        (declare (not safe))
                        (_g229563229580_ _g229564229583_))))))
          (declare (not safe))
          (_g229562229625_ _stx229560_))))
    (define gxc#find-var-refs-ref%
      (lambda (_stx229504_ _ids229505_)
        (let* ((_g229507229520_
                (lambda (_g229508229517_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229508229517_))))
               (_g229506229557_
                (lambda (_g229508229523_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229508229523_))
                      (let ((_e229512229525_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229508229523_))))
                        (let ((_hd229511229528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229512229525_)))
                              (_tl229510229530_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229512229525_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229510229530_))
                              (let ((_e229515229533_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229510229530_))))
                                (let ((_hd229514229536_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229515229533_)))
                                      (_tl229513229538_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229515229533_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl229513229538_))
                                      ((lambda (_L229541_)
                                         (let ((__tmp236463
                                                (lambda (_g229552229554_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _L229541_
                                                     _g229552229554_)))))
                                           (declare (not safe))
                                           (find __tmp236463 _ids229505_)))
                                       _hd229514229536_)
                                      (let ()
                                        (declare (not safe))
                                        (_g229507229520_ _g229508229523_)))))
                              (let ()
                                (declare (not safe))
                                (_g229507229520_ _g229508229523_)))))
                      (let ()
                        (declare (not safe))
                        (_g229507229520_ _g229508229523_))))))
          (declare (not safe))
          (_g229506229557_ _stx229504_))))
    (define gxc#find-var-refs-setq%
      (lambda (_stx229428_ _ids229429_)
        (let* ((_g229431229448_
                (lambda (_g229432229445_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g229432229445_))))
               (_g229430229501_
                (lambda (_g229432229451_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g229432229451_))
                      (let ((_e229437229453_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g229432229451_))))
                        (let ((_hd229436229456_
                               (let ()
                                 (declare (not safe))
                                 (##car _e229437229453_)))
                              (_tl229435229458_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e229437229453_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl229435229458_))
                              (let ((_e229440229461_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl229435229458_))))
                                (let ((_hd229439229464_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e229440229461_)))
                                      (_tl229438229466_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e229440229461_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl229438229466_))
                                      (let ((_e229443229469_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl229438229466_))))
                                        (let ((_hd229442229472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229443229469_)))
                                              (_tl229441229474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229443229469_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl229441229474_))
                                              ((lambda (_L229477_ _L229478_)
                                                 (let ((_$e229498_
                                                        (let ((__tmp236464
                                                               (lambda (_g229493229495_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=? _L229478_ _g229493229495_)))))
                  (declare (not safe))
                  (find __tmp236464 _ids229429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _$e229498_
                                                       _$e229498_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _L229477_
                                                          _ids229429_)))))
                                               _hd229442229472_
                                               _hd229439229464_)
                                              (let ()
                                                (declare (not safe))
                                                (_g229431229448_
                                                 _g229432229451_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g229431229448_ _g229432229451_)))))
                              (let ()
                                (declare (not safe))
                                (_g229431229448_ _g229432229451_)))))
                      (let ()
                        (declare (not safe))
                        (_g229431229448_ _g229432229451_))))))
          (declare (not safe))
          (_g229430229501_ _stx229428_))))))
